import requests
import json
import csv

url = 'http://localhost:3000/transactions'
h = {'Content-Type': 'application/json', 'Accept-Charset': 'UTF-8'}
# sample_transaction = { 'transaction': {'merchant': 'Chevron', 'note':'just gas', 'price': 54.54, 'transaction_date': '2019-06-01', 'food': 'false', 'gas': 'true', 'transaction_type': 'Chase'} }

spendings_file = open('/Users/aotosh/Documents/Rails_Apps/finance_app_v0/lib/excel_csv/2016_spendings_mar_19.csv')
csvreader = csv.reader(spendings_file)

# skip heading rows
next(csvreader)
next(csvreader)
next(csvreader)

for row in csvreader:
	# format the date
	date_array = row[0].split('/')
	formatted_date = date_array[2] + '-' + date_array[0] + '-' + date_array[1]

	# set food and gas booleans
	food = 'false'
	gas = 'false'
	if row[4]:
		food = 'true'
	if row[5]:
		gas = 'true'

	# POST the transaction to localhost server
	transaction_data = { 'transaction': {'merchant': row[1], 'note': row[2], 'price': row[3], 'transaction_date': formatted_date, 'food': food, 'gas': gas, 'transaction_type': row[6]} }
	r = requests.post(url, data=json.dumps(transaction_data), headers=h)
	print(transaction_data)

