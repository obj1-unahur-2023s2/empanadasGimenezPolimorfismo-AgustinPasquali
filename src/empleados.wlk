object galvan {
	var property sueldo = 150000
	var totalDeuda = 0
	var totalDinero = 0
	
	method venderEmpanadas(){}
	
	method cobrarSueldo(){
		totalDinero += 0.max(sueldo - totalDeuda)
		totalDeuda -= totalDeuda.min(sueldo)
	}
	method pagarDeuda(){
		var deudaActual = totalDeuda
		totalDeuda = 0.max(totalDeuda - totalDinero)
		totalDinero = 0.max(totalDinero - deudaActual)	
	}	

	method gastar(cuanto){
		totalDeuda += 0.max(cuanto - totalDinero)
		totalDinero -= totalDinero.min(cuanto)

	
	}
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
}

object baigorria {
	var empanadasVendidas = 0
	var totalCobrado = 0
	
	// Indicacion
	method venderEmpanada(){
		empanadasVendidas += 1
		}
	// Consulta
	method sueldo () = empanadasVendidas * 150
	method cobrarSueldo(){
		totalCobrado += self.sueldo()
		empanadasVendidas = 0
	}
}

object seniorGimenez {
	var capital = 3000000
	
	method pagarSueldo(unEmpleado){
		capital -= unEmpleado.sueldo()
		unEmpleado.pagarSueldo()
	}
	
}