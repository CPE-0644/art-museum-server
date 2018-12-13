-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2018 at 07:24 AM
-- Server version: 10.3.8-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `art_museum`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `date_born` date DEFAULT NULL,
  `date_died` date DEFAULT NULL,
  `country_of_origin` varchar(45) DEFAULT NULL,
  `epoch` varchar(45) DEFAULT NULL,
  `main_style` varchar(45) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `name`, `date_born`, `date_died`, `country_of_origin`, `epoch`, `main_style`, `description`) VALUES
(1, 'Amano Kunihiro', '1929-01-14', '2001-11-24', 'Japanese', 'Modern Art', 'Printmaker', 'Kunihiro Amano was born in Hirosake, Aomori Prefecture in 1929. He graduated from Aomori Prefectural Technical School and attended classes at Musashino University of Art. Kunihiro Amano exhibited with the Japanese Print Association in 1955 and at the Tokyo International Print Biennale in 1957 and Ljubljana in 1963. Art works by the artist are in the collections of major museums like the Washington Library of Congress.'),
(2, 'Arne Jacobsen', '1927-11-25', '1999-06-06', 'French', 'Romanticism to Modern Art', 'Scultor', 'Arne Emil Jacobsen, Hon. FAIA was a Danish architect and designer. He is remembered for his contribution to architectural Functionalism as well as for the worldwide success he enjoyed with simple but effective chair designs.'),
(3, 'Cadmus Paul', '1904-10-17', '1999-12-21', 'American', 'Modern Art', 'Painter', 'Paul Cadmus was an American artist. He is best known for his egg tempera paintings of gritty social interactions in urban settings. He also produced many highly finished drawings of single nude male figures. His paintings combine elements of eroticism and social critique in a style often called magic realism.'),
(4, 'Quentin Blake', '1870-06-22', '1927-02-13', 'Chinese', 'Modern Art', 'Ceramicist', 'Sir Quentin Saxby Blake, CBE, FCSD, FRSL, RDI is an English cartoonist, illustrator and childrens writer. He may be known best for illustrating books written by Roald Dahl.[a] For his lasting contribution as a childrens illustrator he won the biennial, international Hans Christian Andersen Award in 2002, the highest recognition available to creators of childrens books.From 1999 to 2001 he was the inaugural British Childrens Laureate. He is a patron of the Association of Illustrators.'),
(5, 'Edward Lincoln Espey', '1860-01-26', '1889-11-30', 'Modern Art', 'Romanticism', 'Painter', 'llustrator, Painter. Born in Champaign City, IL in 1860. Espey came to San Francisco in the 1870s and studied at the School of Design under Williams and Yelland. He continued in Paris at Académie Julian in 1881. After his studies abroad, he settled in Portland, OR where he was active in the local art scene. A landscape Painter, he had just begun to do some of his finest work when tuberculosis ended his life at age 29. Exh: MechanicsFair (Portland), 1880; Paris Salon, 1881, 1885; Portland Art Club, 1886. In: Multnomah Co. (OR) Library. Oregon Painters 1859-1959.'),
(6, 'Fedden Mary', '1915-07-11', '2012-04-13', 'British', 'Romanticism to Modern Art', 'Printmaker', 'Fedden’s subjects are often executed in a bold, expressive style with vivid, contrasting colours, although her work of 2005-6 uses a narrower tonal range. Her still lifes are often placed in front of a landscape, as she enjoyed the contrasting of disparate, even quirky elements. When using watercolours she emphasised the rough texture of her favourite Indian papers.'),
(7, 'Galle Philip', '1537-09-05', '1612-10-28', 'Dutch', 'Romanticism', 'Watercolorist', 'Philip (or Philips) Galle was a Dutch publisher, best known for publishing old master prints, which he also produced as designer and engraver. He is especially known for his reproductive engravings of paintings.'),
(8, 'Hansen Bahia', '1915-03-14', '1976-06-16', 'German', 'Modern Art', 'Printmaker', 'Germany, Karl Heinz Hansen-Bahia began creating woodblock prints in 1946, focusing his attentions on religious scenes heavily influenced by Durer. He emigrated to Brazil in 1949 where he taught art in Sao Paulo. Here, too, is where his first exhibitions were held before he moved to Salvador Bahia.'),
(9, 'Ivey William', '1919-05-19', '1992-04-30', 'American', 'Modern Art', 'Painter', 'William Ivey Long Jr. is an American costume designer for stage and film. His most notable work includes the Broadway shows The Producers, Hairspray, Nine, Crazy for You, Grey Gardens, Young Frankenstein, Cinderella, Bullets Over Broadway and On the Twentieth Century.'),
(10, 'Jenkins Paul', '1923-10-08', '2012-12-07', 'British', 'Modern Art', 'Painter', 'Paul Jenkins is a British comic book writer, screenwriter, novelist, and narrative director. He has had much success crossing over into the American comic book market. Primarily working for Marvel Comics, Jenkins had a big part shaping the characters of the company, helping via the Marvel Knights imprint to propel Marvel from Chapter 11 bankruptcy before choosing to focus on independent publications. He is also noted for his groundbreaking narrative work in the field of video games, and is recognized as one of the worlds preeminent \"cross-media\" creators for his work across such multiple media as animation, video games, comic books, and film.'),
(11, 'Kamiya Eisuke', '1938-06-12', '2010-08-11', 'Japanese', 'Modern Art', 'Ceramicist', 'A graduate of Seto Ceramics High School 瀬窯業高校; as of 2012, a member of the faculty at the same school. (Location: Seto Town, Aichi Prefecture). Researcher at the Seto Branch of the National Industrial Testing Laboratory. His works have regularly been selected for exhibition at (annual) national competitive exhibitions, such at Nitten, Nihon Gendai Kôgei Ten, Asahi Tôgei Ten, Kôfûkai Ten, etc. Among the prizes has won are the Nitten Special Selection, Asahi Tôgei Prize (1967), Gendai Kôgei Ten Grand Prize in Contemporary Crafts; Aichi Preceture Craft and Culture Prize (1984). He has also had several solo exhibitions. He resides in Takahama, Aichi Prefecture, a city known for its ceramics industry. In 1987, Kamiya was invited to create a ceramic tower for Takahama’s public park'),
(12, 'Laurie Lambrecht', '1925-07-18', '2004-11-24', 'American', 'Modern Art', 'Photographer', 'Currently, Lambrecht has a solo show at Blue Sky Gallery in Portland, OR, titled Jungle Road.  Lambrecht is also in a group show at The Drawing Room \"Spring Forward,\" which is on view March 24 - May 7, 2018 in East Hampton. In the winter of 2018, she participated in a group exhibition \"A RADICAL VOICE - 23 Women\" at the Southampton Arts Center. This summer, Lambrecht will have a solo show at Blue Sky Gallery in Portland, OR, \"Jungle Road,\" on view May 3- June 3, 2018. She will also be teaching a Photo Journal workshop in Amagansett at The Art Barge July 23-27, 2018.'),
(13, 'Diego Rivera', '1898-02-24', '1922-07-15', 'Japanese', 'Modern Art', 'Carver', 'Diego María de la Concepción Juan Nepomuceno Estanislao de la Rivera y Barrientos Acosta y Rodríguez, known as Diego Rivera was a prominent Mexican Painter. His large frescoes helped establish the Mexican mural movement in Mexican art. Between 1922 and 1953, Rivera painted murals among others in Mexico City, Chapingo, Cuernavaca, San Francisco, Detroit, and New York City. In 1931, a retrospective exhibition of his works was held at the Museum of Modern Art in New York. Rivera had a volatile marriage with fellow Mexican artist Frida Kahlo.'),
(14, 'Neale Preston', '1780-03-13', '1847-11-12', 'English', 'Romanticism', 'Printmaker', 'John Preston Neale was an English architectural and landscape draughtsman. Much of his work was drawn, although he produced the occasional watercolour or oil painting. His drawings were used on a regular basis by engravers. A major work, the Views of the seats, Mansions, Castles, etc. of Noblemen and Gentlemen in England, Wales, Scotland and Ireland was published in 6 volumes between 1819-23.'),
(15, 'Georges Seurat', '1859-12-02', '1891-08-29', 'Japanese', 'Modern Art', 'Printmaker', 'Georges-Pierre Seurat was a French post-Impressionist Painter and draftsman. He is noted for his innovative use of drawing media and for devising the painting techniques known as chromoluminarism and pointillism. Seurats artistic personality was compounded of qualities which are usually supposed to be opposed and incompatible: on the one hand, his extreme and delicate sensibility; on the other, a passion for logical abstraction and an almost mathematical precision of mind.[2] His large-scale work, A Sunday Afternoon on the Island of La Grande Jatte (1884–1886), altered the direction of modern art by initiating Neo-impressionism, and is one of the icons of late 19th-century painting.'),
(16, 'Jim Hensono', '1936-02-24', '1990-06-13', 'English', 'Modern Art', 'Silversmith', 'James Maury Henson was an American artist, cartoonist, puppeteer, inventor and filmmaker who achieved worldwide fame as the creator of the Muppets. Born in Greenville, Mississippi, he was raised in Leland, Mississippi and Hyattsville, Maryland.Henson began developing puppets while attending high school. He created Sam and Friends while he was a freshman at the University of Maryland, College Park, a five-minute sketch-comedy puppet show that appeared on television. He graduated from the University of Maryland with a degree in home economics, after which he produced coffee advertisements and developed some experimental films. He founded Muppets, Inc., in 1958, which became the Jim Henson Company.'),
(17, 'Qi Baishi', '1864-01-01', '1957-11-16', 'Chinese', 'Romanticism to Modern Art', 'Painter', 'Qi Baishi was a Chinese Painter, noted for the whimsical, often playful style of his watercolor works. Born to a peasant family from Xiangtan, Hunan, Qi became a carpenter at 14, and learned to paint by himself. He did not start learning painting and calligraphy until he was 27. After he turned 40, he traveled, visiting various scenic spots in China. After 1917 he settled in Beijing.Some of Qis major influences include the early Qing dynasty Painter Bada Shanren (Zhu Da) and the Ming dynasty artist Xu Wei.'),
(18, 'Reddy Krishna', '1925-03-21', '2016-09-18', 'Indian', 'Modern Art', 'Printmaker', 'Krishna Reddy was an Indianprintmaker, Sculptor and teacher. He was considered a master intaglio printer and known for viscosity printing.'),
(19, 'Sander August', '1876-05-15', '1964-10-06', 'German', 'Romanticism to Modern Art', 'Photographer', 'August Sander was a German portrait and documentary Photographer. Sanders first book Face of our Time (German: Antlitz der Zeit) was published in 1929. Sander has been described as \"the most important German portrait Photographer of the early twentieth century.'),
(20, 'Tait Neal', '1865-07-29', '1948-09-13', 'British', 'Romanticism to Modern Art', 'Printmaker', 'René Clair directed a romantic musical entitled Sous les toits de Paris (Under the Roofs of Paris). Eleven years later Henry Miller sardonically reused the title for a potboiler, a paid-by-the-page ‘erotic novel’. Fast-forward another 68 years and the dormant phrase rings both affably bohemian and starry-eyed, and Neal Tait is using it to title his fourth solo show at White Cube – ‘Les Toits de Parise’, the intentional misspelling reiterating that time restlessly unmoors things. It’s a verbal nudge, however, that the exhibition’s 13 paintings, 26 drawings and three sculptures rendered fairly superfluous.'),
(21, 'Bill Viola', '1951-10-21', '0000-00-00', 'German', 'Contemporary Art', 'Painter', 'Bill Viola  is a contemporary video artist whose artistic expression depends upon electronic, sound, and image technology in New Media. His works focus on the ideas behind fundamental human experiences such as birth, death and aspects of consciousness.'),
(22, 'Bernard Leach', '1945-01-07', '2012-09-01', 'English', 'Modern Art', 'Silversmith', 'Bernard Howell Leach CH CBE , was a British studio potter and art teacher. He is regarded as the \"Father of British studio pottery\".'),
(23, 'Ansel Adams', '1945-12-12', '2014-06-15', 'German', 'Modern Art', 'Watercolorist', 'Ansel Easton Adams was an American landscape Photographer and environmentalist. His black-and-white images of the American West, especially Yosemite National Park, have been widely reproduced on calendars, posters, books, and the internet.'),
(24, 'Bridget Riley', '1978-11-05', '2012-09-15', 'English', 'Modern Art', 'Sculptor', 'Bridget Louise Riley CH CBE is an English Painter who is one of the foremost exponents of Op art. She currently lives and works in London, Cornwall and the Vaucluse in France.'),
(25, 'Donald Judd', '1995-08-21', '2015-08-21', 'American', 'Contemporary Art', 'Carver', 'Donald Judd was an American artist associated with minimalism (a term he nonetheless stridently disavowed). In his work, Judd sought autonomy and clarity for the constructed object and the space created by it, ultimately achieving a rigorously democratic presentation without compositional hierarchy. It created an outpouring of seemingly effervescent works that defied the term \"minimalism\". Nevertheless, he is generally considered the leading international exponent of \"minimalism,\" and its most important theoretician through such seminal writings as \"Specific Objects\" '),
(26, 'André Rieu', '1985-07-01', '2012-05-21', 'American', 'Modern Art', 'Painter', 'André Léon Marie Nicolas Rieu is a Dutch violinist and conductor best known for creating the waltz-playing Johann Strauss Orchestra. Together they have turned classical and waltz music into a worldwide concert touring act, as successful as some of the biggest global pop and rock music acts. He resides in his native Maastricht.'),
(27, 'Claude Monet', '1923-10-07', '2012-11-24', 'Dutch', 'Modern Art', 'Printmaker', 'Oscar-Claude Monet was a French Painter, a founder of French Impressionist painting and the most consistent and prolific practitioner of the movements philosophy of expressing ones perceptions before nature, especially as applied to plein air landscape painting. The term \"Impressionism\" is derived from the title of his painting Impression, soleil levant (Impression, Sunrise), which was exhibited in 1874 in the first of the independent exhibitions mounted by Monet and his associates as an alternative to the Salon de Paris.'),
(28, 'Maya Angelou', '1935-01-15', '1997-12-20', 'German', 'Modern Art', 'Printmaker', 'Maya Angelou was an American poet, singer, memoirist, and civil rights activist. She published seven autobiographies, three books of essays, several books of poetry, and is credited with a list of plays, movie'),
(29, 'Michelangelo', '1944-12-19', '2001-05-24', 'American', 'Modern Art', 'Painter', 'Michelangelo di Lodovico Buonarroti Simoni or more commonly known by his first name Michelangelo  was an Italian Sculptor, Painter, architect and poet of the High Renaissance born in the Republic of Florence, who exerted an unparalleled influence on the development of Western art. Considered by some the greatest living artist during his lifetime, he has since been described as one of the greatest artists of all time. Despite making few forays beyond the arts, his artistic versatility was of such a high order that he is often considered a contender for the title of the archetypal Renaissance man, along with his rival, the fellow Florentine and client of the Medici, Leonardo da Vinci.'),
(30, 'Hokusai', '1975-10-15', '0000-00-00', 'Chinese', 'Modern Art', 'Painter', 'Katsushika Hokusai which includes the internationally iconic print, The Great Wave off Kanagawa.'),
(31, 'Michelangelo', '1475-03-06', '1564-02-18', 'Italy', 'Romanticism', 'Carving', 'Sculptor, Painter, architect and poet of the High Renaissance born in the Republic of Florence, who exerted an unparalleled influence on the development of Western art.[1] Considered by some the greatest living artist during his lifetime, he has since been described as one of the greatest artists of all time.[1] Despite making few forays beyond the arts, his artistic versatility was of such a high order that he is often considered a contender for the title of the archetypal Renaissance man, along with hi'),
(32, 'Pablo Picasso', '1881-05-25', '1973-05-08', 'Italy', 'Romanticism', 'Painter', ' Ceramicist, stage designer, poet and playwright who spent most of his adult life in France. Regarded as one of the most influential artists of the 20th century, he is known for co-founding the Cubist movement, the invention of constructed sculpture,[3][4] the co-invention of collage, and for the wide variety of styles that he helped develop and explore. Among his most famous works are the proto-Cubist Les Demoiselles dAvignon (1907), and Guernica (1937), a dramatic portrayal of the bombing of Guernica by the German and Italian airforces during '),
(33, 'Auguste Rodin', '1840-11-12', '1917-11-17', 'English', 'Romanticism', 'Carving', 'Rodin possessed a unique ability to model a complex, turbulent, deeply pocketed surface in clay. Many of his most notable sculptures were criticized during his lifetime. They clashed with predominant figurative sculpture traditions, in which works were decorative, formulaic, or highly thematic. Rodins most original work departed from traditional themes of mythology and allegory, modeled the human body with realism, and celebrated individual character and physicality. Rodin was sensitive to the controversy surrounding his work, but refused to change his style. Successive '),
(34, 'Constantin Brâncuși', '1876-02-19', '1957-08-16', 'English', 'Romanticism', 'Carving', 'Painter and Photographer who made his career in France. Considered a pioneer of modernism, one of the most influential sculptors of the 20th-century, Brâncuși is called the patriarch of modern sculpture. As a child he displayed an aptitude for carving wooden farm tools. Formal studies took him first to Bucharest, then to Munich, then to the École des Beaux-Arts in Paris from 1905 to 1907. His art emphasizes clean geometrical lines that balance forms inherent in his materials with the symbolic allusions of representational art. Brâncuși sought inspiration in non-European cultures as a source of primitive exoticism, as did Paul Gauguin, Pablo Picasso, André Derain and others. However, other influences emerge from Romanian folk art traceable through Byzantine and Dionysian traditions.'),
(35, 'Alexander Calder', '1906-03-25', '1976-11-11', 'American', 'Modern Art', 'Carving', 'the most important American sculptors of the 20th century. He is best known for his colorful, whimsical abstract public sculptures and his innovative mobiles, kinetic sculptures powered by motors or air currents, which embraced chance in their aesthetic. Born into a family of accomplished artists, Calders work first gained attention in Paris in the 1930s and was soon championed by the Museum of Modern Art in New York, resulting in a retrospective exhibition in 1943. Major retrospectives were also held at the Solomon R. Guggenheim Museum (1964) and the Museum of Contemporary Art, Chicago (1974).'),
(36, 'Henry Moore', '1898-04-30', '1986-05-31', 'Italy', 'Romanticism', 'Carving', 'Henry Spencer Moore OM CH FBA (30 July 1898 – 31 August 1986) was an English artist. He is best known for his semi-abstract monumental bronze sculptures which are located around the world as public works of art. As well as sculpture, Moore produced many drawings, including a series depicting Londoners sheltering from the Blitz during the Second World War, along with other graphic works on paper.'),
(37, 'Louise Bourgeois', '1911-12-25', '2010-05-31', 'American', 'Modern Art', 'Carving', 'French-American artist. Although she is best known for her large-scale sculpture and installation art, Bourgeois was also a prolific Painter andprintmaker. She explored a variety of themes over the course of her long career including domesticity and the family, sexuality and the body, as well as death and the subconscious.[2] These themes connect to events from her childhood which she considered to be a '),
(38, 'Antony Gormley', '1950-05-30', '0000-00-00', 'British', 'Modern Art', 'Casting', 'Sculptor.[1] His best known works include the Angel of the North, a public sculpture in Gateshead in the North of England, commissioned in 1994 and erected in February 1998, Another Place on Crosby Beach near Liverpool, and Event Horizon, a multi-part site installation which premiered in London in 2007, around Madison Square in New York City, in 2010, in São Paulo, Brazil, in 2012, and in Hong Kong in 2015–16.'),
(39, 'Henri Matisse', '1869-12-31', '1954-11-03', 'Italy', 'Romanticism', 'Casting', 'November 1954) was a French artist, known for both his use of colour and his fluid and original draughtsmanship. He was a draughtsman,Printmaker, and Sculptor, but is known primarily as a Painter.[1] Matisse is commonly regarded, along with Pablo Picasso, as one of the artists who best helped to define the revolutionary developments in the visual arts throughout the opening decades of the twentieth century, responsible for significant developments in painting and sculpture.'),
(40, 'Richard Serra', '1938-11-02', '0000-00-00', 'British', 'Modern Art', 'Casting', 'an American minimalist Sculptor and video artist known for working with large-scale assemblies of sheet metal.[1] Serra was involved in the Process Art Movement. He lives and works in Tribeca, New York, and on Cape Breton Island in Nova Scotia.'),
(41, 'Gian Lorenzo Bernini', '1598-12-07', '1680-11-28', 'American', 'Romanticism', 'Casting', 'an Italian Sculptor and architect.[1] While a major figure in the world of architecture, he was, also and even more prominently, the leading Sculptor of his age, credited with creating the Baroque style of sculpture.[2] As one scholar has commented, \"What Shakespeare is to drama, Bernini may be to sculpture: the first pan-European Sculptor whose name is instantaneously identifiable with a particular manner and vision, and whose influence was inordinately '),
(42, 'Anish Kapoor', '1954-07-12', '0000-00-00', 'British', 'Modern Art', 'Casting', ' is a British[1] Sculptor. Born in Bombay,[2][3] Kapoor has lived and worked in London since the early 1970s when he moved to study art, first at the Hornsey College of Art and later at the Chelsea School of Art and Design.'),
(43, 'Salvador Dalí', '1904-08-11', '1989-01-23', 'American', 'Romanticism', 'Casting', 'Dalí was a skilled draftsman, best known for the striking and bizarre images in his surrealist work. His painterly skills are often attributed to the influence of Renaissance masters.[3][4] His best-known work, The Persistence of Memory, was completed in August 1931. Dalís expansive artistic repertoire included film, sculpture, and photography, at times in collaboration with a range of artists in a variety of media.'),
(44, 'Rachel Whiteread', '1963-08-20', '0000-00-00', 'Italy', 'Modern Art', 'Modelling', 'Whiteread was one of the Young British Artists who exhibited at the Royal Academys Sensation exhibition in 1997. Among her most renowned works are House, a large concrete cast of the inside of an entire Victorian house; the Judenplatz Holocaust Memorial in Vienna, resembling the shelves of a library with the pages turned outwards; and Untitled Monument, her resin sculpture for the empty fourth plinth in London Trafalgar Square.'),
(45, 'Vladimir Tatlin', '1885-12-28', '1953-08-31', 'Russia', 'Romanticism', 'Modelling', 'was a Soviet Painter and architect. With Kazimir Malevich he was one of the two most important figures in the Soviet avant-garde art movement of the 1920s, and he later became an important artist in the Constructivist movement. He is most famous for his design for The Monument to the Third International, more commonly known as Tatlin Tower, which he began in 1919.'),
(46, 'David Smith', '1906-09-09', '1965-07-23', 'Japan', 'Modern Art', 'Modelling', 'was an American abstract expressionist Sculptor and Painter, best known for creating large steel abstract geometric sculptures.'),
(47, 'Naum Gabo', '1890-07-05', '1977-04-23', 'American', 'Romanticism', 'Modelling', 'sculpture.[1] His work combined geometric abstraction with a dynamic organization of form in small reliefs and constructions, monumental public sculpture and pioneering kinetic works that assimilated new materials such as nylon, wire, lucite and semi-transparent materials, glass and metal. Responding to the scientific and political revolutions of his age, Gabo led an eventful and peripatetic life, moving to Berlin, Paris, Oslo, Moscow, London, and finally the United States, and within the circles of the major avant-garde movements of the day, including Cubism, Futurism, Constructivism, the Bauhaus, de Stijl and the Abstraction-Création group.[2][3] Two preoccupations, unique to Gabo, were his interest in representing negative space'),
(48, 'Méret Oppenheim', '1913-05-06', '1985-11-15', 'Italy', 'Romanticism', 'Modelling', 'was a German-born Swiss Surrealist artist and Photographer. Oppenheim was a member of the Surrealist movement along with André Breton, Luis Buñuel, Max Ernst, and other writers and visual artists. Besides creating art objects, Oppenheim also famously appeared as a model for photographs by Man Ray, most notably a series of nude shots of her interacting with a printing press.'),
(49, 'Donald Judd', '1928-03-03', '1994-02-12', 'English', 'Modern Art', 'Modelling', 'was an American artist associated with minimalism (a term he nonetheless stridently disavowed).In his work, Judd sought autonomy and clarity for the constructed object and the space created by it, ultimately achieving a rigorously democratic presentation without compositional hierarchy. It created an outpouring of seemingly effervescent works that defied the term \"minimalism\". Nevertheless, he is generally considered the leading international exponent of \"minimalism,\" and its most important theoretician through such seminal writings as \"Specific Objects\" (1964).[3]'),
(50, 'Umberto Boccioni', '1882-05-19', '1916-04-17', 'Japan', 'Romanticism', 'Constructing and Assembling', 'was an influential Italian Painter and Sculptor. He helped shape the revolutionary aesthetic of the Futurism movement as one of its principal figures. Despite his short life, his approach to the dynamism of form and the deconstruction of solid mass guided artists long after his death.[1] His works are held by many public art museums, and in 1988 the Metropolitan Museum of Art in New York City organized a major retrospective of 100 pieces.[2]'),
(51, 'Mark di Suvero', '1933-08-18', '0000-00-00', 'Italy', 'Modern Art', 'Constructing and Assembling', 'Di Suvero attended San Francisco City College from 1953 to 1954 followed by the University of California, Santa Barbara from 1954 to 1955.[1] He began creating sculptures while at UC Santa Barbara after reflecting that he couldnt make an original contribution in his philosophy major.[1][3] Under the guidance of Robert Thomas, who allowed di Suvero to take his sculpting course, his work began to flourish.[1][3][6] He transferred to the University of California, Berkeley and graduated with a B.A. in philosophy in 1957.'),
(52, 'Damien Hirst', '1965-04-07', '0000-00-00', 'Japan', 'Modern Art', 'Constructing and Assembling', 'is an English artist, entrepreneur, and art collector.[1] He is one of the Young British Artists (YBAs), who dominated the art scene in the UK during the 1990s.[2][3] He is reportedly the United Kingdom richest living artist, with his wealth valued at £215m in the 2010 Sunday Times Rich List.[4][5] During the 1990s his career was closely linked with the collector Charles Saatchi, but increasing frictions came to a head in 2003 and the relationship ended.'),
(53, 'Paul Gauguin', '1848-08-07', '1903-04-08', 'American', 'Romanticism', 'Constructing and Assembling', 'Unappreciated until after his death, Gauguin is now recognized for his experimental use of color and Synthetist style that were distinctly different from Impressionism. Towards the end of his life he spent ten years in French Polynesia where he married a 13-year old[1], and most of his paintings from this time depict people or landscapes from that region.'),
(54, 'Eva Hesse', '1936-01-11', '1970-04-29', 'Italy', 'Modern Art', 'Constructing and Assembling', ' was a German-born American Sculptor, known for her pioneering work in materials such as latex, fiberglass, and plastics. She is one of the artists who ushered in the postminimal art movement in the 1960s.'),
(55, 'Lorenzo Ghiberti', '1881-05-11', '1947-11-05', 'English', 'Romanticism', 'Constructing and Assembling', 'best known as the creator of the bronze doors of the Florence Baptistery, called by Michelangelo the Gates of Paradise. Trained as a goldsmith and Sculptor, he established an important workshop for sculpture in metal. His book of Commentarii contains important writing on art, as well as what may be the earliest surviving autobiography by any artist.'),
(56, 'Leonardo da Vinci', '1875-04-15', '1940-02-02', 'American', 'Romanticism', 'Carving', 'Many historians and scholars regard Leonardo as the prime exemplar of the \"Universal Genius\" or \"Renaissance Man\", an individual of \"unquenchable curiosity\" and \"feverishly inventive imagination\",[5] and he is widely considered one of the most diversely talented individuals ever to have lived.[6] According to art historian Helen Gardner, the scope and depth of his interests were without precedent in recorded history, and \"his mind and personality seem to us superhuman, while the man himself mysterious and remote\".[5] Marco Rosci notes that while there is much '),
(57, 'Aristide Maillol', '1861-12-08', '1944-04-27', 'Japan', 'Romanticism', 'Carving', 'auguin encouraged his growing interest in decorative art, an interest that led Maillol to take up tapestry design. In 1893 Maillol opened a tapestry workshop in Banyuls, producing works whose high technical and aesthetic quality gained him recognition for renewing this art form in France. He began making small terracotta sculptures in 1895, and within a few years his concentration on sculpture led to the abandonment of his work in tapestry.'),
(58, 'Andy Goldsworthy', '1956-01-25', '0000-00-00', 'Italy', 'Modern Art', 'Carving', 'is a British Sculptor, Photographer and environmentalist who produces site-specific sculptures and land art situated in natural and urban settings. He lives and works in Scotland.'),
(59, 'Marc Quinn', '1964-01-08', '0000-00-00', 'English', 'Modern Art', 'Carving', 'work includes sculpture, installation and painting. Quinn explores what it is to be human in the world today through subjects including the body, genetics, identity, environment and the media. His work has used materials that vary widely, from blood, bread and flowers, to marble and stainless steel. Quinn has been the subject of solo '),
(60, 'Louise Nevelson', '1899-12-23', '1988-05-04', 'Japan', 'Romanticism', 'Casting', 'Born in the Poltava Governorate of the Russian Empire (present-day Ukraine), she emigrated with her family to the United States in the early 20th century. Nevelson learned English at school, as she spoke Yiddish at home.'),
(61, 'Praxiteles', '1997-05-15', '0000-00-00', 'Italy', 'Modern Art', 'Casting', 'the son of Cephisodotus the Elder, was the most renowned of the Attic sculptors of the 4th century BC. He was the first to sculpt the nude female form in a life-size statue. While no indubitably attributable sculpture by Praxiteles is extant, numerous copies of his works have survived; several authors, including Pliny the Elder, wrote of his works; and coins engraved with silhouettes of his various famous statuary types from the period still exist.'),
(62, 'Giambologna', '1861-01-14', '1954-04-07', 'English', 'Romanticism', 'Casting', ' where he had settled in 1553. In 1563 he was named a member (Accademico) of the prestigious Accademia delle Arti del Disegno, just founded by the Duke Cosimo I de Medici, on 13 January 1563, under the influence of the Painter-architect Giorgio Vasari, becoming also one of the Medicis most important court sculptors. He died in Florence at the age of 79; the Medici had never allowed him to leave Florence, as they rightly feared that either the Austrian or Spanish Habsburgs would entice him into permanent employme'),
(63, 'Jean Dubuffet', '1901-01-31', '1985-05-12', 'English', 'Modern Art', 'Modelling', 'believed to be a more authentic and humanistic approach to image-making. He is perhaps best known for founding the art movement Art Brut, and for the collection of works—Collection de lart brut—that this movement spawned. Dubuffet enjoyed a prolific art career, both in France and in America, and was featured in many exhibitions throughout his lifetime.'),
(64, 'Claes Oldenburg', '1929-01-28', '0000-00-00', 'Italy', 'Modern Art', 'Modelling', 'best known for his public art installations typically featuring large replicas of everyday objects. Another theme in his work is soft sculpture versions of everyday objects. Many of his works were made in collaboration with his wife, Coosje van Bruggen, who died in 2009; they had been married for 32 years. Oldenburg lives and works in New York.'),
(65, 'Kurt Schwitters', '1887-08-20', '1948-01-08', 'American', 'Romanticism', 'Modelling', 'Schwitters worked in several genres and media, including dadaism, constructivism, surrealism, poetry, sound, painting, sculpture, graphic design, typography, and what came to be known as installation art. He is most famous for his collages, called Merz Pictures.'),
(66, 'Virginia Woolf', '1882-01-25', '1941-07-28', 'British', 'Romanticism', 'pressionism', 'Woolfs childhood came to an abrupt end in 1895 with the death of her mother and her first mental breakdown, followed two years later by the death of her stepsister and surrogate mother, Stella Duckworth. From 1897–1901 she attended the LadiesDepartment of Kings College London, where she studied classics and history and came into contact with early reformers of womens higher education and the women rights movement. Other important influences were her Cambridge-educated '),
(67, 'Jean-Luc Godard', '1930-12-03', '0000-00-00', 'Switzerland', 'Modern Art', 'Abstract', 'the cinema like cavemen into the Versailles of Louis XV.\"[4] He is often considered the most radical French filmmaker of the 1960s and 1970s;[5] his approach in film conventions, politics and philosophies made him arguably the most influential director of the French New Wave. Along with showing knowledge of film history through homages and references, several of his films expressed his political views; he was an avid reader of existential and Marxist '),
(68, 'George Maciunas', '1931-08-08', '1978-04-09', 'Lithuanian', 'Romanticism', 'Outsider', 'was a Lithuanian American artist. He was a founding member and the central coordinator of Fluxus, an international community of artists, architects, composers, and designers. Other leading members brought together by this movement included Ay-O, Joseph Beuys, Jonas Mekas, George Brecht, Dick Higgins, Yoko Ono, Nam June Paik and Wolf Vostell.'),
(69, 'Burhan Doğançay', '1929-11-11', '2013-01-16', 'American', 'Modern Art', 'Lism', 'traveling for his \"Walls of the World\" photographic documentary project and meets his future wife, Angela, at the Hungarian Ball at the Hotel Pierre, New York. In 2006, a painting by Dogancay titled \"Trojan Horse\" was gifted by the Turkish government to the OECD in Paris. Dogançay worked and divided the last eight years of his life between his studios in New York and Turgutreis, Turkey, until his death at the age of 83 in January 2013.'),
(70, 'Peter Molyneux', '1959-08-20', '0000-00-00', 'British', 'Modern Art', 'Lism', 'Molyneux later said.[2] Molyneux published the game himself in 1984 by duplicating hundreds of tapes on two Tandy Corporation recorders. After taking an advertising space in a game magazine, he prepared for the game success; he later stated in an interview, \"I was utterly convinced that this game would sell tons. I thought, You know, this letter box is just not big enough. Its just not going to fit all the envelopes. So I cut – and this is no joke – I cut a bigger letter box\". However, the game received only two orders, one of which Molyneux speculated was from his mother.[2] In 2007, a GameSpy reviewer commented that the economic gameplay mechanics in Molyneux Fable II may have been a descendant of The Entrepreneur, stating, \"Im a little concerned that its Molyneux sneaking in a remix of his first game, Entrepreneur\".');

-- --------------------------------------------------------

--
-- Table structure for table `art_object`
--

CREATE TABLE `art_object` (
  `Id_no` int(45) NOT NULL,
  `Years` varchar(4) DEFAULT NULL,
  `Title` varchar(225) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Origin` varchar(45) DEFAULT NULL,
  `Epoch` varchar(45) DEFAULT NULL,
  `artist_id` int(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `art_object`
--

INSERT INTO `art_object` (`Id_no`, `Years`, `Title`, `Description`, `Origin`, `Epoch`, `artist_id`) VALUES
(1, '1590', 'The Amazement of the Gods', 'The erotic subject suggests the drawing was made in Prague, either when the painter visited the city in the early 1590s, or during his residence there.', 'Mexico', 'Renaissance', 7),
(2, '1949', 'An Old Woman seated sewing', 'The engraved portrait on the wall shows Christian, Duke of Brunswick 1599 - 1626', 'Spain', 'Neoclassicism', 1),
(3, '1947', 'Scenes from the Life of an Unidentified Bishop Saint', 'Three scenes are included in the picture, in each of which the bishop is shown doing good works. In the foreground he gives money to a beggar, in the background on the left he heals a blind man. In the corresponding feast scene on the right, he prepares to wash a poor man, perhaps the same man who appears in the foreground.', 'Hong Kong', 'Renaissance', 2),
(4, '1890', 'Christ carried to the Tomb', 'This event, which is not described in the Gospels, takes place after the Lamentation over the dead Christ at the foot of the cross, and before his Entombment.', 'American', 'Neoclassicism', 4),
(5, '1880', 'A Beach Scene with Fishermen', 'This is a relatively early work by Bakhuizen and shows the influence of Hendrick Dubbels (1621 - 1707), whose work is also represented in the Collection. A Dutch Yacht and Other Vessels Becalmed near the Shore .', 'Japanese', 'Neoclassicism', 5),
(6, '1895', 'Portrait of a Lady', 'The profile was used for portraits by many painters of the Early Renaissance. Baldovinettis representation of a lady in yellow is one of the most striking of such designs, showing the sitter almost to the waist. Stitched to her sleeve is a device of three palm leaves which is probably not merely a decorative pattern but the emblem of her family or of one into which she has married, or is soon to marry into.', 'French', 'Renaissance', 4),
(7, '1945', 'Portrait of a Man', 'This bold portrait is of an unknown sitter. The fur collar, the jewel on the cap and the heavy gold chains indicate that he was a man of some wealth. The two badges on the chain can be identified and suggest that he may have been a Swabian and was probably of noble birth.', 'Dutch', 'Renaissance', 6),
(8, '1578', 'Pan pursuing Syrinx', 'Pan chased the nymph Syrinx through Arcadia. When she came to the river Ladon she could flee no further; her prayer for escape was answered as she was transformed into reeds, from which Pan subsequently made his pan pipes. Ovid, Metamorphoses ', 'Dutch', 'Neoclassicism', 7),
(9, '1950', 'Pentecost', 'The Virgin and the twelve Apostles are shown with hands joined in prayer. They receive the Holy Spirit, which is shown descending as a Dove Acts of the Apostles 1 ', 'Chinese', 'Renaissance', 8),
(10, '1944', 'Portrait of John ', 'The sitters identity is traditional and unverified. Banks Fee is near Stow-on-the-Wold in Gloucestershire and was bought by John Scott in 1753. A Mr Scott was recorded by Charles Burney in 1770 as being in Rome, but it is not known if he is the same person as the sitter. He wears a coat of blue silk lined with sable, and a formal wig.', 'Canada', 'Neoclassicism', 9),
(11, '1975', 'Saint James being visited by the Virgin', 'Saint James, who is credited with having brought Christianity to Spain, was passing through the city that subsequently became Zaragoza when he was visited by the Virgin Mary. She presented him with a statuette of herself and a column of jasper on which to place it. The subject is fairly common in Spain, especially in Zaragoza, where the events depicted are said to have taken place and where an enormous basilica (El Pilar) was built to house the statuette.', 'Iraq', 'Neoclassicism', 10),
(12, '1890', 'Saint Anthony of Padua with the Infant Christ', 'Saint Anthony (1195 - 1231) was Portuguese by birth, but spent his later years in Padua. He is said to have had a vision of the Infant Christ when preaching on the Incarnation (the belief that Christ became man).', 'Philippines', 'Neoclassicism', 5),
(13, '1945', 'Saint John the Baptist ', 'The rich and detailed execution of this altarpiece implies it was an important commission. The presence of so many books and figures reading suggests it was painted for a cultivated patron, and perhaps a woman as all the saints around the holy family and the infant Saint John are female.', 'Italy', 'Renaissance', 6),
(14, '1954', 'Flowers in a porcelain Wan-Li Vase', 'This painting and its pendant Flowers in a Serpentine Vase depict bouquets of similar size and arrangement, and were intended to be seen together. Both paintings demonstrate Beert’s extensive use of white for highlights and outlines: this is particularly visible here in the rose leaves in the foreground.', 'Malaysia', 'Neoclassicism', 3),
(15, '1978', 'Men of the Docks', 'Bellows arrived in New York in 1904 where he found rich subject matter in the lives of poor workers in the booming metropolis. Here, day labourers await jobs on the docks of Brooklyn on a grey winter morning. The towers of Lower Manhattan rise in the distance.', 'French', 'Modern Art', 11),
(16, '1934', 'After the Misdeed', 'This work can be placed among the artists genre paintings of late 19th-century Paris. Here the tone is moralising. The subject of women who fell prey both to their own passions and to the opposite sex was popular in England and France in the 19th century.', 'England', 'Modern Art', 12),
(17, '1907', 'Two Calves, a Sheep and a Dun Horse by a Ruin', 'Van den Bergens work consists mainly of Italianate landscapes in the manner of the later work of Adriaen van de Velde, to whom this painting was once attributed. The current attribution is based on comparison with signed pictures by van den Bergen, such as Landscape with Herdsmen and Cattle(Amsterdam, Rijksmuseum).', 'Japanese', 'Neoclassicism', 13),
(18, '1954', 'View of the Gorge at Civita Castellana', 'The fortified medieval town of Civita Castellana lies fifty-four miles north of Rome on the Via Flaminia, one of the ancient routes through the Roman Campagna. In ancient times, it was a strategically important Etruscan settlement. During the Renaissance the fortress was converted into an imposing octagonal castle known as La Rocca.', 'Iraq', 'Romanticism', 13),
(19, '1800', 'The Incredulity of Saint Thomas', 'Saint Thomas, who doubted that Jesus had risen from the dead, was convinced when Christ invited him to touch the wound in his side (John 20: 20-29). On the right the Franciscan Saint Anthony of Padua presents a donor, presumably the patron of the picture. In the left background, Saint Jerome is shown in the wilderness. The figures in the background right may be intended for other saints.', 'Japanese', 'Renaissance', 14),
(20, '1901', 'A Horse with a Saddle Beside it', 'Like many other works by the artist, this painting was once attributed to Aelbert Cuyp, but it is related to paintings which are now considered to be by Calraet, for example Stable Interior with Two Dapple-Grey Horses (Rotterdam, Museum Boymans-van Beuningen). The horse appears, with variations, in the Rotterdam picture.', 'Chinese', 'Neoclassicism', 15),
(21, '1960', 'Portrait of a Musician', 'The sitter, who holds a pair of dividers, may be a musician or a maker of instruments. ', 'American', 'Renaissance', 16),
(22, '1850', 'A Fallen Tree Trunk', 'Camuccinis study of a fallen tree trunk is an example of the sort of study encouraged by the artist Pierre-Henri de Valenciennes, a central figure in the development of the landscape oil sketch. Valenciennes encouraged artists to make oil studies of trees, focusing on their barks and all the other irregularities that characterised them. In this study, the massive, twisted trunk, with moss dappling the bark on its curving, broken branches, has fallen somewhere in the countryside; decay is well advanced as it is slowly absorbed back into the earth.', 'Mexico', 'Romanticism', 16),
(23, '1894', 'Boy bitten by a Lizard', 'A young boy recoils in pain as his finger is bitten by a lizard, hidden among the fruit. A magnificent still life stands between him and us. The glass vase holds a rose and a sprig of jasmine, while red, succulent cherries lie beside the vase. Note the reflection of a room painted in the curving contour of the glass.  most unusual for a late 16th-century painting to show a figure so realistically in a moment of action, and for a still life to be so prominent.', 'American', 'Renaissance', 17),
(24, '1947', 'The Departure of Ceyx', 'This panel, which appears to have been cut down, illustrates the story of Alcyone from Ovids Metamorphoses (XI: 410-748). Ceyxs departure to consult the oracle of the god at Claros was delayed by his devoted wife Alcyone, who had foreseen a stormy sea and winds. A companion panel in the Philadelphia Museum of Art shows the body of Ceyx (who reluctantly set off despite his wifes protestations and whose ship was destroyed in a storm as predicted) being carried back to Alcyone upon the waves. When she recognised her husbands body, Alcyone hurled herself into the sea. ', 'British', 'Renaissance', 18),
(25, '1899', 'A Woman borne off by a Sea God', 'It is the working cartoon for a fresco in the Gallery of the Palazzo Farnese, Rome. All the early sources attribute it to Agostino. The cartoon is thought to be in large part or possibly entirely by Agostino. Some changes between the cartoon and the fresco are probably due to Annibale Carracci, by whom there are studies for the triton on the right.', 'England', 'Renaissance', 18),
(26, '1897', 'A Warrior adoring the Infant Christ and the Virgin', 'The painting, probably of the 1520s, is of a shape associated in Venice with votive offerings to the Virgin Mary or a patron saint. Here the warrior who approaches the Virgin and Child on his knees wears European armour, but the silk of his head-dress is from Islamic North Africa, and the trappings of his horse from Islamic Spain; the dagger and belt hanging on the wall are also of Islamic style. It has been conjectured that the painting commemorates the conversion of a Turk.', 'Iraq', 'Renaissance', 19),
(27, '1898', 'Christ appearing to Saint Anthony Abbot', 'The painting is considered to date from the early part of Annibales activity in Rome and shows the influence of both Northern Italian models, like Correggios figures in the cupola of S. Giovanni Evangelista in Parma, and Roman ones. The pose of Saint Anthony recallsMichelangelo', 'Iraq', 'Renaissance', 19),
(28, '1888', 'Susannah and the Elders', 'Ludovico was the cousin of Annibale Carracci and worked mostly in Bologna. This picture was painted for Cavaliere Tito Buosio of Reggio, and depicts an episode from the Old Testament apocrypha (Susannah: 15-24) which was also painted by Reni. As Susannah bathes in her garden, she is approached by two elders who, lusting after her, threaten to accuse her of adultery if she does not sleep with them. She refuses and is falsely accused by them, but her innocence is proved and prevents her from being stoned.', 'Spain', 'Neoclassicism', 20),
(29, '2010', 'Head of a Child', 'This painting is almost certainly a portrait of one of the artists children, the most likely candidate being his second son, Jean-René, who was born in 1888.', 'Japanese', 'Romanticism', 21),
(30, '2000', 'View of the Forum in Rome', 'This is one of the most famous views in Rome, looking along the Forum towards the Palazzo dei Senatorio on the Capitol. The three surviving columns of the Temple of Castor and Pollux frame the composition on the left; in the middle distance are the remains of the Temples of Saturn and Vespasian. In 1814 the Forum was still used as a field for grazing cattle and many prominent monuments (such as the Arch of Septimius Severus on the right) had yet to be fully excavated.', 'Chinese', 'Romanticism', 22),
(31, '1977', 'The National Gallery 1886, Interior of Room 32', 'The painting shows visitors in the North room of the Barry block, a suite of sumptuously decorated rooms opened at the National Gallery in 1876. This palatial space was always intended for the display of large-scale works of art and today holds 17th-century Italian Baroque paintings.', 'American', 'Modern Art', 23),
(32, '2011', 'Cornard Wood near Sudbury at Suffolk', 'The title is from a print of 1790. Cornard Wood, the name by which the picture is generally known, was first apparently used in 1828, but there is no good evidence that the church tower in the background is that of Great Cornard, near Sudbury.', 'American', 'Neoclassicism', 24),
(33, '2014', 'A Pagan Sacrifice', 'This work is an elaborated copy of a mysterious ancient rite described on a sculpture in the strange antiquarian romance Hypnerotomachia Poliphili(Dream of Poliphilus) which was published in Venice in 1499.', 'Chinese', 'Renaissance', 2),
(34, '2007', 'The Quaratesi Madonna', 'This panel formed the centre of an altarpiece commissioned by a member of the Quaratesi family for the high altar of San Niccoló Oltrarno, Florence. It was flanked by Saints Mary Magdalene, Nicholas of Bari, John the Baptist and George; the predella showed scenes from the Life of Saint Nicholas.', 'England', 'Renaissance', 25),
(35, '1975', 'Self Portrait as Saint Catherine of Alexandria', 'Artemisia Gentileschi paints herself in the guise of Saint Catherine of Alexandria, a Christian saint martyred in the early 4th century. She leans on a broken wheel studded with iron spikes, the instrument of Catherine’s torture and the saint’s standard attribute. Her right hand, delicately holding a martyr’s palm between thumb and forefinger, is brought to her chest.', 'American', 'Neoclassicism', 26),
(36, '1968', 'A Bishop and a Female Martyr', 'This painting is part of the group: Pratovecchio Altarpiece', 'Egypt', 'Renaissance', 26),
(37, '1988', 'Allegory of Grammar', 'This is probably one of a series of half-length female figures of the seven Liberal Arts which once belonged to Gédéon Tallemant (1613 - 1668), apparently painted for his house in the Rue Angoumois, Paris. The pictures vary in size, and all are dated 1649 or 1650. ', 'Spain', 'Neoclassicism', 27),
(38, '1999', 'Maternal Affection', 'Lagrenée was celebrated for his small-scale cabinet paintings of classical and mythological subjects. Here, three women tend to two infants within a sunlit loggia. The warm light, tiles underfoot, and leafy trees in the background suggest that the scene takes place in temperate climes. To an 18th-century audience, the women’s clothing would have been immediately understood as antique dress.', 'England', 'Neoclassicism', 28),
(39, '1975', 'The Nativity at Night', 'This is one of the most engaging and convincing early treatments of the Nativity as a night scene. The brilliant light in the foreground comes from the Christ Child in the crib. It illuminates the figure of the Virgin, who bends forward, hands joined in prayer, Saint Joseph in the background, and the figures of the delighted small angels to the left.', 'Japanese', 'Renaissance', 29),
(40, '1987', 'The Necromancer', 'Three versions of this subject are known, including one in the Hermitage, St Petersburg. It is not known which of the three was the one exhibited at the Salon of 1775. Evidently a popular composition, it was also engraved in 1785.', 'Mexico', 'Neoclassicism', 30),
(41, '1490', 'The Kiss', 'Edward Perry Warren, Lewes (commissioned from the artist through the Carfax Gallery, London); Warren sale, Lewes House, Lewes, 24 October 1929, lot 614 repr.; bt. in at £5,500; H. Asa Thomas, Lewes, c.1929; Mrs Pamela Tremlett, Lewes, 1953 ', 'United Kingdom', 'Modern Art', 31),
(42, '1510', 'Jacob and the Angel', 'to wrestle with an unknown assailant through the night. In the morning his opponent blessed him because he had not abandoned the struggle, and revealed himself to be an angel and messenger from God. Jacob gave thanks saying, I have seen God face to face, and my life is preserve During the early 1930s Epstein had read and re-read the book of Genesis', 'Japan', 'Modern Art', 31),
(43, '1901', 'circa 1936', 'This work, c.1936 (sculpture), is one of two sculptures by Nicholson in the Tates collection. Made from a block of hardwood, it was created by a combination of sawing, sanding and planing. All the faces have been painted white with the exception of the underside, which remains in its natural state.', 'Japan', 'Modern Art', 32),
(44, '1900', 'Infinite Structure', 'nfinite Structure consists of twelve rectangular stone blocks piled one on top of another in a tall column nearly two and a half metres high. Each brick-like block has rectangular and circular forms cut into it, many of which completely pierce it, creating an interplay of holes and receding spaces. Infinite Structure is in part an homage to ', 'Taiwan', 'Contemporary Art', 33),
(45, '1915', 'Sculpture', 'his indicates that, in spite of its abstraction, the work was based on the upper part of a human figure, seated at a table. Lipchitz would have made an original clay model of the work, which a professional stone-carver would probably copy to produce the final work.', 'Ghana', 'Modern Art', 34),
(46, '1933', 'Red Stone Dancer', 'Gaudier was born in France but spent most of his tragically brief adult career in London. He was an important pioneer in the revival of carving in sculpture.This sculpture is perhaps his most important work, and demonstrates his use of a more abstract style. The poet Ezra Pound described it as', 'Japan', 'Modern Art', 35),
(47, '1954', 'Corinthos', 'Corinthos, named after the ancient Greek city, was made on Hepworths return from Greece in 1954. She felt that it summarised her recent experiences of the light and landscape of Greece as well as its ancient art and architecture. It was carved from a single piece of ', 'Ghana', 'Contemporary Art', 36),
(48, '1936', 'Johanaan', 'Ronald Moody, who was born into a prominent Jamaican family, came to England in 1923 to train as a dentist at the Royal Dental Hospital, London. About 1930, shortly after he had established his dental practice in Cavendish Place, London, he took up sculpture. Without the financial means for a formal training he taught himself first to model in clay and then in the early 1930s to carve. Like Jacob Epstein and Henry Moore, he was', 'Norway', 'Modern Art', 34),
(49, '1995', 'Mask', 'Between 1924 and 1930 Henry Moore made at least a dozen masks. Carved in stone or cast in concrete, they conformed to what was considered a primitiv aesthetic, that is to say one that drew on cultural sources outside classical antiquity and the Renaissance. Roger Fry, an influential ', 'United Kingdom', 'Modern Art', 37),
(50, '2001', 'Untitled (Stairs)', 'Untitled (Stairs) is a very large free-standing sculpture made up of ten cast elements bolted together to form a unit. As its title indicates, it is the cast of a staircase, including three square-shaped landings as the stairs zigzag down the stairwell. The artist cast the surface of the stairs and the space above them. She made a 1:10 scale model before the casting in order to envisage the form of the solidified space and to work out how the final sculpture should be positioned. It has been rotated by 90 degrees so that it ', 'united kingdoms', 'Contemporary Art', 38),
(51, '2002', 'Teucer', 'The champion Greek archer Teucer was one of the heroes of Homers story of the Trojan War. When this bronze was exhibited at the Royal Academy in 1882 a quotation from Popes translation of Homer was printed in the catalogue, as the subject was unusual. Thornycroft ', 'United Kingdom', 'Modern Art', 38),
(52, '1942', 'hree Ways: Mould, Hole and Passage', 'Three Ways: Mould, Hole and Passage is one of the earliest pieces Gormley made using casts taken from his own body. It utilises three simple body poses, each one reproduced in the form of a simplified figure, cast in lead. As its title indicates, Three Ways is linked to processes of making and penetrating a body, but also represents functions of perception and awareness. Gormley uses his own body as the starting point to express universal human experience. For him, the body as the container or seat of consciousness becomes the means of articulating the unknowable and unseeable. He has described his casting process', 'Belarus', 'Contemporary Art', 39),
(53, '1997', 'An Athlete Wrestling with a Python', 'This is the earlier of Frederic Leighton’s only two life-size sculptures, both made with the assistance of Thomas Brock. In subject and scale it was intended as a challenge to one of the greatest classical sculptures, The Laocoön, which shows three men being crushed by sea serpents. Frederic Leighton was a pioneer of what became known as the ‘New Sculpture’ movement in Britain. This fresh approach looked back to classical sculpture while focusing on the naturalism of the body through careful modelling of the surface. This coincided with a revival of interest in bronze, the lost wax technique used here allowing for precision in the treatment of form.', 'Belarus', 'Modern Art', 40),
(54, '1640', 'Kathleen Raine', 'Miss Kathleen Jessie Raine, poet, was born in 1908, studied at Girton College, Cambridge, and is the author of Stone and Flower 1943, Living in Time 1946, The Pythoness 1949, The Year One 1952, and Collected Poems 1956. The bust was made in 1954. The artist wrote about the sittings (12 April 1959): ‘It was spread over a period of 2 months perhaps and she came in once or twice a week. Living just along the road it was fairly easy, and that is the way I saw her working in her own room, through the window ', 'japan', 'Contemporary Art', 41),
(55, '1938', 'Spooning Couple', 'Spooning Couple is a sculpture by Australian artist Ron Mueck representing a man and woman lying down together. Both figures have a light skin tone and are semi-naked. The figures are represented with a high degree of realism apart from their scale, which is approximately half life-size. They are displayed on a low plinth so that the viewer sees them from above. The couple lie in a spooning position: both figures lie on their right-hand side facing in the same direction, with the woman lying in a slight foetal position while the man lies behind her, his body curled next to hers. The man wears an off-white T-shirt and is naked from the waist down. He lies with his right ', 'Belarus', 'Contemporary Art', 39),
(56, '1963', 'Tra-La-La', 'King was one of a number of sculptors who first gained recognition under the label ‘New Generation’, a title derived from an exhibition at the Whitechapel Gallery in 1965.These artists used bright colours and new materials, such as plastic and fibreglass to make sculpture that defied established conventions. Solidity and weightiness gave way to light, open and witty pieces such as this.', 'Pakistan', 'Contemporary Art', 40),
(57, '1640', 'Relics in the Pillow of Dreams', 'Ryans use of seeds, pods, fruits and shells was stimulated by plants and fruits seen during her childhood in the Caribbean. The objects nestling in the hollows and depressions of Relics invite the viewer to touch them. They evoke a sense of discovery, or dreaming, and of longing for the exotic or familiar, the past or the future, depending on your point of view. Many of Ryans works relate to pod or pillow forms, suggesting a soft, warm, nurturing surround, while the relationship of her works to the floor suggests a closeness to the earth and to the organic processes in the world.', 'Finland', 'Contemporary Art', 41),
(58, '1994', 'Horace Brodzky', 'In 1913 Gaudier-Brzeska became involved with the artists and writers who formed the Vorticist group the following year, and his work was influenced by the dynamic styles of Cubism and Futurism. Horace Brodzky (1885-1969) was an artist and critic, who later wrote of this work: ‘The bust, to use his own words, was ‘cubic’... he has emphasised the planes and exaggerated the asymmetrical in my head’. Brodzky’s bare-chested, heroic pose is slightly undermined by the playful addition of inverted nipples, and the drawings of a womans head and a fleeing naked man scratched into the torso. ', 'Finland', 'Contemporary Art', 42),
(59, '1974', 'Diabolo', 'In this sculpture the figure of a young woman appears to be caught within a web of metal wires which criss-cross in front of her body. These wires, which carry overtones of insect life, were a feature of Richier sculpture in the 1950s. They reveal the artist interest in the underlying structure of her figures and of their placement in the space they inhabit. At the same time they conjure up images of entrapment. Diabolo was a juggling game popular in France in the 1940s-1950s. Richier depiction transforms this essentially light-hearted subject into one with sinister overtones. The gamedevilish name contributes to this sense of danger.', 'Norway', 'Contemporary Art', 43),
(60, '1975', 'Quartered Meteor', 'of polyurethane foam. Benglis first made foam sculptures as works in themselves; these were by necessity temporary and ephemeral. Casting the foam works in bronze not only ensured their longevity as artworks; it was a deliberate attempt to subvert and make uncanny the material presence of the objects. In this work the static, heavy nature of the lead is at odds with the foam’s amorphous shape, recalling the appearance of cooled lava.', 'Pakistan', 'Contemporary Art', 43),
(61, '1923', 'My Gods', 'within the green glaze of the vase’s surface. These characters each represent one of the four ‘Gods’ referred to in the title. One of them is labelled ‘Doreen, the god of cleanliness and vengeance’, who strangles a small, pale-skinned boy wearing a t-shirt that reads ‘childhood ends in divorce’, reaching out her serpent’s tongue towards him while holding a spray can labelled ‘anal: things have to be clean’. The second female god is unnamed, but takes the form of a dominatrix with hair fanned outw', 'Iran', 'Contemporary Art', 45),
(62, '1924', 'Artemis', 'A clay model was completed by 5 June 1879 (Thornycroft diary), but N04215 is presumably a later version. A large plaster ‘Artemis’ was shown at the Royal Academy in 1880 (1566), and a marble version in 1882 (1644). The marble was commissioned by the Duke of Westminster in May 1880 through Alfred Waterhouse, the architect. It is still in the Marble Hall at ', 'Norway', 'Modern Art', 45),
(63, '1920', 'Come, Helga', 'presented on a large plinth, under a rectangular Perspex cover. The figures are female and closely resemble each other in body type and pose, suggesting twins. Warren modelled each figure on a square MDF base from NewClay, a type of modelling clay that does not need to be fired but hardens with time, over a steel armature. The clay has been protected with clear varnish. The figure on the left is unpainted; that on the right has been partially coloured with white, blue, yellow and pink acrylic. Warren', 'Iran', 'Contemporary Art', 46),
(64, '1927', 'Spherical Vase', 'mixed a revival of pre-industrial English designs with similarly traditional styles from Japan, where he had studied. He exhibited his pots alongside painters like Ben and Winifred Nicholson. A resurgence in craft practice in painting and sculpture, as well as pottery and other craf', 'United Kingdom', 'Modern Art', 47),
(65, '1978', 'Breath 5', 'Over one and a half metres tall, it stands upright and has a vase-like shape that is bulbous at the bottom and narrows towards the top. The work, which has a rough texture all over, consists of three approximately equal sections of brown terracotta clay, the joins between which are clearly visible as horizontal lines running around the sculpture. Interrupting the curved form of the ‘vase’ on one side is a narrow vertical passage that features a ri', 'Iran', 'Contemporary Art', 48),
(66, '1957', 'Metal Punchers I', '1950s onwards she regularly sketched people working in factories. These drawings were the source material for her sculptures which capture people in all their physical diversity, performing their allotted tasks with varying degrees of enthusiasm. As such they were not idealised visions of the dignity of labour but purported to be truthful records of factory life.', 'United Kingdom', 'Contemporary Art', 49),
(67, '1993', 'biting', 'use of modelling or pressing and squeezing, but this two-part work explores the relationship of the body to the act of making. He works to objectify gestures that might communicate the senses, as biting is a physical act that also communicates taste. He has explained how using his body as a tool ‘became a way of identifying and isolatin', 'Japan', 'Contemporary Art', 49),
(68, '1914', 'Still Life', 'Picasso’s relief constructions, which he began making in 1912–13, extended traditional still life painting into three-dimensional space. This composition is closely related to his paintings of the period: it appears to depict a table top or small sideboard, with a knife, a beer glass, two slices of sausage and a slice of cheese or pâté. This work, however, emphasises that the painting is an object in itself. The incorporation of fo', 'Pakistan', 'Modern Art', 50),
(69, '1907', 'Untitled', 'The upright is forged from the same grade of rod as the legs, but beaten-out to become finer as it rises and curves. One arm is suspended from this upright by a looped ‘S’ of metal, typical of Calder’s elegant forms. The red disc at the end of this first arm provides the counter-weight for the second arm, which balances organic green and yellow forms. With an elegance born out of the necessity to establish these balances, Calder used progressively thinner grades of rod for the legs and arms. The tripod stand also does away with the necessity to suspend a large and relat', 'Finland', 'Modern Art', 50),
(70, '1957', 'Landscape Sculpture', 'synthesise constructive forms and techniques with the theme of landscape. As such, it anticipates one of the principal aspects of her post-war sculpture and reveals her desire to revise her practice in the aftermath of the war.', 'United Kingdom', 'Contemporary Art', 51),
(71, '1981', 'Constructed Torso', 'probably started in Norway, where Gabo was taking refuge from his native Russia during the First World War. It was completed after his return to Russia at the end of 1917, in the midst of the Revolution. Renouncing traditional sculptural notions of volume and mass, Gabo developed a new working method in this period to express what he saw as the mo', 'Japan', 'Contemporary Art', 52),
(72, '1900', 'Mechanical Body Fan', 'back, and is held in pace by straps passing around her waist and between her legs. Axels attached to this frame extend at right angles to her body in front and behind her, onto which are attached two fabric wings. When the performer is at rest, the wings hang down, but by shifting her weight, the performer can swing or fully rotate each of these fabric fans so that, viewed from either side, they form an infinite number of shapes between ', 'Greece', 'Contemporary Art', 53),
(73, '1954', 'The Tunnel', 'oxyacetylene welding while working at the Renault car factory during the First World War. The tensile strength of iron allowed him to create three-dimensional forms without filling in the volume, an effect that he described as ‘drawing in space’. Many of his works show a concern with the human figure, often in a highly abstracted form. In this work, a cylindrical head is placed above a trapezium neck, with suspended triangles to indicate features.', 'Pakistan', 'Modern Art', 54),
(74, '1940', 'Jauba', 'Jauba (Hibiscus) 2000 is a freestanding sculpture that was created by knotting yarn made from dyed hemp fibre over a vertical metal armature, with the bulk of its woven detail on the front. The yarn has been dyed red, green and black and is woven into pleated organic forms which drape the frame like a robe. ‘Jauba’ means hibiscus in the artist’s native language Bengali. Visually, the sculpture resembles a botanical, floral f', 'Greece', 'Contemporary Art', 55),
(75, '1890', 'Early One Morning', 'his arrangement of planes and lines along a horizontal axis gave greater freedom in creating different rhythms and configurations. The work has no fixed visual identity and no single focus of interest. Rather, it unfolds and expands into the spectator’s space, its appearance changing with the viewpoint. The individual elements are unified by the bright red colo', 'Taiwan', 'Contemporary Art', 53),
(76, '1987', 'Addendum', 'each hemisphere and fall to the ground, coiling in unpredictable loops. The horizontal, organised rhythm of the bar and hemispheres contrasts with the vertical cascade of the cords. The hemispheres are textured and the paint on them has become cracked and discoloured. Due to the contrast between the organic-looking hemispheres and the manufactured rope, the sculpture seems to represent a mixture of natural and manmade forms. T', 'Greece', 'Contemporary Art', 52),
(77, '1937', 'Mr Cruikshank', 'publications and pasting them into scrapbooks when he was a child and continued to do so as an adult. Collectively these scrapbooks form an archive of mass media imagery ranging from cartoons and B-movies to advertisements and popular science. Among the many cuttings in the Crane and Hoist Engineering scrapbook (The National Art Library Archive) there are two, one from the National Geographical Magazine and the other from Time Magazine, about research at the Massachusettes Institution of Tec', 'Pakistan', 'Contemporary Art', 55),
(78, '1960', 'The Earth is an Angel', 'Houshiary was born in Iran but works in Britain. This is one of a series of sculptures of various sizes in which the wings of an angel symbolize force and energy. The image of a four-winged angel is derived from those found in Byzantine churches in Istanbul where two wings are directed towards earth and two point upwards to the sky. Power, according to the a', 'Taiwan', 'Contemporary Art', 54),
(79, '1928', 'Venus von Willendorf ', ' A wide variety of dates have been proposed. Following a revised analysis of the stratigraphy of the site where the statuette was discovered, carried out in 1990, the figure was estimated to have been carved between 24,000 and 22,000 BCE.[5] More recent estimates push the date back slightly to between about 28,000 and 25,000 BCE. In a 2009 reexamination of the stratigraphy at the site, researchers estimated that the age of the archaeological layer in which the figurine was found is about 30,000 years before our time.', 'Greece', 'Contemporary Art', 60),
(80, '1936', 'Auriga Delfi', 'La statua era collocata su un carro trainato da cavalli, del quale si conservano solo pochi frammenti. Lo stato di conservazione è ottimo, anche se è mancante del braccio sinistro. Venne fusa a pezzi in bronzo spesso, perché più resistente allesposizione alle intemperie, con rifiniture eseguite a freddo: col bulino e con applicazioni di argento per la benda (\"tenia\")', 'Greece', 'Modern Art', 60),
(81, '1897', 'Hermes di Prassitele', 'Hermes and the Infant Dionysus, also known as the Hermes of Praxiteles or the Hermes of Olympia is an ancient Greek sculpture of Hermes and the infant Dionysus discovered in 1877 in the ruins of the Temple of Hera, Olympia, in Greece. It is displayed at the Archaeological Museum of Olympia.', 'Greece', 'Contemporary Art', 56),
(82, '1915', 'Venus de Milo', 'as the Venus de Milo, is an ancient Greek statue and one of the most famous works of ancient Greek sculpture. Initially it was attributed to the sculptor Praxiteles, however from an inscription that was on its plinth, the statue is thought to be the work of Alexandros of Antioch. Created sometime between 130 and 100 BC, the statue is believed to depict Aphrodite, the Greek goddess of love and beauty; however, some scholars claim it is the sea-goddess Amphitrite, venerated on Milos.[1] It is a marble sculpture, slightly larger than life size at 203 cm (6 ft 8 ', 'united states', 'Contemporary Art', 60),
(83, '1930', 'Laocoön and His Sons', 'The group has been called \"the prototypical icon of human agony\" in Western art,[4] and unlike the agony often depicted in Christian art showing the Passion of Jesus and martyrs, this suffering has no redemptive power or reward.[5] The suffering is shown through the contorted expressions of the faces (Charles Darwin pointed out that Laocoön bulging eyebrows are physiologically impossible), which ar', 'united states', 'Contemporary Art', 57),
(84, '1975', 'Tōdai-ji', 'Vairocana, known in Japanese as Daibutsu (大仏). The temple also serves as the Japanese headquarters of the Kegon school of Buddhism. The temple is a listed UNESCO World Heritage Site as one of the \"Historic Monuments of Ancient Nara\", together with seven other sites including temples, shrines and places in the city of Nara. Deer, regarded as messengers of the gods in the Shinto religion, roam the grou', 'Greece', 'Modern Art', 63),
(85, '2011', 'Bahubali', 'a much revered figure among Jains, was the son of Rishabhanatha, the first tirthankara of Jainism, and the younger brother of Bharata Chakravartin. He is said to have meditated motionless for one year in a standing posture (kayotsarga) and that during this time, climbing plants grew around his legs. After his year of meditation, Bahubali is said to have attained omniscience (Kevala Gyana).', 'japan', 'Contemporary Art', 61),
(86, '1989', 'Ahu Tongariki', 'and in the twentieth century the ahu was swept inland by a tsunami. It has since been restored and has fifteen moai including an 86 tonne moai that was the heaviest ever erected on the island. Ahu Tongariki is one kilometer from Rano Raraku and Poike in the Hotu-iti area of Rapa Nui National Park. All the moai here face sunset during Summer Solstice.', 'japan', 'Contemporary Art', 58),
(87, '2014', 'Kōtoku-in', 'The temple is renowned for its \"Great Buddha\" (大仏 Daibutsu), a monumental outdoor bronze statue of Amida Buddha, which is one of the most famous icons of Japan. It is also a designated National Treasure, and one of the twenty-two historic sites included in Kamakura proposal for inclusion in UNESCOWorld Heritage Sites.', 'Greece', 'Modern Art', 61),
(88, '1975', 'David (Michelangelo)', 'David is a 5.17-metre (17.0 ft)[a] marble statue of a standing male nude. The statue represents the Biblical hero David, a favoured subject in the art of Florence.[1]David was originally commissioned as one of a series of statues of prophets to be positioned along the roofline of the east end of Florence Cathedral, but was instead placed in a public square, outside the Palazzo Vecchio, the seat of civic government in Florence, in the Piazza della Signoria where it was unveiled on 8 September 1504. The statue was moved to the Galleria dellccademia, Florence,', 'united states', 'Contemporary Art', 65),
(89, '2001', 'The Burghers of Calais', 'Les Bourgeois de Calais is one of the most famous sculptures by Auguste Rodin. It commemorates an event stated to have occurred during the Hundred YearsWar, when Calais, a French port on the English Channel, was under siege by the English for about eleven months. Calais commissioned Rodin to create the sculpture in 1884 and the work was completed in 1889.', 'Greece', 'Contemporary Art', 59),
(90, '2004', 'Robert Burns', 'and is celebrated worldwide. He is the best known of the poets who have written in the Scots language, although much of his writing is also in English and a light Scots dialect, accessible to an audience beyond Scotland. He also wrote in standard English, and in these writings his political or civil commentary is often at its bluntest.', 'japan', 'Contemporary Art', 64),
(91, '2004', 'La Valse', 'La valse, poème chorégraphique pour orchestre (a choreographic poem for orchestra), is a work written by Maurice Ravel between February 1919 and 1920; it was first performed on 12 December 1920 in Paris. It was conceived as a ballet but is now more often heard as a concert work. The work has been described as a tribute to the waltz, and the composer George Benjamin, in ', 'united states', 'Contemporary Art', 64),
(92, '1930', 'Copenhagen', 'Municipality, 103,914 in Frederiksberg Municipality, 43,005 in Tårnby Municipality, and 14,201 in Dragør Municipality).[3][7][8] It forms the core of the wider urban area of Copenhagen (population 1,627,705) and the Copenhagen metropolitan area (population 2,057,737). Copenhagen is situated on the eastern coast of the island of Zealand; another small portion of the city is located on Amager, and is separated from Malmö, Sweden, by the strait of Øresund. The Øresund Bridge', 'Greece', 'Contemporary Art', 56),
(93, '1940', 'Rizal Monument', 'monument depicts Rizal in overcoat holding a book, that represent his novels Noli Me Tángere and El Filibusterismo. The obelisk is usually taken to mean Rizal’s masonic background while the three stars are said to stand for Luzon, the Visayas and Mindanao. The figures at the back of the monument, such as leaves and a pot, are said to symbolize the country’s natural resources. The consensus is that the figures bes', 'Greece', 'Contemporary Art', 62),
(94, '1944', 'Millais statue', 'Peter Duby points out that this statue is unusual in that it incorporates a recognisable piece of furniture, the small table with a drawer. So far the only other statue so furnished (pun intended, sorry) we can recall is the Lincoln at Parliament Square, where the subject looks like he has just stood up.', 'japan', 'Contemporary Art', 62),
(95, '1981', 'Marcus Aurelius', 'the Capitoline Hill, Rome, Italy. It is made of bronze and stands 4.24 m (13.9 ft) tall. Although the emperor is mounted, it exhibits many similarities to standing statues of Augustus. The original is on display in the Capitoline Museums, with the one now standing in the open air ', 'united states', 'Modern Art', 63),
(96, '1985', 'Spring Temple Buddha', 'depicting Vairocana Buddha located in the Zhaocun township of Lushan County, Henan, China, built from 1997 to 2008. It is located within the Fodushan Scenic Area, close to National Freeway no. 311. At 128 metres (420 ft), including a 25 metres (82 ft) lotus throne, it is the second tallest statue in the world after the Statue of Unity, Gujarat, India with a height of 182 metres (597 ft), as of 2018.5', 'japan', 'Contemporary Art', 60),
(97, '1937', 'Kailashnath Mahadev Statue', 'Nepalese engineering, the statue construction began in 2003 and was completed in 2010.[citation needed] It was constructed mainly by Kamal Jain and \"Hilltake\", a company Jain established in Nepal in 1992 which deals with products such as water tanks. Nepalese engineers were involved in the construction along with one experienced Indian engineer specializing in the design and constr', 'Greece', 'Modern Art', 57),
(98, '1980', 'Batu Caves', 'limestone hill that has a series of caves and cave temples in Gombak, Selangor, Malaysia. It takes its name from the Sungai Batu (Stone River), which flows past the hill. It is the tenth (பத்து - Pathu in Tamil) limestone hill from Ampang. Batu Caves is also the name of a nearby village.', 'iraq', 'Modern Art', 60),
(99, '2001', 'Lion-man', 'The Löwenmensch figurine or Lion-man of the Hohlenstein-Stadel is a prehistoric ivory sculpture that was discovered in the Hohlenstein-Stadel, a German cave in 1939. The German name, Löwenmensch meaning \"lion-human\", is used most frequently because it was discovered and is exhibited in Germany.', 'Greece', 'Contemporary Art', 59),
(100, '1975', ' Child with Saint John', 'This painting by David Ghirlandaio, tall grasses, tendrils and angular roots, rises steeply from a pond or slow-moving stream. The painter has skilfully captured the textures of the rocks, the play of light on the leaves and the dense luxuriance of the undergrowth. Three female bathers dressed in white ease themselves into the water. The addition of these figures transforms the landscape sketch from a direct study of nature into a timeless arcadian scene.', 'America', 'Modern Art', 70),
(101, '1924', 'The Charity of St Nicholas of Bari', 'The story depicted in the panel is that of the 4th-century saint, Nicholas of Myra. Under cover of darkness, Saint Nicholas throws three golden balls through the window of the house of an impoverished nobleman. (Golden balls were often used by artists to represent the purses of the gold mentioned in the saint’s legend.)', 'American', 'Renaissance', 66),
(102, '1906', 'Aurelia', 'The sitter, Aurelia, was a noted model in Rome who was nicknamed La Cornacchia (The Crow). On the reverse of the picture is another oil sketch of the same model in a different pose.', 'Chinese', 'Modern Art', 66),
(103, '2001', 'Landscape with the Union of Dido and Aeneas', 'For the subject see the Aeneid (4: 119). Dido and Aeneas are in the cave at the right; in the sky at the left Juno, Venus and Hymen.', 'Chinese', 'Neoclassicism', 67),
(104, '1954', 'The Virgin and Child Enthroned, with Narrative Scenes', 'This panel is one of the earliest paintings in the Collection. The Virgin is wearing a Byzantine crown and is seated on a lion-headed throne; she holds Christ on her lap. In the corners of the central section are the symbols of the four Evangelists.', 'Chinese', 'Renaissance', 68),
(105, '1955', 'An Allegory', 'The sleeping knight may be intended to represent the Roman hero Scipio Africanus (236 - 184 BC) who was presented in a dream with a choice between Virtue (behind whom is a steep and rocky path) and Pleasure (in looser robes). However, the ladies are not presented as contestants. They may represent the ideal attributes of the knight: the book, sword and flower which they hold suggest the ideals of scholar, soldier and lover which a knight should combine.', 'Japanese', 'Renaissance', 68),
(106, '1975', 'Ophelia among the Flowers', 'This pastel is one of several compositions by Redon of this subject from Shakespeares Hamle which date from this period. The flowers seem to be of no identifiable species, resembling lilac and strawberries, and with blue leaves interspersed with the green. The garlanded head of Ophelia is turned towards the flowers as though in contemplation of their beauty. ', 'Japanese', 'Renaissance', 69),
(107, '1976', 'Christ embracing Saint John the Baptist', 'John the Baptist is shown in his camel-skin garment and carrying a reed cross. He was a few months older than Jesus. The two are often shown as youths, prior to the moment when John baptised Jesus in the River Jordan.', 'American', 'Renaissance', 69),
(108, '1997', 'Portrait of Cardinal Marco Gallo', 'The existence of an 18th-century print after this painting, inscribed with the sittername, confirms the cardinal identity. Marco Gallo was born in Como. After several postings in the papal civil service he was appointed, in 1659, Bishop of Rimini. He was made a cardinal by Innocent XI in 1681 and died in 1683.', 'Mexico', 'Neoclassicism', 70),
(109, '1998', 'The Finding of Moses', 'This painting shows the moment of discovery by Pharoah daughter, the central figure pointing down at the child. Two handmaidens on the right gesture towards the spot where he was found. The kneeling figure in green is Moses sister, Miriam, who had been watching nearby. She came forward and volunteered her mother, the woman seen standing on the far left with a protective hand on Miriam shoulder, as nursemaid to the child, so returning Moses to his mother.', 'Japanese', 'Neoclassicism', 70),
(110, '1995', 'The Virgin and Child with Saint John', 'This painting by David Ghirlandaio, brother of the more famous Domenico, must date from the 1490s. The surface is badly worn in parts, especially in the face of Saint John.', 'Dutch', 'Renaissance', 70),
(111, '1977', 'The Procession to Calvary', 'Identifiable with an altarpiece mentioned by Vasari (1550) as painted for the church of San Gallo, Florence. He implies it was one of Ridolfo earliest important commissions, and noted that it included portraits. Some of the heads are modelled on those invented by Leonardo da Vinci for his Battle of Anghiari.', 'American', 'Renaissance', 69),
(112, '2004', 'Interior', 'In December 1898 Hammershøi moved into the old merchant house at Strandgade 30, Copenhagen, built in 1636. This painting portrays one of its rooms, and the model is his wife Ida, whom he married in 1891. The table was originally larger and filled most of the foreground, and the figure was added at the end. Pencil underdrawing is visible through the paint layer.', 'Chinese', 'Modern Art', 70),
(113, '1940', 'Still Life with a Lobster', 'To a 17th-century viewer the objects brought together in this still life would have suggested considerable wealth and luxury. Not only the lobster, but also salt, pepper and citrus fruit were costly items at that time. The elaborately crafted gold goblet and the stand supporting the glass on the right, were highly valued for their material and workmanship. Blue and white porcelain was imported into the Netherlands from China. ', 'Chinese', 'Neoclassicism', 67),
(114, '1975', 'Saint Anthony of Padua', 'The friars on the left are Franciscan and the one in the centre has a Glory, and may be intended to depict Saint Anthony of Padua. The poor on the right, who receive bread from the Franciscans, include two pilgrims.', 'American', 'Neoclassicism', 67),
(115, '2015', 'Landscape with Figures bathing', 'A wall of sandy rock overgrown with shrubs, tall grasses, tendrils and angular roots, rises steeply from a pond or slow-moving stream. The painter has skilfully captured the textures of the rocks, the play of light on the leaves and the dense luxuriance of the undergrowth. Three female bathers dressed in white ease themselves into the water. The addition of these figures transforms the landscape sketch from a direct study of nature into a timeless arcadian scene.', 'Chinese', 'Modern Art', 70);

-- --------------------------------------------------------

--
-- Table structure for table `borrowed`
--

CREATE TABLE `borrowed` (
  `art_object_id` int(45) DEFAULT NULL,
  `collection_id` int(45) DEFAULT NULL,
  `date_borrowed` date DEFAULT NULL,
  `date_returned` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrowed`
--

INSERT INTO `borrowed` (`art_object_id`, `collection_id`, `date_borrowed`, `date_returned`) VALUES
(19, 3, '2016-06-12', '2018-10-30'),
(112, 3, '2016-06-12', '2018-10-30'),
(8, 10, '2015-06-27', '2019-02-05'),
(58, 24, '2009-04-09', '2021-02-11'),
(75, 18, '2008-12-12', '2021-12-02'),
(93, 18, '2008-12-12', '2021-12-02'),
(109, 18, '2008-12-12', '2021-12-02'),
(110, 46, '2009-10-02', '2019-09-16'),
(80, 22, '2006-10-30', '0217-11-14'),
(84, 22, '2006-10-30', '0217-11-14'),
(113, 22, '2006-10-30', '0217-11-14'),
(21, 25, '2012-08-20', '2021-06-29'),
(101, 25, '2012-08-20', '2021-06-29'),
(66, 33, '2011-07-08', '0219-05-27'),
(15, 28, '2011-05-28', '2022-01-07'),
(22, 28, '2011-05-28', '2022-01-07'),
(60, 28, '2011-05-28', '2022-01-07'),
(9, 29, '2012-11-09', '2022-05-22'),
(30, 29, '2012-11-09', '2022-05-22'),
(43, 29, '2012-11-09', '2022-05-22'),
(34, 47, '2009-10-02', '2019-09-10'),
(91, 47, '2009-10-02', '2019-09-10'),
(3, 27, '2015-03-21', '2020-07-06'),
(25, 27, '2015-03-21', '2020-07-06'),
(46, 1, '2014-02-11', '2022-04-28'),
(57, 1, '2014-02-11', '2022-04-28'),
(70, 1, '2014-02-11', '2022-04-28'),
(107, 16, '2012-10-25', '2020-09-03'),
(50, 6, '2014-09-26', '2019-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `Collection_id` int(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `contact_id` int(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`Collection_id`, `Name`, `Type`, `Description`, `Address`, `contact_id`) VALUES
(1, 'Apple Blossoms', 'Company', 'sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum', 'P.O. Box 762, 6120 Aenean Road', 1),
(2, 'Ever After Boutique', 'Personal', 'dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean', 'P.O. Box 818, 8983 Magna. Road', 2),
(3, 'Poppy Petals', 'Museum', 'dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare.', 'Ap #100-8622 Pede Road', 3),
(4, 'Azalea Park', 'Personal', 'lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '9894 Magna. Ave', 4),
(5, 'Hello Beautiful Boutique', 'Company', 'taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt', '560-9852 Iaculis Avenue', 5),
(6, 'Rebellious Rose', 'Personal', 'massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum.', 'P.O. Box 280, 7249 Suspendisse St.', 6),
(7, 'Bend the Trend', 'Museum', 'posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,', '367-9323 Placerat, St.', 7),
(8, 'Laura’s Closet', 'Personal', 'fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed', '5042 Nullam Rd.', 8),
(9, 'Rose Petals', 'Personal', 'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper.', 'P.O. Box 925, 4527 Sem Road', 9),
(10, 'Blush Boutique', 'Personal', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.', 'Ap #790-1756 Mi Avenue', 10),
(11, 'Little Lady Boutique', 'Company', 'Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem', '8565 Dolor. St.', 11),
(12, 'Sew Lovely', 'Personal', 'a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget', '1787 Tincidunt Avenue', 12),
(13, 'Bumble Bee Boutique', 'Museum', 'cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh.', 'P.O. Box 839, 1293 Sapien St.', 13),
(14, 'Periwinkle Boutique', 'Personal', 'pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus', 'P.O. Box 152, 157 Magna Street', 14),
(15, 'TerriBerri Boutique', 'Company', 'Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis', 'P.O. Box 387, 1654 A Rd.', 15),
(16, 'Dreams Come True Boutique', 'Personal', 'egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed,', 'Ap #707-6372 Lacinia. Rd.', 16),
(17, 'Pink Icing', 'Museum', 'parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras', '534-4409 Tortor Av.', 17),
(18, 'Violet\'s Dresser', 'Personal', 'egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam', 'P.O. Box 613, 4178 Amet St.', 18),
(19, 'Dress Up Dress Shop', 'Personal', 'Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,', '7147 Nec, Avenue', 19),
(20, 'Polka Dots', 'Personal', 'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit', 'P.O. Box 473, 9912 Per Avenue', 20),
(21, 'American Blues', 'Company', 'eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus.', '7804 Nibh Rd.', 21),
(22, 'Fashion Factory', 'Personal', 'tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac', 'Ap #775-7168 Mauris. St.', 22),
(23, 'Stitch Shop', 'Museum', 'mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac', '265-2271 Eu, Avenue', 23),
(24, 'Style Loft', 'Personal', 'Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,', '3642 Praesent Av.', 24),
(25, 'The Hanger', 'Company', 'nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus,', 'Ap #580-9898 Eu Avenue', 25),
(26, 'Vintage Violet', 'Personal', 'eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris', 'Ap #340-8102 Sem Rd.', 26),
(27, 'Mrs. Mannequin', 'Museum', 'blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec', '620-1592 Eget Avenue', 27),
(28, 'Plum Crazy Boutique', 'Personal', 'Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris', '596-3787 Penatibus Av.', 28),
(29, 'Window Shop', 'Personal', 'ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', '458-5505 Faucibus Rd.', 29),
(30, 'Bien Habillé', 'Personal', 'eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.', 'Ap #690-2407 Nunc Rd.', 30),
(31, 'French Connection', 'Company', 'vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at,', '7076 Nonummy. Street', 31),
(32, 'French Kiss', 'Personal', 'imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim', 'Ap #430-7450 Leo. Street', 32),
(33, 'Sleek Chic', 'Museum', 'Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu', 'Ap #318-9957 Quis, Ave', 33),
(34, 'That\'s Vogue', 'Personal', 'lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus', '7283 Metus Rd.', 34),
(35, 'Très Chic', 'Company', 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', 'P.O. Box 782, 6092 Malesuada Ave', 35),
(36, 'Oeuvre', 'Personal', 'cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,', '8913 Donec Avenue', 36),
(37, 'Mon Ami', 'Museum', 'montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec', '2140 Vitae St.', 37),
(38, '.Rose Riviera', 'Personal', 'Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,', 'P.O. Box 656, 4992 Nonummy St.', 38),
(39, 'Oh Là Là Boutique', 'Personal', 'dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,', '745-8478 Velit Rd.', 39),
(40, 'Oui! Oui!', 'Personal', 'ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', '1683 Scelerisque Avenue', 40),
(41, 'Vittorio', 'Company', 'ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.', 'P.O. Box 769, 7261 Erat Street', 41),
(42, 'Venice', 'Personal', 'elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales', 'P.O. Box 475, 4427 Nunc Road', 42),
(43, 'Mimosa', 'Museum', 'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,', '5268 Mus. Av.', 43),
(44, 'Eleonora', 'Personal', 'consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.', '7291 Mi. Street', 44),
(45, 'Tofal', 'Company', 'molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,', '654-3785 Pede, Av.', 45),
(46, 'Tulip', 'Personal', 'Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor,', 'P.O. Box 404, 641 Nulla. Av.', 46),
(47, 'Oak and Pine', 'Museum', 'Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy', 'Ap #619-198 Lobortis Road', 47),
(48, 'Bermuda Grass', 'Personal', 'a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque,', '776-6800 Sed St.', 48),
(49, 'Hilltop', 'Personal', 'faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra', '823-2234 Nisi. Road', 49),
(50, 'Riverside', 'Personal', 'Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum', '298-274 Nulla Ave', 50);

-- --------------------------------------------------------

--
-- Table structure for table `contact_person`
--

CREATE TABLE `contact_person` (
  `contact_id` int(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_person`
--

INSERT INTO `contact_person` (`contact_id`, `Name`, `Phone`) VALUES
(1, 'Interdum Ligula Eu PC', '058-871-5392'),
(2, 'Amaya Austin', '035-153-0990'),
(3, 'Sade Park', '044-636-0008'),
(4, 'Ciara Gilliam', '076-364-1051'),
(5, 'Tortor Company', '059-308-3782'),
(6, 'Connor Mccormick', '099-024-1847'),
(7, 'Natural History Museum', '079-404-4433'),
(8, 'Dara Spence', '065-637-2801'),
(9, 'Hunter Day', '098-250-2414'),
(10, 'Addison Holloway', '083-476-5423'),
(11, 'Velit Company', '009-835-9178'),
(12, 'Axel Woods', '043-061-5416'),
(13, 'Louvre', '003-400-3184'),
(14, 'Jerry Hubbard', '096-302-2558'),
(15, 'Tortor Company', '042-829-7304'),
(16, 'Remedios Floyd', '082-232-9018'),
(17, 'National Gallery', '037-989-9273'),
(18, 'Kennedy Wolf', '090-368-6992'),
(19, 'Jin Fuentes', '090-742-3571'),
(20, 'Armando Mejia', '000-958-7607'),
(21, 'Eros Consulting', '084-918-8930'),
(22, 'Aimee Perkins', '017-783-5453'),
(23, 'National Museum of China', '081-910-9106'),
(24, 'Quincy Nieves', '097-352-6052'),
(25, 'Violet Head', '067-330-2696'),
(26, 'Pearl Mendez', '021-048-3781'),
(27, 'National Palace Museum', '020-556-6180'),
(28, 'Maris Wiley', '055-047-7192'),
(29, 'Nola Dean', '090-250-7535'),
(30, 'Taylor Young', '078-996-5787'),
(31, 'Et Magnis Ltd', '048-716-3278'),
(32, 'Isaac Mckee', '044-354-0236'),
(33, 'National Air and Space Museum', '061-189-8022'),
(34, 'Jason William', '074-781-2904'),
(35, 'Donec Nibh Enim Foundation', '046-728-3383'),
(36, 'Donovan Leach', '066-322-2492'),
(37, 'Rafael Irwin', '059-220-1362'),
(38, 'Rama Alexander', '057-227-7362'),
(39, 'Allegra Wagner', '035-358-0729'),
(40, 'Jolie Osborn', '008-484-0187'),
(41, 'Tristique Limited', '085-398-2226'),
(42, 'Yuli Grimes', '008-154-0803'),
(43, 'British Museum', '073-299-6334'),
(44, 'Hop Bennett', '020-801-5494'),
(45, 'Fringilla PC', '076-266-3689'),
(46, 'TaShya Allison', '038-794-1722'),
(47, 'Musée d\'Orsay', '069-342-6338'),
(48, 'Nerea Ball', '042-979-2814'),
(49, 'Tashya Bell', '091-437-2546'),
(50, 'Wynne Carey', '072-495-7970');

-- --------------------------------------------------------

--
-- Table structure for table `display`
--

CREATE TABLE `display` (
  `exhibition_id` int(45) NOT NULL,
  `art_object_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `display`
--

INSERT INTO `display` (`exhibition_id`, `art_object_id`) VALUES
(11, 95),
(6, 56),
(13, 16),
(10, 96),
(3, 35),
(12, 53),
(3, 71),
(8, 75),
(11, 37),
(7, 49),
(5, 60),
(12, 46),
(3, 50),
(8, 16),
(4, 57),
(5, 86),
(10, 74),
(9, 51),
(1, 10),
(9, 30),
(9, 86),
(13, 47),
(1, 11),
(7, 56),
(10, 31),
(5, 2),
(6, 61),
(4, 30),
(13, 8),
(2, 69),
(9, 85),
(5, 25),
(12, 5),
(3, 30),
(8, 36),
(12, 25),
(13, 56),
(1, 40),
(5, 7),
(3, 20),
(6, 13),
(11, 10),
(6, 24),
(8, 85),
(9, 41),
(9, 34),
(9, 84),
(11, 78),
(4, 89),
(7, 26),
(9, 16),
(11, 67),
(9, 18),
(9, 103),
(11, 11),
(2, 38),
(1, 48),
(5, 84),
(1, 39),
(7, 5),
(7, 94),
(3, 85),
(10, 48),
(12, 43),
(7, 114),
(9, 4),
(3, 107),
(4, 83),
(11, 80),
(13, 6),
(12, 112),
(1, 55),
(7, 68),
(1, 47),
(9, 106),
(5, 112),
(13, 48),
(8, 35),
(3, 41),
(12, 38),
(12, 111),
(12, 51),
(5, 80),
(10, 38),
(10, 36),
(3, 45),
(8, 37),
(5, 47),
(6, 57),
(8, 57),
(4, 12),
(2, 74),
(1, 43),
(6, 27),
(1, 99),
(11, 108),
(2, 27),
(3, 91),
(13, 53),
(13, 18);

-- --------------------------------------------------------

--
-- Table structure for table `exhibition`
--

CREATE TABLE `exhibition` (
  `exhibition_id` int(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `number_limit_visitor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exhibition`
--

INSERT INTO `exhibition` (`exhibition_id`, `Name`, `Start_date`, `End_date`, `number_limit_visitor`) VALUES
(1, 'Thr', '2019-11-03', '2020-03-24', 50),
(2, 'the map is not the territory', '2019-02-09', '2020-03-05', 30),
(3, 'Paris 1900', '2019-06-08', '2020-06-08', 50),
(4, 'Hank Willis Thomas: All Things Being Equal…', '2019-08-11', '2020-01-01', 60),
(5, 'Poetic Imagination in Japanese Art', '2018-10-13', '2019-01-13', 40),
(6, 'Modern American Realism', '2018-10-20', '2019-04-28', 35),
(7, 'The Shape of the Land', '2018-07-28', '2019-01-20', 30),
(8, 'We. Construct. Marvels. Between. Monuments.', '2017-11-17', '2019-01-27', 50),
(9, 'APEX: Avantika Bawa', '2018-08-18', '2019-02-10', 45),
(10, 'Memory Unearthed', '2018-10-27', '2019-02-24', 35),
(11, 'Su-mei Tse: L’Echo', '2018-05-05', '2019-03-17', 70),
(12, 'CCNA: Not Fragile', '2018-09-08', '2019-07-09', 50),
(13, 'Picturing Oregon', '2017-08-19', '2019-08-20', 60);

-- --------------------------------------------------------

--
-- Table structure for table `museum_goer`
--

CREATE TABLE `museum_goer` (
  `museum_goer_id` int(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `Role` enum('user','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `museum_goer`
--

INSERT INTO `museum_goer` (`museum_goer_id`, `Name`, `username`, `password`, `address`, `email`, `phone`, `age`, `Role`) VALUES
(1, 'Jakeem', 'Kasper', 'BTX80JZP1PT', 'Holy See (Vatican City State)', 'mattis.Cras.eget@Aliquamornarelibero.ca', '0303735457', 60, 'user'),
(2, 'Ciaran', 'Howard', 'ZMN36NFA5SJ', 'Solomon Islands', 'non.leo@facilisisloremtristique.org', '0462694528', 72, 'user'),
(3, 'Harriet', 'Conan', 'ZBP52QRQ9JR', 'Nigeria', 'placerat.orci.lacus@velesttempor.co.uk', '0935586688', 43, 'user'),
(4, 'Gemma', 'Raymond', 'KGY46BPL4RK', 'Eritrea', 'volutpat.Nulla@auctorodio.ca', '0361858063', 55, 'user'),
(5, 'Herrod', 'Raven', 'QXM28SJL8TI', 'United Arab Emirates', 'Donec.fringilla@adipiscingelitCurabitur.net', '0295465293', 26, 'user'),
(6, 'Ralph', 'Aurora', 'SHR43YHC4LJ', 'Brazil', 'nec@cursusnon.net', '0716048695', 18, 'user'),
(7, 'Lysandra', 'Kendall', 'YJQ64DEJ8XC', 'French Guiana', 'porta.elit.a@eleifend.net', '0332363698', 69, 'user'),
(8, 'Kamal', 'Mohammad', 'CLS94TCH0OU', 'Malta', 'non@Integer.edu', '0475813018', 20, 'user'),
(9, 'Robert', 'Nelle', 'VTT87KHB1UI', 'Turkmenistan', 'velit@infaucibusorci.co.uk', '0542341026', 36, 'user'),
(10, 'Carissa', 'Basil', 'QYI86YIQ8NO', 'Antarctica', 'Cras@litora.ca', '0377803674', 73, 'user'),
(11, 'Faith', 'Jaquelyn', 'IPF83FYF2GS', 'Vanuatu', 'mus@ettristiquepellentesque.edu', '0158681436', 48, 'user'),
(12, 'Omar', 'Miranda', 'TOU54NJF4TT', 'Iran', 'euismod@nuncid.org', '0656807268', 63, 'user'),
(13, 'Wendy', 'Lane', 'GWA21VFH4MF', 'Tajikistan', 'ornare@nisiMauris.ca', '0529149527', 28, 'user'),
(14, 'Victor', 'Zachary', 'VBT62RVE9BZ', 'Italy', 'a.neque@aenimSuspendisse.net', '0288377005', 55, 'user'),
(15, 'Madaline', 'Zeph', 'FWH66LUW0RC', 'Luxembourg', 'Donec@dignissimMaecenas.net', '0318017944', 41, 'user'),
(16, 'Chandler', 'Haviva', 'JDR40NSQ4EW', 'Estonia', 'dis.parturient@semperet.ca', '0600112011', 24, 'user'),
(17, 'Griffin', 'Jacob', 'NBQ12HCT3HR', 'Libya', 'id.mollis.nec@tristiquesenectuset.ca', '0137348508', 74, 'user'),
(18, 'Curran', 'Ginger', 'UYV67PTN2IF', 'Afghanistan', 'odio@consectetuer.edu', '0308851269', 45, 'user'),
(19, 'Cody', 'Ella', 'IPU69JCO5EX', 'Egypt', 'et.malesuada.fames@Fuscedolorquam.edu', '0443031826', 57, 'user'),
(20, 'Jolie', 'Minerva', 'PRA70KGT7XQ', 'Iran', 'arcu.vel.quam@semconsequat.net', '0890759373', 50, 'user'),
(21, 'Samson', 'Cheyenne', 'KIG90TOA3LI', 'Azerbaijan', 'erat.semper.rutrum@sitametconsectetuer.ca', '0243844788', 28, 'user'),
(22, 'Selma', 'Blythe', 'GMJ80KZM2WF', 'Gabon', 'consectetuer.mauris@non.ca', '0859804250', 34, 'user'),
(23, 'Jaquelyn', 'Yuri', 'KBT24DVQ9PP', 'Equatorial Guinea', 'eu.lacus.Quisque@Suspendisse.org', '0574315300', 53, 'user'),
(24, 'Forrest', 'Leonard', 'FQA90ZUW2JW', 'Falkland Islands', 'consectetuer.cursus.et@lobortisquis.ca', '0597503329', 29, 'user'),
(25, 'Calista', 'Josephine', 'PJZ43JAU9GE', 'Faroe Islands', 'nisl.Nulla@nislQuisque.org', '0288049502', 32, 'user'),
(26, 'Remedios', 'Jonah', 'JBV69KJU9PC', 'Central African Republic', 'commodo@Phasellus.ca', '0927365595', 39, 'user'),
(27, 'Patience', 'Claudia', 'VSY50OQQ7LW', 'Vanuatu', 'vulputate.ullamcorper.magna@ligulaNullamfeugiat.com', '0341451486', 49, 'user'),
(28, 'Nehru', 'Uriel', 'MAN07IKP9QN', 'Benin', 'ut@Aeneanegestas.edu', '0295818222', 31, 'user'),
(29, 'Lara', 'Vance', 'YNV96APW4WJ', 'Turks and Caicos Islands', 'magna@aliquetsemut.edu', '0684895561', 28, 'user'),
(30, 'Nicholas', 'Simon', 'YMO17EZY2LB', 'Botswana', 'neque.Nullam.nisl@nibhsitamet.ca', '0275336391', 72, 'user'),
(31, 'Aidan', 'Francis', 'ABK54VEO1OK', 'Qatar', 'vitae@egetodioAliquam.net', '0593883576', 23, 'user'),
(32, 'Halee', 'Wynter', 'ZPN84AGO5RH', 'Tokelau', 'odio@Cras.org', '0321738737', 58, 'user'),
(33, 'Amber', 'Colleen', 'LUQ32TLA9GL', 'Cape Verde', 'dolor@Duisacarcu.net', '0136417781', 65, 'user'),
(34, 'Scott', 'Illana', 'DZT19TLU2IO', 'Liechtenstein', 'varius.et@sapien.ca', '0451047045', 31, 'user'),
(35, 'Ferris', 'Finn', 'DZJ23WPM2UF', 'United States Minor Outlying Islands', 'nibh.vulputate@semperegestasurna.ca', '0284498383', 61, 'user'),
(36, 'Ezekiel', 'Octavius', 'VSM19ZYV0JU', 'British Indian Ocean Territory', 'lacus@Vivamus.net', '0560633425', 43, 'user'),
(37, 'Orla', 'Aimee', 'JHS05PUP3ZC', 'China', 'volutpat@penatibuset.net', '0186515570', 22, 'user'),
(38, 'Lesley', 'Cameron', 'YCD32XJN1LR', 'Martinique', 'nec.urna@dictum.co.uk', '0824270123', 74, 'user'),
(39, 'Hamish', 'Philip', 'QNS70KZE2SG', 'Mozambique', 'Cras.interdum.Nunc@estcongue.co.uk', '0663972087', 66, 'user'),
(40, 'Kenyon', 'Quintessa', 'MOJ62WWA1NW', 'Cocos (Keeling) Islands', 'et@pede.ca', '0646964682', 77, 'user'),
(41, 'Phillip', 'Amena', 'YJL46QZJ8GZ', 'Spain', 'in.sodales.elit@Namtempordiam.com', '0732035801', 56, 'user'),
(42, 'Salvador', 'Oleg', 'JJZ62NIS7QW', 'Saint Martin', 'Vivamus.nisi@dictummi.co.uk', '0462631645', 56, 'user'),
(43, 'Lester', 'Bethany', 'BNG64DQH2UI', 'Bhutan', 'non@velit.org', '0520268068', 70, 'user'),
(44, 'Elliott', 'Hermione', 'KRW80WCG8EX', 'Nicaragua', 'consequat@Namligula.co.uk', '0271917528', 15, 'user'),
(45, 'Kirby', 'Walter', 'CZH81ZJJ4KM', 'Suriname', 'mollis.nec@odioPhasellusat.ca', '0448959687', 43, 'user'),
(46, 'Iola', 'Lavinia', 'TIG82SRO9VU', 'Austria', 'augue.eu@sit.ca', '0109335257', 23, 'user'),
(47, 'Martha', 'Eric', 'TYJ55YBR1CY', 'Kazakhstan', 'pede.nec@necmetus.com', '0971493046', 58, 'user'),
(48, 'Bree', 'Kareem', 'BMO84MIG1RO', 'Denmark', 'at.nisi.Cum@cursus.org', '0167037817', 20, 'user'),
(49, 'Erasmus', 'Ori', 'ZGU45WBQ1IJ', 'Nauru', 'per@libero.net', '0474068853', 20, 'user'),
(50, 'Dana', 'Graham', 'MZY58BET4IC', 'Madagascar', 'quis.urna@mieleifendegestas.ca', '0693358475', 31, 'user'),
(51, 'Basia', 'Lani', 'HJD17EBI6BS', 'Norway', 'enim.Curabitur@Vivamussitamet.edu', '0695706870', 62, 'user'),
(52, 'Ocean', 'Mollie', 'WQA23NTY1FN', 'Lesotho', 'facilisis.non.bibendum@nullaInteger.edu', '0209791628', 68, 'user'),
(53, 'Idona', 'Kathleen', 'MIQ91PCH1WR', 'Panama', 'sed.leo@nonenimMauris.edu', '0119403763', 49, 'user'),
(54, 'Sawyer', 'Mallory', 'CIX29NBD9PY', 'Micronesia', 'convallis.dolor@eulacus.ca', '0485636951', 78, 'user'),
(55, 'Matthew', 'Leslie', 'WDI74FYQ9EK', 'Angola', 'ultricies.adipiscing@purusMaecenaslibero.co.uk', '0233257163', 74, 'user'),
(56, 'Karen', 'Rhiannon', 'KON61PJQ4ND', 'Bahamas', 'mi@Quisque.edu', '0650367048', 54, 'user'),
(57, 'Amanda', 'Whitney', 'ERD27KZP4ZF', 'Armenia', 'gravida.non@Donecegestas.com', '0550829631', 74, 'user'),
(58, 'Laura', 'Signe', 'LCI36QID4IC', 'Western Sahara', 'libero@euismod.ca', '0168053701', 34, 'user'),
(59, 'Avram', 'Tyler', 'SKT78MJY6MQ', 'Rwanda', 'elit@purusMaecenas.com', '0692641760', 28, 'user'),
(60, 'Leandra', 'Walker', 'AQY99ZEU5CH', 'Nauru', 'senectus.et@urna.co.uk', '0395619802', 51, 'user'),
(61, NULL, 'admin', '1234', NULL, NULL, NULL, NULL, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `museum_goer_interested_type`
--

CREATE TABLE `museum_goer_interested_type` (
  `museum_goer_id` int(45) NOT NULL,
  `Interested_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `museum_goer_interested_type`
--

INSERT INTO `museum_goer_interested_type` (`museum_goer_id`, `Interested_type`) VALUES
(1, 'Statue'),
(2, 'Painting'),
(3, 'Sculpture'),
(4, 'Sculpture'),
(5, 'Painting'),
(6, 'Sculpture'),
(7, 'Sculpture'),
(8, 'Sculpture'),
(9, 'Statue'),
(10, 'Painting'),
(11, 'Statue'),
(12, 'Other'),
(13, 'Statue'),
(14, 'Sculpture'),
(15, 'Other'),
(16, 'Statue'),
(17, 'Painting'),
(18, 'Statue'),
(19, 'Statue'),
(20, 'Other'),
(21, 'Statue'),
(22, 'Painting'),
(23, 'Statue'),
(24, 'Sculpture'),
(25, 'Painting'),
(26, 'Painting'),
(27, 'Sculpture'),
(28, 'Statue'),
(29, 'Sculpture'),
(30, 'Painting'),
(31, 'Sculpture'),
(32, 'Painting'),
(33, 'Other'),
(34, 'Painting'),
(35, 'Painting'),
(36, 'Statue'),
(37, 'Sculpture'),
(38, 'Other'),
(39, 'Painting'),
(40, 'Painting'),
(41, 'Statue'),
(42, 'Statue'),
(43, 'Sculpture'),
(44, 'Statue'),
(45, 'Painting'),
(46, 'Other'),
(47, 'Statue'),
(48, 'Painting'),
(49, 'Painting'),
(50, 'Painting'),
(51, 'Statue'),
(52, 'Statue'),
(53, 'Painting'),
(54, 'Sculpture'),
(55, 'Statue'),
(56, 'Sculpture'),
(57, 'Painting'),
(58, 'Sculpture'),
(59, 'Sculpture'),
(60, 'Painting');

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE `other` (
  `art_object_type_id` int(45) NOT NULL,
  `style` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `other`
--

INSERT INTO `other` (`art_object_type_id`, `style`, `type`) VALUES
(101, 'Expressionism', 'Print'),
(102, 'Impressionism', 'Ink'),
(103, 'Abstract', 'Print'),
(104, 'Outsider', 'Print'),
(105, 'Surrealism', 'Ink'),
(106, 'Realism', 'Photo'),
(107, 'Surrealism', 'Photo'),
(108, 'Modernism', 'Print'),
(109, 'Realism', 'Photo'),
(110, 'Modernism', 'Print'),
(111, 'Realism', 'Print'),
(112, 'Realism', 'Pastel'),
(113, 'Abstract', 'Photo'),
(114, 'Abstract', 'Ink'),
(115, 'Realism', 'Photo');

-- --------------------------------------------------------

--
-- Table structure for table `painting`
--

CREATE TABLE `painting` (
  `art_object_type_id` int(45) NOT NULL,
  `paint_type` varchar(45) DEFAULT NULL,
  `drawn_on` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `painting`
--

INSERT INTO `painting` (`art_object_type_id`, `paint_type`, `drawn_on`, `style`) VALUES
(1, 'Oil', 'Copper', 'Abstract Art'),
(2, 'Watercolour', 'Canvas', 'Impressionism'),
(3, 'Oil', 'Wood', 'Expressionism'),
(4, 'Watercolour', 'Copper', 'Surrealism'),
(5, 'Oil', 'Oak', 'Cubism'),
(6, 'Oil', 'Wood', 'Impressionism'),
(7, 'Watercolour', 'Lime', 'Impressionism'),
(8, 'Watercolour', 'Copper', 'Impressionism'),
(9, 'Egg Tempera', 'Wood', 'Photorealism'),
(10, 'Oil', 'Canvas', 'Realism'),
(11, 'Watercolour', 'Canvas', 'Realism'),
(12, 'Oil', 'Canvas', 'Realism'),
(13, 'Watercolour', 'Wood', 'Painterly'),
(14, 'Oil', 'Wood', 'Expressionism'),
(15, 'Oil', 'Canvas', 'Modernism'),
(16, 'Oil', 'Canvas', 'Abstraction'),
(17, 'Oil', 'Oak', 'Impressionism'),
(18, 'Watercolour', 'Canvas', 'Abstraction'),
(19, 'Watercolour', 'Wood', 'Abstract Art'),
(20, 'Oil', 'Oak', 'Expressionism'),
(21, 'Oil', 'Wood', 'Orientallism'),
(22, 'Oil', 'Board', 'Modernism'),
(23, 'Watercolour', 'Canvas', 'Surrealism'),
(24, 'Watercolour', 'Spruce', 'Orientallism'),
(25, 'Charcoal', 'Paper', 'Painterly'),
(26, 'Oil', 'Canvas', 'Surrealism'),
(27, 'Oil', 'Copper', 'Painterly'),
(28, 'Oil', 'Canvas', 'Impressionism'),
(29, 'Oil', 'Cardboard', 'Modernism'),
(30, 'Watercolour', 'Canvas', 'Modernism'),
(31, 'Oil', 'Canvas', 'Modernism'),
(32, 'Watercolour', 'Canvas', 'Realism'),
(33, 'Watercolour', 'Canvas', 'Orientallism'),
(34, 'Tempera', 'Wood', 'Impressionism'),
(35, 'Oil', 'Canvas', 'Impressionism'),
(36, 'Tempera', 'Wood', 'Impressionism'),
(37, 'Oil', 'Canvas', 'Impressionism'),
(38, 'Oil', 'Copper', 'Realism'),
(39, 'Oil', 'Oak', 'Impressionism'),
(40, 'Oil', 'Canvas', 'Realism');

-- --------------------------------------------------------

--
-- Table structure for table `permanent_collection`
--

CREATE TABLE `permanent_collection` (
  `art_object_id` int(45) DEFAULT NULL,
  `collection_id` int(45) DEFAULT NULL,
  `date_acquired` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permanent_collection`
--

INSERT INTO `permanent_collection` (`art_object_id`, `collection_id`, `date_acquired`, `status`, `cost`) VALUES
(26, 43, '2010-12-19', 'Display', 722),
(14, 26, '2016-01-04', 'Loan', 5999),
(99, 26, '2016-01-04', 'Loan', 9760),
(69, 39, '2000-04-05', 'Loan', 6624),
(86, 39, '2000-04-05', 'Loan', 3822),
(79, 4, '1993-07-10', 'Loan', 2542),
(108, 4, '1993-07-10', 'Loan', 8933),
(18, 42, '1992-08-29', 'Stored', 4709),
(77, 42, '1992-08-29', 'Stored', 4869),
(71, 13, '2008-06-09', 'Stored', 660),
(83, 13, '2008-06-09', 'Stored', 377),
(7, 40, '2006-10-10', 'Stored', 4432),
(53, 40, '2006-10-10', 'Stored', 2401),
(54, 40, '2006-10-10', 'Stored', 4027),
(24, 2, '2002-01-28', 'Stored', 3875),
(32, 15, '2005-07-10', 'Display', 6851),
(33, 15, '2005-07-10', 'Display', 3582),
(47, 15, '2005-07-10', 'Display', 926),
(65, 15, '2005-07-10', 'Display', 1475),
(82, 15, '2005-07-10', 'Display', 8725),
(5, 7, '2011-12-13', 'Stored', 6850),
(41, 7, '2011-12-13', 'Stored', 1258),
(28, 8, '2016-11-13', 'Stored', 622),
(49, 8, '2016-11-13', 'Stored', 5629),
(98, 8, '2016-11-13', 'Stored', 6505),
(115, 8, '2016-11-13', 'Stored', 6123),
(4, 35, '2007-07-01', 'Stored', 8584),
(11, 35, '2007-07-01', 'Stored', 9461),
(85, 35, '2007-07-01', 'Stored', 6440),
(36, 44, '2013-10-17', 'Stored', 422),
(42, 44, '2013-10-17', 'Stored', 9794),
(1, 36, '2007-09-11', 'Display', 5862),
(13, 50, '1996-02-13', 'Stored', 4816),
(29, 50, '1996-02-13', 'Stored', 1845),
(56, 50, '1996-02-13', 'Stored', 2976),
(100, 50, '1996-02-13', 'Stored', 7361),
(76, 17, '2010-09-04', 'Display', 2138),
(6, 41, '2016-08-25', 'Stored', 5970),
(103, 41, '2016-08-25', 'Stored', 2326),
(73, 49, '2094-08-14', 'Stored', 6251),
(89, 49, '2094-08-14', 'Stored', 2471),
(96, 49, '2094-08-14', 'Stored', 432),
(23, 21, '2014-04-09', 'Stored', 6907),
(64, 21, '2014-04-09', 'Stored', 9666),
(38, 12, '1996-06-16', 'Display', 6064),
(68, 12, '1996-06-16', 'Display', 3645),
(88, 12, '1996-06-16', 'Display', 2993),
(12, 11, '1997-10-24', 'Display', 6698),
(20, 11, '1997-10-24', 'Display', 1388),
(27, 11, '1997-10-24', 'Display', 475),
(51, 5, '1991-02-03', 'Loan', 3657),
(87, 5, '1991-02-03', 'Loan', 6233),
(72, 14, '2009-03-05', 'Stored', 9599),
(90, 14, '2009-03-05', 'Stored', 281),
(104, 14, '2009-03-05', 'Stored', 9711),
(106, 14, '2009-03-05', 'Stored', 8619),
(59, 30, '2003-05-12', 'Display', 9369),
(97, 30, '2003-05-12', 'Display', 4380),
(111, 30, '2003-05-12', 'Display', 8244),
(2, 48, '2013-11-06', 'Loan', 1521),
(16, 48, '2013-11-06', 'Loan', 5076),
(40, 48, '2013-11-06', 'Loan', 6815),
(61, 48, '2013-11-06', 'Loan', 4386),
(63, 48, '2013-11-06', 'Loan', 1842),
(95, 48, '2013-11-06', 'Loan', 6992),
(17, 32, '1995-03-07', 'Stored', 2267),
(74, 32, '1995-03-07', 'Stored', 4802),
(10, 31, '2010-11-29', 'Stored', 7365),
(48, 31, '2010-11-29', 'Stored', 9680),
(92, 34, '2008-09-27', 'Loan', 2481),
(19, 3, '1993-07-19', 'Display', 2035),
(112, 3, '1993-07-19', 'Display', 7233),
(44, 37, '2014-02-12', 'Loan', 7214),
(31, 45, '1990-06-19', 'Display', 2452),
(39, 45, '1990-06-19', 'Display', 149),
(55, 45, '1990-06-19', 'Display', 2455),
(105, 45, '1990-06-19', 'Display', 3820),
(114, 45, '1990-06-19', 'Display', 4619),
(37, 23, '2007-11-15', 'Loan', 7617),
(52, 38, '1999-04-25', 'Display', 4210),
(67, 20, '2015-01-24', 'Stored', 3900),
(78, 20, '2015-01-24', 'Stored', 6367),
(35, 9, '2013-01-30', 'Stored', 8661),
(45, 9, '2013-01-30', 'Stored', 4229),
(81, 9, '2013-01-30', 'Stored', 3924),
(94, 9, '2013-01-30', 'Stored', 1877),
(62, 19, '2015-07-28', 'Stored', 350),
(102, 19, '2015-07-28', 'Stored', 6768);

-- --------------------------------------------------------

--
-- Table structure for table `sculpture`
--

CREATE TABLE `sculpture` (
  `art_object_type_id` int(45) NOT NULL,
  `material` varchar(225) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sculpture`
--

INSERT INTO `sculpture` (`art_object_type_id`, `material`, `height`, `weight`, `style`) VALUES
(41, 'Pentelican marble', '1822 mm', '3180', 'Carving'),
(42, 'Alabaster', '2140 mm', '2500', 'Carving'),
(43, 'Painted wood', '228 mm', '150', 'Carving'),
(44, 'Tufa stone', '300 mm', '200', 'Carving'),
(45, 'Limestone', '180 mm', '280 ', 'Carving'),
(46, 'Red Mansfield stone', '229 mm', '432', 'Carving'),
(47, 'Guarea wood and paint on wooden base', '1016 mm', '410', 'Carving'),
(48, 'Elm', '388 mm', '725', 'Carving'),
(49, 'Gneiss stone', '87 mm', '212', 'Carving'),
(50, 'Plaster, fibreglass and wood', '5800 mm', '2200', 'Casting'),
(51, 'Bronze', '660 mm', '230', 'Casting'),
(52, 'Lead and plaster', '510 mm', '90', 'Casting'),
(53, 'Bronze', '1099 mm', '290', 'Casting'),
(54, 'Bronze on wooden base', '330 mm', '27.4', 'Casting'),
(55, 'Mixed media', '624 mm', '20', 'Casting'),
(56, 'Plastic', '762 mm', '62', 'Casting'),
(57, 'Plaster and bronze', '1540 mm', '300', 'Casting'),
(58, 'Bronze', '345 mm', '51.5', 'Casting'),
(59, 'Bronze', '930 mm', '40', 'Casting'),
(60, 'Lead and steel on steel base', '1580 mm', '976', 'Casting'),
(61, 'Earthenware', '330 mm', '9', 'Modelling'),
(62, 'Plaster and wax', '181 mm', '70', 'Modelling'),
(63, 'Clay, wood, steel and Perspex', '1580 mm', '250', 'Modelling'),
(64, 'Reduced stoneware', '140 mm', '140', 'Modelling'),
(65, 'Clay', '840 mm', '95', 'Modelling'),
(66, 'Terracotta on wooden base', '310 mm', '120', 'Modelling'),
(67, 'Ceramic, epoxy, gold leaf, encre de Chine and oak table', '450 mm', '350', 'Modelling'),
(68, 'Painted wood and upholstery fringe', '92 mm', '15', 'Constructing And Assembling'),
(69, 'Steel', '2600 mm', '56', 'Constructing And Assembling'),
(70, 'Wood', '290 mm', '150', 'Constructing And Assembling'),
(71, 'Cardboard', '160 mm', '35', 'Constructing And Assembling'),
(72, 'Fabric and metal', '37 mm', '50', 'Constructing And Assembling'),
(73, 'Steel', '308 mm', '216', 'Constructing And Assembling'),
(74, 'Hemp fibre and steel', '1100 mm', '56', 'Constructing And Assembling'),
(75, 'Painted steel and aluminium', '3353 mm', '150', 'Constructing And Assembling'),
(76, 'wood and cord', '206 mm', '250', 'Constructing And Assembling'),
(77, 'Tin', '280 mm', '0.5', 'Constructing And Assembling'),
(78, 'Brass, zinc and plywood', '2000 mm', '500', 'Constructing And Assembling');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `art_object_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statue`
--

CREATE TABLE `statue` (
  `art_object_type_id` int(45) NOT NULL,
  `material` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statue`
--

INSERT INTO `statue` (`art_object_type_id`, `material`, `height`, `weight`, `style`) VALUES
(79, 'Carved', '4.4 in', '35', 'Casting'),
(80, 'Bronze', '180 cm', '35', 'Casting'),
(81, 'Parian marble', '2.12 m', '53', 'Carving'),
(82, 'Marble', '203 cm', '80', 'Casting'),
(83, 'Marble', '112 cm', '50', 'Carving'),
(84, 'Carved', '54 mm', '70', 'Assembling'),
(85, 'Marble', '45 in', '150', 'Casting'),
(86, 'Bronze', '45 in', '50', 'Carving'),
(87, 'Carved', '543 cm', '23', 'Casting'),
(88, 'Marble', '78 cm', '45', 'Assembling'),
(89, 'Carved', '785 m', '245', 'Carving'),
(90, 'Marble', '76 m', '452', 'Assembling'),
(91, 'Carved', '38 cm', '45', 'Assembling'),
(92, 'Marble', '89 cm', '23', 'Carving'),
(93, 'Carved', '78 in', '452', 'Casting'),
(94, 'Bronze', '78 m', '12', 'Casting'),
(95, 'Marble', '86 in', '35', 'Assembling'),
(96, 'Bronze', '54 m', '54', 'Casting'),
(97, 'Marble', '54 in', '21', 'Carving'),
(98, 'Carved', '54 cm', '45', 'Casting'),
(99, 'Marble', '45 m', '57', 'Carving');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `exhibition_id` int(45) NOT NULL,
  `museum_goer_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`exhibition_id`, `museum_goer_id`) VALUES
(1, 40),
(1, 10),
(10, 38),
(12, 29),
(1, 25),
(11, 55),
(6, 49),
(6, 20),
(9, 3),
(10, 32),
(12, 33),
(7, 2),
(4, 13),
(5, 49),
(6, 36),
(12, 14),
(8, 4),
(10, 16),
(13, 55),
(10, 15),
(8, 29),
(7, 34),
(4, 17),
(2, 50),
(1, 47),
(11, 19),
(1, 12),
(11, 4),
(4, 59),
(10, 6),
(7, 16),
(2, 5),
(9, 57),
(5, 15),
(13, 42),
(12, 15),
(10, 42),
(8, 36),
(8, 6),
(12, 17),
(4, 57),
(8, 18),
(3, 6),
(7, 59),
(11, 11),
(6, 7),
(7, 13),
(3, 24),
(4, 15),
(12, 56),
(1, 50),
(1, 3),
(5, 18),
(11, 30),
(5, 56),
(8, 34),
(4, 14),
(10, 50),
(9, 31),
(12, 38),
(9, 54),
(3, 23),
(11, 56),
(5, 48),
(10, 18),
(12, 32),
(11, 9),
(12, 25),
(6, 1),
(7, 44),
(8, 37),
(13, 43),
(6, 15),
(1, 5),
(6, 42),
(7, 59),
(10, 35),
(5, 6),
(3, 26),
(4, 10),
(6, 51),
(8, 58),
(12, 48),
(8, 13),
(4, 51),
(9, 44),
(8, 56),
(2, 39),
(6, 52),
(1, 1),
(4, 56),
(3, 28),
(9, 45),
(1, 59),
(12, 25),
(11, 59),
(12, 45),
(4, 23),
(13, 22),
(3, 43);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `art_object`
--
ALTER TABLE `art_object`
  ADD PRIMARY KEY (`Id_no`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `borrowed`
--
ALTER TABLE `borrowed`
  ADD KEY `borrowed_ibfk_1` (`art_object_id`),
  ADD KEY `borrowed_ibfk_2` (`collection_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`Collection_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `contact_person`
--
ALTER TABLE `contact_person`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `display`
--
ALTER TABLE `display`
  ADD KEY `exhibition_id` (`exhibition_id`),
  ADD KEY `art_object_id` (`art_object_id`);

--
-- Indexes for table `exhibition`
--
ALTER TABLE `exhibition`
  ADD PRIMARY KEY (`exhibition_id`);

--
-- Indexes for table `museum_goer`
--
ALTER TABLE `museum_goer`
  ADD PRIMARY KEY (`museum_goer_id`);

--
-- Indexes for table `museum_goer_interested_type`
--
ALTER TABLE `museum_goer_interested_type`
  ADD KEY `museum_goer_id` (`museum_goer_id`);

--
-- Indexes for table `other`
--
ALTER TABLE `other`
  ADD KEY `art_object_type_id` (`art_object_type_id`);

--
-- Indexes for table `painting`
--
ALTER TABLE `painting`
  ADD KEY `art_object_type_id` (`art_object_type_id`);

--
-- Indexes for table `permanent_collection`
--
ALTER TABLE `permanent_collection`
  ADD KEY `permanent_collection_ibfk_1` (`art_object_id`),
  ADD KEY `permanent_collection_ibfk_2` (`collection_id`);

--
-- Indexes for table `sculpture`
--
ALTER TABLE `sculpture`
  ADD KEY `art_object_type_id` (`art_object_type_id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD KEY `source_ibfk_1` (`art_object_id`),
  ADD KEY `source_ibfk_3` (`collection_id`);

--
-- Indexes for table `statue`
--
ALTER TABLE `statue`
  ADD KEY `art_object_type_id` (`art_object_type_id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD KEY `exhibition_id` (`exhibition_id`),
  ADD KEY `user_id` (`museum_goer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `art_object`
--
ALTER TABLE `art_object`
  MODIFY `Id_no` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `Collection_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `contact_person`
--
ALTER TABLE `contact_person`
  MODIFY `contact_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `exhibition`
--
ALTER TABLE `exhibition`
  MODIFY `exhibition_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `museum_goer`
--
ALTER TABLE `museum_goer`
  MODIFY `museum_goer_id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `art_object`
--
ALTER TABLE `art_object`
  ADD CONSTRAINT `art_object_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `borrowed`
--
ALTER TABLE `borrowed`
  ADD CONSTRAINT `borrowed_ibfk_1` FOREIGN KEY (`art_object_id`) REFERENCES `art_object` (`Id_no`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `borrowed_ibfk_2` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`Collection_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact_person` (`contact_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `display`
--
ALTER TABLE `display`
  ADD CONSTRAINT `display_ibfk_1` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibition` (`exhibition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `display_ibfk_2` FOREIGN KEY (`art_object_id`) REFERENCES `art_object` (`Id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `museum_goer_interested_type`
--
ALTER TABLE `museum_goer_interested_type`
  ADD CONSTRAINT `museum_goer_interested_type_ibfk_1` FOREIGN KEY (`museum_goer_id`) REFERENCES `museum_goer` (`museum_goer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `other`
--
ALTER TABLE `other`
  ADD CONSTRAINT `other_ibfk_1` FOREIGN KEY (`art_object_type_id`) REFERENCES `art_object` (`Id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `painting`
--
ALTER TABLE `painting`
  ADD CONSTRAINT `painting_ibfk_1` FOREIGN KEY (`art_object_type_id`) REFERENCES `art_object` (`Id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permanent_collection`
--
ALTER TABLE `permanent_collection`
  ADD CONSTRAINT `permanent_collection_ibfk_1` FOREIGN KEY (`art_object_id`) REFERENCES `art_object` (`Id_no`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `permanent_collection_ibfk_2` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`Collection_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sculpture`
--
ALTER TABLE `sculpture`
  ADD CONSTRAINT `sculpture_ibfk_1` FOREIGN KEY (`art_object_type_id`) REFERENCES `art_object` (`Id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `source`
--
ALTER TABLE `source`
  ADD CONSTRAINT `source_ibfk_1` FOREIGN KEY (`art_object_id`) REFERENCES `art_object` (`Id_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `source_ibfk_2` FOREIGN KEY (`collection_id`) REFERENCES `borrowed` (`collection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `source_ibfk_3` FOREIGN KEY (`collection_id`) REFERENCES `permanent_collection` (`collection_id`) ON UPDATE CASCADE;

--
-- Constraints for table `statue`
--
ALTER TABLE `statue`
  ADD CONSTRAINT `statue_ibfk_1` FOREIGN KEY (`art_object_type_id`) REFERENCES `art_object` (`Id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`exhibition_id`) REFERENCES `exhibition` (`exhibition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`museum_goer_id`) REFERENCES `museum_goer` (`museum_goer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
