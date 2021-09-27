
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\posPREP.pat
# TIME: 17:00:20 11/17/06
@NODES _LINE

@RULES

# Ex:	aboard
_posPREP [layer=(_funWORD )] <- _xWILD [min=1 max=1 s match=("aboard" "about" "above" "across" "after" "against" "along" "alongside" "amid"
 "amidst" "among" "amongst" "apropos" "around" "as" "at" "atop" "before" "behind"
 "below" "beneath" "beside" "besides" "between" "beyond" "but" "by" "despite" "down"
 "during" "for" "from" "in" "inside" "minus" "notwithstanding" "of" "off" "on"
 "opposite" "out" "outside" "outwith" "over" "past" "per" "plus" "re" "round"
 "since" "than" "through" "throughout" "till" "to" "toward" "towards" "under" "underneath"
 "untill" "up" "upon" "via" "with" "within" "without")] @@

@PRE
<1,1>	length(7);
<3,3>	length(2);
@RULES

# Ex:	apropos\_of
_posPREP [layer=(_funWORD )] <- _xWILD [min=1 max=1 s match=("apropos")] _xWHITE [star s] of [s] @@

