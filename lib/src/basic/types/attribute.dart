// ignore_for_file: constant_identifier_names

class Attributes {
  /// A List of all AttributeTypes
  // using cog generation tool to fetch blocks
  /*[[[cog
  import cog
  import requests

  version = '1.21/releases/1.21.1'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/registries/attribute.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split(':')[1].replace('.','_')
      blocks.append(id)
      cog.outl(f'/// _({full})_')
      cog.outl(f"static const AttributeType {id} = AttributeType('{full}');\n")
  ]]]*/
  /// _(minecraft:generic.armor)_
  static const AttributeType generic_armor = AttributeType('minecraft:generic.armor');

  /// _(minecraft:generic.armor_toughness)_
  static const AttributeType generic_armor_toughness = AttributeType('minecraft:generic.armor_toughness');

  /// _(minecraft:generic.attack_damage)_
  static const AttributeType generic_attack_damage = AttributeType('minecraft:generic.attack_damage');

  /// _(minecraft:generic.attack_knockback)_
  static const AttributeType generic_attack_knockback = AttributeType('minecraft:generic.attack_knockback');

  /// _(minecraft:generic.attack_speed)_
  static const AttributeType generic_attack_speed = AttributeType('minecraft:generic.attack_speed');

  /// _(minecraft:generic.burning_time)_
  static const AttributeType generic_burning_time = AttributeType('minecraft:generic.burning_time');

  /// _(minecraft:generic.explosion_knockback_resistance)_
  static const AttributeType generic_explosion_knockback_resistance = AttributeType('minecraft:generic.explosion_knockback_resistance');

  /// _(minecraft:generic.fall_damage_multiplier)_
  static const AttributeType generic_fall_damage_multiplier = AttributeType('minecraft:generic.fall_damage_multiplier');

  /// _(minecraft:generic.flying_speed)_
  static const AttributeType generic_flying_speed = AttributeType('minecraft:generic.flying_speed');

  /// _(minecraft:generic.follow_range)_
  static const AttributeType generic_follow_range = AttributeType('minecraft:generic.follow_range');

  /// _(minecraft:generic.gravity)_
  static const AttributeType generic_gravity = AttributeType('minecraft:generic.gravity');

  /// _(minecraft:generic.jump_strength)_
  static const AttributeType generic_jump_strength = AttributeType('minecraft:generic.jump_strength');

  /// _(minecraft:generic.knockback_resistance)_
  static const AttributeType generic_knockback_resistance = AttributeType('minecraft:generic.knockback_resistance');

  /// _(minecraft:generic.luck)_
  static const AttributeType generic_luck = AttributeType('minecraft:generic.luck');

  /// _(minecraft:generic.max_absorption)_
  static const AttributeType generic_max_absorption = AttributeType('minecraft:generic.max_absorption');

  /// _(minecraft:generic.max_health)_
  static const AttributeType generic_max_health = AttributeType('minecraft:generic.max_health');

  /// _(minecraft:generic.movement_efficiency)_
  static const AttributeType generic_movement_efficiency = AttributeType('minecraft:generic.movement_efficiency');

  /// _(minecraft:generic.movement_speed)_
  static const AttributeType generic_movement_speed = AttributeType('minecraft:generic.movement_speed');

  /// _(minecraft:generic.oxygen_bonus)_
  static const AttributeType generic_oxygen_bonus = AttributeType('minecraft:generic.oxygen_bonus');

  /// _(minecraft:generic.safe_fall_distance)_
  static const AttributeType generic_safe_fall_distance = AttributeType('minecraft:generic.safe_fall_distance');

  /// _(minecraft:generic.scale)_
  static const AttributeType generic_scale = AttributeType('minecraft:generic.scale');

  /// _(minecraft:generic.step_height)_
  static const AttributeType generic_step_height = AttributeType('minecraft:generic.step_height');

  /// _(minecraft:generic.water_movement_efficiency)_
  static const AttributeType generic_water_movement_efficiency = AttributeType('minecraft:generic.water_movement_efficiency');

  /// _(minecraft:player.block_break_speed)_
  static const AttributeType player_block_break_speed = AttributeType('minecraft:player.block_break_speed');

  /// _(minecraft:player.block_interaction_range)_
  static const AttributeType player_block_interaction_range = AttributeType('minecraft:player.block_interaction_range');

  /// _(minecraft:player.entity_interaction_range)_
  static const AttributeType player_entity_interaction_range = AttributeType('minecraft:player.entity_interaction_range');

  /// _(minecraft:player.mining_efficiency)_
  static const AttributeType player_mining_efficiency = AttributeType('minecraft:player.mining_efficiency');

  /// _(minecraft:player.sneaking_speed)_
  static const AttributeType player_sneaking_speed = AttributeType('minecraft:player.sneaking_speed');

  /// _(minecraft:player.submerged_mining_speed)_
  static const AttributeType player_submerged_mining_speed = AttributeType('minecraft:player.submerged_mining_speed');

  /// _(minecraft:player.sweeping_damage_ratio)_
  static const AttributeType player_sweeping_damage_ratio = AttributeType('minecraft:player.sweeping_damage_ratio');

  /// _(minecraft:zombie.spawn_reinforcements)_
  static const AttributeType zombie_spawn_reinforcements = AttributeType('minecraft:zombie.spawn_reinforcements');

  //[[[end]]]

  static const List<AttributeType> all = [
    /*[[[cog
    for b in blocks:
      cog.outl(f'{b},')
    ]]]*/
    generic_armor,
    generic_armor_toughness,
    generic_attack_damage,
    generic_attack_knockback,
    generic_attack_speed,
    generic_burning_time,
    generic_explosion_knockback_resistance,
    generic_fall_damage_multiplier,
    generic_flying_speed,
    generic_follow_range,
    generic_gravity,
    generic_jump_strength,
    generic_knockback_resistance,
    generic_luck,
    generic_max_absorption,
    generic_max_health,
    generic_movement_efficiency,
    generic_movement_speed,
    generic_oxygen_bonus,
    generic_safe_fall_distance,
    generic_scale,
    generic_step_height,
    generic_water_movement_efficiency,
    player_block_break_speed,
    player_block_interaction_range,
    player_entity_interaction_range,
    player_mining_efficiency,
    player_sneaking_speed,
    player_submerged_mining_speed,
    player_sweeping_damage_ratio,
    zombie_spawn_reinforcements,
    //[[[end]]]
  ];

  /// A List of all generic AttributeTypes that can be applied to all entities
  static const List<AttributeType> generic = [
    /*[[[cog
    for b in blocks:
      if ("generic" in b): cog.outl(f'{b},')
    ]]]*/
    generic_armor,
    generic_armor_toughness,
    generic_attack_damage,
    generic_attack_knockback,
    generic_attack_speed,
    generic_burning_time,
    generic_explosion_knockback_resistance,
    generic_fall_damage_multiplier,
    generic_flying_speed,
    generic_follow_range,
    generic_gravity,
    generic_jump_strength,
    generic_knockback_resistance,
    generic_luck,
    generic_max_absorption,
    generic_max_health,
    generic_movement_efficiency,
    generic_movement_speed,
    generic_oxygen_bonus,
    generic_safe_fall_distance,
    generic_scale,
    generic_step_height,
    generic_water_movement_efficiency,
  //[[[end]]]
  ];
}

class AttributeType {
  final String type;
  const AttributeType(this.type);

  @override
  bool operator ==(dynamic other) {
    if (other is AttributeType && other.type == type) {
      return true;
    }
    if (other is String && other == type) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return type;
  }

  @override
  int get hashCode => type.hashCode;
}
