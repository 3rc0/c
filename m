namespace cSharp
{
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
            
            // Text file

            string[] valuesMeasure = new string[5]; // Define the variable and hold the value
            Console.WriteLine(" \nType the vaules to sotre it in Text File: " );

            for (int x = 0; x < 2; x++)
            {
                valuesMeasure[x] = Console.ReadLine();
            }
             StreamWriter inPut = new StreamWriter(@"values.txt");

            for (int w = 0; w < 2; w++)
            {
                inPut.WriteLine(valuesMeasure[w]);
            }
            inPut.Close();
            // Read the text from the text file.
            StreamReader outPut = new StreamReader(@"values.txt");
            for (int h = 0; h < 2; h++)
            {
                valuesMeasure[h] = outPut.ReadLine();
            }
            outPut.Close();
            Console.WriteLine("\n\n The data are stored\n");
            for (int z = 0; z < 2; z++)
            {
                // Out put the soted 
                Console.WriteLine(valuesMeasure[z]);
            }
            Console.ReadKey();
        }
    }

}
