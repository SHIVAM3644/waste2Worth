class ProcessGuideModel {
  ProcessGuideModel({
    this.mongoId,
    this.id,
    this.title,
    this.categoryType,
    this.completeDescription,
    this.logoUrl,
    this.steps,
    this.requiredMaterials,
    this.estimatedTime,
    this.difficultyLevel,
    this.safetyNote,
    this.environmentalImpact,
    this.costSaving,
    this.finalOutcome,
    this.precaution,
    this.videoLink,
  });

  ProcessGuideModel.fromJson(dynamic json) {
    mongoId = json['_id'];
    id = json['id'];
    title = json['title'];
    categoryType = json['categoryType'];
    completeDescription = json['completeDescription'];
    logoUrl = json['logoUrl'];
    steps = json['steps'] != null ? List<String>.from(json['steps']) : null;
    requiredMaterials = json['requiredMaterials'] != null ? List<String>.from(json['requiredMaterials']) : null;
    estimatedTime = json['estimatedTime'];
    difficultyLevel = json['difficultyLevel'];
    safetyNote = json['safetyNote'];
    environmentalImpact = json['environmentalImpact'] != null ? List<String>.from(json['environmentalImpact']) : null;
    if (json['costSaving'] != null) {
      costSaving = [];
      json['costSaving'].forEach((v) {
        costSaving!.add(CostSaving.fromJson(v));
      });
    }
    finalOutcome = json['finalOutcome'];
    precaution = json['precaution'] != null ? Precaution.fromJson(json['precaution']) : null;
    videoLink = json['videoLink'];
  }

  String? mongoId;
  num? id;
  String? title;
  String? categoryType;
  String? completeDescription;
  String? logoUrl;
  List<String>? steps;
  List<String>? requiredMaterials;
  String? estimatedTime;
  String? difficultyLevel;
  String? safetyNote;
  List<String>? environmentalImpact;
  List<CostSaving>? costSaving;
  String? finalOutcome;
  Precaution? precaution;
  String? videoLink;

  ProcessGuideModel copyWith({
    String? mongoId,
    num? id,
    String? title,
    String? categoryType,
    String? completeDescription,
    String? logoUrl,
    List<String>? steps,
    List<String>? requiredMaterials,
    String? estimatedTime,
    String? difficultyLevel,
    String? safetyNote,
    List<String>? environmentalImpact,
    List<CostSaving>? costSaving,
    String? finalOutcome,
    Precaution? precaution,
    String? videoLink,
  }) =>
      ProcessGuideModel(
        mongoId: mongoId ?? this.mongoId,
        id: id ?? this.id,
        title: title ?? this.title,
        categoryType: categoryType ?? this.categoryType,
        completeDescription: completeDescription ?? this.completeDescription,
        logoUrl: logoUrl ?? this.logoUrl,
        steps: steps ?? this.steps,
        requiredMaterials: requiredMaterials ?? this.requiredMaterials,
        estimatedTime: estimatedTime ?? this.estimatedTime,
        difficultyLevel: difficultyLevel ?? this.difficultyLevel,
        safetyNote: safetyNote ?? this.safetyNote,
        environmentalImpact: environmentalImpact ?? this.environmentalImpact,
        costSaving: costSaving ?? this.costSaving,
        finalOutcome: finalOutcome ?? this.finalOutcome,
        precaution: precaution ?? this.precaution,
        videoLink: videoLink ?? this.videoLink,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = mongoId;
    map['id'] = id;
    map['title'] = title;
    map['categoryType'] = categoryType;
    map['completeDescription'] = completeDescription;
    map['logoUrl'] = logoUrl;
    map['steps'] = steps;
    map['requiredMaterials'] = requiredMaterials;
    map['estimatedTime'] = estimatedTime;
    map['difficultyLevel'] = difficultyLevel;
    map['safetyNote'] = safetyNote;
    map['environmentalImpact'] = environmentalImpact;
    if (costSaving != null) {
      map['costSaving'] = costSaving!.map((v) => v.toJson()).toList();
    }
    map['finalOutcome'] = finalOutcome;
    if (precaution != null) {
      map['precaution'] = precaution!.toJson();
    }
    map['videoLink'] = videoLink;
    return map;
  }
}

class Precaution {
  Precaution({
    this.dos,
    this.donts,
  });

  Precaution.fromJson(dynamic json) {
    dos = json['dos'] != null ? List<String>.from(json['dos']) : null;
    donts = json['donts'] != null ? List<String>.from(json['donts']) : null;
  }

  List<String>? dos;
  List<String>? donts;

  Precaution copyWith({
    List<String>? dos,
    List<String>? donts,
  }) =>
      Precaution(
        dos: dos ?? this.dos,
        donts: donts ?? this.donts,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dos'] = dos;
    map['donts'] = donts;
    return map;
  }
}

class CostSaving {
  CostSaving({
    this.moneySavedPerYear,
    this.plasticSavedIf1000People,
  });

  CostSaving.fromJson(dynamic json) {
    moneySavedPerYear = json['moneySavedPerYear'];
    plasticSavedIf1000People = json['plasticSavedIf1000People'];
  }

  num? moneySavedPerYear;
  num? plasticSavedIf1000People;

  CostSaving copyWith({
    num? moneySavedPerYear,
    num? plasticSavedIf1000People,
  }) =>
      CostSaving(
        moneySavedPerYear: moneySavedPerYear ?? this.moneySavedPerYear,
        plasticSavedIf1000People: plasticSavedIf1000People ?? this.plasticSavedIf1000People,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['moneySavedPerYear'] = moneySavedPerYear;
    map['plasticSavedIf1000People'] = plasticSavedIf1000People;
    return map;
  }
}
