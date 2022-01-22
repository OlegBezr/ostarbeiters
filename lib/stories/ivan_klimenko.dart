import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:ostarbeiters/models/story.dart';
import 'package:ostarbeiters/models/story_part.dart';

var ivanKlimenko = Story(
  start: part1, 
  name: MultilanguageText.fromTexts('Иван Клименко', 'Ivan Klimenko'), 
  assetsFolder: 'ivan_klimenko'
);

var part1 = LinearPart(
  text: MultilanguageText.fromTexts(
    'Вас зовут Иван Клименко, вам 18 лет. Вы проживаете в деревеньке недалеко от Луганска.',
    'Your name is Ivan Klimenko, You are 18 years old. You live in a village near Lugansk.'
  ),
  textSound: MultilanguageText.fromTexts(
    'Вас зовут Иван Клименко.m4a', 
    'Your name.m4a'
  ),
  imageAsset: 'empty.png',
  heroAsset: 'ivan.png',
  nextStoryPart: part2,
);

var part2 = LinearPart(
  text: MultilanguageText.fromTexts(
    'К вам в дом приходит полицай и говорит вашим родителям, что если вас не отправят на работы в Германию, то вашу семью подвергнут наказанию.',
    'A Polizei comes to your house. You must go to work to Germany. If you decline, there will be consequences for your family.'
  ),
  textSound: MultilanguageText.fromTexts(
    'К вам в дом.m4a', 
    'A Polizei.m4a'
  ),
  historicalNote: MultilanguageText.fromTexts('', '*Polizei is German for policeman, the word was adopted on the occupied territories.'),
  historicalNoteSound: MultilanguageText.fromTexts('', 'polizei.mp3'),
  imageAsset: 'house.png',
  heroAsset: 'ivan.png',
  heroesAsset: 'polizai.png',
  nextStoryPart: part3,
);

var part3 = LinearPart(
  text: MultilanguageText.fromTexts(
    'Родители со слезами отпускают вас. Немцы везут вас на вокзал, где вместе с другими молодыми людьми грузят в вагоны для скота. В дороге тяжело, условия в вагонах отвратительные, и вы решаете посоветоваться с друзьями, не сбежать ли вам.',
    'Your parents let you go, tears in their eyes. You are taken to the train station and board a freight train. The conditions are harsh, and your friends contemplate escape. Do you escape with them?',
  ),
  textSound: MultilanguageText.fromTexts(
    'Родители со слезами.m4a', 
    'Your parents let you.m4a'
  ),
  imageAsset: 'trains.png',
  heroAsset: 'ivan.png',
  heroesAsset: 'parents.png',
  nextStoryPart: part4
);

var part4 = ChoicePart(
  aAnswer: MultilanguageText.fromTexts(
    '"А давайте рискнем! Вдруг встретим партизан?"',
    '"I\'ll take that risk. We might be lucky enough to stumble upon the partisans?"'
  ),
  bAnswer: MultilanguageText.fromTexts(
    '"Бежать некуда, вся Западная Украина оккупирована немцами. Нас поймают и вернут сюда же, к тому же, того и гляди, достанется!"',
    '"There is nowhere to go, West Ukraine has been occupied by the Nazis since the autumn. We\'ll be captured and returned, and it won\'t end well for us."'
  ),
  aTextSound: MultilanguageText.fromTexts(
    'А давайте рискнем.m4a',
    'I’ll take the risk.m4a'
  ),
  bTextSound: MultilanguageText.fromTexts(
    'Бежать некуда.m4a',
    'There is nowhere.m4a'
  ),
  imageAsset: 'trains.png',
  heroAsset: 'ivan.png',
  heroesAsset: 'friends.png',
  aStoryPart: part5,
  bStoryPart: part7,
);

var part5 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы решаете сбежать, идёте по рельсам и впоследствии через лес.",
    "You escape with your friends. You walk along the railway and then into the forest."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы решаете сбежать.m4a",
    "You escape.m4a"
  ),
  imageAsset: 'woods.png',
  heroAsset: "ivan.png",
  heroesAsset: "friends.png",
  nextStoryPart: part6
);

var part6 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы находите какую-то деревню, в которой вас отлавливает полицай. Вас снова ведут в эшелон - ехать в Германию.",
    "You reach a village where you are detained by a Polizei. You are returned to the troop train that heads for Germany."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы находите.m4a",
    "You reach.m4a"
  ),
  imageAsset: 'countryside.png',
  heroAsset: "ivan.png",
  heroesAsset: "friends.png",
  nextStoryPart: part7
);

var part7 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы решаете остаться в вагоне. Сначала вас привозят в лагерь в Польше для дезинфекции, а потом доставляют в Германию и отправляют на сбор урожая.",
    "You stay in the train car. You first arrive at a camp in Poland and are then taken to Germany, in time for harvesting."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы решаете остаться.m4a",
    "You stay in the train car.m4a"
  ),
  imageAsset: 'trains.png',
  heroAsset: "ivan.png",
  heroesAsset: "friends.png",
  nextStoryPart: part8
);

var part8 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Один раз, когда вас вместе с еще пятью рабочими отправляют строить ферму, вас не привозят назад в лагерь несколько дней.",
    "You and a few of your new acquaintances are set to build a farm. You do not return to the camp for several days."
  ),
  textSound: MultilanguageText.fromTexts(
    "Один раз.m4a",
    "You and a few.m4a"
  ),
  imageAsset: 'farm.png',
  heroAsset: "ivan.png",
  heroesAsset: "friends.png",
  nextStoryPart: part9
);

var part9 = LinearPart(
    text: MultilanguageText.fromTexts(
    "На ваши вопросы надзиратели практически ничего не отвечают и говорят вам как-нибудь ночевать здесь. Это прекрасная возможность бежать. Что делать?",
    "Your guards do not answer any questions and tell you to find a place to sleep. It's the perfect opportunity for escape. Do you take it?"
  ),
  textSound: MultilanguageText.fromTexts(
    "На ваши вопросы.m4a",
    "Your guards.m4a"
  ),
  imageAsset: 'farm.png',
  heroAsset: "ivan.png",
  nextStoryPart: part10
);

var part10 = ChoicePart(
  aAnswer: MultilanguageText.fromTexts(
    "Да, конечно! Когда еще предоставится такая возможность? Тем более, ходят слухи, что во Франции действуют партизанские отряды, и можно попытаться добраться до них.",
    "Of course! It's not every day we have this opportunity. There are rumours French guerrilla troops are not far away, we can try and reach them."
  ),
  bAnswer: MultilanguageText.fromTexts(
    "Нет, вас все равно быстро хватятся и вернут назад, да еще и накажут.",
    "No, they'll discover us quickly enough and there will be consequences."
  ),
  aTextSound: MultilanguageText.fromTexts(
    "Да, конечно! когда ещё.m4a",
    "Of course.m4a"
  ),
  bTextSound: MultilanguageText.fromTexts(
    "Нет, вас все равно.m4a",
    "No, they’ll.m4a"
  ),
  aStoryPart: part11,
  bStoryPart: part13,
  imageAsset: 'farm.png',
  heroAsset: "ivan.png",
);

var part11 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Четверо суток вы двигаетесь ориентировочно в сторону Франции по ночам, прячась в траве днем. Вы питаетесь фруктами с деревьев, которые находите рядом с полями.", 
    "For four days you move towards France: walking at night, and hiding during the day. You eat the berries and plants you find on the way."
  ),
  textSound: MultilanguageText.fromTexts(
    "Четверо суток.m4a",
    "For four days.m4a"
  ),
  nextStoryPart: part12,
  imageAsset: 'field.png',
  heroAsset: "ivan.png",
);

var part12 = LinearPart(
  text: MultilanguageText.fromTexts(
    "На пятые сутки, несмотря на ваши попытки спрятаться, вас находят немцы и приводят в гестапо. Там вас держат неделю, пытая, чтобы выяснить, не узнали ли вы чего-нибудь ненужного, а потом возвращают обратно в лагерь.", 
    "On the fifth day you are discovered and sent to Gestapo. For a week you are detained and tortured to determine whether you have learned something you shouldn't have."
  ),
  textSound: MultilanguageText.fromTexts(
    "На пятые сутки.m4a",
    "On the fifth day.m4a"
  ),
  historicalNote: MultilanguageText.fromTexts(
    "",
    "Gestapo is the Nazi Secret State Police"
  ),
  historicalNoteSound: MultilanguageText.fromTexts(
    "",
    "gestapo.mp3"
  ),
  imageAsset: 'camp.png',
  heroAsset: "ivan.png",
  nextStoryPart: part14
);

var part13 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы решаете не убегать, и на следующий день вас возвращают обратно в лагерь.",
    "You decided against escaping and return to the camp."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы решаете не убегать.m4a",
    "You decided.m4a"
  ),
  imageAsset: "camp.png",
  heroAsset: "ivan.png",
  nextStoryPart: part14
);

var part14 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вдруг вас с другими рабочими собирают и везут в Бухенвальд строить новые корпуса. Через какое-то время вам предлагают уехать поработать на завод в Веймаре. Соглашаться?",
    "You are taken to Buchenwald concentration camp to build new barracks. After some time you are given an option to go work at a factory in Weimar. Do you go for it?"
  ),
  textSound: MultilanguageText.fromTexts(
    "Вдруг вас.m4a",
    "You are taken.m4a"
  ),
  imageAsset: "empty.png",
  heroesAsset: "friends.png",
  heroAsset: "ivan.png",
  nextStoryPart: part15
);

var part15 = ChoicePart(
  aAnswer: MultilanguageText.fromTexts(
    "Да, это позволит хоть как-то сменить обстановку - постоянное нахождение в одном месте давит на вас. К тому же, на заводе должно быть посвободнее, чем в Бухенвальде.",
    "Yes, at least it's a change. It might be easier than here at the camp, too."  
  ),
  aTextSound: MultilanguageText.fromTexts(
    "Да, это позволит.m4a",
    "Yes, at least.m4a"
  ),
  bAnswer: MultilanguageText.fromTexts(
    "Нет, кто знает, что будет на заводе? Здесь, в лагере, у вас уже есть друзья, в том числе и врачи, которые стараются заботиться о вас. В Веймаре такого может не быть.",
    "No, who knows what the conditions will be? Here at the camp you have friends, and the doctors try to take care of you."
  ),
  bTextSound: MultilanguageText.fromTexts(
    "Нет, кто знает.m4a",
    "No, who knows.m4a"
  ),
  aStoryPart: part16,
  bStoryPart: part20,
  imageAsset: "empty.png",
  heroAsset: "ivan.png"
);

var part16 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Поначалу вам неплохо на заводе, но кормят вас неважно, а потом начинают увеличивать норму работ. В какой-то момент вы понимаете, что не чувствуете достаточно сил, чтобы ее выполнять. Что делать?",
    "At first its fine at the factory, but the food is scarce and the workload is growing. At one point you feel its physically impossible for you to complete it. What do you do?"
  ),
  textSound: MultilanguageText.fromTexts(
    "Поначалу вам неплохо.m4a",
    "At first.m4a"
  ),
  imageAsset: "factory.png",
  heroAsset: "ivan.png",
  nextStoryPart: part17
);

var part17 = ChoicePart(
  aAnswer: MultilanguageText.fromTexts(
    "Сказать начальнику, что больше физически не можете выполнять норму по производству.",
    "You tell the head of the factory you can't cope with the workload."
  ), 
  aTextSound: MultilanguageText.fromTexts(
    "Сказать начальнику.m4a",
    "You tell the head.m4a"
  ), 
  bAnswer: MultilanguageText.fromTexts(
    "Попытаться как-то выполнить норму, даже если очень тяжело, ведь иначе могут наказать.",
    "You try to struggle through coping with the workload."
  ),
  bTextSound: MultilanguageText.fromTexts(
    "Попытаться как-то.m4a",
    "You try to struggle.m4a"
  ),
  aStoryPart: part19,
  bStoryPart: part18,
  imageAsset: "factory.png",
  heroAsset: "ivan.png", 
  heroesAsset: "commander.png"
);

var part18 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы все равно не укладываетесь в норму, потому что обессилели из-за голода и постоянного переутомления.", 
    "However, you can't cope due to attrition and fatigue."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы все равно.m4a",
    "However, you can’t cope.m4a"
  ),
  imageAsset: "factory.png",
  heroAsset: "ivan.png",
  nextStoryPart: part19
);

var part19 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Начальник цеха пишет на вас докладную эсесовцам, и вас жестоко избивают. Неделю вы валяетесь в лагере при заводе, а после этого вас отправляют обратно в Бухенвальд. Там вам помогают врачи-заключенные, и вы потихоньку поправляетесь.", 
    "The head of the factory writes a report about your behaviour and you are beaten for it. You are sent back to the concentration camp, where the doctors nurse you back to health."
  ),
  textSound: MultilanguageText.fromTexts(
    "Начальник цеха.m4a",
    "The head of the.m4a"
  ),
  imageAsset: "factory.png",
  heroAsset: "ivan.png",
  heroesAsset: "doctor.png",
  nextStoryPart: part20
);


var part20 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Американские войска подходят к лагерю, и немцы больше не водят вас на работы. Вскоре вас и других заключенных начинают партиями выгонять из бараков под предлогом эвакуации.",
    "American troops are getting closer to the camp and the Nazis stop taking you to work. Instead, they start taking you out of the barracks in groups."
  ),
  textSound: MultilanguageText.fromTexts(
    "Американские войска.m4a",
    "American troops.m4a"
  ),
  imageAsset: "camp.png",
  heroAsset: "ivan.png",
  nextStoryPart: part21
);

var part21 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Тем не менее, ваши знакомые из подпольной организации говорят вам, что следовать этим приказам нельзя, потому что вас всех хотят расстрелять. Как поступить?",
    "Your friends from the underground resistance tell you not to follow the orders, as you are taken to be shot. What do you do?"
  ),
  textSound: MultilanguageText.fromTexts(
    "Тем не менее, ваши знакомые.m4a",
    "Your friends.m4a"
  ),
  imageAsset: "empty.png",
  heroAsset: "ivan.png",
  heroesAsset: "podpolniy.png",
  nextStoryPart: part22
);

var part22 = ChoicePart(
  imageAsset: "empty.png",
  heroAsset: "ivan.png",
  aAnswer: MultilanguageText.fromTexts(
    "Последовать приказам - неизвестно, насколько можно доверять знакомым из подпольной организации, ведь ходят слухи, что многие из них сотрудничают с эсесовцами.",
    "I'll follow the orders: who knows if I can trust the guys from the resistance for there are rumors they are secretly working for the Nazis."
  ),
  bAnswer: MultilanguageText.fromTexts(
    "Попытаться как-то избежать расстрела вместе с другими рабочими.",
    "I'll try to escape with a couple of other workers."
  ),
  aTextSound: MultilanguageText.fromTexts(
    "Последовать приказам.m4a",
    "I’ll follow.m4a"
  ), 
  bTextSound: MultilanguageText.fromTexts(
    "Попытаться как-то избежать.m4a",
    "I’ll try to escape.m4a"
  ), 
  aStoryPart: part23,
  bStoryPart: part24
);

var part23 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы с еще несколькими заключенными выходите из барака, и вас расстреливают недалеко от лагеря.",
    "You follow the group outside the barracks and are shot not far from the camp."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы с еще несколькими.m4a",
    "You follow the group.m4a"
  ),
  imageAsset: "forest.png",
  heroAsset: "ivan.png",
  nextStoryPart: null
);

var part24 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Когда вас пытаются вывести из барака, вы вместе с другими рабочими разбегаетесь и прячетесь в лесу недалеко от лагеря. Вам удается избежать расстрела, однако вместо вас надзиратели убивают группу евреев, которые слишком слабы, чтобы убежать.",
    "You make a run for it when taken outside the barracks. You hide in a nearby forest. In your place, the Nazis shoot a group of jews who are too weak to escape."
  ),
  textSound: MultilanguageText.fromTexts(
    "Когда вас пытаются.m4a",
    "You make a run.m4a"
  ),
  imageAsset: "empty.png",
  heroesAsset: "jews.png",
  nextStoryPart: part25,
  heroAsset: "ivan.png",
);

var part25 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Несколько дней вы прячетесь в лесу. Затем вы замечаете, что немцы начинают покидать лагерь. Вы вместе с другими рабочими, оставшимися в живых, возвращаетесь обратно, члены подпольной организации организовывают распределение продуктов и охрану лагеря.",
    "You hide in the forest for a couple of days. When you see Nazis have fled the camp and the underground resistance took charge, you return."
  ),
  textSound: MultilanguageText.fromTexts(
    "Несколько дней вы прячетесь.m4a",
    "You hide.m4a"
  ),
  imageAsset: "forest.png",
  heroAsset: "ivan.png",
  nextStoryPart: part26
);

var part26 = LinearPart(
  text: MultilanguageText.fromTexts(
    "На следующий день к вам приезжают американцы - ваш лагерь окончательно освобожден.",
    "American forces arrive the next day: the territory has finally been liberated."
  ), 
  textSound: MultilanguageText.fromTexts(
    "На следующий день.m4a",
    "American forces arrive.m4a"
  ),
  imageAsset: "camp.png",
  heroesAsset: "us_soldier.png",
  heroAsset: "ivan.png",
  nextStoryPart: part27
);

var part27 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Через несколько дней вам надоедает торчать в лагере: вы давно не были на свободе, и вам хочется выйти хотя бы куда-нибудь. Тем более, еды в лагере мало, и вам кажется, что ее можно попросить у местных жителей в соседней деревне. Нужно ли покидать лагерь?",
    "You quickly get bored of staying in the camp: you want to experience the full freedom again, go outside. More to it, there is scarcely any food, and you think the people in the neighbouring village can be kind enough to share some. Do you leave the camp?"
  ),
  textSound: MultilanguageText.fromTexts(
    "Через несколько дней.m4a",
    "You quickly get bored.m4a",
  ),
  imageAsset: "camp.png",
  heroAsset: "ivan.png",
  nextStoryPart: part28
);

var part28 = ChoicePart(
  imageAsset: "camp.png",
  heroAsset: "ivan.png",
  aAnswer: MultilanguageText.fromTexts(
    "Да, конечно! Все равно тут от вас никакой пользы.",
    "Of course! It's not like I'm much help around here."
  ), 
  bAnswer: MultilanguageText.fromTexts(
    "Нет, вдруг нужна будет помощь здесь? Тем более, еду, наверное, скоро привезут американские войска, которые вас освободили.",
    "No, what if they need me for something. Also, the food may just as well be brought by the Americans soon."
  ),
  aTextSound: MultilanguageText.fromTexts(
    "Да, конечно! всё равно.m4a",
    "No, what if.m4a"
  ),
  bTextSound: MultilanguageText.fromTexts(
    "Нет, вдруг нужна будет помощь здесь.m4a",
    "No, what if.m4a"
  ),
  aStoryPart: part29,
  bStoryPart: part32
);

var part29 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы с несколькими друзьями доходите до деревни, но там вас останавливают несколько американских военных. Они боятся, что вы устроите разбой в деревне, так как у вас есть оружие, и поэтому вас отправляют обратно в лагерь.",
    "You walk towards the village, but are stopped by a couple of American soldiers: they notice you carry arms and send you back to the camp worried that you would start looting."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы с несколькими друзьями.m4a",
    "You walk.m4a"
  ),
  imageAsset: "street.png",
  heroAsset: "ivan.png",
  heroesAsset: "us_soldier.png",
  nextStoryPart: part30
);

var part30 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Тем не менее, один из солдат передает командованию, что вам надо доставить еду, и вскоре ее привозят в лагерь.",
    "However, one of the soldiers notes your request for food and it is promptly brought to the camp."
  ),
  textSound: MultilanguageText.fromTexts(
    "Тем не менее, один.m4a",
    "However.m4a"
  ),
  imageAsset: "camp.png",
  nextStoryPart: part32
);

var part31 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Коммуникация с американскими войсками налажена плохо, и, к тому же, у бывшей подпольной организации очень много хлопот, и поэтому вам еще долго не доставляют еду.",
    "There is little communication with the Americans and the underground resistance is preoccupied with a number of problems, so the food does not appear for quite some time."
  ),
  textSound: MultilanguageText.fromTexts(
    "Коммуникация.m4a",
    "There is little.m4a"
  ),
  imageAsset: "camp.png",
  nextStoryPart: part32
);

var part32 = LinearPart(
  text: MultilanguageText.fromTexts(
    "После окончательного поражения Германии вам не дают выбора - вы возвращаетесь в СССР. Сначала вы перегоняете скот на родину и сопровождаете людей, возвращающихся в СССР, а потом вас отправляют на Сахалин, где вы 2 года работаете слесарем. В 1947 вам предлагают либо отправиться домой, либо остаться работать здесь. Что выбрать?",
    "After the fall of Germany you are sent back to the USSR. First your job is to driving in the cattle back to the Soviet Union and accompany the citizens returning home. Then you are sent to Sakhalin for two years to work as a locksmith. In 1947 you are given a choice: return home or remain in Sakhalin. What do you do?"
  ),
  textSound: MultilanguageText.fromTexts(
    "После окончательного.m4a",
    "After the fall.m4a"
  ),
  imageAsset: "empty.png",
  heroAsset: "ivan.png",
  nextStoryPart: part33
);

var part33 = ChoicePart(
  imageAsset: "empty.png",
  heroAsset: "ivan.png",
  aAnswer: MultilanguageText.fromTexts(
    "Конечно, вернуться домой! Вы не видели родителей уже много лет.", 
    "I'll return home, of course. I haven't seen my parents in years."
  ), 
  bAnswer: MultilanguageText.fromTexts(
    "Остаться здесь. Вы боитесь, что на родине вас опознают как \"оста\" - ходят слухи, что таких людей преследуют.", 
    "I'll stay in Sakhalin. I heared, back in Lugansk they are very suspicious towards former Osterbeiters."
  ),
  aTextSound: MultilanguageText.fromTexts(
    "Конечно.m4a",
    "I’ll return home.m4a"
  ),
  bTextSound: MultilanguageText.fromTexts(
    "Остаться здесь.m4a",
    "I’ll stay.m4a"
  ),
  aStoryPart: part34,
  bStoryPart: part35
);

var part34 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы возвращаетесь домой, родители встречают вас со слезами на глазах. В местном отделе КГБ вам говорят, что знают, что вы уехали не по своей воле. Вы очень скоро обустраиваете спокойную жизнь на родине, но воспоминания о работе в Германии не покидают вас всю жизнь.",
    "You return home, and your parents are weeping from happiness. In the local KGB unit you are told that your situation was involuntary and fully understood. You lead a peaceful life in your hometown, however the memories of Germany never fully fade."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы возвращаетесь.m4a",
    "You return home.m4a"
  ),
  imageAsset: "house.png",
  heroAsset: "ivan.png",
  heroesAsset: "parents.png",
  nextStoryPart: null
);

var part35 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы так и не возвращаетесь домой и общаетесь с родителями только при помощи писем.",
    "You stay in Sakhalin and never return home. You occasionally exchange letters with your parents."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы так и.m4a",
    "You stay.m4a"
  ),
  imageAsset: "empty.png",
  heroAsset: "ivan.png",
  nextStoryPart: null
);