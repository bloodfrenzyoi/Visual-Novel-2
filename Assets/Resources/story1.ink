EXTERNAL place_actors(left_actor_name, right_actor_name)
EXTERNAL change_emotion (emotion, ID)
EXTERNAL place_one_actor(sole_name)
EXTERNAL choose_background(background)
//Left = 0. Right = 1, sole actor ID = 0
{place_one_actor("Actor 2")}
//{place_actors("Actor","Actor 2")}
{change_emotion("Neutral", 0)}
..{change_emotion("Neutral", 1)}
{choose_background("Room")}
-> intro

==intro==
Budzisz się zlana zimnym potem. Coś Ci się śniło, ale co? Nie możesz sobie przypomnieć. Jedyne co pozostało po tym śnie to niejasne uczucie grozy zawiązujące się na wysokości Twojego żołądka. Gdy unosisz głowę z poduszki, Twój wzrok pada na wpatrującą się w Ciebie pustymi oczami czaszkę jelenia wiszącą na przeciwległej ścianie. Ten widok wyrywa Cię z sennego otępienia i przypominasz sobie gdzie jesteś. Supeł w Twoich trzewiach przemienia się w grudę lodu przeszywającą Cię od środka przenikliwym zimnem. Zamykasz oczy i kierujesz szybką modlitwę o ukojenie duszy do Najświętszej Panienki. Szczęśliwie, jesteś w pokoju sama.
*[Rozejrzyj się po pokoju] -> pokoj
-> DONE
==pokoj==
{place_actors("Actor 2", "Actor 3")}
{change_emotion("Scared", 0)}
{change_emotion("Angry", 1)}
Pokój jest niewiele większy od Twojej komnaty w Rozłogach. Łóżko, w którym leżysz, zajmuje znaczną jego część. Ściany są obite bogato zdobionym materiałem, tu i ówdzie wiszą na nich czaszki zwierząt. Na prawo od łóżka znajduje się palenisko. Po przeciwnej stronie widzisz drzwi, nad którymi wiszą zwierzęce skóry.
*[Podejdź do paleniska] -> palenisko
*[Przyjrzyj się czaszkom]-> czaszki
*[Zbadaj drzwi] -> drzwi
*[Wróć do łóżka] -> sen

==palenisko==
Trawione przez płonienie ogromne polano wrzucone do paleniska wydaje z siebie raz po raz trzaski, jakby skarżąc się na swój los. Dym ucieka z pokoju przez kamienny komin. Ciepło bijące od ognia ogrzewa Twoje ciało, ale nie jest w stanie roztopić bryły lodu w Twoich trzewiach.
*[Zbadaj komin]
*[Wróć do pokoju]
->pokoj
->DONE

==czaszki==
Białe czaszki na ścianie w milczeniu szczerzą do Ciebie zęby. Rozpoznajesz kształt niektórych z nich - w Rozłogach ściany były także przyozdobione trofeami łowieckimi z polowań na jelenie, sarny, dziki... Ale niektóre z tych czaszek nie przypominają żadnego zwierzęcia jakie byś znała. Masz wrażenie, jakby te obce, dziwne stworzenia, lub to co z nich pozostało, obserwowały każdy Twój ruch.
*[Wróć do pokoju] -> pokoj
->DONE

==drzwi==
*[Wróć do pokoju]
->pokoj
->DONE

==sen==
*[Wróć do pokoju]
->pokoj
->DONE
