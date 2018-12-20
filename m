// Programming for C Sharp Examine
// Four Pillars of Object-Oriented Programming
// 1. Encapsulation 2. Abstraction 3. Inheritance 4. Polymorphism
// Additional Text File and Binary File classes of System IO

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
    class measure
    {
        static void Main(string[] args)
        {
           
            Rectangle r = new Rectangle(10, 7);
            double i = r.area();
            Console.WriteLine(" Area: {0}\n\n", i);
            Triangle t = new Triangle(9, 5, 3);
            double j = t.area();
            Console.WriteLine("Area: {0}", j);

            // Loop/ Switch case for selecting the way saving as Text file or binary file

            Console.WriteLine("Select the way to store the values: \n1 - As Text File \n2 - As Binary File");
            int caseSwitch = Convert.ToInt32(Console.ReadLine());

            if (caseSwitch == 1) // Saving the values in the Text File
            {

                string[] valuesMeasure = new string[5]; // Define the variable and hold the value
                Console.WriteLine(" \nType the values to sotre it in Text File: ");

                for (int x = 0; x < 3; x++)
                {
                    valuesMeasure[x] = Console.ReadLine();
                }
                StreamWriter inPut = new StreamWriter(@"values.txt");

                for (int w = 0; w < 3; w++)
                {
                    inPut.WriteLine(valuesMeasure[w]);
                }
                inPut.Close();

                // Read the text from the text file.
                StreamReader outPut = new StreamReader(@"values.txt");
                for (int h = 0; h < 3; h++)
                {
                    valuesMeasure[h] = outPut.ReadLine();
                }
                outPut.Close();
                Console.WriteLine("\n\n The data are stored\n");
                for (int z = 0; z < 3; z++)
                {
                    // Out put the soted 
                    Console.WriteLine(valuesMeasure[z]);
                }
            }
            else if (caseSwitch == 2) // Saving the values in the Binary file
            {
                BinaryWriter bW;
                BinaryReader bR;

                try // Create the binary file
                {
                    bW = new BinaryWriter(new FileStream("values.bin", FileMode.Create));
                }
                catch (IOException e)
                {
                    Console.WriteLine(e.Message + "\n Cannot create file.");
                    return;
                }
                try
                {
                    bW.Write(i);
                    bW.Write(j);
                }
                catch (IOException e)
                {
                    Console.WriteLine(e.Message + "\n Cannot write to file.");
                    return;
                }
                bW.Close();

                // To read the file

                try
                {
                    bR = new BinaryReader(new FileStream("values.bin", FileMode.Open));
                }
                catch (IOException e)
                {
                    Console.WriteLine(e.Message + "\n Cannot open file.");
                    return;
                }

                try
                {
                    i = bR.ReadDouble();
                    Console.WriteLine("Area of Rectagnle: {0}", i);
                    j = bR.ReadDouble();
                    Console.WriteLine("Area of Triangle: {0}", j);
                }
                catch (IOException e)
                {
                    Console.WriteLine(e.Message + "\n Cannot read from file.");
                    return;
                }
                bR.Close();
                
            }
            Console.ReadKey();
        }
    }
}
