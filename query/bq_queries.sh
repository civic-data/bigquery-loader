#!
# bq query --project proj-wikimeasure "SELECT integer(sum(float(settlement_amount  ))), integer(sum(float(claimed_amount   ))) FROM [analysis.nyc_comptroller_claims]"

bq query --project proj-wikimeasure "SELECT  year(settlement_date) settlement_date, integer(sum(float(settlement_amount  ))) settlement, integer(sum(float(claimed_amount   ))) claimed,  integer(sum(float(settlement_amount  ))/sum(float(claimed_amount  ))*100) percent FROM [analysis.nyc_comptroller_claims] group by 1 order by 1"

bq query --project proj-wikimeasure "SELECT  year(date_filed) claimed_date, integer(sum(float(settlement_amount  ))) settlement, integer(sum(float(claimed_amount   ))) claimed,  (sum(float(settlement_amount  ))/sum(float(claimed_amount  ))*100) percent FROM [analysis.nyc_comptroller_claims] group by 1 order by 1"



