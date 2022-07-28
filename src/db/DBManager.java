package db;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Item> items = new ArrayList<>();
    private static Long id = 1L;

    public static void addItems(Item item) {
        item.setId(id);
        items.add(item);
        id++;
    }

    public static ArrayList<Item> getAllItems() {
        return items;
    }

    public static Item getItem(Long id) {
        for (Item itm : items) {
            if (itm.getId() == id) {
                return itm;
            }
        }
        return null;
    }

}
