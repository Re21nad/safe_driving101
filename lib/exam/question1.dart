import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'result1.dart';
//import 'package:safe_driving_101/assets/exam/result1.dart';
//import 'package:safe_driving_101/assets/exam/result11.dart';


List<String> results = [
  "Beginner",
  "Beginner",
  "Beginner",
  "Beginner",
  "Beginner"
];


class testQuestions1 extends StatefulWidget {
  const testQuestions1({Key? key}) : super(key: key);

  @override
  State<testQuestions1> createState() => _testQuestionsState1();
}

class _testQuestionsState1 extends State<testQuestions1> {

  List<Question> questions = [
    Question(
        Q: "ما هو تسلسل أسلوب (MSPSL)؟",
        A1: "المرايا، السرعة، الوضعية، الإشارة، النظر.",
        A2: "النظر، السرعة، الوضعية، الإشارة، المرايا.",
        A3: "المرايا، الإشارة، الوضعية، السرعة، النظر.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "تكون أفضلية المرور في الدوارات:",
        A1: "للمركبات داخل الدوار.",
        A2: "للمركبات التي تريد الدخول.",
        A3: "لمركبات النقل العام.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "عند الاقتراب من المنحنيات يجب: ",
        A1: "خفض السرعة قبل الدخول.",
        A2: "خفض السرعة داخل المنحنى.",
        A3: "زد السرعة.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "يتم تنظيم التقاطعات ذات الأولوية المتساوية بواسطة؟",
        A1: "الخطوط الأرضية.",
        A2: "الإشارات الضوئية.",
        A3: "شرطي المرور.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "تكون وضعية الانعطاف الى اليسار على طريق باتجاهين؟",
        A1: "وسط المسرب الأيمن.",
        A2: "أقرب ما يمكن إلى خط الوسط.",
        A3: "لا تحتاج إلى وضعية محددة.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "تعتبر الوضعية الأساسية للقيادة على طريق متعدد المسارات:",
        A1: "المسرب الأيمن.",
        A2: "المسرب الأيسر.",
        A3: "كل المسارب.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "كيف نستطيع كشف البقع العمياء الجانبية إن لم تتوفر تلك التقنية في المركبة؟",
        A1: "من خلال مد الرأس إلى خارج المركبة.",
        A2: "من خلال المرايا الجانبية.",
        A3: "من خلال نظرة فوق الكتف باتجاه الخلف.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "متى يسمح بالتخطي والتجاوز؟",
        A1: "مباشرة قبل التقاطعات والدوارات.",
        A2: "في الأنفاق وعلى الجسور.",
        A3: "لا شيء مما سبق.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "مسافة الإتباع الآمن في الظروف السيئة او عندما تكون متعبا هي؟",
        A1: "2- 3 ثوان",
        A2: "4-6 ثوان",
        A3: "70 متر ",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "يعتبر السائق الجديد:",
        A1: "سائقا خبيرا يقود بسلاسة.",
        A2: "سائقا يبالغ في تقدير مهاراته مما يقوده إلى الحوادث.",
        A3: "سائقا يتكيف مع ظروف الطريق وحركة المرور.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "تتوقف قدرتك على التخطيط الجيد وتجنب المخاطر على:",
        A1: "تركيزك واستعدادك لمواجهة المخاطر.",
        A2: "قدرتك على تحليل المعلومات وتعديل أسلوب قيادتك بما يتناسب مع الظروف.",
        A3: "كلاهما.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "إن القدرة على فهم وتجنب المخاطر:",
        A1: "هي مهارة تولد مع السائق.",
        A2: "هي مهارة تتطور مع الزمن واكتساب الخبرة.",
        A3: "هي مهارة أكبر لدى الرجال منها لدى النساء.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "ماهي المخاطر؟",
        A1: "تتمثل المخاطر بالحواجز الإسمنتية على جوانب الطريق.",
        A2: "هي القيادة على الطرق التي تستخدمها الحافلات.",
        A3: "هي كل ما من شأنه أن يجبرك على تغيير وضعيتك أو سرعتك أو اتجاهك.",
        difficulty: "intermediate",
        ans: 3),
    Question(
        Q: "إن الفائدة الرئيسية من التدرب على أجهزة المحاكاة هي:",
        A1: "تساعد المتدرب أن يصبح جيدا في أمور التحكم بالمركبة.",
        A2: "تساعد المتدرب على إتقان كافة التمارين.",
        A3: "تساعد المتدرب على اختبار ظروف صعبة في بيئة آمنة.",
        difficulty: "intermediate",
        ans: 3),
    Question(
        Q: "أيهم الخطر المحتمل من المواقف التالية:",
        A1: "مركبة متوقفة على جانب الطريق.",
        A2: "طفل يغادر الحافلة المدرسية.",
        A3: "مركبة متوقفة عند إشارة ضوئية حمراء.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "ماهي مصادر المخاطر الرئيسية الثلاثة؟",
        A1: "أجزاء الطريق الثابتة، سرعة ووضعية بقية المركبات، الإشارات والخطوط الأرضية.",
        A2: "أجزاء الطريق المؤقتة، سرعة ووضعية بقية المركبات، ظروف الطريق والحالة الجوية.",
        A3: "أجزاء الطريق الثابتة، سرعة ووضعية بقية المركبات، ظروف الطريق والحالة الجوية.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "تحتوي المركبات الحديثة عادة على أجهزة تعزز مراقبة الطريق ومنها:",
        A1: "حساسات إيقاف المركبة والبقع العمياء.",
        A2: "نظام (ABS).",
        A3: "نظام (ESP).",
        difficulty: "hard",
        ans: 1),
    Question(
        Q: "ما هو التسلسل الصحيح للتعامل مع المخاطر؟",
        A1: "راقب، حدد، أعط الأولوية، خطط، تصرف.",
        A2: "راقب، أعط الأولوية، حدد، خطط، تصرف.",
        A3: "أعط الأولوية، راقب، حدد، خطط، تصرف.",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "لمن يكون استخدام حزام الأمان إلزاميا بحكم القانون؟",
        A1: "يكون استخدام الحزام إلزاميا لكافة ركاب المركبة.",
        A2: "للسائق فقط.",
        A3: "للسائق والراكب الأمامي.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "يعتمد اختيار المقعد المناسب للطفل على:",
        A1: "عمر وجنس الطفل.",
        A2: "عمر وطول ووزن الطفل.",
        A3: "عمر ووزن الطفل.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "لماذا يعتبر ضبط مساند الرأس بصورة صحيحة مهما:",
        A1: "لإراحة الرقبة أثناء الرحلات الطويلة.",
        A2: "لحماية الرقبة من الإصابة أثناء الحوادث.",
        A3: "ليس من المهم ضبط مسند الرأس.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "إذا كان لديك تأمين شامل فأنت:",
        A1: "محمي من المسؤولية اتجاه الطرف الثالث فقط.",
        A2: "محمي من المسؤولية اتجاه الطرف الثالث، ويغطي التأمين إصاباتك وأضرار مركبتك.",
        A3: "محمي من المسؤولية اتجاه الطرف الثالث إن لم تكن متسببا.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "إلى ماذا يرمز(ن-م-س-أ)، (ADAS)؟",
        A1: "نظام مساعدة السائق الأوتوماتيكي.",
        A2: "نظام منع السائق المتقدم.",
        A3: "جميع أنظمة فعاليات السائق.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "يساعد نظام منع الانزلاق (ESP) على:",
        A1: "الرؤية في الظلام أو في ظروف الرؤية المحدودة بصورة أفضل.",
        A2: "يساعد السائق على التوجيه أثناء الفرملة.",
        A3: "يكشف فرص انزلاق المركبة ويقوم بتصحيح ذلك أوتوماتيكيا.",
        difficulty: "intermediate",
        ans: 3),
    Question(
        Q: "ماهي وظيفة المرشح الحافز؟ ",
        A1: "يساعد على تبريد المحرك عندما يعمل لفترات طويلة على سرعات عالية.",
        A2: "حقن خليط الوقود والهواء داخل المحرك لإنتاج الطاقة.",
        A3: "تحويل الغازات الضارة إلى غازات أقل ضررا قبل دفعها خارج المركبة.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "كيف يساعد نظام منع انغلاق الفرامل السائق؟",
        A1: "يساعد على إيقاف المركبة بصورة أسرع في أي ظرف.",
        A2: "يساعد في منع خروج المركبة عن مسارها.",
        A3: "يساعد السائق في الحفاظ على قدرة توجيه المركبة بالرغم من الفرملة القوية.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "ما هو نقصان التوجيه؟",
        A1: "يحدث نقصان التوجيه عندما تفقد الإطارات الخلفية احتكاكها مع الطريق أثناء الانعطاف.",
        A2: "يحدث نقصان التوجيه عندما تفقد الإطارات الأمامية احتكاكها مع الطريق أثناء الانعطاف.",
        A3: "يحدث نقصان التوجيه عندما تفقد الإطارات الأربع احتكاكها مع الطريق أثناء الانعطاف.",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "ما هي القيادة الآمنة المستدامة؟",
        A1: "هي نظام قيادة متطور ومتوفر في المركبات الحديثة فقط.",
        A2: "هي أسلوب قيادة اقتصادي وآمن وصديق للبيئة.",
        A3: "هي القيادة لفترات طويلة ومتواصلة.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "كيف تساعد القيادة المستدامة على تقليل مستويات التوتر؟",
        A1: "تساعد على تعزيز نمط القيادة الذي يقلل من الوقوف المتكرر.",
        A2: "تساعد على تعزيز نمط القيادة الذي يساعدك على إنهاء رحلتك بصورة أسرع.",
        A3: "تساعد على تعزيز نمط القيادة الذي تستطيع معه الحفاظ على السرعة القصوى دائما.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "من أهم فوائد القيادة المستدامة أنها:",
        A1: "تطيل عمر المركبة.",
        A2: "تقلل استهلاك الوقود.",
        A3: "كلاهما معا.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "تعتبر المركبات الكهربائية:",
        A1: "أكبر مصدر للانبعاثات الضارة.",
        A2: "أفضل صديق للبيئة.",
        A3: "أقل انتاجا للغازات الضارة.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "إن الحمولة الزائدة:",
        A1: "تزيد استهلاك الوقود واهتراء الإطارات والمكابح. ",
        A2: "تقلل استهلاك الوقود واهتراء الإطارات والمكابح.",
        A3: "لا تؤثر على استهلاك الوقود أو الإطارات أو المكابح.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "تساعد مراقبة الطريق أمامك للبحث عن الإشارات والعلامات الأرضية على:",
        A1: "تجنب الزيادة او الانخفاض المفاجئ في السرعة.",
        A2: "إرباكك ومنعك من تخطيط القيادة.",
        A3: "زيادة استهلاك الوقود في الرحلات الطويلة.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "يعتبر النقص في ضغط هواء الإطارات مشكلة بسبب:",
        A1: "زيادة ثبات المركبة مقابل زيادة استهلاك الوقود.",
        A2: "تقليل ثبات المركبة وزيادة استهلاك الوقود.",
        A3: "تعزيز التحكم بعجلة القيادة مقابل زيادة استهلاك الوقود.",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "المركبات الهجينة هي مركبات تعتمد على:",
        A1: "الطاقة البديلة.",
        A2: "الطاقة الكهربائية.",
        A3: "نظامين لإنتاج الطاقة، نظام الاحتراق الداخلي الشائع ونظام كهربائي.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "للحفاظ على أسلوب قيادة مستدامة:",
        A1: "حافظ على عدد دورات المحرك دون 2500 د/دقيقة.",
        A2: "يجب أن يتجاوز عدد دورات المحرك 3500 د/دقيقة.",
        A3: "حافظ على دورات المحرك بين 2500 و3000 د/دقيقة.",
        difficulty: "hard",
        ans: 3),
    Question(
        Q: "عند الشعور بالتعب أثناء القيادة:",
        A1: "زد سرعتك للوصول إلى وجهتك مبكرا.",
        A2: "تناول بعض مشروبات الطاقة للحفاظ على تركيزك.",
        A3: "توقف في مكان آمن وخذ قسطا من الراحة.",
        difficulty: "easy",
        ans: 3),
    Question(
        Q: "يمنع استخدام الهاتف المتحرك اثناء القيادة لأنه:",
        A1: "يشتت انتباه السائق.",
        A2: "يشغل إحدى يدي السائق.",
        A3: "يؤثر على الأنظمة الإلكترونية للمركبة.",
        difficulty: "easy",
        ans: 1),
    Question(
        Q: "عند الحاجة لتناول الأدوية:",
        A1: "يفضل تناولها قبل القيادة لاستعادة نشاطك.",
        A2: "يجب قراءة النشرة المرفقة مع الدواء لمعرفة الآثار الجانبية.",
        A3: "يجب الامتناع عن القيادة.",
        difficulty: "easy",
        ans: 2),
    Question(
        Q: "أثبتت الدراسات أن الفئة الأكثر تسببا في الحوادث هي:",
        A1: "فئة المسنين.",
        A2: "فئة السائقين الجدد.",
        A3: "فئة الشباب.",
        difficulty: "intermediate",
        ans: 3),
    Question(
        Q: "ما هو زمن رد الفعل؟",
        A1: "هو الزمن الذي تحتاجه المركبة للوقوف.",
        A2: "هو الزمن الذي يحتاجه السائق للتصرف عند مواجهة الخطر.",
        A3: "هو مدة الفرملة.",
        difficulty: "intermediate",
        ans: 2),
    Question(
        Q: "من هي المجموعة المسؤولة عن معظم حالات (غضب الطريق)؟",
        A1: "الشبان.",
        A2: "كبار السن.",
        A3: "الشابات.",
        difficulty: "intermediate",
        ans: 1),
    Question(
        Q: "تحصل على معظم المعلومات التي تحتاجها أثناء القيادة من:",
        A1: "دليل السائق.",
        A2: "النظر والمراقبة.",
        A3: "لوحة العدادات.",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "مسافة رد الفعل هي:",
        A1: "(السرعة ÷ 3)10x",
        A2: "(السرعة ÷ 10)3x",
        A3: "(المسافة الفعلية ÷ 3)10x",
        difficulty: "hard",
        ans: 2),
    Question(
        Q: "مسافة الفرملة هي:",
        A1: "مربع (السرعة ÷ 10)",
        A2: "(السرعة ÷ 3)10x",
        A3: "مكعب (السرعة ÷ 10)",
        difficulty: "hard",
        ans: 1),
  ];

  int Ecounter = 0;
  int Icounter = 4;
  int Hcounter = 6;
  int chosenQ = 3;
  int Elimit = 3;
  int Ilimit = 6;
  int Hlimit = 9;
  int lessonNum = 1;
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,

        title: Text(
          'Question ' + i.toString(),
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Add the desired functionality when the back button is pressed
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.fromLTRB(13, 5, 13, 0),
        width: double.infinity,
        height: 800,
        color: Colors.white,

          child: Column(
            children: [

              SizedBox(height: 70,),
              Container(
                margin: EdgeInsets.only(right: 22,left: 22),
                width: double.infinity,
                height: 165,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xff000000)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(3, 3),
                      blurRadius: 2,
                    ),
                  ],
                ),

                child: Center(

                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    child: Text(
                      questions.elementAt(chosenQ).Q,
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        letterSpacing: -0.5400000644,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.right,

                    ),
                  ),
                ),

              ), // Square

              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.only(left: 30),
                width: double.infinity,
                height: 30,

                child: Text(
                  'Answers:',
                  style: GoogleFonts.domine(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.14,
                    letterSpacing: -0.4800000572,
                    color: Color(0xff000000),
                  ),
                ),
                ), // Answer

              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.only(right: 20),
                width: double.infinity,
                height: 80,
                color: Colors.tealAccent,
                alignment: Alignment.centerRight,

                child: Row(
                  children: [
                    Container(

                      child: Text(
                        questions.elementAt(chosenQ).A1,
                        style: GoogleFonts.rokkitt(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.1375,
                          letterSpacing: -0.5000000596,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      //color: Colors.tealAccent,
                      child: TextButton(
                        onPressed: () {
                          i++;
                          //////to end test
                          if (Ecounter == Elimit ||
                              Icounter == Ilimit ||
                              Hcounter == Hlimit) {
                            //add result
                            if (Icounter == Ilimit) {
                              results[lessonNum - 1] = "Intermediate";
                            } else if (Hcounter == Hlimit) {
                              results[lessonNum - 1] = "Expert";
                            }
                            if (lessonNum >= 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Result1()),
                              );
                            } else {
                              lessonNum++;
                              Ecounter = Hlimit;
                              Icounter = Hlimit + 4;
                              Hcounter = Hlimit + 6;
                              chosenQ = Hlimit + 3;
                              Elimit += 9;
                              Ilimit += 9;
                              Hlimit += 9;
                              setState(() {});
                            }
                          }
                          ////////answer correct
                          else if (questions.elementAt(chosenQ).ans == 1) {
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "easy") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or hard
                              chosenQ = Hcounter;
                              Hcounter++;
                            }
                          } else {
                            ////wrong answer
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "hard") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or easy
                              chosenQ = Ecounter;
                              Ecounter++;
                            }
                          }
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xfc161853)),
                        child: Text(
                          '.A',
                          style: GoogleFonts.rokkitt(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.1375,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ),

              SizedBox(height: 25,),
              Container(

                margin: EdgeInsets.only(right: 20),
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    Container(

                      child: Text(
                        questions.elementAt(chosenQ).A2,
                        style: GoogleFonts.rokkitt(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.1375,
                          letterSpacing: -0.5000000596,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      //color: Colors.tealAccent,
                      child: TextButton(
                        onPressed: () {
                          i++;
                          //////to end test
                          if (Ecounter == Elimit ||
                              Icounter == Ilimit ||
                              Hcounter == Hlimit) {
                            //add result
                            if (Icounter == Ilimit) {
                              results[lessonNum - 1] = "Intermediate";
                            } else if (Hcounter == Hlimit) {
                              results[lessonNum - 1] = "Expert";
                            }
                            if (lessonNum >= 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Result1()),
                              );
                            } else {
                              lessonNum++;
                              Ecounter = Hlimit;
                              Icounter = Hlimit + 4;
                              Hcounter = Hlimit + 6;
                              chosenQ = Hlimit + 3;
                              Elimit += 9;
                              Ilimit += 9;
                              Hlimit += 9;
                              setState(() {});
                            }
                          }
                          ////////answer correct
                          else if (questions.elementAt(chosenQ).ans == 2) {
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "easy") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or hard
                              chosenQ = Hcounter;
                              Hcounter++;
                            }
                          } else {
                            ////wrong answer
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "hard") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or easy
                              chosenQ = Ecounter;
                              Ecounter++;
                            }
                          }
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xfc161853)),
                        child: Text(
                          '.B',
                          style: GoogleFonts.rokkitt(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.1375,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ),

              SizedBox(height: 25,),
              Container(

                margin: EdgeInsets.only(right: 20),
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    Container(

                      child: Text(
                        questions.elementAt(chosenQ).A3,
                        style: GoogleFonts.rokkitt(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.1375,
                          letterSpacing: -0.5000000596,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      //color: Colors.tealAccent,
                      child: TextButton(
                        onPressed: () {
                          i++;
                          //////to end test
                          if (Ecounter == Elimit ||
                              Icounter == Ilimit ||
                              Hcounter == Hlimit) {
                            //add result
                            if (Icounter == Ilimit) {
                              results[lessonNum - 1] = "Intermediate";
                            } else if (Hcounter == Hlimit) {
                              results[lessonNum - 1] = "Expert";
                            }
                            if (lessonNum >= 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Result1()),
                              );
                            } else {
                              lessonNum++;
                              Ecounter = Hlimit;
                              Icounter = Hlimit + 4;
                              Hcounter = Hlimit + 6;
                              chosenQ = Hlimit + 3;
                              Elimit += 9;
                              Ilimit += 9;
                              Hlimit += 9;
                              setState(() {});
                            }
                          }
                          ////////answer correct
                          else if (questions.elementAt(chosenQ).ans == 3) {
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "easy") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or hard
                              chosenQ = Hcounter;
                              Hcounter++;
                            }
                          } else {
                            ////wrong answer
                            //if question was easy
                            if (questions.elementAt(chosenQ).difficulty ==
                                "hard") {
                              chosenQ = Icounter;
                              Icounter++;
                            } else {
                              //if question medium or easy
                              chosenQ = Ecounter;
                              Ecounter++;
                            }
                          }
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Color(0xfc161853)),
                        child: Text(
                          '.C',
                          style: GoogleFonts.rokkitt(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.1375,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ),

              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.only(left: 30,right: 30),
                width: double.infinity,
                    height: 48,
                child: ElevatedButton(
                  child: Text(
                    'Skip',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rokkitt(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      height: 1.1375,
                      color: Color(0xffffffff),
                    ),
                  ),

                  style: ElevatedButton.styleFrom(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Adjust border radius as per your need
                    ),
                    primary: Color(0xfc161853), // Set the background color of the button
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Result1()));
                  },
                ),


              )

            ],
          ),
        ),
      ),
    );
  }
}

class Question {
  String Q = "";
  String A1 = "";
  String A2 = "";
  String A3 = "";
  String difficulty = "";
  int ans;
  Question(
      {required this.Q,
        required this.A1,
        required this.A2,
        required this.A3,
        required this.difficulty,
        required this.ans});
}