\ ------------------------------------------------------------------------
TESTING <>

T{ 0 0 <> -> <FALSE> }T
T{ 1 1 <> -> <FALSE> }T
T{ -1 -1 <> -> <FALSE> }T
T{ 1 0 <> -> <TRUE> }T
T{ -1 0 <> -> <TRUE> }T
T{ 0 1 <> -> <TRUE> }T
T{ 0 -1 <> -> <TRUE> }T

\ ------------------------------------------------------------------------
TESTING 0<> 0>

T{ 0 0<> -> <FALSE> }T
T{ 1 0<> -> <TRUE> }T
T{ 2 0<> -> <TRUE> }T
T{ -1 0<> -> <TRUE> }T
T{ MAX-UINT 0<> -> <TRUE> }T
T{ MIN-INT 0<> -> <TRUE> }T
T{ MAX-INT 0<> -> <TRUE> }T

T{ 0 0> -> <FALSE> }T
T{ -1 0> -> <FALSE> }T
T{ MIN-INT 0> -> <FALSE> }T
T{ 1 0> -> <TRUE> }T
T{ MAX-INT 0> -> <TRUE> }T

\ ------------------------------------------------------------------------
TESTING NIP TUCK ROLL

T{ 1 2 NIP -> 2 }T
T{ 1 2 3 NIP -> 1 3 }T

T{ 1 2 TUCK -> 2 1 2 }T
T{ 1 2 3 TUCK -> 1 3 2 3 }T

T{ : ro5  100 200 300 400 500 ; -> }T
T{ ro5 3 ROLL -> 100 300 400 500 200 }T
T{ ro5 2 ROLL -> ro5 ROT }T
T{ ro5 1 ROLL -> ro5 SWAP }T
T{ ro5 0 ROLL -> ro5 }T

T{ ro5 2 PICK -> 100 200 300 400 500 300 }T
T{ ro5 1 PICK -> ro5 OVER }T
T{ ro5 0 PICK -> ro5 DUP }T

\ ------------------------------------------------------------------------
TESTING UNUSED

T{ UNUSED DROP -> }T

\ ------------------------------------------------------------------------
TESTING MARKER

T{ : ma? BL WORD FIND NIP 0<> ; -> }T
T{ MARKER ma0  -> }T
T{ : ma1 111 ; -> }T
T{ MARKER ma2  -> }T
T{ : ma1 222 ; -> }T
T{ ma? ma0 ma? ma1 ma? ma2 -> <TRUE> <TRUE> <TRUE> }T
T{ ma1 ma2 ma1 -> 222 111 }T
T{ ma? ma0 ma? ma1 ma? ma2 -> <TRUE> <TRUE> <FALSE> }T
T{ ma0 -> }T
T{ ma? ma0 ma? ma1 ma? ma2 -> <FALSE> <FALSE> <FALSE> }T
bye
