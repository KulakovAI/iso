using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MinElement
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine($"Введите количество чисел в последовательности: ");
            int n;
            n = Convert.ToInt32(Console.ReadLine());
            double[] E = new double[n];
            int i = 0;
            Console.WriteLine("Введите числа последовательности: ");
            while(i < n)
            {
                E[i] = double.Parse(Console.ReadLine());
                i++;
            }
            var minCount = E.Count(x => x == E.Min());
            Console.WriteLine("Последовательность чисел: " + String.Join(", ", E));
            Console.WriteLine("Количество минимальных элементов в последовательности: " + minCount);
            Console.ReadKey();
        }
    }
}
