package tom.jiafei;

public class Trapezoid {
     double upperBase;
     double lowerBase;
     double height;
     double area;

    public Trapezoid() {}

    public double getUpperBase() {
        return upperBase;
    }

    public void setUpperBase(double upperBase) {
        this.upperBase = upperBase;
    }

    public double getLowerBase() {
        return lowerBase;
    }

    public void setLowerBase(double lowerBase) {
        this.lowerBase = lowerBase;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getArea() {
        return area;
    }

    public void calculateArea(double area) {
        this.area =area;
    }
}

