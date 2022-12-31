#MC Eternal Scripts

print("--- loading Harvestcraft.zs ---");

var pamgarden = ["arid","frost","shaded","soggy","tropical","windy"] as string[];

#Add Recipe
recipes.addShaped(<harvestcraft:toastitem>, [[<ore:cropCinnamon>, <dungeontactics:toast>]]);
recipes.removeShapeless(<harvestcraft:plainyogurtitem> * 4, [<harvestcraft:plainyogurtitem>, <minecraft:leather>]);
for gardens in pamgarden {
	itemUtils.getItem("harvestcraft:"~gardens~"garden").addTooltip(format.red("已禁用，从傻瓜市场购买农作物种子"));
}

print("--- Harvestcraft.zs initialized ---");	
