# -*- coding: utf-8 -*-
"""
Created on Wed May 22 15:20:59 2019

@author: RYanamad
"""



import pandas as pd
import xmltodict, json

with open(r'C:\Users\RYanamad\Desktop\ramya_xml_parse.xml') as fd:
    doc=xmltodict.parse(fd.read())
doc
print(xmltodict.unparse(doc,pretty=True))
    

j=json.dumps(doc)
print(j)



s=str(j)
new_j=s[s.find('['):s.rfind(']')+1]
print(new_j)
fmt_j=pd.read_json(new_j)
print(fmt_j)

#-----node reading----
import xml.etree.ElementTree as et
import pandas as pd


xtree = et.parse(r'C:\Users\RYanamad\Desktop\ramya_xml_parse.xml')
xroot=xtree.getroot()


elemList=[]
for elem in xtree.iter():
    elemList.append(elem.tag)
elemList=list(set(elemList))

print(set(elemList))

df_cols=["name","email","grade","age"]
out_df=pd.DataFrame(columns=df_cols)


for node in xroot:
    s_name=node.attrib.get("name")
    s_mail=node.find("email").text if node is not None else None
    s_grade=node.find("grade").text if node is not None else None
    s_age=node.find("age").text if node is not None else None

    out_df=out_df.append(pd.Series([s_name,s_mail,s_grade,s_age],index=df_cols),ignore_index=True)
print(out_df)
#----json---
import xml.etree.ElementTree as et
import pandas as pd
df=pd.read_json(r'C:\Users\RYanamad\Desktop\sample.json')
print(df)