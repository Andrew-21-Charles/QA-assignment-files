<?php

use PHPUnit\Framework\TestCase;

class CustomerDetailsTest extends TestCase
{
    private $db;
    
    protected function setUp(): void
    {
        // Initialize database connection for testing
        $this->db = new mysqli('localhost', 'root', '', 'wheelstires');
        if ($this->db->connect_error) {
            die("Connection failed: " . $this->db->connect_error);
        }
        
        // Clean up database before each test
        $this->db->query("DELETE FROM customer_details");
    }

    protected function tearDown(): void
    {
        // Close database connection
        $this->db->close();
    }

    public function testFormSubmission(): void
    {
        // Simulate form submission
        $_GET['customer_name'] = 'Andrew';
        $_GET['vehicle_no'] = 'kl4434';
        $_GET['vehicle_type'] = 'Sedan';
        $_GET['address'] = '123 Main St';
        $_GET['contact'] = '5551234';
        $_GET['date'] = '2024-08-01';

        ob_start();
        include 'C:\xampp\htdocs\vs code Tire\customerDetails.php'; 
        $output = ob_get_clean();

    

        // Verify that data is inserted into the database
        $result = $this->db->query("SELECT * FROM customer_details WHERE VehicleNo='kl4434'");
        $this->assertNotFalse($result);
        $this->assertEquals(1, $result->num_rows);

        $row = $result->fetch_assoc();
        $this->assertEquals('Andrew', $row['Name']);
        $this->assertEquals('kl4434', $row  ['Vehicleno'] );
       $this->assertEquals('Sedan', $row['Vehicletype']);
        $this->assertEquals('123 Main St', $row['Address']);
        $this->assertEquals('5551234', $row['contact']);
        $this->assertEquals('2024-08-01', $row['Date']);
    }

    public function testInvalidFormSubmission(): void
    {
        
        $_GET['customer_name'] = 'Andrew';
        

        ob_start();
        include 'C:\xampp\htdocs\vs code Tire\customerDetails.php'; 
        $output = ob_get_clean();

        
        $this->assertStringNotContainsString('New record created successfully', $output);
      
    }
}
