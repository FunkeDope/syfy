-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2013 at 02:50 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `syfy`
--

-- --------------------------------------------------------

--
-- Table structure for table `syfy`
--

CREATE TABLE IF NOT EXISTS `syfy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `des` text NOT NULL,
  `subdes` text NOT NULL,
  `img` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `syfy`
--

INSERT INTO `syfy` (`id`, `title`, `des`, `subdes`, `img`) VALUES
(1, 'Jersey Shore Shark Attack', 'A group of friends must save the shore when albino bull sharks threaten to spoil their fun.', 'Gym Tan Shark', 'jerseyshoresharkattack.jpg'),
(2, 'Mysterious Island', 'Vicious pirates, terrifying creatures, and an active volcano keep Captain Nemo and his team fighting for survival.', 'The Minnow Gets Tossed', 'julesvernemysteriousisland.jpg'),
(3, 'Black Forest', 'Tourists trapped in an enchanted forest do battle with evil fairy tale creatures.', 'Ever After', 'black_forest.jpg'),
(4, 'Seattle Superstorm', 'When a UFO lands in Seattle all hail breaks loose!', 'Scattered Showers', 'seattlesuperstorm.jpg'),
(5, 'Alien Tornado', 'Sparks fly when aliens attack a launch on the world in the form of electrical tornadoes.', 'Shocks & Thrills!', 'alientornado.jpg'),
(6, 'Space Twister', 'Torrential cyclone storms threaten to reign over the world.', 'Jupiter Rising', 'space_twister.jpg'),
(7, 'Treasure Island', 'A motley crew sets sail on the high seas for a deadly treasure hunt.', 'Parts 1 & 2', 'treasureisland.jpg'),
(8, 'American Warships', 'Disguised aliens launch a global attack, and one military ship must save the world.', 'Ships Ahoy!', 'americanbattleship.jpg'),
(9, 'Piranhaconda', 'Life imitates art when a horror film crew encounters a half fish, half snake monster!', 'Go Fish', 'piranahconda.jpg'),
(10, 'Arachnoquake', 'Deadly fire breathing spiders are unearthed after a massive earthquake in New Orleans.', 'Crazy Eight', 'arachnoquake.jpg'),
(11, 'Bigfoot', 'A DJ and a conservationist team up to fight against the deadly Bigfoot.', 'Sleeping Giant', 'bigfoot.jpg'),
(12, 'Swamp Volcano', 'Girls and boys go wild when a massive volcano turns up the heat in Miami.', 'Hot Stuff', 'swampvolcano.jpg'),
(13, 'Collision Earth', 'A solar flare knocks Mercury out of its orbit and onto a collision course with Earth.', 'Mercury Rising', 'collisionearth.jpg'),
(14, 'Snowmageddon', 'A mysterious snow globe shakes things up-- causing disaster in a small town.', 'Weather the Storm', 'snowmageddon.jpg'),
(15, 'Rage of the Yeti', 'When treasure seekers cross paths with ferocious snow beasts they begin a new hunt for survival.', 'Unleash the Beast', 'rageoftheyeti.jpg'),
(16, 'Morlocks', 'Ferocious humanoid creatures from the past come back to the future to devour humans.', 'Blast from the Past', 'morlocks.jpg'),
(17, 'Killer Mountain', 'Alien doom stands between mountain climbers and the legendary city of Shangri-La.', 'Aliens Attack', 'killermountain.jpg'),
(18, 'Super Eruption', 'A scientist goes back to the future to stop a cataclysmic eruption under Yellowstone.', 'Hot Stuff!', 'supereruption.jpg'),
(19, 'Ice Road Terror', 'A giant flesh-eating reptile takes the Arctic region by storm.', 'Cold Blooded Killer', 'iceroadterror.jpg'),
(20, 'Red Faction: Origins', 'Discover the secrets of a Martian revolution and bridge the gap between Red Faction: Guerilla and Red Faction: Armageddon.', 'Mars Attack', 'redfaction.jpg'),
(21, 'Sinbad and the Minotaur', 'On the road to treasure, Sinbad encounters obstacles and the evil Minotaur.', 'Treasure Chest', 'sinbadandminotaur.jpg'),
(22, 'Almighty Thor', 'When a demon god steals the Hammer of Invincibility, Thor strikes a mighty blow to retrieve it.', 'Hammer Time', 'thor.jpg'),
(23, 'Roadkill', 'Unsuspecting young travelers become prey to an ancient bird.', 'Teenage Snack!', 'roadkill.jpg'),
(24, 'Ferocious Planet', 'A fight with monsters in an alternate universe creates out of this world chaos.', 'Man-Eating Creatures', 'ferociousplanet.jpg'),
(25, 'Iron Invader', 'Alien bacteria brings a giant metal monster to life.', 'Steel Trap', 'ironinvader.jpg'),
(26, 'Mega Python vs. Gatoroid', 'When an animal activist and a park ranger face off, all hell breaks loose in the wild.', 'Showdown!', 'megapython.jpg'),
(27, 'Behemoth', 'An underground creature raises terror and destruction in a small town.', 'Tunnel Terror', 'behomoth.jpg'),
(28, 'Triassic Attack', 'Dinosaur skeletons come to life and terrorize a small town.', 'Prehistoric Mayhem', 'triassicattack.jpg'),
(29, 'The Lost Future', 'A disease sweeping the world turns humans into mutant beasts.', 'Outbreak!', 'lostfuture.jpg'),
(30, 'Monsterwolf', 'Greedy oilmen encounter the wrath of a Native American spirit wolf.', 'Unleash the Beast', 'monsterwolf.jpg'),
(31, 'Sharktopus', 'A half-shark, half-octopus creature creates a whole lot of terror in Mexico.', 'Shark Attack', 'sharktopus.jpg'),
(32, 'Mandrake', 'When treasure hunters bark up the wrong tree, supernatural vengeance is unleashed.', 'Roots of Rage', 'mandrake.jpg'),
(33, 'Lake Placid 3', 'Baby crocs grow into killer creatures, upsetting the balance in a homely town.', 'Crocodile Disturbia', 'lakeplacid3.jpg'),
(34, 'Frost Giant', 'Explorers in Antarctica battle an energy sucking alien that threatens Earth.', 'Global Meltdown', 'frostgiant.jpg'),
(35, 'Jack Hunter and the Lost Treasure of Ugarit', 'A treasure seeker gets more than he bargins for on a trek to Syria.', 'All that Glitters', 'jackhunterugarit.jpg'),
(36, 'Dinocroc vs. Supergator', 'Two giant creatures terrorize tourists on the Big Island.', 'Creatures Collide', 'dinocrocvssupergator.jpg'),
(37, 'Witchville', 'A prince in shining armor battles a coven of witches to protect his kingdom.', 'Witches Brew', 'witchville.jpg'),
(38, 'Mothman', 'The legendary West Virginia monster returns to show five childhood friends how revenge was really won.', 'Nightmares Come True', 'mothman.jpg'),
(39, 'Dark Relic', 'Battle-weary knights team up with unlikely allies to fight a ancient demon.', 'Knight in Shaky Armor', 'darkrelic.jpg'),
(40, 'Dinoshark', 'A big mutant fish hits a small town and sends terrified townspeople  swimming upstream.', 'Deadly Catch', 'dinoshark.jpg'),
(41, 'Beauty and the Beast', 'When a beauty and a cursed prince face a corrupt Count, happily ever after hangs in the balance.', 'Once Upon a Time', 'beautyandthebeast.jpg'),
(42, 'Meteor Storm', 'A passing meteor shower turns into a deadly storm from space that threatens to destroy the world.', '50% Chance of Doom', 'meteorstorm.jpg'),
(43, 'Annihilation Earth', 'An attack on a supercollider puts the planet on a collision course with total destruction.', 'Chain Reaction', 'annihliationearth.jpg'),
(44, 'Ice Twisters', 'When scientists mess with the weather, they get a chilly reception from some frigid funnel clouds.', 'Everybody Chill', 'icetwisters.jpg'),
(45, 'Ghost Town', 'Deadly ghosts show unsuspecting teens how the west was really won.', 'Teens vs. Ghosts', 'ghosttown.jpg'),
(46, 'Wolvesbayne', 'One werewolf hero stands between a Nazi vampire cult and world domination.', 'Werewolves vs. Vampires', 'wolvesbayne.jpg'),
(47, 'Megafault', 'A crack in the world has started...we have 24 hours to stop it.', 'The Big One', 'megafault.jpg'),
(48, 'Children of the Corn', 'Killer kids stalk a bickering couple who are stranded in an Iowa town.', 'Killer Kids', 'childrenofthecorn.jpg'),
(49, 'Phantom Racer', 'A killer car is hell on wheels for a former driver haunted by a tragic past.', 'Hell On Wheels', 'phantomracer.jpg'),
(50, 'Hellhounds', 'Hades lets the dogs out when a young Greek warrior tries to rescue his bride from the underworld.', 'Myth vs. Man', 'hellhounds_top.jpg'),
(51, 'Sand Serpents', 'Danger lurks beneath a platoon of American soldiers in the Afghan desert - giant man-eating worms!', 'Escape the Desert', 'sandserpents_top.jpg'),
(52, 'Wraiths of Roanoke', 'They came from England to tame the new world, only to become the prey of an ancient evil.', 'An Ancient Evil', 'wraithroanoke.jpg'),
(53, 'They Are Among Us', 'They destroyed their world, now they want ours.', 'Alien Infiltration', 'theyareamongus.jpg'),
(54, 'SS Doomtrooper', 'The Nazis created it. Nothing can control it. And the allies have just one chance to stop it.', 'Nazi Super Soldier', 'ssdoomtrooper.jpg'),
(55, 'Showdown at Area 51', 'Two deadly aliens are at war--and Earth is their battlefield.', 'Alien vs. Alien', 'showdownarea51.jpg'),
(56, 'Sabretooth', 'Scientific ambition turns deadly when a pre-historic predator is resurrected.', 'Beasts Unleashed', 'sabretooth.jpg'),
(57, 'Reign of the Gargoyles', 'A crew of stranded soldiers must stop the Nazis from using flying monsters to rule the sky.', 'The Ultimate Nazi Weapon', 'reighofthegargoyles.jpg'),
(58, 'Puppet Master Vs. Demonic Toys', 'Playtime is over, now the real fun begins.', 'Tiny Fury', 'puppetmasterdemonictoys.jpg'),
(59, 'Path of Destruction', 'The most powerful storm on Earth is man-made, high-tech, invincible and pushing humanity toward its doom.', 'Stormy Weather', 'pathofdestruction.jpg'),
(60, 'Out For Blood', 'A detective investigating a string of mysterious murders will cross paths with the wrong vampire.', 'Hungry Vampires', 'outforblood.jpg'),
(61, 'Odysseus: Voyage to the Underworld', 'Warrior. King. Legendary Hero. The lost chapter from the greatest adventure of all time.', 'Take the Odyssey', 'odysseus.jpg'),
(62, 'Manticore', 'One squad of U.S. soldiers must risk their lives to stop the deadliest weapon from wiping out all mankind.', 'Monster in Iraq', 'manticore.jpg'),
(63, 'Man-Thing', 'Unsuspecting victims find out that their fear is his deadliest weapon.', 'Nature Strikes Back', 'manthing.jpg'),
(64, 'Man With the Screaming Brain', 'A rich industrialist and a cab driver are fused together and must share a body to find the woman who murdered them both.', 'Lose Your Mind', 'manwiththescreamingbrain.jpg'),
(65, 'Magma: Volcanic Disaster', 'An unsuspecting crewship journeys into the heart of darkness.', 'Hot Stuff', 'magma.jpg'),
(66, 'Lost Voyage', 'An unsuspecting crewship journeys into the heart of darkness.', 'Bermuda Triangle Terror', 'lostvoyage.jpg'),
(67, 'Locusts: The 8th Plague', 'Human flesh has just become the favorite food of a rapidly growing insecticide.', 'The Deadliest Plague', 'locust8thplague.jpg'),
(68, 'Living Hell', 'The military created it, an accident set it free. Now one human must lead us to survival or extinction.', 'Terror Takes Root', 'livinghell.jpg'),
(69, 'Lake Placid 2', 'One giant crocodile in the lake was a problem, but three giant crocs are a nightmare.', 'Killer Croc', 'lakeplacid2.jpg'),
(70, 'Kraken: Tentacles of the Deep', 'The sea holds the richest treasure on Earth...and the most fearsome beast in creation.', 'It is Released', 'kraken.jpg'),
(71, 'Kaw', 'A gathering of ravens is called an "unkindess", but a small farm town will call this one murder.', 'Hark the Ravens', 'kaw.jpg'),
(72, 'Ice Spiders', 'Giant ice spiders escape from a lab and wreak havoc on a nearby ski resort.', 'Eight Legged Snow Freaks', 'icespiders.jpg'),
(73, 'Highlander: The Source', 'No one has ever known the origin of the power of Immortals--until now.', 'There Can Be Only One', 'highlandersource.jpg'),
(74, 'Heatstroke', 'An ex-model and an elite commando try to solve global warming- by stopping the aliens causing it.', 'Bloodthirsty Aliens', 'heatstroke.jpg'),
(75, 'Haunted Prison', 'If the walls of a prison could bite, shock, kill and terrify-- they would, and a group will find out that some do.', 'Lights Out', 'hauntedprison.jpg'),
(76, 'Harpies', 'Some security guards sleep on the job, this one fights wizards and monsters.', 'Women Scorned', 'harpies.jpg'),
(77, 'Flu Bird Horror', 'Mutant killer birds carrying a deadly virus attack a group of hikers on a wilderness trek.', 'They Fly You Die', 'flubird.jpg'),
(78, 'Dungeons and Dragons II: Wrath of the Dragon God', 'Five heroes undertake an epic quest to destroy a dangerous artifact and stop a dark wizard bent on revenge.', 'The Ultimate Quest', 'dungeonsanddragons2.jpg'),
(79, 'Dragon Sword', 'George left England as a knight and soldier. He came home a dragon-slayer and legend.', 'Birth of a Legend', 'dragonsword.jpg'),
(80, 'Dragon Fighter', 'Workers in an underground lab, fight for their lives against clones of the dragons they created.', 'Fire Down Below', 'dragonfighter.jpg'),
(81, 'Dog Soldiers', 'A squad of British soldiers, training in an isolated Scottish glen, find lycanthropic action under a full moon.', 'Grunts vs. Werewolves', 'dogsoldiers.jpg'),
(82, 'Disaster Zone: Volcano in New York', 'Get ready for a hot time in the big City.', 'Hot Time in the City', 'disasterzoneny.jpg'),
(83, 'Deadly Swarm', 'We went looking for cures, we came back with killers.', 'Not the Wasps!', 'deadlyswarm.jpg'),
(84, 'Copperhead', 'A small town in the West, goes wild when it comes under the attack of poisonous snakes.', 'Cowboys vs. Snakes', 'copperhead.jpg'),
(85, 'Chupacabra: Dark Seas', 'When a cryptozoologist smuggles the legendary Chupacabra beast on a cruise ship, more than one man will jump overboard.', 'Not a Pleasure Cruise', 'chupacabra.jpg'),
(86, 'The Bone Snatcher', 'There are a thousand ways to die in the desert, this team has just found one.', 'Skulls in the Sand', 'bonesnatcher.jpg'),
(87, 'Bone Eater', 'One mistake on sacred ground has released an unholy terror.', 'Chilled to the Bone', 'boneeater.jpg'),
(88, 'Black Swarm', 'Intelligent. Deadly. And out to destroy us. Meet the ultimate buzz-kill.', 'Ultimate Buzz-Kill', 'blackswarm.jpg'),
(89, 'The Black Hole', 'They thought the Black Hole was the biggest threat Earth ever faced, then they met the beast that lives inside it.', 'Electric Mayhem', 'blackhole.jpg'),
(90, 'Bats: Human Harvest', 'Nature made them predators. Science made them killers. A madman made them an army.', 'Rodents of Mass Destruction', 'bats.jpg'),
(91, 'Basilisk: The Serpent King', 'No one knows how to stop an ancient monster whose gaze turns flesh to stone, but one woman knows how to control it.', 'Flesh to Stone', 'basilisk.jpg'),
(92, 'Attack of the Sabretooth', 'Niles Green thought a sabretooth theme park would make him rich, but the tigers are the only ones making a killing.', 'Prehistoric Rampage', 'attacksabretooth.jpg'),
(93, 'Anonymous Rex', 'A deadpan twist on the mystery genre in which a velociraptor P.I. and a secret society of dinosaurs are disguised as humans.', 'Dinosaur Detective', 'anonymousrex.jpg'),
(94, 'Android Apocalypse', 'Yesterday, they wanted each other dead. Today, they need each other to survive.', 'Man or Machine?', 'androidapocalypse.jpg'),
(95, 'Alien Siege', 'They were asked to die for the good of humanity. They chose to fight for freedom instead.', 'Hostile Invasion', 'alienseige.jpg'),
(96, 'Abominable', 'Their hunger is great. Their attacks are deadly. Their needs are simple: Bite. Devour. Multiply.', 'Beware of Bigfoot', 'abominable.jpg'),
(97, 'A.I. Assault', 'The Army wanted machines smart enough to fight a war. What they got was an A.I. smart enough to fight back.', 'Survival of the Fittest', 'aiassault.jpg'),
(98, 'Vipers', 'Their hunger is great. Their attacks are deadly. Their needs are simple: Bite. Devour. Multiply.', 'Slither and Slaughter', 'vipers.jpg'),
(99, 'Riddles of the Spinx', 'A professor and his daughter must solve a series of riddles to prevent a living sphinx from spreading a deadly plague.', 'Answer Carefully', 'sphinx.jpg'),
(100, 'NYC: Tornado Terror', 'The biggest twister in history is aboutto put a new spin on the Big Apple.', 'Windy City', 'nyctornadoterror.jpg'),
(101, 'Swamp Devil', 'The daughter of a wanted man returns home to discover the local swamp holds one devil of a secret.', 'What Lies Beneath', 'swampdevil.jpg'),
(102, 'Fire and Ice', 'To slay one dragon they summoned another.  Now their champion has become their destroyer.', 'Dragon Danger', 'fireandice.jpg'),
(103, 'Yeti', 'Their plane has crashed. Their food is gone. Now they have only two choices...to be devoured by a beast or by each other.', 'Cold Blooded Terror', 'yeti.jpg'),
(104, 'Sands of Oblivion', 'When a Hollywood set is unearthed, an evil spirit gets a second take at vengeance.', 'An Egyptian Curse', 'sandsofoblivion.jpg'),
(105, 'Lost City Raiders', 'Oceans have risen.  Cities have fallen.  In a world almost entirely underwater the only way to save the future is to dig up the past.', 'After the Flood', 'lostcityraiders.jpg'),
(106, 'Sharks in Venice', 'When man-eating sharks go out for Italian, the city of love will become the city of blood.', 'Mama Mia!', 'sharksinvenice.jpg'),
(107, 'Lost Treasure of the Grand Canyon', 'When global warming unearths an ancient dragon, a small Alaskan town will be destroyed, unless hell freezes over in time.', 'An Aztec Secret', 'losttreasure.jpg'),
(108, 'Wyvern', 'When global warming unearths an ancient dragon, a small Alaskan town will be destroyed, unless hell freezes over in time.', 'Alaskan Dragon', 'wyvern.jpg'),
(109, 'Splinter', 'Food, fear and flesh. A young couple trapped in a gas station are everything a voracious parasite needs for its feast.', 'Infection Spreads', 'splinter.jpg'),
(110, 'Hydra', 'A group of rich hunters will pay anything to escape a mythical beast with eight mouths to feed.', 'Seven Heads of Terror', 'hydra.jpg'),
(111, 'Anacondas: Trail of Blood', 'Our thirst for immortality spawned a terror that hungers for our blood.', 'Hunters Become Hunted', 'anacondas.jpg'),
(112, 'War Wolves', 'Some soldiers bring home the war, they brought the werewolves.', 'Howling Mad', 'warwolves.jpg'),
(113, 'Sea Beast', 'They survived the perfect storm but came home with the deadliest catch.', 'Treacherous Waters', 'seabeast.jpg'),
(114, 'Thor: Hammer of the Gods', 'When an army of Vikings clashes with a pack of werewolves, a young warrior becomes a legendary hero.', 'A Legend Begins', 'thor.jpg'),
(115, 'Carny', 'Death becomes the main attraction when a traveling carnival brings a genuine New Jersey Devil to a small town.', 'Sideshow Terror', 'carny.jpg'),
(116, 'Book of Beasts', 'An evil wizard uses a magical book to take control of the kingdom of Camelot.', 'Kingdom in Peril', 'bookofbeasts.jpg'),
(117, 'Mutant Chronicles', 'When mutant hordes overrun the Earth, some flee. They chose to fight.', 'The Darkest Age', 'mutantchronicles.jpg'),
(118, 'Rise of the Gargoyles', 'When mythic monsters awaken, Paris is history.', 'Monsters Unleashed', 'riseofthegargoyles.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
