#!
# bq query --project proj-wikimeasure "SELECT integer(sum(float(settlement_amount  ))), integer(sum(float(claimed_amount   ))) FROM [analysis.nyc_comptroller_claims]"

## # group by settle date
## bq query --format csv --project proj-wikimeasure "SELECT  year(settlement_date) settlement_date, integer(sum(float(settlement_amount  ))) settlement, integer(sum(float(claimed_amount   ))) claimed,  integer(sum(float(settlement_amount  ))/sum(float(claimed_amount  ))*100) percent , integer(avg(claimed_amount)) claim_average, integer(stddev(claimed_amount)) claim_std, integer(stddev_pop(claimed_amount)) claim_stdpop, integer(min(claimed_amount)) minclaim, integer(max(claimed_amount)) maxclaim, integer(avg(settlement_amount)) settle_average, integer(stddev(settlement_amount)) settle_std, integer(stddev_pop(settlement_amount)) settle_stdpop, integer(min(settlement_amount)) minsettle, integer(max(settlement_amount)) maxsettle FROM [analysis.nyc_comptroller_claims] group by 1 order by 1" > settlement_date_group_by_nyc_claims.csv
## 
## google docs upload settlement_date_group_by_nyc_claims.csv
## 
## # group by claim date
## bq query --format csv --project proj-wikimeasure "SELECT  year(date_filed) claimed_date, integer(sum(float(settlement_amount  ))) settlement, integer(sum(float(claimed_amount   ))) claimed,  integer(sum(float(settlement_amount  ))/sum(float(claimed_amount  ))*100) percent , integer(avg(claimed_amount)) claim_average, integer(stddev(claimed_amount)) claim_std, integer(stddev_pop(claimed_amount)) claim_stdpop, integer(min(claimed_amount)) minclaim, integer(max(claimed_amount)) maxclaim, integer(avg(settlement_amount)) settle_average, integer(stddev(settlement_amount)) settle_std, integer(stddev_pop(settlement_amount)) settle_stdpop, integer(min(settlement_amount)) minsettle, integer(max(settlement_amount)) maxsettle FROM [analysis.nyc_comptroller_claims] group by 1 order by 1" > claimed_date_group_by_nyc_claims.csv
## 
## google docs upload claimed_date_group_by_nyc_claims.csv
## 

bq query --project proj-wikimeasure "SELECT  year(date_filed) claimed_date, integer((float(settlement_amount  ))) settlement, integer((float(claimed_amount   ))) claimed FROM [analysis.nyc_comptroller_claims] order by 2 desc, 3 desc limit 10"

bq query --project proj-wikimeasure "SELECT  year(date_filed) claimed_date, integer((float(settlement_amount  ))) settlement, integer((float(claimed_amount   ))) claimed, claimant_address, claimant_zip, agency_involved FROM [analysis.nyc_comptroller_claims] order by 3 desc, 2 desc limit 10"

# bq query --project proj-wikimeasure "SELECT  year(date_filed) claimed_date, integer(sum(float(settlement_amount  ))) settlement, integer(sum(float(claimed_amount   ))) claimed,  (sum(float(settlement_amount  ))/sum(float(claimed_amount  ))*100) percent, integer(avg(claimed_amount)) average, integer(stddev(claimed_amount)) standard_deviation, integer(min(claimed_amount)) min, integer(max(claimed_amount)) max FROM [analysis.nyc_comptroller_claims] group by 1 order by 1"
# 
# bq query --project proj-wikimeasure "SELECT  count(*) count, claimant_address, integer(sum(float(settlement_amount  ))) settlement, integer(sum(float(claimed_amount   ))) claimed FROM [analysis.nyc_comptroller_claims] group by claimant_address order by 1 desc limit 10"
# 
# bq query --project proj-wikimeasure "SELECT  count(*) count, claimant_zip, integer(sum(float(settlement_amount  ))) settlement, integer(sum(float(claimed_amount   ))) claimed FROM [analysis.nyc_comptroller_claims] group by claimant_zip order by 1 desc limit 10"
# 
# 

