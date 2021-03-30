class QuestionModel {
  String topicId;
  String id;
  String langCode;
  String question;
  List<dynamic> answers;
  int correctAnswer;
  int level;
  String explanation;

  QuestionModel(
      {this.topicId,
      this.id,
      this.langCode,
      this.question,
      this.answers,
      this.correctAnswer,
      this.level,
      this.explanation});
  factory QuestionModel.fromJson(Map<String,dynamic> map){
    return QuestionModel(
      topicId: map['topicId'],
      id: map['id'],
      langCode: map['langCode'],
      question: map['question'],
      answers: map['answers'],
      correctAnswer: map['correctAnswer'] as int,
      level: map['level'] as int,
      explanation: map['explanation']
    );
  }
}
