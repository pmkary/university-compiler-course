function T9(suggestions_list, query) {const results = []; for (let suggestion of suggestions_list) {let current_character_index = 0; let element_buffer = ``; for (let suggestion_character of suggestion) {if ((suggestion_character === query[current_character_index])) {if ((current_character_index < query.length)) {current_character_index = (1 + current_character_index); }; element_buffer = (element_buffer + suggestion_character); } else {element_buffer = (element_buffer + suggestion_character); }; }; if ((current_character_index >= query.length)) {results.push(element_buffer); }; }; return results; ; }; const suggestions = ["pouya", "kary", "something", "something else"]; console.log(T9(suggestions, "en")); 