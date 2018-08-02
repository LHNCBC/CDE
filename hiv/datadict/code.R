drv <- dbDriver('PostgreSQL')
con <- dbConnect(drv, dbname="aact",host="aact-db.ctti-clinicaltrials.org", port=5432, user=user, password=psw)


s <- dbGetQuery(con, "select * from studies where study_first_submitted_date <'2018-07-15'")


hset<-c('hiv infections'
,'hiv seropositivity'
,'aids-related complex'
,'aids dementia complex'
,'hiv-associated lipodystrophy syndrome'
,'lymphoma, aids-related'
,'aids-related opportunistic infections'
,'hiv wasting syndrome'
,'aids-associated nephropathy'
,'hiv enteropathy')




hnct<-bc %>% filter(downcase_mesh_term %in% hset) %>% select(nct_id) %>% distinct()

hs<- s %>% inner_join(hnct)
#hs has full data on studies




hs2<-hs %>% filter(plan_to_share_ipd=='Yes')

hs2 %>% write_csv('S_ctg_subset.csv')
ca<-i %>% inner_join(hs2)
