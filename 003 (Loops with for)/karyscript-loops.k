
//
// ─── KARYSCRIPT LOOPS ───────────────────────────────────────────────────────────
//

    // Languages like KaryScript support ranged based loops. These loops like:

    for 2 up to 100 step 2:
        (do-something)
    end

    // These loops can easily be implemented via introducing helper variables:
    // (This is the JavaScript code produced by the KaryScript compiler)
    // for (let __$KK1499 = 2; __$KK1499 <= 100; __$KK1499 += 2) {do_something(); };

// ────────────────────────────────────────────────────────────────────────────────


