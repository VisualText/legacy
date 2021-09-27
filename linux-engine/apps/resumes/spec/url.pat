
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\url.pat
# TIME: 17:02:07 11/17/06
@NODES _LINE

@PRE
<1,1>	length(3);
<5,5>	length(3);
@RULES

# Ex:	www.absoluterealtime.com
_url <- www [s layer=("_machineName")] \. [s] _xALPHA [s layer=("_companyName")] \. [s] _xWILD [min=1 max=1 s layer=("_domainName") match=("com")] @@

