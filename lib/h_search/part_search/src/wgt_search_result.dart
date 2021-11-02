import 'package:clay/c_config/libarays.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;

class PlatformItem {
  final String name;
  final Widget asset;

  const PlatformItem(this.name, this.asset);
}

class PlatformItemsWidget extends StatelessWidget {
  final List<PlatformItem> items;

  const PlatformItemsWidget(this.items);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];
        return PlatformItemWidget(item);
      },
    );
  }
}

class PlatformItemWidget extends StatelessWidget {
  final PlatformItem item;
  final bool small;
  const PlatformItemWidget(this.item, {this.small = false});
  @override
  Widget build(BuildContext context) {
    return small
        ? Container(
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Text(
                item.name,
              ),
            ),
          )
        : Card(
            child: fluent.Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Row(
                  children: [
                    // item.asset,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        item.name,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          );
  }
}
