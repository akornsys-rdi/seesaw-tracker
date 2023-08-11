void setup() {
    pinMode(2, INPUT);
    pinMode(3, INPUT);
    pinMode(4, INPUT);
    pinMode(5, INPUT);
    pinMode(6, OUTPUT);
    pinMode(7, OUTPUT);
}

void loop() {
    if (!digitalRead(2) || !digitalRead(3)) digitalWrite(6, HIGH);
    else digitalWrite(6, LOW);
    if (!digitalRead(4) || !digitalRead(5)) digitalWrite(7, HIGH);
    else digitalWrite(7, LOW);
}
