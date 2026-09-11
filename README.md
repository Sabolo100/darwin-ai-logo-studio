# Darwin AI · Logo Studio

Paraméteres logószerkesztő a Darwin AI arculathoz. Egyetlen HTML fájl, telepítés és
internetkapcsolat nélkül is elindul (a Google Fonts betöltéséhez és a PNG-exporthoz kell net).

## Fájlok

| Fájl | Mi ez |
|---|---|
| **Darwin Logo Studio.html** | A szerkesztő. Dupla kattintás → megnyílik a böngészőben. |
| **darwinai-logo-clean.svg** | A `Simple.png` pixelpontos vektoros mása (helix nélkül). |
| `Simple.png`, `Cross.png` | Az eredeti referenciák. |
| `DarwinLogo SVG Spec.txt` | Az eredeti brief. |

A helixes (`Cross`) változatot a studióból exportáld – így azt a paraméterezést kapod,
amit magad állítottál be. Egy kattintás: **Export → Simple + Cross SVG**.

---

## Gyors indulás

1. Nyisd meg a **Darwin Logo Studio.html**-t.
2. Felül a `Simple` / `Cross` gomb a két alapváltozat.
3. Bal oldalon állítgatsz, középen élőben látod, jobb oldalt mented a verziókat.
4. Ha tetszik: **★ Mentés** (Ctrl+S) → adj neki nevet és **megjegyzést**, hogy később
   tudd, mi miért lett úgy.
5. Ha kész: **↓ Export** → SVG / PNG / JSON.

---

## Mit lehet állítani

**D embléma** – magasság, szélesség, szár- és gerendavastagság, az egyenes szakasz hossza,
a hasas rész kereksége (szuperellipszis kitevő: 2,00 = tiszta ellipszis, **2,36 = az eredeti
logó**, 4+ = szögletes squircle), bal sarkok lekerekítése, dőlés, kontúros (outline) mód,
szín vagy arany kitöltés. Vagy **betűtípusból**: bármelyik font bármelyik betűje lehet az
embléma, a belső forma abból is kivágódik.

**Belső forma** – négyzet / kör / rombusz / hatszög / háromszög / kereszt / ferde sáv,
méret, finom eltolás, lekerekítés, forgatás, kivágás (knockout) vagy kitöltött. A
*Négyzetesítés* és az *Optikai közép* gomb egy kattintással igazít.

**Wordmark, tagline, szolgáltatás sor** – szöveg, betűtípus (30+ Google Font + rendszerfontok),
súly, betűköz, kis/nagybetű, szín, arany gradiens. A „Darwin" és az „AI" külön színezhető.

**Sorszélességek** – a brief előírja, hogy a három szövegsor optikailag azonos széles legyen.
„Fix" módban a program **automatikusan pontosan egyformára** állítja mindhármat (alapérték:
961 px, ennyi az eredetin). Soronként választható, hogy ezt a *betűmérettel* vagy a
*betűközzel* érje el.

**Arany** – többpontos gradiens szerkesztő (kattints a sávra új színpontért, húzd a jelölőt,
dupla kattintás a törléshez), irány, lineáris/sugaras, fémes hatás. 10 kész paletta, köztük
a *Kép szerinti* (a Simple.png-ből mérve) és a *Brief arany* (#F3D37A → #D9A63E → #B67A22).

**Helix (DNS motívum)** – a `Cross.png` aranyszínű spirálja, teljesen paraméteresen:
tengely (az előnézeten a két arany fogantyúval húzható), fordulatszám, amplitúdó és annak
perspektivikus növekedése, térbeli dőlés, gömbök / összekötők / izometrikus kockák száma és
mérete, szalag, árnyalás, ragyogás. **Rétegzés:** *Áttörő* – a helix balról a D **mögött**
fut, a belső négyzeten **átlátszik**, jobb felül pedig a D **elé** jön ki (ez az eredeti
hatás); az *Áttörési pont* csúszka mondja meg, hol vált.

**Kompozíció alapja** – „Csak a D": a helix kilóghat a vászonból, a D marad középen (így néz
ki a `Cross.png`). „D + helix": minden belefér a vászonba.

---

## Animáció

11 mód, mind a `Cross.png` helixéhez igazítva vagy a teljes lockupra:

`Arany fénycsík` · `Helix forgás` · `Utazó elemek` · **`Átfűződés`** (a helix balról
belefűződik a D-be, majd jobb felül kijön) · `Összeállás` · `Megrajzolás` · `Lüktetés` ·
`Kocka pörgés` · `Feltárás` · `Ragyogás`

A vászon alatti idővonalon lejátszható és tekerhető. Export:

- **Animált SVG** – képkockás (flipbook) SVG, önmagában is lejátszik bármelyik böngészőben,
  nem kell hozzá JavaScript. A képkockaszám az *Animáció* szekcióban állítható (6–90).
- **Videó (WebM)** – a böngésző MediaRecorderjével.
- **PNG képkockák** – sorozat, utómunkához (After Effects, ffmpeg).

---

## Verziók és megjegyzések

A jobb oldali sáv a verziótár. Minden mentéshez tartozik **név, megjegyzés, címkék,
időbélyeg és bélyegkép**. Amit tud:

- betöltés egy kattintással, rögzítés (★), másolat, átnevezés, törlés
- keresés név / megjegyzés / címke szerint
- **Összevet**: megmutatja, pontosan mely paraméterek térnek el az aktuális beállítástól
- **Export / Import**: az egész verziótár egy JSON fájlban – ezt érdemes időnként
  lementeni biztonsági másolatnak, és így viheted át másik gépre is
- a beállítás-JSON-t vagy verziófájlt egyszerűen **ráhúzhatod** a vászonra a betöltéshez

A tár a böngésző `localStorage`-ában él. Ha a böngésző ezt tiltja (a program szól, ha így
van), a mentések csak a lap bezárásáig élnek – ilyenkor exportálj JSON-ba.

---

## Export

| Gomb | Mit ad |
|---|---|
| **SVG (élő szöveg)** | Kicsi, szerkeszthető. A megnyitó gépen telepítve kell lennie a fontnak. |
| **SVG (beágyazott font)** | Önhordó: a fontot base64-ben beleteszi (csak a használt karaktereket). Mindenhol ugyanúgy néz ki. |
| **PNG 1× … 8×** | Átlátszó háttérrel, tetszőleges felbontásban. |
| **Simple + Cross SVG** | Egyszerre mindkét változat, a brief szerinti fájlnevekkel. |
| **Ikoncsomag** | 1024 / 512 / 256 / 128 / 64 / 32 / 16 px PNG. |
| **Beállítás JSON** | Az aktuális állapot – visszatölthető, verziózható. |

**Jó tudni**

- A PNG-export beágyazza a betűtípusokat, ehhez **internetkapcsolat kell**. Enélkül is
  elkészül a PNG, de rendszerfonttal – a program figyelmeztet.
- A több fájlt letöltő gombok (ikoncsomag, képkockák) esetén a böngésző rákérdez, hogy
  engedélyezed-e a többszörös letöltést – engedélyezd.
- Nyomdai véglegesítéskor a szöveget alakítsd görbévé Illustratorban / Figmában
  (a brief 12. pontja), vagy használd a beágyazott fontos SVG-t.

---

## Billentyűk

`Ctrl+Z` / `Ctrl+Shift+Z` visszavonás, újra · `Ctrl+S` verzió mentése · `Ctrl+E` SVG export ·
`Szóköz` animáció lejátszás/állj · `H` helix be/ki · `G` rács · `B` befoglaló dobozok ·
`Esc` ablak bezárása · csúszkán nyilak = léptetés, `Shift` ×10, `Alt` ×0,1 ·
a csúszka **címkéjére dupla kattintás** = vissza az alapértékre.

---

## Technikai háttér

A geometria nem szemre készült, hanem a `Simple.png` kiméréséből:

- **D embléma**: 659 × 640 px; bal oldal egyenes, a felső/alsó egyenes szakasz a szélesség
  57,5%-áig tart, a hasas rész **szuperellipszis** `|x/rx|ⁿ + |y/ry|ⁿ = 1` alakkal,
  `rx = 280`, `ry = 320`, `n = 2,36` (illesztési hiba 3,4 px / 640 px). A görbe kubikus
  Bézier-ekkel van közelítve, érintő-illesztéssel.
- **Belső négyzet**: 286 × 290 px, szárvastagság 176, felső gerenda 183 px.
- **Térközök** (tintadobozok között): D → wordmark 40 px, wordmark → tagline 29 px,
  tagline → szolgáltatás sor 27 px.
- **Sorszélesség**: mindhárom szövegsor 961 px.
- **Arany (kép szerint)**: #F2BC5E → #B47D2B → #7F4B05, függőleges lineáris átmenet.

A belső négyzet valódi knockout (`fill-rule="evenodd"`), nem fehér téglalap – így
bármilyen háttéren átlátszik, ahogy a brief előírja. A rétegstruktúra követi a brief 13.
pontját: `logo_root › mark_group › helix_back / mark_D / helix_front`, majd
`wordmark_group`, `tagline_group`, `services_group`.

Az „azonos sorszélesség" úgy valósul meg, hogy a program megméri a szöveg tényleges
tintadobozát, és `textLength` + `lengthAdjust="spacing"` párossal állítja be – vagyis
**csak a betűközt húzza**, a betűformákat soha nem torzítja.

---

## Ismert korlátok

- A wordmark alapértelmezett fontja (Archivo Black) valamivel szélesebb, mint az eredeti
  raszterképen használt betű, ezért azonos 961 px-es sorszélességnél a nagybetűmagasság
  ~141 px lesz az eredeti ~155 px helyett. Ha pontosan az eredeti arányt akarod: kapcsold ki
  a *Méret a szélességhez* kapcsolót a wordmarknál, írd be kézzel a méretet, és a
  *Sorszélességek* legyen „Szabad" vagy nagyobb fix érték.
- A görbévé alakítás (outline) nincs beépítve – a beágyazott fontos SVG vagy egy
  Illustrator/Figma lépés helyettesíti.
