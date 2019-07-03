person_files <- list.files(path = 'insert path', pattern = "\\person.rds$", full.names = TRUE)
visit_files <- list.files(path = 'insert path', pattern = "\\visit_occurrence.rds$", full.names = TRUE)

person <- lapply(person_files, readRDS)
visit<- lapply(visit_files, readRDS)


library(dplyr)
library(tidyverse)
library(lubridate)
scyros_results = data.frame()

nam <- data.frame()

nam2 <- data.frame()
i<-1
for(i in seq(1, length(person), 2)) { 
  nam <- data.frame(person[i])
  nam2<- data.frame(visit[i])
 
  ptcount<-count(nam)
  
  #Earliest date of any data point  
  
  earliest_pt<-nam2 %>%
    group_by(person_id) %>%
    arrange(visit_start_date) %>%
    slice(1L)
  
  
  
  earliest<-min(earliest_pt$visit_start_date)
  
  
  
  
  
  #Latest date of any data point 
  latest_pt<-nam2 %>%
    group_by(person_id) %>%
    arrange(desc(visit_start_date)) %>%
    slice(1L)
  
  latest<-max(latest_pt$visit_start_date)
  
  
  #Temporal span of the study (difference of the above dates) 
  #For each patient – temporal span (in days (or years if >365)) of earliest and latest event 
  #For whole study – mean of patient’s temporal span (and other measures) 
  
  span <- latest - earliest
  span_pt<- merge(earliest_pt, latest_pt, by="person_id", all=TRUE)
  span_ptday<- (span_pt$visit_start_date.y - span_pt$visit_start_date.x)/86400
  
  
  span_median= median(span_ptday)
  span_mean= median(span_ptday)
  span_sd= sd(span_ptday)
  span_min= min(span_ptday)
  span_max= max(span_ptday)
  
  #Age at study enrollment 
  #Youngest age (of any data point) 
  enr_age<- year(earliest_pt$visit_start_date)-nam$year_of_birth
  enroll_age_median= median(enr_age)
  enroll_age_mean= median(enr_age)
  enroll_age_sd= sd(enr_age)
  enroll_age_min= min(enr_age)
  enroll_age_max= max(enr_age)
  
  
  
  
  
  #Age at study end 
  #Oldest age (of any data point) 
  end_age<- year(latest_pt$visit_start_date)-nam$year_of_birth
  end_age_median= median(end_age)
  end_age_mean= median(end_age)
  end_age_sd= sd(end_age)
  end_age_min= min(end_age)
  end_age_max= max(end_age)
  
  
  
  #For each patient - Number of distinct dates with data events (on patient level)  
  #For whole study – mean of the above 
  
  
  count_by_pt<- count(nam2, person_id)
  
  visit_count_median= median(count_by_pt$n)
  visit_count_mean= median(count_by_pt$n)
  visit_count_sd= sd(count_by_pt$n)
  visit_count_min= min(count_by_pt$n)
 
  visit_count_max= max(count_by_pt$n)
  
  scyros5<-data.frame(ptcount, earliest, latest, span, enroll_age_median, enroll_age_mean,
                      enroll_age_max, enroll_age_min, enroll_age_sd, end_age_median, end_age_mean,
                      end_age_max, end_age_min, end_age_sd, span_median,
                      span_mean,
                      span_sd,
                      span_min,
                      span_max,
                      visit_count_median,
                      visit_count_mean,
                      visit_count_sd,
                      visit_count_min,
                      visit_count_max)
  scyros_results= rbind(scyros_results,scyros5)
}