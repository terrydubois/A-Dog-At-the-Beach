if (typeString == text[currentText]) {
	exit;
}

var currentChar = string_char_at(text[currentText], typePos);

typeString += currentChar;


if (currentChar == " " && typeLinePos > typeLineMaxLength) {
	typeString += "#";
	typeLinePos = 0;
}


typePos++;
typeLinePos++;


if typePos <= string_length(text[currentText])
	alarm[0] = typeRate;