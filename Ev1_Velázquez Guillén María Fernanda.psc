Proceso sin_titulo
	Definir resp Como Entero;
	Definir dia, mes Como Entero;
	Definir num, may, men, primos, divis, i Como Entero;
	Definir peso, alt, masac Como Real;
	Definir lado1, lado2, lado3, lados Como Entero;
	
	Repetir
		
		Escribir "1. Fechas";
		Escribir "2. Numeros";
		Escribir "3. Peso (IMC)";
		Escribir "4. Triangulo";
		Escribir "5. Salir";
		Escribir "Que programa quieres utilizar?";
		
		Leer resp;
		
		Si resp = 1 Entonces
			
			Escribir "Dame el dia";
			Leer dia;
			
			Escribir "Dame el numero del mes";
			Leer mes;
			
			Si dia = 1 Y mes = 1 Entonces
				Escribir "Año Nuevo";
			SiNo
				Si dia = 14 Y mes = 2 Entonces
					Escribir "Dia de San Valentin";
				SiNo
					Si dia = 8 Y mes = 3 Entonces
						Escribir "Dia Internacional de la Mujer";
					SiNo
						Si dia = 22 Y mes = 4 Entonces
							Escribir "Dia de la Tierra";
						SiNo
							Si dia = 10 Y mes = 5 Entonces
								Escribir "Dia de las Madres";
							SiNo
								Si dia = 31 Y mes = 10 Entonces
									Escribir "Halloween";
								SiNo
									Si dia = 25 Y mes = 12 Entonces
										Escribir "Navidad";
									SiNo
										Escribir "Es una fecha comun";
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
		SiNo
			
			Si resp = 2 Entonces
				
				primos <- 0;
				
				Repetir
					
					Escribir "Dame un numero";
					Escribir "Si quieres parar escribe 0";
					Leer num;
					
					Si num <> 0 Entonces
						
						Si primos = 0 Entonces
							may <- num;
							men <- num;
						FinSi
						
						Si num > may Entonces
							may <- num;
						FinSi
						
						Si num < men Entonces
							men <- num;
						FinSi
						
						divis <- 0;
						
						Para i <- 1 Hasta num Hacer
							Si num MOD i = 0 Entonces
								divis <- divis + 1;
							FinSi
						FinPara
						
						Si divis = 2 Entonces
							primos <- primos + 1;
						FinSi
						
					FinSi
					
				Hasta Que num = 0;
				
				Escribir "Numeros primos: ", primos;
				Escribir "Numero mayor: ", may;
				Escribir "Numero menor: ", men;
				
			SiNo
				
				Si resp = 3 Entonces
					
					Escribir "Dame tu peso";
					Leer peso;
					
					Escribir "Tu altura en metros";
					Leer alt;
					
					masac <- peso / (alt * alt);
					
					Si masac < 18.5 Entonces
						Escribir "Bajo peso";
					SiNo
						Si masac <= 24.9 Entonces
							Escribir "Normal";
						SiNo
							Si masac <= 29.9 Entonces
								Escribir "Sobrepeso";
							SiNo
								Escribir "Obesidad";
							FinSi
						FinSi
					FinSi
					
				SiNo
					
					Si resp = 4 Entonces
						
						Escribir "Ingresa lado 1";
						Leer lado1;
						
						Escribir "Ingresa lado 2";
						Leer lado2;
						
						Escribir "Ingresa lado 3";
						Leer lado3;
						
						Si lado1 + lado2 > lado3 Y lado1 + lado3 > lado2 Y lado2 + lado3 > lado1 Entonces
							
							lados <- 0;
							
							Si lado1 = lado2 Entonces
								lados <- lados + 1;
							FinSi
							
							Si lado1 = lado3 Entonces
								lados <- lados + 1;
							FinSi
							
							Si lado2 = lado3 Entonces
								lados <- lados + 1;
							FinSi
							
							Segun lados Hacer
								3:
									Escribir "Triangulo equilatero";
								1:
									Escribir "Triangulo isosceles";
								0:
									Escribir "Triangulo escaleno";
								De Otro Modo:
									Escribir "Error en el calculo";
							FinSegun
							
						SiNo
							
							Escribir "Los valores ingresados no forman un triangulo valido";
							Escribir "Recuerda: la suma de dos lados debe ser mayor al tercer lado";
							
						FinSi
						
					FinSi
					
				FinSi
				
			FinSi
			
		FinSi
		
	Hasta Que resp = 5;
FinProceso
