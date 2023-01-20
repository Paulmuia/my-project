from urllib.request import Request
from bs4 import BeautifulSoup
import requests
from csv import writer

url='https://priceinall.com/product/infinix-hot-20i/'

page=requests.get(url)
soup=BeautifulSoup(page.content,'html.parser')
titles=soup.find_all('td',class_='aps-attr-title')
clist=[]

#creating the comparison list
for title in titles:
    title=title.find('span',class_='aps-attr-co').text.replace('\n','')
    c=[title]
    clist+=c

all=['Brand','Model','Category','Launch Announcement','Launch Date','Network Type','2G Network','3G Network','3G Bands','4G Network','4G Bands','5G Network','5G Bands','Speed','GPRS','Dimensions','Weight','SIM Card','Colors','Build','Protection','Features','Display Type','Size','Ratio','Resolution','Pixel Density','Resolution','Multitouch','Display Protection','Refresh Rate','Features','CPU','GPU','Chipset','RAM','Internal Storage','Memory Slot','Version','Storage Type','Operating System','Version','User Interface','camera','Features','Video','camera','Features','Video','Loudspeaker','3.5mm Jack','Microphone','Alert Types','Wi-fi','Bluetooth','Wi-fi Hotspot','FM Radio','USB','OTG','GPS','NFC','Fingerprint','Face Unlock','Sensors','Battery Type','Battery Capacity','Battery Charging','Fast charging','Wireless Charging','United States','Europe','India']

list=[]
x=0
y=0

for spec in all:
    if y<len(clist):
        if all[x]==clist[y] or all[x][:3]==clist[y][:3]:
            list+=[all[x]]

        #elif all[x]!=clist[y] or all[x][:4]!=clist[y][:4]:
            
          #  g=0
            #t=len(all)-x
           # while g < t:
              #  if all[x]==clist[y]:
                   # list+=[all[x]]
                  #  x+=1
                   # break
                
               # g+=1'''
        elif all[x]!=clist[y] or all[x][:3]!=clist[y][:3]:
            y-=1
            list+=['']
                
        '''else:
            y-=1
            list+=[''] '''

    x+=1
    y+=1

npage=requests.get(url)
nsoup=BeautifulSoup(npage.content,'html.parser')
specs=nsoup.find_all('td',class_='aps-attr-value')

en=[]
for spec in specs:
    dani=spec.find('span',class_='aps-1co').text
    st=[dani] 
    en+=st

llist=[]
x=0
y=0
for item in list:
    if x<len(list):
        if list[x]=='':
            llist+=['']
            y-=1
        else:
            llist+=[en[y]]
    x+=1
    y+=1
print(llist)
print(len(llist))

with open('r.csv','a',encoding='utf8',newline='') as f:
    thewriter=writer(f)
    thewriter.writerow(llist)



