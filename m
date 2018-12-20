namespace cSharp
// Parent Class
    abstract class Shape
    {
        public abstract int area();
    }

    // CLASS Child 1
    class Rectangle : Shape
    {
        private int length;
        private int width;
        public Rectangle(int a = 0, int b = 0)
        {
            length = a;
            width = b;
        }
        public override int area()
        {
            Console.WriteLine("Rectangle class area :");
            return (width * length);
        }
    }

    // CLASS Child 2
    class Triangle : Shape
    {
        private int length;
        private int width;
        private int height;
        public Triangle(int a = 0, int b = 0, int c =0)
        {
            length = a;
            width = b;
            height = c;
        }
        public override int area()
        {
            Console.WriteLine("Triangle class area :");
            return (length + width+ height);
        }
    }
   class measure { 
        static void Main(string[] args)
        {
            Rectangle r = new Rectangle(10, 7);
            double i = r.area();
            Console.WriteLine(" Area: {0}\n\n", i);
            Triangle t = new Triangle(9, 5, 3);
            double j = t.area();
            Console.WriteLine("Area: {0}", j);
            Console.ReadKey();

        }
    }

}
