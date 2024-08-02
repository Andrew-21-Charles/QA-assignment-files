it('Google Search',() => {
    cy.visit('http://localhost/vs%20code%20Tire/Wheel%20Alignment%20&%20Tire%20Works.html')
    cy.get('[href="alignmentbook.php"]').click()
    cy.get('#date').type('2024-08-03')
    cy.get('.content > form > [type="submit"]').click()
    cy.get('#slot').select('09.00a.m-10.00a.m')
    cy.get('#vehicleno').type("UB-5434")
    cy.get('[method="post"] > [type="submit"]').click()

})