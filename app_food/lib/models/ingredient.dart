
class Ingredient {
    String? idIngredient;
    String? strIngredient;
    String? strDescription;
    dynamic? strType;

    Ingredient({this.idIngredient, this.strIngredient, this.strDescription, this.strType});

    Ingredient.fromJson(Map<String, dynamic> json) {
        this.idIngredient = json["idIngredient"];
        this.strIngredient = json["strIngredient"];
        this.strDescription = json["strDescription"];
        this.strType = json["strType"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["idIngredient"] = this.idIngredient;
        data["strIngredient"] = this.strIngredient;
        data["strDescription"] = this.strDescription;
        data["strType"] = this.strType;
        return data;
    }
}