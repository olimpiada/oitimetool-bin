-------------------------------------------------------------------------------
  OITimeTool --- Narzędzie OI do pomiaru czasu działania programów
-------------------------------------------------------------------------------

-- Instrukcja dla Windowsa --

1. Ściągnij narzędzie i rozpakuj archiwum, np. do C:\OITIMETOOL.

   https://github.com/accek/oitimetool-bin/zipball/master

2. Otwórz wiersz poleceń (Start -> Uruchom -> Akcesoria -> Wiersz poleceń).

3. Przejdź do folderu z Twoim skompilowanym programem.
   W poniższym przykładzie zakładamy, że jest to jeden z programów dołączonych
   do OITimeTool.

   > c:
   > cd \oitimetool\test-programs

4. Uruchom C:\OITIMETOOL\OITIMETOOL.BAT, przekazując nazwę programu jako argument.
   Możesz też przekierować wejście/wyjście.

   > c:\oitimetool\oitimetool.bat primes-devcpp-gcc34-O2.exe

Przy pierwszym uruchomieniu program poprosi o ściągnięcie biblioteki Pin, która
jest wewnętrznie używana przez OITimeTool. Jej licencja nie pozwala na dołączenie
jej do archiwum.

-- Instrukcja dla Linuksa/Maca ---

Program uruchamia się w zasadzie tak, jak pod Windowsem, z tym że używa się skryptu
oitimetool/oitimetool zamiast oitimetool/oitimetool.bat

Przykład:

$ unzip oitimetool.zip
$ cd oitimetool/test-programs
$ ../oitimetool ./primes-gcc44-static-O2

Na Macu obsługiwane są zarówno 32-bitowe, jak i 64-bitowe binarki.

-- Licencja --

OITimeTool może być rozpowszechniany na zasadach licencji Creative
Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.

