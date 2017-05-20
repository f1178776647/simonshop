package net.fz.shop.bean;

/**
 * Created by howard on 2017/3/10.
 */
public class Category {
    /**
     * 类别标识符
     */
    private int id;
    /**
     * 类别名称
     */
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
