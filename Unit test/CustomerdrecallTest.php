<?php
use PHPUnit\Framework\TestCase;

class CustomerdrecallTest extends TestCase
{
    protected $conn;

    protected function setUp(): void
    {
        include 'C:\xampp\htdocs\vs code Tire\dbconnection.php'; // Update this path as needed
        $this->conn = $conn;
    }

    protected function tearDown(): void
    {
        $this->conn->close();
    }

    public function testDatabaseConnection()
    {
        $this->assertNotNull($this->conn, "Database connection should not be null");
        $this->assertTrue($this->conn->ping(), "Database connection should be alive");
    }

    public function testValidVehicleNumber()
    {
        $vehicleno = 'kl4434'; 
        $sql = "SELECT * FROM customer_details WHERE Vehicleno='$vehicleno'";
        $result = $this->conn->query($sql);

        $this->assertTrue($result->num_rows > 0, "Query should return at least one row for valid vehicle number");

        $row = $result->fetch_assoc();
        $this->assertEquals($vehicleno, $row['Vehicleno'], "Vehicle number should match");
    }

    public function testInvalidVehicleNumber()
    {
        $vehicleno = 'INVALID123'; 
        $sql = "SELECT * FROM customer_details WHERE Vehicleno='$vehicleno'";
        $result = $this->conn->query($sql);

        $this->assertEquals(0, $result->num_rows, "Query should return no rows for invalid vehicle number");
    }

    public function testCustomerDetailsDisplay()
    {
        $_GET['vehicleno'] = 'kl4434'; 

        ob_start();
        include 'C:\xampp\htdocs\vs code Tire\Customerdrecall.php'; 
        $output = ob_get_clean();

        $this->assertStringContainsString('Vehicle no:', $output, "Output should contain vehicle number");
        $this->assertStringContainsString('Customer name:', $output, "Output should contain customer name");
        $this->assertStringContainsString('Customer address:', $output, "Output should contain customer address");
        $this->assertStringContainsString('Contact number:', $output, "Output should contain contact number");
    }
}
