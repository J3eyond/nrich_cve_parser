import json
from datetime import date
from os import getcwd


TODAY = date.today()
filename = f'{getcwd()}/output/nrich_result_{TODAY}.txt'

with open(filename) as json_file:
    data = json.load(json_file)

    for item in data:
        try:
        
            ip = item['ip']
            hostnames = item['hostnames']
            vulns = item['vulns']
            ports = item['ports']
            cpes = item['cpes']

            if len(vulns) != 0:
            
                print('-'*50)
                print(f'ip: {ip}\n')
                print(f'Открытые порты: {ports}\n')
                print(f'Домены:\n\n {hostnames}\n')
                print(f'Технологии:\n')
                print(f'{cpes}\n')
                print('Уязвимости:\n')
                print(f'{vulns}\n')
        except:
            print('-'*50)
