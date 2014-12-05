#!
# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --skip_leading_rows 1 --replace analysis.nyc_comptroller_claims output/nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json
# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --skip_leading_rows 1 --replace analysis.nyc_comptroller_claims output/nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json

# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --skip_leading_rows 1 analysis.nyc_comptroller_claims output/nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json

# bq --project proj-wikimeasure --nosync load --max_bad_records 1 --skip_leading_rows 1 analysis.nyc_comptroller_claims output/formatted_nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json
bq --project proj-wikimeasure --nosync load --max_bad_records 1 --replace --skip_leading_rows 0 analysis.nyc_comptroller_claims output/formatted_nyc_comptroller_claims.csv schemas/nyc_comptroller_claims.json
