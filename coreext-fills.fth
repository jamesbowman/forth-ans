TESTING <>
T{ 0 0 <> -> <FALSE> }T
T{ 1 1 <> -> <FALSE> }T
T{ -1 -1 <> -> <FALSE> }T
T{ 1 0 <> -> <TRUE> }T
T{ -1 0 <> -> <TRUE> }T
T{ 0 1 <> -> <TRUE> }T
T{ 0 -1 <> -> <TRUE> }T

TESTING NIP
T{ 1 2 NIP -> 2 }T
T{ 1 2 3 NIP -> 1 3 }T

TESTING MARKER
DECIMAL

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
