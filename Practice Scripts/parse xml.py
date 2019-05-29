# =============================================================================
# Dynamic method (doesn't work for some types of xml)
# =============================================================================


import pandas as pd
import xmltodict, json

with open(r'C:\Users\sselvaku\OneDrive - Systech Solutions, Inc\Data Wrangling\sample_xml.xml') as fd:
    doc = xmltodict.parse(fd.read())

print(xmltodict.unparse(doc, pretty=True))

print(doc)
    
j=json.dumps(doc)

s=str(j)
new_j=s[s.find('['):s.rfind(']')+1]

pd.read_json(new_j)


# =============================================================================
# 
# =============================================================================

import xml.etree.ElementTree as et 
import pandas as pd

with open(r'C:\Users\sselvaku\OneDrive - Systech Solutions, Inc\Data Wrangling\sample_xml1.xml') as fd:
    doc = xmltodict.parse(fd.read())

print(xmltodict.unparse(doc, pretty=True))

xtree = et.parse(r'C:\Users\sselvaku\OneDrive - Systech Solutions, Inc\Data Wrangling\sample_xml1.xml')
xroot = xtree.getroot()

def getvalueofnode( node ):
    return node.text if node is not None else None

import xml.etree.cElementTree as et
dfcols = ['name','email','phone','street']
df = pd.DataFrame(columns=dfcols)

for node in xroot:
    name = node.attrib.get('name')
    email = getvalueofnode(node.find('email'))
    phone = getvalueofnode(node.find('phone'))
    street = getvalueofnode(node.find('address/street'))
    df = df.append( pd.Series( 
        [name, email,phone,street],
        index=dfcols) ,ignore_index=True)
print(df)

