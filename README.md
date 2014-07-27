forth-ans
=========

`anstests` is a pristine snapshot of anstests0.9

To run the new tests from the command line under `gforth`, do:

    gforth anstests/tester.fr anstests/core.fr coreext-fills.fth

Coverage for these additional CORE EXT words is in `coreext-fills.fth`:

    <>            done
    0<>           done
    0>            done
    2>R           done
    2R>           done
    2R@           done
    AGAIN         done
    CONVERT
    ERASE
    EXPECT
    HEX           done
    MARKER        done
    NIP           done
    PAD
    PICK          done
    QUERY
    .R
    REFILL
    ROLL          done
    SOURCE-ID
    SPAN
    TIB
    #TIB
    TUCK          done
    U>            done
    UNUSED        done
    U.R
    WITHIN        done

The following tests were in CORE but are now covered in CORE EXT:

    HEX

