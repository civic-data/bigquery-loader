bq query --project proj-wikimeasure "SELECT integer(sum(float(settlement_amount  ))), integer(sum(float(claimed_amount   ))) FROM [analysis.nyc_comptroller_claims]"
