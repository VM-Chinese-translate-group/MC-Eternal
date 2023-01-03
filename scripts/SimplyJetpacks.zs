import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingInfo;
#MC Eternal Scripts

print("--- loading SimplyJetpacks.zs ---");

#Remove Items
recipes.addShapeless(<simplyjetpacks:itemjetpack:0>.withTag({display:{Lore:["使用此合成配方来避免你的创造喷气背包因充电过度而损坏"]}}), [<simplyjetpacks:itemjetpack:0>.marked("jetpack")],
	function(output as IItemStack, input as IItemStack[string], cInfo as ICraftingInfo){
		return input.jetpack.updateTag({Energy: 1});
	}
);

print("--- SimplyJetpacks.zs initialized ---");	
