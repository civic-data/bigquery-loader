#!/usr/bin/env python
from __future__ import print_function


import sys
import csv
import re
from datetime import datetime


csvwriter = csv.writer(sys.stdout, delimiter=',', quotechar='"')
reader = csv.DictReader( sys.stdin )


name = [ 'claim','filed_date','claimant_address','claimant_zip','claim_type','settlement_date','settlement_amount','agency_involved','claimed_amount']

for line in reader:
    row=[]
    for key in name:
        #print( key )
        if '_date' in key:
            try:
                date = datetime.strptime(line[key],'%m/%d/%Y')
                #row.append(datetime.strftime(date,'%Y-%m-%dT%H:%M:%S-05:00'))
                row += [ datetime.strftime(date,'%Y-%m-%dT%H:%M:%S-05:00') ]
            except Exception,e:
                #print 'issue1:',e, key, line[key]
                row += [ '0000-01-01T00:00']
                pass
        elif '_amount' in key:
            try:
                row += [ float(line[key].replace(',','').replace('$','')) ]
            except Exception,e:
                #print 'issue1:',e, key, line[key]
                #row += [ 'issue: %s' % line[key]]
                row += [ '' ]
                pass
        else:
                row += [ line[key] ]
    csvwriter.writerow(row)
                  
# date = datetime.strptime(line[key],'%m/%d/%Y')
# row.append(datetime.strftime(date,'%Y-%m-%dT%H:%M:%S-05:00'))
# except Exception,e:
# #print 'issue1:',e, key, line[key]
# row.append('')
