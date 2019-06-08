import csv 
csv.register_dialect("comma", delimiter=" ")
data=[['FullName','FirstName','LastName']]
with open('players.csv', newline='') as myFile:  
   reader = csv.reader(myFile, dialect='comma')   
   next(reader, None) 
   for row in reader:        
       data.append([row[0]+' '+row[1],row[0],row[1]])   
myFile = open('players.csv', 'w')  
with myFile:  
   writer = csv.writer(myFile,lineterminator='\n' )
   writer.writerows(data)    