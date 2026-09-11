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

Forráskód: **https://github.com/Sabolo100/darwin-ai-logo-studio**

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

**D embléma** – **egyetlen „Betűvastagság" csúszka** állítja a szárat, a felső és alsó gerendát
és a jobb oldali tömeget is; a belső négyzet mérete és a Cross változat áttörési pontja magától
követi. Alatta külön finomhangolható a szár és a felső gerenda. Továbbá:
magasság, szélesség, az egyenes szakasz hossza,
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
tengely, fordulatszám, amplitúdó és annak
perspektivikus növekedése, térbeli dőlés, gömbök / összekötők / izometrikus kockák száma és
mérete, szalag, árnyalás, ragyogás. **Rétegzés:** *Áttörő* – a helix balról a D **mögött**
fut, a belső négyzeten **átlátszik**, jobb felül pedig a D **elé** jön ki (ez az eredeti
hatás). Az **áttörési pont alapból automatikus**: ott vált, ahol a tengely a belső forma
vízszintes közepén halad át – így a D vastagságának változtatása magától viszi magával.
Kikapcsolva kézzel is beállítható.

**Kompozíció alapja** – „Csak a D": a helix kilóghat a vászonból, a D marad középen (így néz
ki a `Cross.png`). „D + helix": minden belefér a vászonba.

**Tengely fogantyúk** – alapból nem látszanak. A vászon alatti **Tengely** gombbal (vagy `T`
billentyűvel) kapcsolhatók be: ekkor megjelenik két címkézett pont – **A = a DNS-lánc kezdete**
(vékony vég), **B = a vége** (a nagy arany kocka) – szaggatott vonallal összekötve. Ezeket húzva
állítod a helix helyét, hosszát és dőlésszögét; a vászon alján élőben látod a szöget és a hosszt.
Az *Eredeti tengely* / *Tükrözés* / *Vízszintes* / *Szög: −25°* gombok egy kattintásos beállítások.

**Méret-előnézetek** – a vászon jobb felső sarkában látszó 16/32/64/128 px-es kicsinyítések a
**Méretek** gombbal (vagy `S` billentyűvel) egyben ki-be kapcsolhatók.

---

## Animáció

11 mód, mind a `Cross.png` helixéhez igazítva vagy a teljes lockupra:

`Arany fénycsík` · `Helix forgás` · `Utazó elemek` · **`Átfűződés`** (a helix balról
belefűződik a D-be, majd jobb felül kijön) · `Összeállás` · `Megrajzolás` · `Lüktetés` ·
`Kocka pörgés` · `Feltárás` · `Ragyogás`

A vászon alatti idővonalon lejátszható és tekerhető. Export:

**▶ Videó exportálása…** – párbeszédablakban választható a formátum (**MP4 / H.264**, ha a
böngésző tudja – a Chrome újabb verziói igen –, vagy WebM VP9 / VP8, illetve átlátszó hátterű
WebM), a felbontás (512–1920 px vagy vászonméret), a képkockaszám (24/30/50/60), az ismétlések
száma, a háttér és a bitráta. Folyamatjelző és becsült hátralévő idő, megszakítható.

A videó **két fázisban** készül: előbb minden képkocka kirenderelődik, csak utána indul a
kódolás, pontos időzítéssel. Így a videó hossza pontosan annyi, amennyit beállítottál – a
renderelés lassúsága nem lassítja le a mozgást. *Amíg fut, hagyd a lapot előtérben*, mert
háttérben a böngésző lefojtja a renderelést.

- **Animált SVG** – képkockás (flipbook) SVG, önmagában is lejátszik bármelyik böngészőben,
  nem kell hozzá JavaScript. A képkockaszám az *Animáció* szekcióban állítható (6–90).
- **PNG képkockák** – sorozat, utómunkához (After Effects, ffmpeg).
- **GIF / MP4 recept** – kimásolható ffmpeg parancsok a képkockasorozatból készülő GIF-hez,
  MP4-hez és átlátszó WebM-hez.

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
`Szóköz` animáció lejátszás/állj · `H` helix be/ki · `T` tengely fogantyúk · `S` méret-előnézetek ·
`G` rács · `B` befoglaló dobozok · `[` / `]` a D vékonyítása / vastagítása ·
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
- **Vastagság-arányok**: a „Betűvastagság" csúszka a mért arányokat tartja –
  felső gerenda = 1,040 × szár, alsó = 0,949 × szár, jobb oldali tömeg = 1,119 × szár.
  176 px-en ez pontosan visszaadja az eredeti 183 / 167 / 197 px-es értékeket.
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
