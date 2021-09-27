
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\phoneExtension.pat
# TIME: 17:01:40 11/17/06
@NODES _LINE

@RULES

# Ex:	Extension\_2222
_phoneExtension <- _xWILD [min=1 max=1 s layer=("_extendWord") match=("Extension" "Ext" "Ex" "x")] _xWHITE [star s] _xNUM [s layer=("_extension")] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Ext.\_2222
_phoneExtension <- _xWILD [min=1 max=1 s layer=("_extendWord") match=("Ext" "Ex")] \. [s] _xWHITE [star s] _xNUM [s layer=("_extension")] @@

