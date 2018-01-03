
//
// ─── TEXT CASE ──────────────────────────────────────────────────────────────────
//

    fix test-case = "hello"

//
// ─── ALL SUBSETS ────────────────────────────────────────────────────────────────
//

    def generate-all-subsets text:
        fix all-subsets = [ ]
        for 0 up to text/length via low-boundary:
            for low-boundary up to text/length via high-boundary:
                (all-subsets/push
                    (text/substring low-boundary high-boundary))
            end
        end
        return (all-subsets/filter [ x => x != "" ])
    end

    fix all-subsets = (generate-all-subsets test-case)
    (console/log
        "All subsets ("   all-subsets/length   ") are:"   all-subsets)


//
// ─── PREFIXES ───────────────────────────────────────────────────────────────────
//

    def generate-all-prefixes text:
        fix all-prefixes = [ ]
        for 0 up to text/length via index:
            (all-prefixes/push
                (text/substring 0 index))
        end
        return all-prefixes
    end

    fix all-prefixes = (generate-all-prefixes test-case)
    (console/log
        "All prefixes ("   all-prefixes/length   ") are: "   all-prefixes)

//
// ─── POSTFIXES ──────────────────────────────────────────────────────────────────
//

    def generate-all-postfixes text:
        fix all-postfixes = [ ]
        for text/length down to 0 via index:
            (all-postfixes/push
                (text/substring index text/length))
        end
        return all-postfixes
    end

    fix all-postfixes = (generate-all-postfixes test-case)
    (console/log
        "All postfixes ("   all-postfixes/length   ") are: "   (all-postfixes/reverse))

// ────────────────────────────────────────────────────────────────────────────────
