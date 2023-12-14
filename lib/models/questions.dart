class Questions {
  const Questions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffled() {
    final shuffledAnswer=List.of(answers);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}
