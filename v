fn is_pangram(sentence: &str) -> bool {
    let sentence = sentence.to_lowercase();
    let mut alphabet = vec![false; 26];
    let a_code = 'a' as u32;

    for c in sentence.chars() {
        if c.is_alphabetic() {
            let index = c as u32 - a_code;
            alphabet[index as usize] = true;
        }
    }

    alphabet.iter().all(|&x| x)
}

let sentence = "The quick brown fox jumps over the lazy dog";
if is_pangram(sentence) {
    println!("Строка является панграммой");
} else {
    println!("Строка не является панграммой");
}
