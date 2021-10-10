# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Superhero.destroy_all
Powerstat.destroy_all
Appearance.destroy_all
Background.destroy_all
Comment.destroy_all
FavoriteHero.destroy_all


# -------- USER ----------
# howie = User.create(username: "AnxiousHero", password: "youngavenger")

# -------- SUPERHERO ---------
scarlet_witch = Superhero.create(alias: "Scarlet Witch", name: "Wanda Maximoff", creator: "Marvel Comics", universe: "Prime Earth-616", powers: "Chaos Magic, Witchcraft, Reality Warping, Nexus Being, Occult & Magical Knowledge", like_count: 0, img_url: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1633545112/Flatiron%20-%20Phase%204%20Project/Scarlet_Witch_swykpi.jpg")
doctor_strange = Superhero.create(alias: "The Sorcerer Supreme", name: "Stephen Strange", creator: "Marvel Comics", universe: "Prime Earth-616", powers: "Mystic Arts, Longevity, The Words, Divine Source/Conduit", like_count: 0, img_url: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1633545119/Flatiron%20-%20Phase%204%20Project/Doctor_Strange_sxqu22.jpg")
blade = Superhero.create(alias: "Blade", name: "Eric Brooks", creator: "Marvel Comics", universe: "Prime Earth-616", powers: "Dhampir Physiology, Master Martial Artist, Weapon Proficiency, Expert Marksman, Multilingual", like_count: 0, img_url: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1633545122/Flatiron%20-%20Phase%204%20Project/Blade_lfrs4i.jpg")
starfire = Superhero.create(alias: "Starfire", name: "Koriand'r", creator: "DC Comics", universe: "Prime Earth", powers: "Tamaranean Physiology, UV Absorption, Flight, Starbolts, Linguisitc Assimilation, Hand-to-Hand Combat", like_count: 0, img_url: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1633545109/Flatiron%20-%20Phase%204%20Project/Starfire_ayopvt.jpg")
raven = Superhero.create(alias: "Raven", name: "Rachel Roth", creator: "DC Comics", universe: "Prime Earth", powers: "Astral Projection, Soul-Self, Telekinesis, Empathy, Telepathy, Magic", like_count: 0, img_url: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1633545113/Flatiron%20-%20Phase%204%20Project/Raven_o1iutg.jpg")
omniman = Superhero.create(alias: "Omni-Man", name: "Nolan Grayson", creator: "Image Comics", universe: "Image Universe", powers: "Superhuman Strength, Speed, Stamina, and Endurance; Flight, Interstellar Travel, Longevity, Healing Factor", like_count: 0, img_url: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1633545115/Flatiron%20-%20Phase%204%20Project/Omni-Man_v0t3si.jpg")
atom_eve = Superhero.create(alias: "Atom Eve", name: "Samantha Eve Wilkins", creator: "Image Comics", universe: "Image Universe", powers: "Subatomic Manipulation, Flight, Immortality", like_count: 0, img_url: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1633545123/Flatiron%20-%20Phase%204%20Project/Atom_Eve_ui5hln.jpg")
all_might = Superhero.create(alias: "All Might", name: "Toshinori Yagi", creator: "Shueisha", universe: "My Hero Academia", powers: "Indomitable Spirit, One For All; Superhuman Strength, Speed, Stamina, and Endurance", like_count: 0, img_url: "https://res.cloudinary.com/djzhu5kfj/image/upload/v1633545125/Flatiron%20-%20Phase%204%20Project/Allmight_zglj9c.jpg")

# -------- POWERSTATS ---------
stat1 = Powerstat.create(intelligence: 8, strength: 2, speed: 8, durability: 7, energy_projection: 10, combat: 4, superhero_id: scarlet_witch.id)
stat2 = Powerstat.create(intelligence: 9, strength: 3, speed: 10, durability: 9, energy_projection: 9, combat: 6, superhero_id: doctor_strange.id)
stat3 = Powerstat.create(intelligence: 6, strength: 3, speed: 3, durability: 3, energy_projection: 3.5, combat: 8.5, superhero_id: blade.id)
stat4 = Powerstat.create(intelligence: 6.5, strength: 9.5, speed: 8, durability: 5.5, energy_projection: 10, combat: 6.5, superhero_id: starfire.id)
stat5 = Powerstat.create(intelligence: 8, strength: 3, speed: 8, durability: 7, energy_projection: 10, combat: 6, superhero_id: raven.id)
stat6 = Powerstat.create(intelligence: 8, strength: 10, speed: 10, durability: 7, energy_projection: 8, combat: 9, superhero_id: omniman.id)
stat7 = Powerstat.create(intelligence: 7.5, strength: 1, speed: 2.5, durability: 5, energy_projection: 8.5, combat: 3, superhero_id: atom_eve.id)
stat8 = Powerstat.create(intelligence: 7.5, strength: 10, speed: 10, durability: 9, energy_projection: 9, combat: 9, superhero_id: all_might.id)

# -------- APPEARANCE ---------
app1 = Appearance.create(gender: "Female", species: "Human, genetically altered", height: "170.2 cm • 5\'7\"", weight: "59.9 kg • 132.06 lbs", eye_color: "Blue", hair_color: "Auburn", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1633623361/Flatiron%20-%20Phase%204%20Project/Video/Scarlet_Witch_aokmuk.mp4", superhero_id: scarlet_witch.id)
app2 = Appearance.create(gender: "Male", species: "Human", height: "188 cm • 6\'2\"", weight: "81.6 kg • 179.9 lbs", eye_color: "Grey", hair_color: "Black w/white streaks", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1633623362/Flatiron%20-%20Phase%204%20Project/Video/Doctor_Strange_ntqmb4.mp4", superhero_id: doctor_strange.id)
app3 = Appearance.create(gender: "Male", species: "Dhampir", height: "188 cm • 6\'2\"", weight: "97.5 kg • 214.95 lbs", eye_color: "Brown", hair_color: "Black", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1633632072/Flatiron%20-%20Phase%204%20Project/Video/Blade_yerlwk.mp4", superhero_id: blade.id)
app4 = Appearance.create(gender: "Female", species: "Tamaranean", height: "185.4 cm • 6\'1\"", weight: "95 kg • 209.44 lbs", eye_color: "Green", hair_color: "Red", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1633623362/Flatiron%20-%20Phase%204%20Project/Video/Starfire_n2mlue.mp4", superhero_id: starfire.id)
app5 = Appearance.create(gender: "Female", species: "Half Human/Demon", height: "180.3 cm • 5\'11\"", weight: "63 kg • 138.89 lbs", eye_color: "Indigo", hair_color: "Black", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1633633058/Flatiron%20-%20Phase%204%20Project/Video/Raven_eqbhch.mp4", superhero_id: raven.id)
app6 = Appearance.create(gender: "Male", species: "Vitrumite", height: "188 cm • 6\'2\"", weight: "113.4 kg • 250 lbs", eye_color: "Brown", hair_color: "Black", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1633633551/Flatiron%20-%20Phase%204%20Project/Video/Omni-man_ebdfkj.mp4", superhero_id: omniman.id)
app7 = Appearance.create(gender: "Female", species: "Human", height: "172.7 cm • 5\'8\"", weight: "57 kg • 125 lbs", eye_color: "Green", hair_color: "Orange", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1633632072/Flatiron%20-%20Phase%204%20Project/Video/Atomic_Eve_cs1k8x.mp4", superhero_id: atom_eve.id)
app8 = Appearance.create(gender: "Male", species: "Human", height: "220 cm • 7\'3\"", weight: "255 kg • 562 lbs", eye_color: "Blue", hair_color: "Blond", ani: "https://res.cloudinary.com/djzhu5kfj/video/upload/v1633633057/Flatiron%20-%20Phase%204%20Project/Video/Allmight_fp0e7o.mp4", superhero_id: all_might.id)

# -------- BACKGROUND ---------
back1 = Background.create(
    superhero_id: scarlet_witch.id,
    aliases: "Queen of Chaos, Wanda the Witch", 
    place_of_birth: "Serbia",
    affiliations: "Romany, Avengers, Strange Academy",
    former: "Brotherhood of Evil Mutants, Avengers West Coast",
    relatives: "Natalya Maximoff (mother, deceased), 
    Django Maximoff (maternal uncle, foster father, deceased), 
    Marya Maximoff (foster mother, deceased), 
    Pietro Maximoff (twin brother), 
    Vision (ex-husband), 
    Tommy Sheperd (reincarnated son), 
    Billy Kaplan (reincarnated son)",
    history: "Wanda Maximoff aka the Scarlet Witch is a Romani Transian Sorceress and the younger twin sister of the speedster Quicksilver. She and her brother were once believed to have been Mutant children of Magneto the \"Master of Magnetism\". She was in truth an orphan who was enhanced by the High Evolutionary at Mount Wundagore becoming a conduit of Chaos Magic allowing her to manipulate probability and warp reality itself. Wanda was trained by Agatha Harkness to become one of the most powerful magic wielders on Earth. She joined the Brotherhood of Evil Mutants fighting for her \"father's\" cause, alongside her brother, though this was short-lived and she was later recruited into the Avengers, becoming one of their most prominent members alongside her brother. She fell in love with the Synthezoid, Vision, but due to his artificial nature they were unable to have children. She used her reality altering powers to create two twin boys; Tommy and Billy. The spell was later broken, erasing the boys from existence, but not before they were reincarnated into Wiccan and Speed whose powers matched hers and her brother's. The stress of losing her children broke her mind, causing her to create her own reality known as the House of M in which everyone's desires came true, whilst also making mutants the dominant lifeform on Earth. The heroes of Earth returned reality to normal but not before she declared \"No More Mutants\" wiping out 91.4% of the X-Gene, in an event that became known as the Decimation."
)
back2 = Background.create(
    superhero_id: doctor_strange.id,
    aliases: "Master of the Mystic Arts, Black Priest, Dr. Strange", 
    place_of_birth: "Philadelphia, Pennsylvania",
    affiliations: "Avengers (reserve), Strange Academy, Defenders",
    former: "Illuminati, New Avengers, Black Priests, Infinity Watch, Midnight Suns",
    relatives: "Eugene Strange (father, deceased), 
    Beverly Strange (mother, deceased), 
    Victor Strange (brother, apparently deceased), 
    Donna Strange (sister, deceased), 
    Clea (estranged wife)",
    history: "Dr. Stephen Strange, M.D., a.k.a. Doctor Strange, was the Sorcerer Supreme for Earth-616. Strange was once a brilliant but arrogant neurosurgeon, until a car accident crippled his hands. When modern medicine failed him, he embarked on a journey to Kamar-Taj in Tibet, where he was trained by the Ancient One. He healed his hands and learned more about Magic, eventually becoming a Master of the Mystic Arts. He settled in the Sanctum Sanctorum in Greenwich Village, New York City, becoming the Earth's protector from any mystical threats"
)
back3 = Background.create(
    superhero_id: blade.id,
    aliases: "Vampire Hunter, Daywalker, Switchblade", 
    place_of_birth: "Soho, London, England",
    affiliations: "Midnight Suns, Strikeforce, MI13",
    former: "Avengers of the Supernatural, Avengers, Howling Commandos, Vanguard, S.H.I.E.L.D.",
    relatives: "Tara Cross (mother, deceased), 
    Lucas Cross (father), 
    Jamal Afari (foster father)",
    history: "The man known only as Blade came into the world an orphan. Bitten while in labor by the vampire Deacon Frost, his mother, a prostitute named Tara Brooks, died during childbirth. Blade was taken in and raised by his mother's friends. Determined to avenge her death, he fashioned himself into a vampire hunter even before he reached adulthood."
)
back4 = Background.create(
    superhero_id: starfire.id,
    aliases: "", 
    place_of_birth: "Tamaran",
    affiliations: "Teen Titans, Titans, Justice League, Outlaws",
    former: "",
    relatives: "Myand'r (father), 
    Luand'r (mother, deceased), 
    Komand'r (sister), 
    Ryand'r (brother)",
    history: "Koriand'r is an alien princess from the planet Tamaran who lived in peace and happiness until her home planet was conquered. Banished from Tamaran, Koriand'r was enslaved and experimented on, granting her extraordinary powers which she used to lead a rebellion and liberate herself and her fellow slaves from their captors. She became known throughout the cosmos as Starfire, and settled on Earth, where she became a member of the superhero teams the Outlaws and the Teen Titans."
)
back5 = Background.create(
    superhero_id: raven.id,
    aliases: "Daughter of Trigon", 
    place_of_birth: "Trigon's Dimension",
    affiliations: "Justice League, Night Force, Teen Titans",
    former: "Trigon?",
    relatives: "Trigon (father), 
    Arella (mother), 
    Alice Williams (aunt), 
    Jack Williams (uncle), 
    Belial (half-brother, deceased), 
    Suge (half-brother), 
    Ruskoff (half-brother), 
    Bertok-Raaf (cousin), 
    Mary-Beth Williams (cousin), 
    Billy Williams (cousin), 
    Jessica Williams (cousin), 
    Etrigan (nephew), 
    Merlin (nephew)",
    history: "The woman later known as Raven was born of the demon Trigon, a demonic entity who had conquered many worlds and fathered many sons; however this was his first and (so far) only daughter. Trigon murdered the women who birthed his sons, however he allowed his daughter's mother Arella to live, believing that his daughter needed to be raised by a human in order to help her reshape the under-realms in his image. Afraid of what Trigon had in store for their daughter, Raven's mother took her daughter and fled to the dimension of Azarath, which was beyond Trigon's reach, where she named the child Rachel. Over time, the monks of that realm trained Rachel to control her powers and overcome her father's influence. When Trigon finally found her again, Rachel fled from Azarath to Earth in order to protect her mother and teachers. Eventually she was found by the immortal Phantom Stranger on Trigon's behalf. When she returned to Trigon's realm time itself flowed differently, and it was revealed that Trigon was impressed by her natural abilities, allowing her to have free will and shape her own destiny. He gave her a seat at his throne, and renamed her Raven."
)
back6 = Background.create(
    superhero_id: omniman.id,
    aliases: "Emperor Nolan", 
    place_of_birth: "Vitrium Empire",
    affiliations: "Vitrium Empire",
    former: "Guardians of the Globe",
    relatives: "Argall (father, deceased), 
    Debbie Grayson (first wife), 
    Andressa (second wife, deceased), 
    Mark Grayson (son), 
    Oliver Grayson (son, desceased), 
    Markus Murphy (grandson), 
    Terra (granddaughter), 
    Unnamed twin grandchildren",
    history:""
)
back7 = Background.create(
    superhero_id: atom_eve.id,
    aliases: "Eve, Samantha, Mrs. Wilkins", 
    place_of_birth: "",
    affiliations: "Viltrium Empire",
    former: "Teen Team, Invincible Inc.",
    relatives: "Elias Brandyworth (paternal father), 
    Unnamed parents (deceased), 
    Five unnamed half-siblings (deceased),
    Adam Wilkins (adoptive father),
    Betsy Wilkins (adoptive mother),
    Mark Grayson (husband),
    Terra Grayson (daughter),
    Markus Murphy (step-son)",
    history: ""
)
back8 = Background.create(
    superhero_id: all_might.id,
    aliases: "Symbol of Peace", 
    place_of_birth: "Tokyo, Japan",
    affiliations: "U.A. High School",
    former: "",
    relatives: "",
    history: "All Might was the eighth holder of the One For All Quirk after receiving it from Nana Shimura. He has since passed the torch to Izuku Midoriya, whom he is training to be his successor. After using up all the embers of One For All to defeat All For One, All Might retired and ended his era as the world's greatest hero."
)

# ------ COMMENT ------

# ------ FAVORITE HEROES ------