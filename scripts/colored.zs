/* Import */
import mods.inworldcrafting.FluidToItem.transform as fluid;
import mods.inworldcrafting.FluidToFluid.transform as fluid2fluid;
import mods.tconstruct.Melting.addRecipe as melting;
import mods.thermalexpansion.Crucible.addRecipe as crucible;

// Vars
var blackDye = <liquid:molten_blackdye>;
var redDye = <liquid:molten_reddye>;
var greenDye = <liquid:molten_greendye>;
var brownDye = <liquid:molten_browndye>;
var blueDye = <liquid:molten_bluedye>;
var purpleDye = <liquid:molten_purpledye>;
var cyanDye = <liquid:molten_cyandye>;
var lightgrayDye = <liquid:molten_lightgraydye>;
var grayDye = <liquid:molten_graydye>;
var pinkDye = <liquid:molten_pinkdye>;
var limeDye = <liquid:molten_limedye>;
var yellowDye = <liquid:molten_yellowdye>;
var lightblueDye = <liquid:molten_lightbluedye>;
var magentaDye = <liquid:molten_magentadye>;
var orangeDye = <liquid:molten_orangedye>;
var whiteDye = <liquid:molten_whitedye>;

var water = <liquid:water>;
var glass = <minecraft:glass>;
var clearGlass = <tconstruct:clear_glass>;

var blackPigment = <ore:dyeBlack>;
var redPigment = <ore:dyeRed>;
var greenPigment = <ore:dyeGreen>;
var brownPigment = <ore:dyeBrown>;
var bluePigment = <ore:dyeBlue>;
var purplePigment = <ore:dyePurple>;
var cyanPigment = <ore:dyeCyan>;
var lightgrayPigment = <ore:dyeLightGray>;
var grayPigment = <ore:dyeGray>;
var pinkPigment = <ore:dyePink>;
var limePigment = <ore:dyeLime>;
var yellowPigment = <ore:dyeYellow>;
var lightbluePigment = <ore:dyeLightBlue>;
var magentaPigment = <ore:dyeMagenta>;
var orangePigment = <ore:dyeOrange>;
var whitePigment = <ore:dyeWhite>;

/* Black */
//Wool
recipes.remove(<minecraft:wool:15>);
fluid(<minecraft:wool:15>, blackDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:15>);
fluid(<tconstruct:clear_stained_glass:15>, blackDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:15>);
fluid(<minecraft:stained_glass:15>, blackDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:15>);
fluid(<minecraft:concrete_powder:15>, blackDye, [<minecraft:concrete_powder>], false);



/* Red */
//Wool
recipes.remove(<minecraft:wool:14>);
fluid(<minecraft:wool:14>, redDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:14>);
fluid(<tconstruct:clear_stained_glass:14>, redDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:14>);
fluid(<minecraft:stained_glass:14>, redDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:14>);
fluid(<minecraft:concrete_powder:14>, redDye, [<minecraft:concrete_powder>], false);



/* Green */
//Wool
recipes.remove(<minecraft:wool:13>);
fluid(<minecraft:wool:13>, greenDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:13>);
fluid(<tconstruct:clear_stained_glass:13>, greenDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:13>);
fluid(<minecraft:stained_glass:13>, greenDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:13>);
fluid(<minecraft:concrete_powder:13>, greenDye, [<minecraft:concrete_powder>], false);



/* Brown */
//Wool
recipes.remove(<minecraft:wool:12>);
fluid(<minecraft:wool:12>, brownDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:12>);
fluid(<tconstruct:clear_stained_glass:12>, brownDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:12>);
fluid(<minecraft:stained_glass:12>, brownDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:12>);
fluid(<minecraft:concrete_powder:12>, brownDye, [<minecraft:concrete_powder>], false);



/* Blue */
//Wool
recipes.remove(<minecraft:wool:11>);
fluid(<minecraft:wool:11>, blueDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:11>);
fluid(<tconstruct:clear_stained_glass:11>, blueDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:11>);
fluid(<minecraft:stained_glass:11>, blueDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:11>);
fluid(<minecraft:concrete_powder:11>, blueDye, [<minecraft:concrete_powder>], false);



/* Purple */
//Wool
recipes.remove(<minecraft:wool:10>);
fluid(<minecraft:wool:10>, purpleDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:10>);
fluid(<tconstruct:clear_stained_glass:10>, purpleDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:10>);
fluid(<minecraft:stained_glass:10>, purpleDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:10>);
fluid(<minecraft:concrete_powder:10>, purpleDye, [<minecraft:concrete_powder>], false);



/* Cyan */
//Wool
recipes.remove(<minecraft:wool:9>);
fluid(<minecraft:wool:9>, cyanDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:9>);
fluid(<tconstruct:clear_stained_glass:9>, cyanDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:9>);
fluid(<minecraft:stained_glass:9>, cyanDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:9>);
fluid(<minecraft:concrete_powder:9>, cyanDye, [<minecraft:concrete_powder>], false);



/* Light gray */
//Wool
recipes.remove(<minecraft:wool:8>);
fluid(<minecraft:wool:8>, lightgrayDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:8>);
fluid(<tconstruct:clear_stained_glass:8>, lightgrayDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:8>);
fluid(<minecraft:stained_glass:8>, lightgrayDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:8>);
fluid(<minecraft:concrete_powder:8>, lightgrayDye, [<minecraft:concrete_powder>], false);



/* Gray */
//Wool
recipes.remove(<minecraft:wool:7>);
fluid(<minecraft:wool:7>, grayDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:7>);
fluid(<tconstruct:clear_stained_glass:7>, grayDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:7>);
fluid(<minecraft:stained_glass:7>, grayDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:7>);
fluid(<minecraft:concrete_powder:7>, grayDye, [<minecraft:concrete_powder>], false);



/* Pink */
//Wool
recipes.remove(<minecraft:wool:6>);
fluid(<minecraft:wool:6>, pinkDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:6>);
fluid(<tconstruct:clear_stained_glass:6>, pinkDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:6>);
fluid(<minecraft:stained_glass:6>, pinkDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:6>);
fluid(<minecraft:concrete_powder:6>, pinkDye, [<minecraft:concrete_powder>], false);



/* Lime */
//Wool
recipes.remove(<minecraft:wool:5>);
fluid(<minecraft:wool:5>, limeDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:5>);
fluid(<tconstruct:clear_stained_glass:5>, limeDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:5>);
fluid(<minecraft:stained_glass:5>, limeDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:5>);
fluid(<minecraft:concrete_powder:5>, limeDye, [<minecraft:concrete_powder>], false);



/* Yellow */
//Wool
recipes.remove(<minecraft:wool:4>);
fluid(<minecraft:wool:4>, yellowDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:4>);
fluid(<tconstruct:clear_stained_glass:4>, yellowDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:4>);
fluid(<minecraft:stained_glass:4>, yellowDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:4>);
fluid(<minecraft:concrete_powder:4>, yellowDye, [<minecraft:concrete_powder>], false);



/* Light blue */
//Wool
recipes.remove(<minecraft:wool:3>);
fluid(<minecraft:wool:3>, lightblueDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:3>);
fluid(<tconstruct:clear_stained_glass:3>, lightblueDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:3>);
fluid(<minecraft:stained_glass:3>, lightblueDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:3>);
fluid(<minecraft:concrete_powder:3>, lightblueDye, [<minecraft:concrete_powder>], false);



/* Magenta */
//Wool
recipes.remove(<minecraft:wool:2>);
fluid(<minecraft:wool:2>, magentaDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:2>);
fluid(<tconstruct:clear_stained_glass:2>, magentaDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:2>);
fluid(<minecraft:stained_glass:2>, magentaDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:2>);
fluid(<minecraft:concrete_powder:2>, magentaDye, [<minecraft:concrete_powder>], false);



/* Orange */
//Wool
recipes.remove(<minecraft:wool:1>);
fluid(<minecraft:wool:1>, orangeDye, [<minecraft:wool>], false);

//Clear stained glass
recipes.remove(<tconstruct:clear_stained_glass:1>);
fluid(<tconstruct:clear_stained_glass:1>, orangeDye, [clearGlass], false);

//Stained glass
recipes.remove(<minecraft:stained_glass:1>);
fluid(<minecraft:stained_glass:1>, orangeDye, [glass], false);

//Concrete powder
recipes.remove(<minecraft:concrete_powder:1>);
fluid(<minecraft:concrete_powder:1>, orangeDye, [<minecraft:concrete_powder>], false);



/* White */
recipes.remove(<minecraft:stained_glass>);
fluid(<minecraft:stained_glass>, whiteDye, [glass], false);
recipes.remove(<tconstruct:clear_stained_glass>);
fluid(<tconstruct:clear_stained_glass>, whiteDye, [clearGlass], false);


/* Water to Molten Fluids */
//Black
fluid2fluid(blackDye, water, [blackPigment * 10], true);

//Red
fluid2fluid(redDye, water, [redPigment * 10], true);

//Green
fluid2fluid(greenDye, water, [greenPigment * 10], true);

//Brown
fluid2fluid(brownDye, water, [brownPigment * 10], true);

//Blue
fluid2fluid(blueDye, water, [bluePigment * 10], true);

//Gray
fluid2fluid(grayDye, water, [grayPigment * 10], true);

//Light blue
fluid2fluid(lightblueDye, water, [lightbluePigment * 10], true);

//Purple
fluid2fluid(purpleDye, water, [purplePigment * 10], true);

//Pink
fluid2fluid(pinkDye, water, [pinkPigment * 10], true);

//Magenta
fluid2fluid(magentaDye, water, [magentaPigment * 10], true);

//Cyan
fluid2fluid(cyanDye, water, [cyanPigment * 10], true);

//Lime
fluid2fluid(limeDye, water, [limePigment * 10], true);

//Orange
fluid2fluid(orangeDye, water, [orangePigment * 10], true);

//Light gray
fluid2fluid(lightgrayDye, water, [lightgrayPigment * 10], true);

//Yellow
fluid2fluid(yellowDye, water, [yellowPigment * 10], true);

//White
fluid2fluid(whiteDye, water, [whitePigment * 10], true);

//Molten Slime
melting(<liquid:molten_slime> * 100, <ore:slimeball>, 500);
crucible(<liquid:molten_slime> * 100, <minecraft:slime_ball>, 100);

//Molten Diamond
melting(<liquid:molten_diamond> * 666, <minecraft:diamond>, 500);
crucible(<liquid:molten_diamond> * 666, <minecraft:diamond>, 100);