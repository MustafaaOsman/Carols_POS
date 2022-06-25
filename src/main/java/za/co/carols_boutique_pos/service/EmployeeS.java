/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.co.carols_boutique_pos.service;

import za.co.carols_boutique_pos.models.Employee;

/**
 *
 * @author muaad
 */
public interface EmployeeS {
    
    String login(String employeeID, String password, String storeID);
    
    String register(Employee employee);
    
    String promoteToManager(String employeeID);
    
    String updateEmployee(Employee employee);
    
    String deleteEmployee(String employeeID);
}
