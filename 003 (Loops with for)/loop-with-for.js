
//
// ─── WHILE LOOP WITH FOR ────────────────────────────────────────────────────────
//

    // while has 3 parts:

    beforeTheLoop( )
    while ( condition( ) ) {
        insideTheLoop( )
    }

    // that can be written with for as:

    for( beforeTheLoop( ); condition( ); insideTheLoop( ) );

// ────────────────────────────────────────────────────────────────────────────────





//
// ─── FOR EACH WITH LOOP ─────────────────────────────────────────────────────────
//

    // for loops that navigate an array like:

    for ( const element of elements ) {
        insideOfTheLoop( )
    }

    // can be written as:

    for ( let index = 1; index < elements.length; index++ ) {
        const element = elements[ index ]
        insideOfTheLoop( element )
    }

// ────────────────────────────────────────────────────────────────────────────────



//
// ─── DO WHILE ───────────────────────────────────────────────────────────────────
//

    // do while code is like this:

    do { something( ) } while ( conditionHolds( ) );

    // this can be implemented in for like this:

    for ( let shouldContinue = true; shouldContinue ; ) {
        something( )
        shouldContinue = conditionHolds( )
    }

// ────────────────────────────────────────────────────────────────────────────────
