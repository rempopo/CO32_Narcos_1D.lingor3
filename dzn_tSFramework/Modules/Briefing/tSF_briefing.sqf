//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"После череды терактов по поручению Пабло, на него объявили охоту власти Колумбии. Предположительно он засел на острове. Его головорезы захватили ближайший город к его вилле. Вам предстоит зачистить город и и убить или  захватить Пабло Эскобара"
END

TOPIC("А. Враждебные силы:")
"до 3х взводов солдат Медельинского картеля"
END

TOPIC("Б. Дружественные силы:")
"1'1<br />1'2<br />1'3<br />1'6<br />Pilot's UH-1H<br />"
END

TOPIC("II. Задание:")
"1. Зачистить город<br />2. Захватить\Убить Пабло Эмилио Эскобара Гавирия "
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"1x UH-1H (Pelmeshek 1)<br />1x SA330 (Emilio 1)<br />1x UAZ DShKM<br />1x UAZ AGS-30<br />1x UAZ<br />2x V3S"
END

TOPIC("V. Сигналы:")
"PL NET 50<br />1'1 - SR CH 1<br />1'2 - SR CH 2<br />1'3 - SR CH 3<br />UH-1H - SR CH 4"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

ADD_TOPICS