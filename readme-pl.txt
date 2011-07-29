-------------------------------------------------------------------------------
  OITimeTool --- Narzędzie OI do pomiaru czasu działania programów
-------------------------------------------------------------------------------

Nowa technologia pomiaru czasu oparta o proste modelowanie sposobu dzuiałania
procesora będzie testowana podczas Olimpiady Informatycznej w roku szkolnym
2011/12.

-- Instrukcja dla Windowsa --

1. Ściągnij narzędzie i rozpakuj archiwum, np. do C:\OITIMETOOL.

2. Otwórz wiersz poleceń (Start -> Uruchom -> Akcesoria -> Wiersz poleceń).

3. Przejdź do folderu z Twoim skompilowanym programem.
   W poniższy przykładzie zakłądamy, że jest to jeden z programów dołączonych
   do OITimeTool.

   > c:
   > cd \oitimetool\test-programs

4. Uruchom C:\OITIMETOOL\OITIMETOOL.BAT, przekazując nazwę programu jako argument.
   Możesz też przekierować wejście/wyjście.

   > c:\oitimetool\oitimetool.bat primes-devcpp-gcc34-O2.exe

Przy pierwszym uruchomieniu program poprosi o ściągnięcie biblioteki Pin, która
jest wewnętrznie używana przez OITimeTool. Jej licencja nie pozwala na dołączenie
jej do archiwum.

-- Instrukcja dla Linuksa ---

Program uruchamia się w zasadzie tak, jak pod Windowsem, z tym że używa się skryptu
oitimetool/oitimetool zamiast oitimetool/oitimetool.bat

Przykład:

# tar -zxf oitimetool.tar.gz
# cd oitimetool/test-programs
# ../oitimetool ./primes-gcc44-static-O2

-- Licencja --

OITimeTool może być rozpowszechniany na zasadach licencji Creative
Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.

