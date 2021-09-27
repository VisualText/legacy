
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\addressPart.pat
# TIME: 17:02:49 11/17/06
@NODES _LINE _cityStateZip

@RULES

# Ex:	Home:\_(562)\_437-2211
_addressPart <- _phoneHomePhrase [s] @@

# Ex:	Work:\_818-491-2148
_addressPart <- _phoneWorkPhrase [s] @@

# Ex:	12345\_Elm\_Boulevard,\_Apartment\_23456
_addressPart <- _addressLine [s] _xPUNCT [s] _xWHITE [star s] _unitRoom [s] @@

@PRE
<4,4>	cap();
<4,4>	length(2);
<6,6>	length(5);
<8,8>	length(4);
@RULES

# Ex:	Long\_Beach,\_CA\_90802-6648
_addressPart <- _xWILD [min=1 max=1 s match=("_cityName" "_city" "_Caps" "_cityPhrase")] \, [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_stateName" "_state" "_PostalState" "CA")] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_zipCode" "90802")] \- [s] _xWILD [min=1 max=1 s match=("_zipSuffix" "6648")] @@

@RULES

# Ex:	david@dehilster.com
_addressPart <- _email [s] @@

# Ex:	508-877-1870\_fax
_addressPart <- _phoneFaxPhrase [s] @@

# Ex:	www.gansler.com
_addressPart <- _url [s] @@

# Ex:	Apt\_#\_1209
_addressPart <- _unitRoom [s] @@

