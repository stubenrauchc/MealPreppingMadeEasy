--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-09-22 10:19:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3376 (class 0 OID 39166)
-- Dependencies: 212
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredient (ingredientid, name, category) FROM stdin;
1	Cube Steaks	Beef
2	Buttermilk	Dairy
3	Large Chicken Egg	Egg
4	Hot Sauce	Condiment
5	Worcestershire Sauce	Condiment
6	All-Purpose Flour	Grains
7	Cornstarch	Grains
8	Salt	Spice
9	Garlic Powder	Spice
10	Pepper	Spice
11	Cayenne	Spice
12	Vegetable Oil	Oils
13	Finely Chopped Shallots/Onions	Vegetables
14	Minced Garlic	Dairy
15	Milk	Dairy
16	Chicken/Beef Stock	Sauces
18	White Sugar	Spice
19	Butter	Dairy
17	Baking Powder	Leavening Agent
420	Seasalt	\N
421	Questionable Salt	\N
422	Sugar	\N
423	ginger	\N
424	Water	\N
425	Wolf	\N
426	Tears	\N
427	Blood	\N
428	Sweat	\N
429	test	\N
430	t	\N
431	Time	\N
432	Bathtub	\N
433	Carrot	\N
434	2	\N
435	1	\N
436	4	\N
437	Bacon	\N
438	Russet Potatoes	\N
439	Celery stalks	\N
440	Leek	\N
441	Garlic	\N
442	Chicken stock	\N
443	Kosher Salt	\N
444	Thyme	\N
445	Black pepper	\N
446	Chuck roast	\N
447	Rosemary	\N
448	Black Pepper	\N
449	Pepperoncini	\N
450	Salted butter	\N
451	Onion	\N
452	Soft Hoagie Rolls	\N
453	Provolone Cheese	\N
454	Shredded Chicken	\N
455	White Bread	\N
456	Pepper Jack Cheese	\N
457	Crumbled blue cheese	\N
458	Buffalo wing sauce	\N
459	Apple	\N
460	crushed crispy rice cereal	\N
461	ground cinnamon	\N
462	coconut oil	\N
463	Strawberries	\N
464	Chopped walnuts	\N
465	Ear of corn	\N
466	Kosher salt	\N
467	A Good Boy	\N
468	A Good Girl	\N
469	a little demon	\N
470	werwerw	\N
471	Test	\N
472	Test2	\N
473	Test3	\N
474	Test4	\N
475	Test5	\N
476	Thick Sliced Bacon	\N
477	All purpose flour	\N
478	white sugar	\N
479	baking powder	\N
480	salt	\N
481	egg	\N
482	milk	\N
483	vegetable oil	\N
484	dfgdfgdfg	\N
485	fgbfghfb c	\N
486	Slashy	\N
487	All Purpose Flour	\N
488	Old Fashioned rolled Oats	\N
489	Granulated Sugar	\N
490	Light Brown Sugar	\N
491	Ground Cinnamon	\N
492	Baking Soda	\N
493	Pure Vanilla Extract	\N
494	Eggs	\N
495	Yellow Onion	\N
496	Large Red Bell Peppter	\N
497	Heavy Cream	\N
498	Worcestershire sauce	\N
499	Smoked Paprika	\N
500	Sea Salt	\N
501	Cracked Black Pepper	\N
502	Shredded Cheddar Cheese	\N
503	Green Onions	\N
504	Unsalted Butter	\N
505	Toast	\N
506	deleteme	\N
507	DE DE	\N
508	224	\N
509	A car	\N
510	Cereal	\N
511	deletemeplease	\N
512	deletablesthing	\N
513	Bread	\N
514	Cheese	\N
515	3	\N
516	11	\N
517	instant coffee	\N
518	sugar	\N
519	half and half	\N
520	deleeeete	\N
521	Charcoal	\N
522	Marshmellows	\N
523	Coffee	\N
524	Poo poo	\N
525	Ground Lean Beef	\N
526	Egg	\N
527	Onion, minced	\N
528	Fine dried bread crumbs	\N
529	Worcestershire	\N
530	Garlic clove	\N
531	Daft Punks	\N
532	Spooky	\N
533	Pantry is gone	\N
534	water	\N
535	Caramel flavored cake mix	\N
536	vanilla cream-filled cookies	\N
537	chocolate pudding mix	\N
538	Tootsie Rolls	\N
539	NEW kitty litter box	\N
540	Plastic PoopScooper	\N
541	Green Food coloring	\N
542	Condensed tomato soup	\N
543	Unflavored gelatin	\N
544	Vienna sausages	\N
545	Chalet	\N
546	Cream cheese	\N
547	Hidden valley ranch	\N
548	Sharp Cheddar Aerosol cheese	\N
549	Cilantro	\N
550	Buttery crackers	\N
551	skinless boneless chicken thighs	\N
552	Soy sauce	\N
553	ketchup	\N
554	honey	\N
555	garlic	\N
556	dried basil	\N
557	5	\N
558	6	\N
559	r	\N
560	Beef	\N
561	Drippings	\N
562	Delete This	\N
563	Toasted Garlic Bread	\N
564	Test Ingredient One	\N
565	Test Ingredient Two	\N
566	Test Ingredient Three	\N
567	Delete this	\N
568	Delete me 22	\N
569	Delete me 23	\N
570	Delete me 33	\N
571	Holycrapthisdoesntexist	\N
574	Willing to sacrifice	\N
575	Testing More Stuff	\N
576	Delete this crap	\N
577	Co Co Puffs	\N
578	Bluebabies	\N
579	Instant Coffee	\N
580	Big Water	\N
581	Small Water	\N
582	Normal Water	\N
583	Water, with Water	\N
584	Blueberries	\N
585	More Butter	\N
586	Dog	\N
\.


--
-- TOC entry 3374 (class 0 OID 38822)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, username, password_hash, role) FROM stdin;
1	user	$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC	ROLE_USER
2	admin	$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC	ROLE_ADMIN
3	Chrissy	$2a$10$2qsZTQ.2UHtg4VdcEJy5N.KLtjms0w6UchiER8j4Xw1cNQTZdhWoq	ROLE_USER
4	farhana	$2a$10$/EAjGtkzZstQA1UfJ9c1FOO3E1APsVVlnMiQ2iPpZNoNZSU2cXMYC	ROLE_USER
5	Chris	$2a$10$wuxyP.YD7sYjiU9TYv4EFO1mZwJGD9ndYKiyO5brvQl19hncKcS3O	ROLE_USER
6	DTilton	$2a$10$0lZb.9wZE2koH4M8ZBshcejIrG78CVCC91Phg8wqVUYajCqObOba.	ROLE_USER
7	Ed	$2a$10$G4Y6XhSuW..2UiwTR6ePbuw/i6xLEomLKvn/4qH632oiB5DGl8tWS	ROLE_USER
8	Test	$2a$10$k4yvdQYX3xtkBT5S7dExXO8YvXcywdyfkVc/H0UUEqrvIA8seg66u	ROLE_USER
9	GrilledCheese	$2a$10$EPTssux3lOzvP9I2n/YJ8uo.PJFFXEYy.w2YYabl7jxoemdvHZBSi	ROLE_USER
10	something	$2a$10$U952U7ugE.auR3.bDMrzx.lBevCXaYMLBvFAhbMPMk0HguB96UCUi	ROLE_USER
11	present	$2a$10$ymDTPgQ1asLWl9LWEfvpv.l0JDIxSMFlqvdBWbCSJcELShZeEqoB2	ROLE_USER
\.


--
-- TOC entry 3377 (class 0 OID 39175)
-- Dependencies: 213
-- Data for Name: meal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meal (mealid, user_id, name, category, imagefilename) FROM stdin;
1	7	Pancakes	Breakfast	\N
2	7	Chicken Fried Steak	Lunch	\N
\.


--
-- TOC entry 3378 (class 0 OID 39189)
-- Dependencies: 214
-- Data for Name: mealplan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mealplan (mealplanid, user_id, name, description, imagefilename, category, dayofweek, recipename) FROM stdin;
293	4	\N	\N	\N	Breakfast	Monday	Coffee
221	1	\N	\N	\N	Breakfast	Monday	PooPoo Platter
222	1	\N	\N	\N	Breakfast	Tuesday	Taters Precious
223	1	\N	\N	\N	Breakfast	Wednesday	Gumbo
224	1	\N	\N	\N	Breakfast	Thursday	Fries
225	1	\N	\N	\N	Breakfast	Friday	Ice Cream
226	1	\N	\N	\N	Breakfast	Saturday	Jelly Beans
227	1	\N	\N	\N	Breakfast	Sunday	Poop
292	6	\N	\N	\N	Breakfast	Monday	Classic Burger
303	7	\N	\N	\N	Breakfast	Monday	Spaghetti o and Veinna sausages
304	7	\N	\N	\N	Lunch	Monday	Coffee
\.


--
-- TOC entry 3379 (class 0 OID 39203)
-- Dependencies: 215
-- Data for Name: mealplanmeal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mealplanmeal (mealplanid, mealid, dayofweek) FROM stdin;
1	1	Monday
1	2	Monday
\.


--
-- TOC entry 3382 (class 0 OID 39266)
-- Dependencies: 218
-- Data for Name: pantry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pantry (pantryid, user_id) FROM stdin;
1	1
\.


--
-- TOC entry 3383 (class 0 OID 39272)
-- Dependencies: 219
-- Data for Name: pantryingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pantryingredient (pantryid, ingredientid, quantity, measurementunit, user_id) FROM stdin;
1	8	42.00	Pounds	1
1	15	5.00	Gallons	1
1	14	3.00	Clove	1
\.


--
-- TOC entry 3375 (class 0 OID 38849)
-- Dependencies: 211
-- Data for Name: recipe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipe (recipeid, user_id, title, category, preptime, cooktime, servingsize, instructions, datecreated, imagename, visibility) FROM stdin;
517	3	Bologna Cake	Dinner	\N	\N	15	Mix ranch dressing into softened cream cheese*, set aside.\n\nPlace a slice of bologna on a plate, spread one Tablespoon or so of cream cheese on top of the slice, just like a cake, then add the second slice of bologna. Continue until all the slices are used. Then use the remainder of the cream cheese to finish ‘frosting’ the cake. When finished frosting the ‘cake’ squirt some of the aerosol cheese around the base and top of the cake to decorate it. Finish off with a sprig of cilantro on top or some pimento stuffed olives or … Let your imagination go.	\N	bolognacake.JPG	\N
530	7	Spaghetti o and Veinna sausages	Lunch	\N	\N	4	In a large pot, pour in your water and condensed tomato soup, then sprinkle the gelatin on top. Allow gelatin to bloom in the water, about 5-10 minutes.\n\nOnce gelatin has bloomed, stir together lightly.\n\nPlace the pot on the stove and turn the heat to medium, then keep stirring occasionally until the gelatin has completely dissolved, and the mixture is quite smooth.\n\nTurn off the heat and add the Spaghetti-Os to the pot. Mix until well-combined, then pour evenly into 4 cup ring mold.\n\nRefrigerate mold for 4 hours or overnight.\n\nWhen ready to serve, loosen mold by placing in a bowl of warm water, then invert onto a plate. Serve with Vienna sausages.	\N	spegos.JPG	\N
550	3	Cereal	Category	\N	\N	1	MILK GOES IN -AFTER- THE CEREAL.	\N	kerchoo.jpg	\N
498	7	Cereal	Category	\N	\N	1	MILK GOES IN -AFTER- THE CEREAL.	\N	kerchoo.jpg	\N
555	6	Classic Burger	Lunch	\N	\N	4	 Step 1\nIn a bowl, mix ground beef, egg, onion, bread crumbs, Worcestershire, garlic, 1/2 teaspoon salt, and 1/4 teaspoon pepper until well blended. Divide mixture into four equal portions and shape each into a patty about 4 inches wide.\nStep 2\nLay burgers on an oiled barbecue grill over a solid bed of hot coals or high heat on a gas grill (you can hold your hand at grill level only 2 to 3 seconds); close lid on gas grill. Cook burgers, turning once, until browned on both sides and no longer pink inside (cut to test), 7 to 8 minutes total. Remove from grill.\nStep 3\nLay buns, cut side down, on grill and cook until lightly toasted, 30 seconds to 1 minute.\nStep 4\nSpread mayonnaise and ketchup on bun bottoms. Add lettuce, tomato, burger, onion, and salt and pepper to taste. Set bun tops in place.	\N	image.jpg	\N
556	6	Smoky Bacon Cheddar Breakfast Hash	Breakfast	\N	\N	6	\nPrep Time: 15 min\nCook Time: 40 min\nCalories: 499 \n    Place a large nonstick skillet or cast iron pan over medium-high heat. Cook the bacon until nearly crispy and the fat has rendered, about 10 minutes. Using a slotted spoon, transfer the bacon to a paper towel lined plate. Remove all but ¼ cup rendered fat from the pan. Add the diced potatoes spread out as much as possible. If your bacon was lean add a little oil to the pan along with the potatoes.\n    Cook the potatoes until golden brown on most sides and begin to become tender, about 10-12 minutes.\n    Add the onions and bell peppers and to the potatoes and cook for another 5 minutes.\n    Add the bacon back to the pan. Stir in the cream, worcestershire sauce, paprika, salt and pepper. Turn the heat to low and simmer until the cream has thickened enough to bring the hash together, about 3 minutes.\n    Turn off the heat, sprinkle with grated cheese and green onions and allow the cheese to melt while you fry the eggs.\n    In a separate skillet, set over medium heat, melt the butter. Fry the eggs to desired doneness.\n    Spoon the hash onto plates and serve topped with eggs with toast alongside.\n	\N	SmokyBaconCheddarBreakfastHash_9.webp	\N
504	7	Poo Poo Platter	Dinner	\N	\N	5	Make fresh and serve	\N	poopooplatter.JPG	\N
473	6	Oatmeal-Glazed Breakfast Cake	Breakfast	\N	\N	13	This hearty cake is packed with oats, flavored with cinnamon and topped with a warm glaze made with more oats, shredded coconut and nuts. We used pecans, but feel free to use whatever you have on hand. It's a great way to clean out the pantry and simple enough for kids to help with. Bake one on a Sunday and enjoy it all week long for breakfast or as a snack! It's delicious at room temperature or lightly warmed in the microwave. \n\n    Total: 1 hr 40 min (includes cooling time)\n    Active: 25 min\n\nStep 1: For the cake: Preheat the oven to 350 degrees F. Coat a 9-by-13-inch baking pan with nonstick cooking spray. Line the bottom of the pan with parchment and coat again with the spray. \nStep 2: Whisk together the flour, oats, granulated sugar, brown sugar, cinnamon, baking powder, salt and baking soda in a large bowl and set aside. Whisk together the oil, buttermilk, vanilla and eggs in a medium bowl. Fold the buttermilk mixture into the flour mixture until just combined.  \nStep 3: Pour the batter into the prepared pan and bake until a toothpick inserted in the center comes out clean, about 35 minutes.  \nStep 4: For the glaze: Meanwhile, add the brown sugar, oats, coconut, butter, milk, cinnamon and salt to a small saucepan over high heat. Bring to a boil and cook until the butter and sugar are dissolved, about 1 minute. Turn off the heat and stir in the pecans.  \nStep 5: Pour the hot glaze over the warm cake and spread evenly. Let the cake cool in the pan on a rack until cooled completely, at least 40 minutes. The glaze will still look glossy but should be not be sticky. You can cut slices from the pan or invert onto a serving platter or cutting board. Store at room temperature for up to 1 week.   \n\nCook’s Note\nWhen measuring flour, we spoon it into a dry measuring cup and level off excess. (Scooping directly from the bag compacts the flour, resulting in dry baked goods.)\n	\N	Oatmeal-Glazed Cake.jpeg	\N
560	4	Slow cooker potato soup	Dinner	\N	\N	6	Heat a large skillet over medium heat. Add the bacon strips and cook until golden brown, 6 to 8 minutes. Remove to a paper towel-lined plate—Reserve 2 pieces for garnish.  Crumble the remaining 4 pieces. \nPlace the crumbled bacon, potatoes, celery, leek, garlic, stock, salt, thyme sprigs, and pepper in the base of a 6- to 8-quart slow cooker. Put the lid on the slow cooker, and cook on high for 4 hours (or low for 6 to 8 hours) until the potatoes are tender when pierced with a fork.  Remove the thyme sprigs and discard.\nUse an immersion blender to blend the soup to a semi-smooth consistency, leaving small chunks of potato and vegetables for texture. Stir in the sour cream. (Add 1/4 to 1/2 cup of water, to thin the soup out to your desired consistency). Serve in bowls, garnished with cheese, chives, additional sour cream, and the reserved bacon slices crumbled over the top. 	\N	potatosoup.jpg	\N
568	10	Spaghetti o and Veinna sausages	Lunch	\N	\N	4	In a large pot, pour in your water and condensed tomato soup, then sprinkle the gelatin on top. Allow gelatin to bloom in the water, about 5-10 minutes.\n\nOnce gelatin has bloomed, stir together lightly.\n\nPlace the pot on the stove and turn the heat to medium, then keep stirring occasionally until the gelatin has completely dissolved, and the mixture is quite smooth.\n\nTurn off the heat and add the Spaghetti-Os to the pot. Mix until well-combined, then pour evenly into 4 cup ring mold.\n\nRefrigerate mold for 4 hours or overnight.\n\nWhen ready to serve, loosen mold by placing in a bowl of warm water, then invert onto a plate. Serve with Vienna sausages.	\N	spegos.JPG	\N
451	3	Slow cooker potato soup	Dinner	\N	\N	6	Heat a large skillet over medium heat. Add the bacon strips and cook until golden brown, 6 to 8 minutes. Remove to a paper towel-lined plate—Reserve 2 pieces for garnish.  Crumble the remaining 4 pieces. \nPlace the crumbled bacon, potatoes, celery, leek, garlic, stock, salt, thyme sprigs, and pepper in the base of a 6- to 8-quart slow cooker. Put the lid on the slow cooker, and cook on high for 4 hours (or low for 6 to 8 hours) until the potatoes are tender when pierced with a fork.  Remove the thyme sprigs and discard.\nUse an immersion blender to blend the soup to a semi-smooth consistency, leaving small chunks of potato and vegetables for texture. Stir in the sour cream. (Add 1/4 to 1/2 cup of water, to thin the soup out to your desired consistency). Serve in bowls, garnished with cheese, chives, additional sour cream, and the reserved bacon slices crumbled over the top. 	\N	potatosoup.jpg	t
454	3	Buffalo Grilled Cheese	Lunch	\N	\N	1	Step 1\nCombine shredded chicken, buffalo wing sauce, and blue cheese in a small bowl.\n\nStep 2\nPreheat a small skillet over medium heat.\n\nStep 3\nSpread 1/2 tablespoon butter on one side of a slice of bread. Place bread butter-side-down onto the skillet bottom and place pepper Jack cheese on top. Top with chicken mixture. Butter a second slice of bread with the remaining butter on one side and place on top of the sandwich, butter-side-up.\n\nStep 4\nCook sandwich in skillet until lightly browned bread and flip over; about 2 1/2 minutes per side.	\N	buffalogrilledfcheese.webp	t
513	3	Ice Cubes	Lunch	\N	\N	2	Mix 2 cups of water with 2 tablespoons of water. Add more water to taste.\nCrockpot version coming soon.	\N	icecubes.JPG	\N
456	3	Grilled Corn on the cob	Dinner	\N	\N	4	Preheat the grill to high and heat for 10 minutes. (Alternatively, preheat grill pan to high.) Add corn and cook, turning often, until charred all over, about 10 minutes.\nSpread butter over warm corn and season with salt. 	\N	grilled-corn-jpg-1527101903.jpg	\N
531	3	Classic Burger	Lunch	\N	\N	4	 Step 1\nIn a bowl, mix ground beef, egg, onion, bread crumbs, Worcestershire, garlic, 1/2 teaspoon salt, and 1/4 teaspoon pepper until well blended. Divide mixture into four equal portions and shape each into a patty about 4 inches wide.\nStep 2\nLay burgers on an oiled barbecue grill over a solid bed of hot coals or high heat on a gas grill (you can hold your hand at grill level only 2 to 3 seconds); close lid on gas grill. Cook burgers, turning once, until browned on both sides and no longer pink inside (cut to test), 7 to 8 minutes total. Remove from grill.\nStep 3\nLay buns, cut side down, on grill and cook until lightly toasted, 30 seconds to 1 minute.\nStep 4\nSpread mayonnaise and ketchup on bun bottoms. Add lettuce, tomato, burger, onion, and salt and pepper to taste. Set bun tops in place.	\N	image.jpg	\N
553	5	Spaghetti o and Veinna sausages	Lunch	\N	\N	4	In a large pot, pour in your water and condensed tomato soup, then sprinkle the gelatin on top. Allow gelatin to bloom in the water, about 5-10 minutes.\n\nOnce gelatin has bloomed, stir together lightly.\n\nPlace the pot on the stove and turn the heat to medium, then keep stirring occasionally until the gelatin has completely dissolved, and the mixture is quite smooth.\n\nTurn off the heat and add the Spaghetti-Os to the pot. Mix until well-combined, then pour evenly into 4 cup ring mold.\n\nRefrigerate mold for 4 hours or overnight.\n\nWhen ready to serve, loosen mold by placing in a bowl of warm water, then invert onto a plate. Serve with Vienna sausages.	\N	spegos.JPG	\N
493	7	Grilled Cheese	Category	\N	\N	1	Make it fancy cheese please! Cook over medium heat in pan with cover for two and a half minutes on either side. Higher heat without the cover for two minutes on each side for a crispier outcome.	\N	A Biscuit.jpg	\N
557	7	Buffalo Grilled Cheese	Lunch	\N	\N	1	Step 1\nCombine shredded chicken, buffalo wing sauce, and blue cheese in a small bowl.\n\nStep 2\nPreheat a small skillet over medium heat.\n\nStep 3\nSpread 1/2 tablespoon butter on one side of a slice of bread. Place bread butter-side-down onto the skillet bottom and place pepper Jack cheese on top. Top with chicken mixture. Butter a second slice of bread with the remaining butter on one side and place on top of the sandwich, butter-side-up.\n\nStep 4\nCook sandwich in skillet until lightly browned bread and flip over; about 2 1/2 minutes per side.	\N	buffalogrilledfcheese.webp	\N
558	7	Coco Puffs	Category	\N	\N	1	Cereal BEFORE milk.	\N	orangedot.png	\N
566	7	Grilled Corn on the cob	Dinner	\N	\N	4	Preheat the grill to high and heat for 10 minutes. (Alternatively, preheat grill pan to high.) Add corn and cook, turning often, until charred all over, about 10 minutes.\nSpread butter over warm corn and season with salt. 	\N	grilled-corn-jpg-1527101903.jpg	\N
514	3	Kitty Litter Cake	Category	\N	\N	30	Prepare cake mixes and bake according to directions on the box, using 2 9x13" pans. Let cool completely.\nPrepare pudding mix according to package directions. Once cooked, cover the bowl with saran wrap, and chill in the refrigerator, until ready to assemble the cake.\nPlace Vanilla sandwich cookies in a heavy-duty Zip-lock plastic bag, and roll with a rolling pin until cookies are crumbled.\nSet aside 1/4 cup of the cookie crumbs. Add a few drops of green food coloring to the 1/4 cup crumbs, and mix with a fork.\nRemove the cakes from their pans, and crumble into a lg. bowl.\nToss the cake with 1/2 the remaining vanilla cookie crumbs, and the chilled pudding. You probably won't need all of the pudding.\nMix gently with the cake crumbs until evenly moist.\nPut mixture into a NEW litter box that has been lined with plastic wrap.\nUnwrap the tootsie rolls. Place 3 of them in a microwavable dish, and heat on LOW until soft and pliable, checking every 30 secs. Taper the ends of the tootsie rolls, rolling them between your palms and curving slightly, to make them look like pieces of poop.\nRepeat with remaining tootsie rolls, heating them 3 at a time. Bury some of them and you can place a few on top too. Sprinkle some of the ones on top with cookie crumbs.\nSprinkle the other 1/2 of cookie crumbs over top of the cake.\nScatter the green cookie crumbs lightly over the top (this resembles the colored granules in some brands of kitty litter).\nDip the scoop in the box, and your ready to scoop and eat!	\N	kittylittercake.JPG	\N
518	3	Smoky Bacon Cheddar Breakfast Hash	Breakfast	\N	\N	6	\nPrep Time: 15 min\nCook Time: 40 min\nCalories: 499 \n    Place a large nonstick skillet or cast iron pan over medium-high heat. Cook the bacon until nearly crispy and the fat has rendered, about 10 minutes. Using a slotted spoon, transfer the bacon to a paper towel lined plate. Remove all but ¼ cup rendered fat from the pan. Add the diced potatoes spread out as much as possible. If your bacon was lean add a little oil to the pan along with the potatoes.\n    Cook the potatoes until golden brown on most sides and begin to become tender, about 10-12 minutes.\n    Add the onions and bell peppers and to the potatoes and cook for another 5 minutes.\n    Add the bacon back to the pan. Stir in the cream, worcestershire sauce, paprika, salt and pepper. Turn the heat to low and simmer until the cream has thickened enough to bring the hash together, about 3 minutes.\n    Turn off the heat, sprinkle with grated cheese and green onions and allow the cheese to melt while you fry the eggs.\n    In a separate skillet, set over medium heat, melt the butter. Fry the eggs to desired doneness.\n    Spoon the hash onto plates and serve topped with eggs with toast alongside.\n	\N	SmokyBaconCheddarBreakfastHash_9.webp	\N
521	3	Honey Garlic Slow Cooker Chicken Thighs	Dinner	\N	\N	4	Step 1\nLay chicken thighs into the bottom of a 4-quart slow cooker.\n\nStep 2\nWhisk soy sauce, ketchup, honey, garlic, and basil together in a bowl; pour over the chicken.\n\nStep 3\nCook on Low for 6 hours.	\N	slowcookerchicken.JPG	\N
532	7	Coffee	Breakfast	\N	\N	1	1. Boil the water.\n2. add all the ingredients and serve	\N	https://firebasestorage.googleapis.com/v0/b/uploadingfile-9cffe.appspot.com/o/images%2F6-2-coffee-png-hd%20(1).pngcce7823c-7f2b-4754-bfe7-61e6ad707a51?alt=media&token=5628041b-2605-41e7-bf13-a9fd25e69069	\N
554	4	Coffee	Breakfast	\N	\N	1	1. Boil the water.\n2. add all the ingredients and serve	\N	https://firebasestorage.googleapis.com/v0/b/uploadingfile-9cffe.appspot.com/o/images%2F6-2-coffee-png-hd%20(1).pngcce7823c-7f2b-4754-bfe7-61e6ad707a51?alt=media&token=5628041b-2605-41e7-bf13-a9fd25e69069	\N
559	7	Ice Cubes	Lunch	\N	\N	2	Mix 2 cups of water with 2 tablespoons of water. Add more water to taste.\nCrockpot version coming soon.	\N	icecubes.JPG	\N
567	10	Buffalo Grilled Cheese	Lunch	\N	\N	1	Step 1\nCombine shredded chicken, buffalo wing sauce, and blue cheese in a small bowl.\n\nStep 2\nPreheat a small skillet over medium heat.\n\nStep 3\nSpread 1/2 tablespoon butter on one side of a slice of bread. Place bread butter-side-down onto the skillet bottom and place pepper Jack cheese on top. Top with chicken mixture. Butter a second slice of bread with the remaining butter on one side and place on top of the sandwich, butter-side-up.\n\nStep 4\nCook sandwich in skillet until lightly browned bread and flip over; about 2 1/2 minutes per side.	\N	buffalogrilledfcheese.webp	\N
455	7	Breakfast Apples	Breakfast	\N	\N	2	Step 1\nPlace the apple, rice cereal, cinnamon, and coconut oil into a microwave-safe bowl.\n\nStep 2\nCook in a microwave oven until the coconut oil has melted, 30 to 45 seconds. Stir to combine.\n\nStep 3\nServe topped with berries and walnuts, if desired.	\N	breakfastapple.webp	t
569	7	Biscuit	Category	\N	\N	1	Stuff!	\N	A Biscuit.jpg	\N
452	3	Beef Drip Sandwiches	Lunch	\N	\N	1	Toss the beef roast in a 6- to 8-quart slow cooker with the rosemary, ½ teaspoon salt, and a generous grinding of pepper. Add the pepperoncini with their brine, along with the beef broth. Cover and cook on low until the meat is very tender and easy to pull apart, 7 to 8 hours.\nWhen the slow cooker has about 15 minutes left, heat 2 tablespoons of butter in a large skillet over medium-high heat. Add the onion, the remaining ¼ teaspoon salt, and a few grinds of pepper. Cook, stirring occasionally, until tender and lightly browned, about 10 minutes.\nRemove the roast to a bowl and shred using 2 forks, then return it to the slow cooker. Keep warm.\nPreheat the broiler. Put the rolls on a baking sheet and spread with the remaining 4 tablespoons of butter. Broil until toasted, about 2 minutes.\nHeap a generous portion of meat on each roll, then spoon some of the cooking liquid over the meat. Top with a few pepperoncini from the slow cooker and plenty of caramelized onions. Put 2 slices of cheese on each sandwich and return to the broiler just to melt the cheese, about 1 more minute. Serve with potato chips and the extra cooking liquid on the side for dipping.	\N	slow-cooker-beef-drip-sandwiches.jpg	t
529	7	Beef Drip Sandwiches	Lunch	\N	\N	4	Toss the beef roast in a 6- to 8-quart slow cooker with the rosemary, ½ teaspoon salt, and a generous grinding of pepper. Add the pepperoncini with their brine, along with the beef broth. Cover and cook on low until the meat is very tender and easy to pull apart, 7 to 8 hours.\nWhen the slow cooker has about 15 minutes left, heat 2 tablespoons of butter in a large skillet over medium-high heat. Add the onion, the remaining ¼ teaspoon salt, and a few grinds of pepper. Cook, stirring occasionally, until tender and lightly browned, about 10 minutes.\nRemove the roast to a bowl and shred using 2 forks, then return it to the slow cooker. Keep warm.\nPreheat the broiler. Put the rolls on a baking sheet and spread with the remaining 4 tablespoons of butter. Broil until toasted, about 2 minutes.\nHeap a generous portion of meat on each roll, then spoon some of the cooking liquid over the meat. Top with a few pepperoncini from the slow cooker and plenty of caramelized onions. Put 2 slices of cheese on each sandwich and return to the broiler just to melt the cheese, about 1 more minute. Serve with potato chips and the extra cooking liquid on the side for dipping.	\N	slow-cooker-beef-drip-sandwiches.jpg	\N
551	7	Kitty Litter Cake	Category	\N	\N	30	Prepare cake mixes and bake according to directions on the box, using 2 9x13" pans. Let cool completely.\nPrepare pudding mix according to package directions. Once cooked, cover the bowl with saran wrap, and chill in the refrigerator, until ready to assemble the cake.\nPlace Vanilla sandwich cookies in a heavy-duty Zip-lock plastic bag, and roll with a rolling pin until cookies are crumbled.\nSet aside 1/4 cup of the cookie crumbs. Add a few drops of green food coloring to the 1/4 cup crumbs, and mix with a fork.\nRemove the cakes from their pans, and crumble into a lg. bowl.\nToss the cake with 1/2 the remaining vanilla cookie crumbs, and the chilled pudding. You probably won't need all of the pudding.\nMix gently with the cake crumbs until evenly moist.\nPut mixture into a NEW litter box that has been lined with plastic wrap.\nUnwrap the tootsie rolls. Place 3 of them in a microwavable dish, and heat on LOW until soft and pliable, checking every 30 secs. Taper the ends of the tootsie rolls, rolling them between your palms and curving slightly, to make them look like pieces of poop.\nRepeat with remaining tootsie rolls, heating them 3 at a time. Bury some of them and you can place a few on top too. Sprinkle some of the ones on top with cookie crumbs.\nSprinkle the other 1/2 of cookie crumbs over top of the cake.\nScatter the green cookie crumbs lightly over the top (this resembles the colored granules in some brands of kitty litter).\nDip the scoop in the box, and your ready to scoop and eat!	\N	kittylittercake.JPG	\N
561	4	Oatmeal-Glazed Breakfast Cake	Breakfast	\N	\N	14	This hearty cake is packed with oats, flavored with cinnamon and topped with a warm glaze made with more oats, shredded coconut and nuts. We used pecans, but feel free to use whatever you have on hand. It's a great way to clean out the pantry and simple enough for kids to help with. Bake one on a Sunday and enjoy it all week long for breakfast or as a snack! It's delicious at room temperature or lightly warmed in the microwave. \n\n    Total: 1 hr 40 min (includes cooling time)\n    Active: 25 min\n\nStep 1: For the cake: Preheat the oven to 350 degrees F. Coat a 9-by-13-inch baking pan with nonstick cooking spray. Line the bottom of the pan with parchment and coat again with the spray. \nStep 2: Whisk together the flour, oats, granulated sugar, brown sugar, cinnamon, baking powder, salt and baking soda in a large bowl and set aside. Whisk together the oil, buttermilk, vanilla and eggs in a medium bowl. Fold the buttermilk mixture into the flour mixture until just combined.  \nStep 3: Pour the batter into the prepared pan and bake until a toothpick inserted in the center comes out clean, about 35 minutes.  \nStep 4: For the glaze: Meanwhile, add the brown sugar, oats, coconut, butter, milk, cinnamon and salt to a small saucepan over high heat. Bring to a boil and cook until the butter and sugar are dissolved, about 1 minute. Turn off the heat and stir in the pecans.  \nStep 5: Pour the hot glaze over the warm cake and spread evenly. Let the cake cool in the pan on a rack until cooled completely, at least 40 minutes. The glaze will still look glossy but should be not be sticky. You can cut slices from the pan or invert onto a serving platter or cutting board. Store at room temperature for up to 1 week.   \n\nCook’s Note\nWhen measuring flour, we spoon it into a dry measuring cup and level off excess. (Scooping directly from the bag compacts the flour, resulting in dry baked goods.)\n	\N	Oatmeal-Glazed Cake.jpeg	\N
565	7	Smoky Bacon Cheddar Breakfast Hash	Breakfast	\N	\N	6	\nPrep Time: 15 min\nCook Time: 40 min\nCalories: 499 \n    Place a large nonstick skillet or cast iron pan over medium-high heat. Cook the bacon until nearly crispy and the fat has rendered, about 10 minutes. Using a slotted spoon, transfer the bacon to a paper towel lined plate. Remove all but ¼ cup rendered fat from the pan. Add the diced potatoes spread out as much as possible. If your bacon was lean add a little oil to the pan along with the potatoes.\n    Cook the potatoes until golden brown on most sides and begin to become tender, about 10-12 minutes.\n    Add the onions and bell peppers and to the potatoes and cook for another 5 minutes.\n    Add the bacon back to the pan. Stir in the cream, worcestershire sauce, paprika, salt and pepper. Turn the heat to low and simmer until the cream has thickened enough to bring the hash together, about 3 minutes.\n    Turn off the heat, sprinkle with grated cheese and green onions and allow the cheese to melt while you fry the eggs.\n    In a separate skillet, set over medium heat, melt the butter. Fry the eggs to desired doneness.\n    Spoon the hash onto plates and serve topped with eggs with toast alongside.\n	\N	SmokyBaconCheddarBreakfastHash_9.webp	\N
\.


--
-- TOC entry 3380 (class 0 OID 39218)
-- Dependencies: 216
-- Data for Name: recipeingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipeingredient (recipeid, ingredientid, quantity, measurementunit, title) FROM stdin;
514	535	18	Oz	\N
514	494	6	Large	\N
514	12	2/3	Cup	\N
514	536	16	oz	\N
514	537	6	oz	\N
514	538	16	small	\N
514	539	1	Med	\N
514	540	1	NEW small	\N
514	541	1	bottle	\N
513	480	1	tsp	\N
529	560	1	Pound	\N
517	546	2	8oz pkg	\N
517	547	1	pkg	\N
517	548	1	can	\N
517	549	1	sprig	\N
517	550	1	pkg	\N
560	439	3.00	Large	\N
518	437	8	Sliced	\N
518	438	2	Diced	\N
451	439	3.00	Large	\N
451	440	1.00	Large	\N
529	563	8	Slices	\N
451	442	4.00	Cup	\N
451	444	6.00	Sprigs	\N
451	445	1.00	Tsp	\N
561	487	3	Cup	\N
560	440	1.00	Large	\N
518	495	1/2	Diced	\N
561	488	1	Cup	\N
560	442	4.00	Cup	\N
561	489	1	Cup	\N
454	454	1.00	Cup	\N
454	455	2.00	Slice	\N
454	456	1.00	Slice	\N
454	457	3.00	Tbsp	\N
454	458	2.00	Tbps	\N
455	459	1.00	Large	\N
455	460	1.00	cup	\N
455	461	2.00	tsp	\N
455	462	2.00	tsp	\N
455	463	1.00	Cup	\N
455	464	1.00	Cup	\N
518	496	1	Diced	\N
518	497	1	Cup	\N
518	498	1	Tblsp	\N
518	499	1/2	Tsp	\N
518	500	1	Tsp	\N
518	501	1/4	Tsp	\N
560	444	6.00	Sprigs	\N
561	490	1/2	Cup	\N
560	445	1.00	Tsp	\N
518	502	1	Cup	\N
561	491	2	Tsp	\N
518	503	1/4	Cup	\N
518	504	2	Tblsp	\N
561	17	2	Tsp	\N
561	443	1	Tsp	\N
561	492	1/2	Tsp	\N
561	2	1	Cup	\N
518	505	6	Sliced	\N
561	493	2	Tsp	\N
521	551	4	medium	\N
521	552	1/2	cup	\N
521	553	1/2	cup	\N
521	554	1/3	cup	\N
521	555	3	cloves	\N
521	556	1	tsp	\N
531	528	1/4	cup	\N
531	529	1	Tblsp	\N
531	530	1	clove	\N
551	535	18	Oz	\N
551	494	6	Large	\N
551	12	2/3	Cup	\N
551	536	16	oz	\N
551	537	6	oz	\N
551	538	16	small	\N
551	539	1	Med	\N
551	540	1	NEW small	\N
551	541	1	bottle	\N
553	542	2	cans	\N
452	561	1	Cup	\N
553	543	1	pkg	\N
553	544	3	cans	\N
504	524	2	Chunks	\N
532	579	2	Tablespoons	\N
532	424	1	Cup	\N
555	528	1/4	cup	\N
555	529	1	Tblsp	\N
555	530	1	clove	\N
555	525	1	Pound	\N
555	526	1	Large	\N
555	527	1/2	cup	\N
556	437	8	Sliced	\N
556	438	2	Diced	\N
556	495	1/2	Diced	\N
556	496	1	Diced	\N
513	534	2	tbsp	\N
556	497	1	Cup	\N
493	513	2	Slices	\N
493	514	2	Slices	\N
493	9	1/4	Tablespoon	\N
493	19	1/4	Tablespoon	\N
559	580	1	Gallon	\N
565	437	8	Sliced	\N
565	438	2	Diced	\N
530	542	2	cans	\N
530	543	1	pkg	\N
530	544	3	cans	\N
531	525	1	Pound	\N
531	526	1	Large	\N
531	527	1/2	cup	\N
493	441	1/4	Tablespoon	\N
556	498	1	Tblsp	\N
556	499	1/2	Tsp	\N
556	500	1	Tsp	\N
556	501	1/4	Tsp	\N
556	502	1	Cup	\N
556	503	1/4	Cup	\N
556	504	2	Tblsp	\N
556	505	6	Sliced	\N
557	454	1.00	Cup	\N
557	455	2.00	Slice	\N
557	456	1.00	Slice	\N
557	457	3.00	Tbsp	\N
557	458	2.00	Tbps	\N
565	495	1/2	Diced	\N
565	496	1	Diced	\N
565	497	1	Cup	\N
565	498	1	Tblsp	\N
565	499	1/2	Tsp	\N
550	471	1	1	\N
558	577	1	Cup	\N
565	500	1	Tsp	\N
565	501	1/4	Tsp	\N
565	502	1	Cup	\N
565	503	1/4	Cup	\N
565	504	2	Tblsp	\N
565	505	6	Sliced	\N
554	518	1	Tsp	\N
554	519	2	Tbs	\N
554	517	1	tsp	\N
498	510	1	Cup	\N
473	487	3	Cup	\N
473	488	1	Cup	\N
473	489	1	Cup	\N
473	490	1/2	Cup	\N
473	491	2	Tsp	\N
473	17	2	Tsp	\N
473	443	1	Tsp	\N
473	492	1/2	Tsp	\N
473	2	1	Cup	\N
473	493	2	Tsp	\N
498	15	1	Cup	\N
498	584	1	Tablespoon	\N
566	465	4.00	Large	\N
566	466	2.00	pinch	\N
566	585	1	Gallon	\N
567	454	1.00	Cup	\N
567	455	2.00	Slice	\N
567	456	1.00	Slice	\N
567	457	3.00	Tbsp	\N
567	458	2.00	Tbps	\N
568	542	2	cans	\N
568	543	1	pkg	\N
568	544	3	cans	\N
569	586	1	Dog	\N
\.


--
-- TOC entry 3381 (class 0 OID 39234)
-- Dependencies: 217
-- Data for Name: recipemeal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipemeal (recipeid, mealid) FROM stdin;
\.


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 221
-- Name: ingredient_ingredientid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingredient_ingredientid_seq', 586, true);


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 222
-- Name: mealplan_mealplanid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mealplan_mealplanid_seq', 304, true);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 220
-- Name: recipe_recipeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipe_recipeid_seq', 569, true);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 209
-- Name: seq_user_id; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seq_user_id', 11, true);


-- Completed on 2022-09-22 10:19:21

--
-- PostgreSQL database dump complete
--

