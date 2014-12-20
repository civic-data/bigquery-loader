#!
# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --skip_leading_rows 1 --replace analysis.nyc_comptroller_claims output/nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json
# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --skip_leading_rows 1 --replace analysis.nyc_comptroller_claims output/nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json

# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --skip_leading_rows 1 analysis.nyc_comptroller_claims output/nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json

# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --skip_leading_rows 1 analysis.nyc_comptroller_claims output/formatted_nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json
# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --replace --skip_leading_rows 0 analysis.nyc_comptroller_claims output/formatted_nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json

bq --project personal-real-estate load --max_bad_records 1 --replace --skip_leading_rows 0 nys.traffic_tickets ~/Downloads/Traffic_Tickets_Issued__Beginning_2008.csv schemas/nys_traffic_tickets_2008_2014.json
