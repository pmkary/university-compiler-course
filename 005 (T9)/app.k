
//
// ─── T9 ─────────────────────────────────────────────────────────────────────────
//

    def T9 suggestions-list query:
        fix results = [ ]
        for suggestion of suggestions-list:
            mut current-character-index = 0
            mut element-buffer = ''
            for suggestion-character of suggestion:
                if suggestion-character == [ query | current-character-index ]:
                    if current-character-index < query/length:
                        current-character-index = (+ 1 current-character-index)
                    end
                    element-buffer = (+ element-buffer suggestion-character)
                else
                    element-buffer = (+ element-buffer suggestion-character)
                end
            end
            if current-character-index >= query/length:
                (results/push element-buffer)
            end
        end
        return results
    end

//
// ─── TESTING ────────────────────────────────────────────────────────────────────
//

    fix suggestions = [
        "pouya"
        "kary"
        "something"
        "something else"
    ]

    // returns "something" and "something else"
    (console/log
        (T9 suggestions "en"))

// ────────────────────────────────────────────────────────────────────────────────
