# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
JoinFavSubject.destroy_all
JoinReadSubject.destroy_all
JoinValidateSubject.destroy_all
User.destroy_all
Subject.destroy_all
Category.destroy_all


# User1
User.create(
  nickname: "JessL",
  description: "En manque d'inspiration ? Besoin d'un conseil design ? Je saurais vous répondre!",
  email: "whiteboard1@yopmail.com",
  password: "123456",
  is_admin: false
)
# Admin
User.create(
  nickname: "WhiteBoardAdmin",
  description: "Je suis le king",
  email: "whiteboard.thp@yopmail.com",
  password: "123456",
  is_admin: true
)
# User2
User.create(
  nickname: "LucasI",
  description: "Loup de mer qui essaie d'associer le code, l'eau salée et le sable chaud.",
  email: "whiteboard2@yopmail.com",
  password: "123456",
  is_admin: false
)
# User3
User.create(
  nickname: "ChrisB",
  description: "Je push et je pull de tous les côtés... Et en plus ? Je fais du front!",
  email: "whiteboard3@yopmail.com",
  password: "123456",
  is_admin: false
)
# User4
User.create(
  nickname: "AlexF",
  description: "Fifou du Sud-Ouest, des idées pleins la tête. N'y pensez même pas, je l'ai déjà fait...",
  email: "whiteboard4@yopmail.com",
  password: "123456",
  is_admin: false
)
User.create(
  nickname: "JulienA",
  description: "C'est moi le boss, une question ? Viendez!",
  email: "whiteboard5@yopmail.com",
  password: "123456",
  is_admin: false
)

Category.create(name: "Musique")
Category.create(name: "Développement Web")
Category.create(name: "Science")
Category.create(name: "Sport")
Category.create(name: "Langues")
Category.create(name: "Spiritualité")
Category.create(name: "Art")
Category.create(name: "Écologie")
Category.create(name: "Psychologie")
Category.create(name: "Philosophie")



Subject.create(title: "Commencer à apprendre l’espagnol", content: "<p>Apprendre une langue n&rsquo;est jamais facile. En quelques mois j&rsquo;ai r&eacute;ussi &agrave; apprendre <strong>les bases de l&rsquo;espagnol</strong>.</p><p>Cela m&rsquo;a permise d&rsquo;&eacute;changer avec les gens lors de <em>mon voyage en Argentine</em>. J&rsquo;aimerais vous partager ici les astuces qui m&rsquo;ont permises d&rsquo;apprendre rapidement les bases.</p><ol><li>Les vid&eacute;os YouTube de la cha&icirc;ne <strong>&iexcl;Aprende espa&ntilde;ol con Saby!</strong> sont super. Voici la premi&egrave;re vid&eacute;o !<span class='fr-video fr-deletable fr-fvc fr-dvb fr-draggable' contenteditable='false' draggable='true'><iframe width='640' height='360' src='https://www.youtube.com/embed/MRW2f_UMjKc?&wmode=opaque' frameborder='0' allowfullscreen='' class='fr-draggable'></iframe></span></li><li>J&rsquo;ai beaucoup aim&eacute; les livres de <strong>la m&eacute;thode Assimil</strong>, notamment le livre : &laquo; <a href='https://www.assimil.com/collection-sans-peine/1339-l-espagnol-9782700570892.html'>L&rsquo;Espagnol</a> &raquo; Le livre est progressif et &agrave; raison <em>d&rsquo;une demi-heure par jour</em>, j&rsquo;ai trouv&eacute; un rythme confortable pour mon apprentissage.&nbsp;</li><li>En compl&eacute;ment j&rsquo;ai essay&eacute; <u>plusieurs application</u> et j&rsquo;en ai trouv&eacute; deux qui m&rsquo;ont beaucoup aid&eacute; : <a href='https://fr.duolingo.com/'>Duolingo&nbsp;</a>et <a href='https://www.memrise.com/fr/'>Memrise</a>.&nbsp;</li><li>Quand on apprend une langue, il y a des incontournables, comme par exemple regarder des films ou des s&eacute;ries en version originale! Voici une liste de mes pr&eacute;f&eacute;r&eacute;s : &nbsp;<strong>Films</strong> : <em>Volver</em>, <em>Mujeres</em> <em>al borde de un ataque de nervios</em>, <em>Amores perros</em>, <em>La Mala Educaci&oacute;n...&nbsp;</em><strong>S&eacute;ries</strong> : <em>Narcos</em>, <em>La Casa de Papel</em>, <em>Un, dos tre</em>s, etc...</li></ol>", user_id: User.find_by(nickname:"LucasI").id, difficulty: "Facile",category_id: Category.find_by(name:"Langues").id)
Subject.create(title: "Démarrer un potager en permaculture", content: "<h3><strong>Mon int&eacute;r&ecirc;t pour la mati&egrave;re</strong></h3><p>Ayant h&eacute;rit&eacute; d&rsquo;un terrain familial dans le Vercors, j&rsquo;ai d&eacute;cid&eacute;, il y&rsquo;a quelques ann&eacute;es maintenant, de m&rsquo;aventurer sur la voie de <em>l&rsquo;autosuffisance alimentaire</em>. Certes, mais par o&ugrave; commencer ? J&rsquo;avais alors d&eacute;j&agrave; entendu parl&eacute; de la permaculture et j&rsquo;eu envie d&rsquo;exp&eacute;rimenter cette technique d&rsquo;agriculture sur ma parcelle d&rsquo;un hectare environ.&nbsp;</p><h3><strong>Liens</strong></h3><p><strong>1.</strong> Pour la th&eacute;orie, je recommande tout bonnement la <strong>bible de la permaculture.&nbsp;</strong><a href=\"https://www.permatheque.fr/PDF/Bill%20Mollison%20-%20Permaculture%201.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Introduction &agrave; la Permaculture</a> de <em>Bill Mollison</em>.&nbsp;</p><p><strong>2.</strong> Bien que controvers&eacute;, je recommande tout de m&ecirc;me le <a href=\"https://livre.fnac.com/a12599380/Philippe-Duchaufour-Introduction-a-la-science-du-sol?oref=00000000-0000-0000-0000-000000000000&Origin=SEA_GOOGLE_PLA_BOOKS&esl-k=sem-google|ng|c294196405911|m|kpla374773846736|p|t|dc|a58200328279|g1553156614&gclsrc=aw.ds&&gclid=CjwKCAjw5vz2BRAtEiwAbcVIL4TiSmvyNwFu-u0U48sgRPG_OHrJj4CyQKgIdrCfRoBK5pDHsFOGpxoCTTsQAvD_BwE\" rel=\"noopener noreferrer\" target=\"_blank\">livre</a> de<em>&nbsp;Claude et Lydia Bougignon</em>.&nbsp;</p><p><strong>3.</strong> Pour ce qui est de la pratique, je recommande vivement les vid&eacute;os de la cha&icirc;ne Youtube <a href=\"https://www.youtube.com/user/permacultureetc/videos\" rel=\"noopener noreferrer\" target=\"_blank\">Permaculture Agro&eacute;cologie</a> qui ont fait guise d&rsquo;une v&eacute;ritable initiation pour moi. Je recommande notamment la vid&eacute;o ci-dessous, pour d&eacute;buter &agrave; cultiver sur des buttes.&nbsp;</p><p><span class=\"fr-jiv fr-video fr-deletable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/KI2bwOFnyCU?&wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\" class=\"fr-draggable\"></iframe></span><br></p><p><strong>4.</strong> Enfin, en compl&eacute;ment je recommande cette <a href=\"https://www.youtube.com/watch?v=lyLQYVJDerE&frags=pl%2Cwn\" rel=\"noopener noreferrer\" target=\"_blank\">vid&eacute;o</a> qui couvre &agrave; peu pr&egrave;s tous les points et &eacute;l&eacute;ments &agrave; conna&icirc;tre pour <em>d&eacute;buter son jardin de permaculture</em>.</p>", user_id: User.find_by(nickname:"JessL").id, difficulty: "Intermédiaire",category_id: Category.find_by(name:"Écologie").id)
Subject.create(title: "Ukulélé en 5 étapes", content: "<p>N&rsquo;ayant aucune base en instrument &agrave; corde, j&rsquo;ai voulu <strong>apprendre le ukul&eacute;l&eacute;</strong> tout simplement parce que je me suis rappel&eacute; qu&rsquo;une amie hawa&iuml;enne m&rsquo;en avait rapport&eacute; un en souvenir.&nbsp;</p><p>J&rsquo;ai donc parcouru le net &agrave; la recherche de tutoriels et cours gratuits qui existaient. Apr&egrave;s environ <em>5 mois d&rsquo;apprentissage</em> o&ugrave; je pratiquais <em>plus ou moins 30 minutes par jour,</em> je suis arriv&eacute; &agrave; un niveau que je jugeais satisfaisant.&nbsp;</p><p>Mat&eacute;riel recommand&eacute;: <strong>un ukul&eacute;l&eacute;</strong> et <strong>un tuner</strong>.&nbsp;</p><ol><li>Je recommande de suivre les 3 premi&egrave;res vid&eacute;os de la <strong>cha&icirc;ne YouTube d&rsquo;Andy Guitar&nbsp;</strong>et de <em>les revoir toutes les semaines en faisant les exercices recommand&eacute;s</em>. Ces vid&eacute;os <em>simples et ludiques</em> (d&egrave;s la premi&egrave;re vid&eacute;o de 20min, vous apprenez &agrave; jouer une chanson), m&rsquo;ont permis de progresser pas &agrave; pas en apprenant toujours quelques accords de plus &agrave; chaque le&ccedil;on.&nbsp;</li><li>La cha&icirc;ne YouTube <a class='fr-strong' href='https://www.youtube.com/watch?v=98dizc1ZNFw&t=339s'>Ben au Ukul&eacute;l&eacute;</a> est aussi pleine de <em>bons conseils</em> et <em>tutos</em> pour des chansons. Sa vid&eacute;o est tr&egrave;s explicite et facile &agrave; appr&eacute;hender.&nbsp;</li><li><a href='https://www.ukuleletravel.com/category/debuter-le-ukulele'><strong>Ukulele Travel</strong></a>: j&rsquo;ai beaucoup appr&eacute;ci&eacute; les conseils gratuit sur le site <a href=\"https://www.ukuleletravel.com/category/debuter-le-ukulele\">yukuleletravel.com</a>. Des bonnes astuces et des entra&icirc;nements tous niveaux bien adapt&eacute;s.</li></ol>\".html_safe, user_id: User.find_by(nickname:\"JessL\").id, difficulty: \"Facile\",category_id: Category.find_by(name:\"Musique\").id)"
Subject.create(title: "Une heure pour comprendre : le Yoga\", content: \"<p>Passionn&eacute; par les <strong>philosophies orientales</strong> et<strong>&nbsp;la spiritualit&eacute;</strong> en g&eacute;n&eacute;ral, je suis parti pendant six mois en Inde faire un tour des ashrams et monast&egrave;res pour apprendre <strong>le yoga</strong> et <strong>la m&eacute;ditation</strong>. Moi qui associait &ccedil;a &agrave; des gens en legging qui font des acrobaties dans la salle de cours collectifs de la salle de sport, j&rsquo;&eacute;tais loin de me douter de <strong>l&rsquo;art de vivre</strong> &agrave; part enti&egrave;re et de<strong>&nbsp;la puissance du yoga, quand on commence &agrave; l&rsquo;impl&eacute;menter dans sa vie</strong>.&nbsp;</p><p>Je suis donc all&eacute; &agrave; la rencontre de ces <em>&ldquo;ma&icirc;tres spirituels&rdquo;</em> indiens, discut&eacute;s avec ces<em>&nbsp;Saddhus</em><em>&nbsp;qui vivent dans des grottes dans l&rsquo;Himalaya</em>, <em>m&eacute;dit&eacute; pendant des centaines d&rsquo;heures</em>, <em>lu des dizaines de livres sur le sujet et c&ocirc;toy&eacute; des yogis plus ou moins exp&eacute;riment&eacute;s des quatre coins du monde</em>.&nbsp;</p><p>Voici un ensemble de ressources que j&rsquo;ai &agrave; partager avec vous. Il existe de <strong>nombreux types de yogas</strong>.<strong>&nbsp;Swami Vivekananda</strong>, un grand ma&icirc;tre Indien du XIX&egrave; si&egrave;cle en d&eacute;signait quatre: <strong>le Jnana Yoga(voie de la connaissance)</strong>, le <strong>Raja Yoga (voie de l&rsquo;exp&eacute;rience physique (postures</strong><strong>&nbsp;et pranayamas) et des asc&egrave;ses, dont fait parti l&rsquo;Hatha),</strong> le <strong>Bhakti Yoga (voie de l&rsquo;amour et de la d&eacute;votion)</strong>, et le <strong>Karma Yoga (voie de l&rsquo;action et du service)</strong>.&nbsp;</p><p>Voici donc plusieurs ressources (livres, textes sacr&eacute;s et vid&eacute;os YouTube, pour comprendre ce qu&rsquo;est le Yoga):&nbsp;</p><h4><strong>Les Yogas-Sutras de Patanjali</strong></h4><p>Le classique du Yoga, l&rsquo;un des p&egrave;res fondateurs de<strong>&nbsp;l&rsquo;Ashtanga</strong>, <strong>Patanjali</strong>, qui explique dans son livre <a href=\"https://www.amazon.fr/Yoga-Sutras-Patanjali-ebook/dp/B00GWMD0VG/ref=sr_1_1?__mk_fr_FR=ÅMÅŽÕÑ&dchild=1&keywords=patanjali+yoga+sutra&qid=1591709819&sr=8-1)\">Les Yoga Sutras</a>, ce que sont les <strong>huit branches du yoga</strong>.&nbsp;</p><p>Il existe aussi des <a href=\"https://archive.org/details/yogasutrasofpata00pata/page/n9/mode/2up\">versions gratuites en anglais</a>.&nbsp;</p><h4><strong>Le Hatha Yoga Pradipika</strong></h4><p>Vous pouvez aussi lire le &ldquo;<a href=\"https://archive.org/details/hathayogapradipikaswamimuktibodhananda_202003_329_Y\">Hatha Yoga Pradipika</a>&quot; qui est une <strong>Bible du Hatha Yoga</strong> (pour aller plus loin).&nbsp;</p><h4><strong>Les Salutations au Soleil (Surya Namaskar)</strong></h4><p>Si il y a bien une <strong>s&eacute;rie d&rsquo;Assanas</strong> &agrave; apprendre, c&rsquo;est<strong>&nbsp;la fameuse salutation au soleil (Surya Namaskar)</strong> qui est &agrave; mes yeux le meilleur ensemble de postures pour <em>balancer sa chimie int&eacute;rieure et r&eacute;&eacute;quilibrer ses chakras</em>. Tu pourras l&rsquo;apprendre sur <a href=\"https://www.youtube.com/watch?v=BYzwYAl3yEQ\">cette vid&eacute;o</a>.&nbsp;</p><h4><strong>Les Pranayamas</strong></h4><p>Les <strong>Pranayamas&nbsp;</strong>sont un autre moyen de <u><em>nous lib&eacute;rer de l&rsquo;emprise du mental &agrave; travers des exercices de respiration</em></u>. Il existe &eacute;norm&eacute;ment de m&eacute;thodes que <strong>vous pourrez apprendre directement avec des Yogis</strong>. Mais certaines de ces m&eacute;thodes mal faites, <strong>peuvent &ecirc;tre dangereuses</strong>. C&rsquo;est pourquoi je te recommande les exercices de la <a href=\"https://www.youtube.com/watch?v=tybOi4hjZFQ\"><strong>Wim Hof Method,</strong></a> qui est &agrave; mes yeux<em>&nbsp;extra-ordinaire.</em> De rien! :)&nbsp;</p><h4><strong>L&#39;Adva&iuml;ta V&eacute;danta, la philosophie de la transcendance</strong></h4><p>Si vous comprenez l&rsquo;anglais, et que vous voulez vous atteindre des niveaux plus avanc&eacute;s de conscience, <a href=\"https://www.youtube.com/channel/UCz6X8QK9_JG49hJxnzAu-1w\">cette cha&icirc;ne Youtube</a> est vraiment l<strong>a meilleure cha&icirc;ne de spiritualit&eacute; existante sur YouTube</strong>. Tu pourras y trouver<strong>&nbsp;les enseignements des plus grands gurus et ma&icirc;tres qui ont exist&eacute;s</strong>. Tu ne comprendra peut-&ecirc;tre pas tout pour l&rsquo;instant, mais plus ta conscience s&rsquo;&eacute;l&egrave;vera, plus tu comprendras....</p>", user_id: User.find_by(nickname:"AlexF").id, difficulty: "Facile",category_id: Category.find_by(name:"Spiritualité").id)
Subject.create(title: "Comprendre le slow cinema", content: "<h3><strong>Pr&eacute;ambule</strong></h3><p>Cette ressource s&rsquo;adresse &agrave; tous les cin&eacute;philes amateurs comme moi ! Je suis &eacute;tonn&eacute;e par le manque de ressources disponibles sur le net sur tout ce qui touche au mouvement `slow cinema` ou `cin&eacute;ma contemplatif`. Ce genre est un genre filmique qui met l&#39;accent sur des <em>longues prises</em> et qui est souvent <em>minimaliste</em>, <em>observationnel</em> et avec peu ou pas de r&eacute;cit. Les prog&eacute;niteurs du genre incluent <em>Andrei Tarkovsky</em>, <em>Ingmar Bergman</em>, <em>Michelangelo Antonioni</em>, <em>Robert Bresson</em>, <em>Aleksandr Sokurov</em>, <em>B&eacute;la Tarr</em>, <em>Chantal Akerman</em> et <em>Theo Angelopoulos</em>.&nbsp;</p><p>Tarkovsky avait soutenu que &#39;<em>I think that what a person normally goes to cinema for is time</em>&#39;.&nbsp;</p><h3><strong>Liens</strong></h3><p><strong>1.&nbsp;</strong>Avant de se plonger au coeur du cin&eacute;ma contemplatif, je recommande de suivre cette vid&eacute;o ludique de l&rsquo;&eacute;mission <strong>Blow-Up&nbsp;</strong>(Arte) qui survole, avec des exemples, les mouvements de cam&eacute;ra au cin&eacute;ma.&nbsp;</p><p><span class=\"fr-jiv fr-video fr-deletable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/00dQC2yCIJA?&wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\" class=\"fr-draggable\"></iframe></span><br></p><p><strong>2</strong>. Et c&rsquo;est en visionnant le superbe<strong>&nbsp;Kaili Blues</strong> (2016) de<em>&nbsp;Bi Gan</em> que j&rsquo;ai d&eacute;cid&eacute; d&rsquo;entreprendre des recherches sur ce genre qui m&rsquo;&eacute;tait jusqu&rsquo;&agrave; alors peu connu. Cette vid&eacute;o du critique cin&eacute;matographique <em>Ryan Swen</em> d&eacute;crypte bien le genre et le film en se r&eacute;f&eacute;rant &agrave; plusieurs exemples.</p><p><span class=\"fr-jiv fr-video fr-deletable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/tshaoIotNYI?&wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\" class=\"fr-draggable\"></iframe></span><br></p><p><br></p><p><strong>3.</strong> Cet <a href=\"https://www.theguardian.com/film/2012/mar/09/slow-cinema-fights-bournes-supremacy\" rel=\"noopener noreferrer\" target=\"_blank\">article</a> de The Guardian permet &eacute;galement de en quoi le slow cinema est un contrecoup au cinema mainstream qui encha&icirc;ne des plans s&eacute;quences rapides.&nbsp;</p><h3><strong>Mes slow films pr&eacute;f&eacute;r&eacute;s :&nbsp;</strong></h3><p><strong>Le D&eacute;sert Rouge</strong> (1964) de <em>Michelangelo Antonioni</em>, <strong>Tropical Malady</strong> (2004) de <em>Apichatpong Weerasethakul</em>,<strong>&nbsp;La Captive&nbsp;</strong>(2000) de <em>Chantal Ackerman</em> et <strong>India Song</strong> (1975) de <em>Marguerite Duras</em>.</p>".html_safe, user_id: User.find_by(nickname:"JessL").id, difficulty: "Intermédiaire",category_id: Category.find_by(name:"Art").id)
Subject.create(title: "Introduction à la Psychologie sociale du langage et de la communication", content: "<h3><strong>&Agrave; l&#39;origine</strong></h3><p>Je souhaite partager avec vous mon processus d&rsquo;apprentissage aux th&eacute;ories de la psychologie <em>psychologie du langage et de la communication</em>, et plus pr&eacute;cis&eacute;ment aux th&eacute;ories de <em>Discrimination et Pr&eacute;jug&eacute;s</em>. &Eacute;tudiante en Communication, la <strong>psychologie sociale</strong> m&rsquo;&eacute;tait alors une discipline inconnue et une professeure engageante m&rsquo;a amen&eacute;e &agrave; r&eacute;diger mon m&eacute;moire d&rsquo;&eacute;tude sur l&rsquo;<em>impact des politiques d&rsquo;intégration et de communautarisme sur la discrimination envers les populations immigrés</em> (<u>n&rsquo;h&eacute;sitez pas commenter cette ressource si vous aimeriez le consulter</u>). Malheureusement, pour ce qui touche &agrave; la recherche scientifique, la grande majorit&eacute; des articles sont <strong><u>en anglais</u></strong> donc vous devez avoir des bases en cette langue pour comprendre. Je pr&eacute;cise lorsqu&rsquo;un article est en fran&ccedil;ais.</p><h3><strong>Articles</strong></h3><p><strong>1.</strong> Lorsqu&rsquo;on d&eacute;bute dans la discipline, je recommande fortement de lire cet <a href=\"https://www.tandfonline.com/doi/abs/10.1080/00224545.2012.711380\" rel=\"noopener noreferrer\" target=\"_blank\">article</a> qui<em>&nbsp;introduit les les concepts de bases</em>.&nbsp;</p><p><strong>2.</strong> Cet article de <a href=\"https://www.researchgate.net/publication/258290822_Mechanisms_of_linguistic_bias_How_words_reflect_and_maintain_stereotypic_expectancies\" rel=\"noopener noreferrer\" target=\"_blank\">Beukeboom</a>, th&eacute;oricien fortement cit&eacute; en la mati&egrave;re, permet de comprendre <em>en quoi les biais linguistiques, inconscients, permettent de maintenir des st&eacute;r&eacute;otypes</em>.&nbsp;</p><p><strong>3.</strong> Cet <a href=\"https://www.researchgate.net/publication/265966313_Bourhis_RY_Montreuil_A_2004_Les_assises_socio-psychologiques_du_racisme_et_de_la_discrimination_Dans_J_Renaud_A_Germain_X_Leloup_Eds_Racisme_et_discrimination_Permanence_et_resurgence_d%27un_phenomene_i\" rel=\"noopener noreferrer\" target=\"_blank\">article</a> (en fran&ccedil;ais) sur le <em>racisme et la discrimination</em> permet d&rsquo;&eacute;tablir le lien entre la psychologie de la communication et les discriminations, notamment au travers de la cat&eacute;gorisation.</p><p><strong>4.</strong> Enfin, cet article de <a href=\"https://psychologiescientifique.org/wp-content/uploads/2018/02/Licata-2007-La-théorie-de-l’identité-sociale-et-la-théorie-de-.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Licata</a> aborde la question de l<em>&rsquo;autocat&eacute;gorisation et de l&rsquo;identit&eacute; sociale</em>.</p>", user_id: User.find_by(nickname:"JessL").id, difficulty: "Débutant",category_id: Category.find_by(name:"Psychologie").id)
Subject.create(title: "Introduction à l’écoféminisme", content: "<h3><strong>D&eacute;finition</strong></h3><p><em>L&rsquo;&eacute;cof&eacute;minisme</em> est un <strong>courant politique et philosophique</strong> qui a tard&eacute; &agrave; arriver en France mais gr&acirc;ce &agrave; la r&eacute;surgence d&rsquo;une conscience &eacute;cologique m&ecirc;l&eacute;e aux luttes f&eacute;ministes en 2019-2020, j&rsquo;en entends de plus en plus parler dans mon entourage fran&ccedil;ais. Tout comme un accroissement des th&eacute;ories de convergences des luttes.&nbsp;</p><p><strong>Mais qu&rsquo;est-ce que l&rsquo;&eacute;cof&eacute;minisme, vous me demanderez ?</strong></p><h3><strong>Liens&nbsp;</strong></h3><p>1. Je vous conseille de regarder cette courte <a href=\"https://www.arte.tv/fr/videos/094215-000-A/l-ecofeminisme-d-ou-ca-vient/\" rel=\"noopener noreferrer\" target=\"_blank\">vid&eacute;o</a> (2min), expliquant la <strong>naissance du mouvement</strong>. Et vous verra qu&rsquo;une de ses initiatrices est bien fran&ccedil;aise (merci <em>Fran&ccedil;oise d&rsquo;Eaubonne</em>).&nbsp;</p><p>2. Cette <a href=\"https://reporterre.net/Emilie-Hache-Pour-les-ecofeministes-destruction-de-la-nature-et-oppression-des-femmes\" rel=\"noopener noreferrer\" target=\"_blank\">interview</a> d&rsquo;<em>Emilie Hache</em> permet &eacute;galement de comprendre les <em>fondements du mouvement</em>.&nbsp;</p><p>3. Je vous recommande &eacute;galement cet entretien podcast avec <em>Vandana Shiva</em> (en anglais), unes des grandes figures du mouvement.&nbsp;</p><p>4. Sans parler, ni citer l&rsquo;&eacute;cof&eacute;minisme, ce <a href=\"https://www.franceculture.fr/emissions/de-cause-effets-le-magazine-de-lenvironnement/lecologie-au-feminin\" rel=\"noopener noreferrer\" target=\"_blank\">podcast</a> avec <em>Pascale D&rsquo;Erm</em> pour son livre <strong>S&oelig;urs en &eacute;cologie</strong> paru le 30 Mars 2017 aux Editions La mer sal&eacute;e, et <em>Anne Ribes</em>, infirmi&egrave;re et paysagiste est &eacute;galement dans le coeur du sujet.</p><h3><strong>Th&eacute;oriciennes &eacute;co-f&eacute;ministes :&nbsp;</strong></h3><p><em>Fran&ccedil;oise d&rsquo;Eaubonne, Vandana Shiva, Starhawk, Donna Haraway, Maria Mies</em>, et bien d&#39;autres...</p>", user_id: User.find_by(nickname:"JessL").id, difficulty: "Difficile",category_id: Category.find_by(name:"Philosophie").id)
Subject.create(title: "La musculation - de débutant à plus trop trop débutant ! (la première année en programme)", content: "<p>Ah! Le jour de l&#39;an, les bonnes r&eacute;solutions... Chaque ann&eacute;e, je vois &agrave; la salle des dizaines et des dizaines de personnes qui viennent pour la toute premi&egrave;re fois, bien d&eacute;cid&eacute; &agrave; acqu&eacute;rir un <strong>corps d&#39;Apollon</strong>, &agrave; la sueur de leur front ! Un mois plus tard, la plupart ont disparus !&nbsp;</p><p><em>Mais que s&#39;est-il pass&eacute;?&nbsp;</em></p><p>Ils ne savaient pas ou aller. Ils se sont rendus compte qu&#39;ils perdaient pas 10 centim&egrave;tre de tour de taille, ni pris 5kg de muscle en une semaine... Ou pire, ils se sont<strong>&nbsp;bless&eacute;s</strong><strong>?</strong> D&eacute;&ccedil;us, ils ne remettront plus un pied &agrave; la salle une seule fois, avant <em>le 1er Janvier prochain</em>. Cela fait 10 ans que je vais entre trois et sept fois par semaine &agrave; la salle, depuis que j&#39;ai 12 ans (oui, j&#39;&eacute;tais tout petit, aha), et mon papa avant moi y allait depuis trente ans. Il m&#39;a donn&eacute; quelques <em>&#39;tips d&#39;anciens&#39;,</em> et je me suis tr&egrave;s vite fascin&eacute; par ce sport, cette <strong>science du physique humain</strong>, et <strong>l&#39;art de vivre&nbsp;</strong>qu&#39;il implique, avec <strong>sa nutrition</strong>, et ses <strong>entra&icirc;nements sanglants</strong> (on n&#39;est pas l&agrave; pour rigoler).&nbsp;</p><p>C&#39;est ces quelques ann&eacute;es d&#39;exp&eacute;rience et de passion que je vais essayer de vous partager ici, dans cette ressource.&nbsp;</p><h3><strong>Les trois premiers mois: la m&eacute;thode</strong><strong>&nbsp;STRONGLIFT 5x5</strong></h3><p>Les <strong>premiers mois sont les plus importants de tous</strong> C&#39;est l&agrave; o&ugrave; une <strong>transformation rapide</strong> arrive, <strong>si tu fais les choses bien</strong>. C&#39;est pourquoi je te conseilles d&#39;apprendre les <strong>mouvements BASIQUES (polyarticulaires)</strong>, comme le <strong>Squat</strong>, le <strong>D&eacute;velopp&eacute; Couch&eacute;</strong>, le <strong>Soulev&eacute; de Terre</strong>, le <strong>Rowing Barre</strong> et le <strong>D&eacute;velopp&eacute; Militaire</strong>.&nbsp;</p><p>Avec ces 5 exercices, et <strong>une bonne alimentation</strong>, j&#39;ai pris <em><u>20 kilogrammes</u></em><u>,</u><em><u>&nbsp;la premi&egrave;re ann&eacute;e de musculation</u></em>.&nbsp;</p><p>Par chance, il existe une m&eacute;thode, qui utilises ces exercices qui sont les plus puissants, qu&#39;importe ton objectif: <em><strong>prise de force</strong></em>, <strong>prise de masse</strong> ou <strong>perte de poids</strong>. C&#39;est la <strong>M&Eacute;THODE STRONGLIFT 5X5</strong> qui est juste incroyable. Et en plus d&#39;&ecirc;tre incroyable, il existe une <a href=\"https://apps.apple.com/us/app/stronglifts-5x5-weight-lifting/id488580022\">application dr&ocirc;lement bien faite</a> qui te suivra tout au long du chemin. Temps recommand&eacute;: <strong>TROIS MOIS</strong>, le temps d&#39;acqu&eacute;rir une <u>base solide</u>.&nbsp;</p><h3><strong>Au niveau de l&#39;alimentation !</strong></h3><p>Pendant ce temps, au niveau de l&#39;alimentation: il y a deux &eacute;coles qui se valent, en fonction de ta `morphologie`. On a d&eacute;fini trois grands types de morphologies:</p><p>Les <strong>ectomorphes&nbsp;</strong>(ceux qui ne prennent pas de poids facilement, autant gras que muscle), les <strong>m&eacute;somorphes</strong> (ceux qui prennent du muscle facilement, mais pas trop de gras en g&eacute;n&eacute;ral) et les <strong>endomorphes</strong> (ceux qui prennent du poids facilement).&nbsp;</p><p>Selon ta morphologie, tu choisiras l&#39;un de ces trois r&eacute;gimes alimentaires:&nbsp;</p><ol><li><strong>Si tu es&nbsp;</strong><strong>ectomorphe</strong>: tu mangeras<strong>&nbsp;6 repas par jour</strong>, s&eacute;quenc&eacute;s tout au long de la journ&eacute;e, toutes les <strong>2/3 heures</strong>. Dans ces repas, tu y inclura des <em>glucides</em> (f&eacute;culents et sucres lents), ainsi qu&#39;<em>une bonne dose de prot&eacute;ines</em> (viande, oeufs, whey, l&eacute;gumineuses, fromage blanc...) et des bonnes <em>graisses.</em>&nbsp;</li><li><strong>Si tu es m&eacute;somorphe</strong> tu mangeras <strong>3 repas par jour</strong>, un <u>le matin, un le midi, un le soir</u>. Tu essaieras <strong>d&#39;entourer tes s&eacute;ances de glucides</strong>, et <strong>chaque repas sera compos&eacute; d&#39;un</strong><strong>&nbsp;&eacute;l&eacute;ment prot&eacute;in&eacute;</strong>. <u><strong>Sucres rapides &agrave; bannir</strong>.</u>&nbsp;</li><li><strong>Si tu es</strong><strong>&nbsp;endomorphe</strong>, c&#39;est l&agrave; que &ccedil;a devient int&eacute;ressant: les scientifiques ont r&eacute;cemment prouv&eacute;s les b&eacute;n&eacute;fices du<strong>&nbsp;Jeune Intermittent</strong>, en particulier la <a href=\"https://leangains.com/the-leangains-guide/\"><strong>METHODE LEANGAINS</strong></a> qui consiste &agrave; <strong>jeuner 16 heures par jour</strong>, tout en ayant des fen&ecirc;tres de <strong>8 heure de p&eacute;riode de feeding</strong>. Cette m&eacute;thode &agrave; fait des miracles. <em>J&#39;ai perdu gr&acirc;ce &agrave; elle une quinzaine de kilos en trois mois</em>. On essaiera &eacute;galement de <strong>diminuer les glucides petit &agrave; petit, en en gardant un petit peu avant l&#39;entra&icirc;nement</strong>.&nbsp;</li></ol><h3>Et apr&egrave;s les trois premiers mois, je m&#39;entra&icirc;ne comment?</h3><p>Les trois premiers mois <strong>vont &ecirc;tre intenses</strong>. Tu vas avoir <em>envie d&#39;abandonner</em>, c&#39;est s&ucirc;r. Mais si tu suis cela, tu mets toutes tes chances de ton c&ocirc;t&eacute;.</p><p>&Agrave; la suite de ces trois mois de <strong>STRONGLIFT</strong>, <em>tes performances, et ton physique seront d&eacute;j&agrave; m&eacute;tamorphos&eacute;s.</em> Mais tu ne vas pas t&#39;arr&ecirc;ter l&agrave;:&nbsp;</p><ol><li>Le mois qui va suive, tu vas faire du <strong>Half-Body,</strong> fameux programme de <strong>4 jours par semaines</strong>, ou tu vas travailler <em>un jour le haut du corps, un jour le bas du corps</em>! Ce <a href=\"https://www.fitnesspark.fr/actualites/entrainement/conseils-dentrainement/programme-musculation-half-body/)\">programme de Fitness Park</a> est pas trop mal!&nbsp;</li><li>Les deux mois qui vont suivre, tu vas faire du <strong>PPL: Push-Pull-Legs</strong>, tu peux consulter <a href=\"(https%3A//builtwithscience.com/push-pull-legs-routine/\">cet article</a>, qui explique en profondeur ton prochain programme ador&eacute; !&nbsp;</li><li>Puis ensuite, tu partiras pendant deux petits mois de plus sur <a href=\"https://www.muscleandstrength.com/articles/the-ultimate-muscle-building-split-reference-guide.html\"><strong>un bon split des familles</strong></a>.&nbsp;</li><li>Et pour finir ta premi&egrave;re ann&eacute;e en beaut&eacute;, un bon petit programme <strong>1/muscle/jour</strong>. &Agrave; ce stade l&agrave;, tu seras assez grand pour te faire <strong>ton propre programme</strong> !</li></ol>", user_id: User.find_by(nickname:"AlexF").id, difficulty: "Débutant",category_id: Category.find_by(name:"Sport").id)
  
# Subject.all.each do |subject|
#   Comment.create(user_id: User.first.id, subject_id: subject.id, content: "#{subject.id}")
# end

# Comment.all.each do |comment|
#   CommentLike.create(user_id: User.first.id, comment_id: comment.id)
#   CommentDislike.create(user_id: User.last.id, comment_id: comment.id)
# end

