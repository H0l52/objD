import 'package:objd/core.dart';
import 'package:test/test.dart';

import 'test_widget.dart';

void main() {
  group('Entity', () {
    test('Self', () {
      expect(Entity.Self().toString(), "@s");
    });
    test('Score', () {
      expect(
          Entity.Random(
            scores: [Score(Entity(), 'test') > 5],
            limit: 1,
          ).toString(),
          "@r[limit=1,scores={test=6..}]");
    });
    test('Advancement', () {
      expect(Entity.Self(advancements: {
        "story/smelt_iron": true, 
        "adventure/kill_all_mobs":{"witch":true}
      }).toString(), "@s[advancements={story/smelt_iron=true,adventure/kill_all_mobs={witch=true}}]");
    });
  });
  group('Entity Clone', () {
    Entity newEntity = Entity(tags: ['test']);
    Entity clonedEntity = newEntity.copyWith(tags: ['testCloned']);

    command(
      'Original Entity',
      Execute.as(newEntity, children: [Say("hi")]),
      'execute as @e[tag=test] run say hi',
    );
    command(
      'Cloned Entity',
      Execute.as(clonedEntity, children: [Say("hi")]),
      'execute as @e[tag=test,tag=testCloned] run say hi',
    );
  });
}
