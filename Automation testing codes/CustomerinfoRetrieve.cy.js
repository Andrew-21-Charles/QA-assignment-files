it('Google Search',() => {
    cy.visit('http://localhost/vs%20code%20Tire/Wheel%20Alignment%20&%20Tire%20Works.html')
    cy.get('[href="customerDetails.php"]').click()
    cy.get('[href="customerdrecall.php"]').click()
    cy.get('#vehicleno').type('KL-4434')
    cy.get('[type="submit"]').click()

})