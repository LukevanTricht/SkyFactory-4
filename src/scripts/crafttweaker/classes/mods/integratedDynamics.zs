#priority 2400

/*
	SkyFactory 4 Integrated Dynamics Script

	This script is a zenClass to allow easy interation with Integrated Dynamics.
*/
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

mods.integrateddynamics.DryingBasin;
mods.integrateddynamics.MechanicalDryingBasin;
mods.integrateddynamics.MechanicalSqueezer;
mods.integrateddynamics.Squeezer;

zenClass IntegratedDynamics {
	zenConstructor() {
	}

	/*
		Add a Drying Basin recipe.
	*/
	addDryingBasin(mechanicalRecipe as bool, inputStack as IItemStack, inputFluid as ILiquidStack, outputStack as IItemStack, outputFluid as ILiquidStack, duration as int) {
		// TODO: Flesh out this function (multiple to allow different options) https://github.com/CyclopsMC/IntegratedDynamics-Compat/blob/master-1.12/src/main/java/org/cyclops/integrateddynamicscompat/modcompat/minetweaker/handlers/DryingBasinHandler.java
	}

	/*
		Remove a Drying Basin recipe.
	*/
	removeDryingBasin(mechanicalRecipe as bool, inputStack as IItemStack, inputFluid as ILiquidStack, outputStack as IItemStack, outputFluid as ILiquidStack, duration as int) {
		// TODO: Flesh out this function (multiple to allow different options) https://github.com/CyclopsMC/IntegratedDynamics-Compat/blob/master-1.12/src/main/java/org/cyclops/integrateddynamicscompat/modcompat/minetweaker/handlers/DryingBasinHandler.java
	}
	removeDryingBasinWithOutput(mechanicalRecipe as bool, outputItem as IItemStack) {
		removeDryingBasinWithOutput(mechanicalRecipe, outputItem, null);
	}
	removeDryingBasinWithOutput(mechanicalRecipe as bool, outputFluid as ILiquidStack) {
		removeDryingBasinWithOutput(mechanicalRecipe, null, outputFluid);
	}
	removeDryingBasinWithOutput(mechanicalRecipe as bool, outputItem as IItemStack, outputFluid as ILiquidStack) {
		if (mechanicalRecipe) {
			MechanicalDryingBasin.removeRecipesWithOutput(output, outputFluid);
		} else {
			DryingBasin.removeRecipesWithOutput(output, outputFluid);
		}
	}

	/*
		Add a Squeezer recipe.
	*/
	addSqueezer(mechanicalRecipe as bool, inputStack as IItemStack, outputStack as IItemStack, outputFluid as ILiquidStack) {
		addSqueezer(mechanicalRecipe, inputStack, outputStack, 1.0, null, 1.0, null, 1.0, outputFluid);
	}
	addSqueezer(mechanicalRecipe as bool, inputStack as IItemStack, outputStack as IItemStack, outputStackChance as float, outputFluid as ILiquidStack) {
		addSqueezer(mechanicalRecipe, inputStack, outputStack, outputStackChance, null, 1.0, null, 1.0, outputFluid);
	}
	addSqueezer(mechanicalRecipe as bool, inputStack as IItemStack, outputStack1 as IItemStack, outputStackChance1 as float,
		outputStack2 as IItemStack, outputStackChance2 as float, outputFluid as ILiquidStack) {
			addSqueezer(mechanicalRecipe, inputStack, outputStack1, outputStackChance1, outputStack2, outputStackChance2, null, 1.0, outputFluid);
	}
	addSqueezer(mechanicalRecipe as bool, inputStack as IItemStack, outputStack1 as IItemStack, outputStackChance1 as float,
		outputStack2 as IItemStack, outputStackChance2 as float, outputStack3 as IItemStack, outputStackChance3 as float, outputFluid as ILiquidStack) {
		if (mechanicalRecipe) {
			MechanicalSqueezer.addRecipe(
				inputStack,
				outputStack1,
				outputStackChance1,
				outputStack2,
				outputStackChance2,
				outputStack3,
				outputStackChance3,
				outputFluid
			);
		} else {
			Squeezer.addRecipe(
				inputStack,
				outputStack1,
				outputStackChance1,
				outputStack2,
				outputStackChance2,
				outputStack3,
				outputStackChance3,
				outputFluid
			);
		}
	}

	/*
		Remove a Squeezer recipe.
	*/
	removeSqueezer(mechanicalRecipe as bool, inputStack as IItemStack, outputStack as IItemStack, outputFluid as ILiquidStack) {
		removeSqueezer(mechanicalRecipe, inputStack, outputStack, 1.0, null, 1.0, null, 1.0, outputFluid);
	}
	removeSqueezer(mechanicalRecipe as bool, inputStack as IItemStack, outputStack as IItemStack, outputStackChance as float, outputFluid as ILiquidStack) {
		removeSqueezer(mechanicalRecipe, inputStack, outputStack, outputStackChance, null, 1.0, null, 1.0, outputFluid);
	}
	removeSqueezer(mechanicalRecipe as bool, inputStack as IItemStack, outputStack1 as IItemStack, outputStackChance1 as float,
		outputStack2 as IItemStack, outputStackChance2 as float, outputFluid as ILiquidStack) {
			removeSqueezer(mechanicalRecipe, inputStack, outputStack1, outputStackChance1, outputStack2, outputStackChance2, null, 1.0, outputFluid);
	}
	removeSqueezer(mechanicalRecipe as bool, inputStack as IItemStack, outputStack1 as IItemStack, outputStackChance1 as float,
		outputStack2 as IItemStack, outputStackChance2 as float, outputStack3 as IItemStack, outputStackChance3 as float, outputFluid as ILiquidStack) {
		if (mechanicalRecipe) {
			MechanicalSqueezer.removeRecipe(
				inputStack,
				outputStack1,
				outputStackChance1,
				outputStack2,
				outputStackChance2,
				outputStack3,
				outputStackChance3,
				outputFluid
			);
		} else {
			Squeezer.removeRecipe(
				inputStack,
				outputStack1,
				outputStackChance1,
				outputStack2,
				outputStackChance2,
				outputStack3,
				outputStackChance3,
				outputFluid
			);
		}
	}
	removeSqueezerWithOutput(mechanicalRecipe as bool, outputStack as IItemStack, outputFluid as ILiquidStack) {
		if (mechanicalRecipe) {
			MechanicalSqueezer.removeRecipesWithOutput();
		} else {
			Squeezer.removeRecipesWithOutput();
		}
	}
	removeSqueezerWithOutput(mechanicalRecipe as bool, outputStack as IItemStack, outputFluid as ILiquidStack) {
		removeSqueezerWithOutput(mechanicalRecipe, inputStack, outputStack, 1.0, null, 1.0, null, 1.0, outputFluid);
	}
	removeSqueezerWithOutput(mechanicalRecipe as bool, outputStack as IItemStack, outputStackChance as float, outputFluid as ILiquidStack) {
		removeSqueezerWithOutput(mechanicalRecipe, inputStack, outputStack, outputStackChance, null, 1.0, null, 1.0, outputFluid);
	}
	removeSqueezerWithOutput(mechanicalRecipe as bool, outputStack1 as IItemStack, outputStackChance1 as float,
		outputStack2 as IItemStack, outputStackChance2 as float, outputFluid as ILiquidStack) {
			removeSqueezerWithOutput(mechanicalRecipe, inputStack, outputStack1, outputStackChance1, outputStack2, outputStackChance2, null, 1.0, outputFluid);
	}
	removeSqueezerWithOutput(mechanicalRecipe as bool, outputStack1 as IItemStack, outputStackChance1 as float,
		outputStack2 as IItemStack, outputStackChance2 as float, outputStack3 as IItemStack, outputStackChance3 as float, outputFluid as ILiquidStack) {
		if (mechanicalRecipe) {
			MechanicalSqueezer.removeRecipesWithOutput(
				outputStack1,
				outputStackChance1,
				outputStack2,
				outputStackChance2,
				outputStack3,
				outputStackChance3,
				outputFluid
			);
		} else {
			Squeezer.removeRecipesWithOutput(
				outputStack1,
				outputStackChance1,
				outputStack2,
				outputStackChance2,
				outputStack3,
				outputStackChance3,
				outputFluid
			);
		}
	}
}