/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author user
 */
public class StudentManagementFrame extends javax.swing.JFrame {

    /**
     * Creates new form MainMenu
     */
    public StudentManagementFrame() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jEditorPane1 = new javax.swing.JEditorPane();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtSTUDENTID = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        txtFIRSTN = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        txtLASTN = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txtADDRESS = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtEMAIL = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        txtPHONEN = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        txtCLASSID = new javax.swing.JTextField();
        btnADDSTUDENT = new javax.swing.JButton();
        btnUPDATESTUDENT = new javax.swing.JButton();
        btnDELETESTUDENT = new javax.swing.JButton();
        btnBACKMAINMENU = new javax.swing.JButton();
        btnVIEWSTUDENT1 = new javax.swing.JButton();

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        jScrollPane1.setViewportView(jEditorPane1);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Arial Black", 1, 24)); // NOI18N
        jLabel1.setText("     STUDENT MANAGEMENT ");
        jLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 26, 440, -1));

        jLabel2.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel2.setText("Student Id:");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 105, 144, 28));
        jPanel1.add(txtSTUDENTID, new org.netbeans.lib.awtextra.AbsoluteConstraints(189, 105, 290, -1));

        jLabel3.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel3.setText("First Name:");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 139, 144, 28));
        jPanel1.add(txtFIRSTN, new org.netbeans.lib.awtextra.AbsoluteConstraints(189, 139, 290, -1));

        jLabel4.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel4.setText("Last Name");
        jPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 173, 144, 28));
        jPanel1.add(txtLASTN, new org.netbeans.lib.awtextra.AbsoluteConstraints(189, 173, 290, -1));

        jLabel5.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel5.setText("Address:");
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 207, 144, 28));
        jPanel1.add(txtADDRESS, new org.netbeans.lib.awtextra.AbsoluteConstraints(189, 207, 290, -1));

        jLabel6.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel6.setText("Email:");
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 241, 144, 28));
        jPanel1.add(txtEMAIL, new org.netbeans.lib.awtextra.AbsoluteConstraints(189, 241, 290, -1));

        jLabel7.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel7.setText("Phone Number:");
        jPanel1.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 275, 144, 28));
        jPanel1.add(txtPHONEN, new org.netbeans.lib.awtextra.AbsoluteConstraints(189, 275, 290, -1));

        jLabel8.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel8.setText("Class Id:");
        jPanel1.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 309, 144, 28));

        txtCLASSID.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCLASSIDActionPerformed(evt);
            }
        });
        jPanel1.add(txtCLASSID, new org.netbeans.lib.awtextra.AbsoluteConstraints(189, 309, 290, -1));

        btnADDSTUDENT.setBackground(new java.awt.Color(255, 255, 255));
        btnADDSTUDENT.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        btnADDSTUDENT.setText("Add Student");
        btnADDSTUDENT.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btnADDSTUDENT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnADDSTUDENTActionPerformed(evt);
            }
        });
        jPanel1.add(btnADDSTUDENT, new org.netbeans.lib.awtextra.AbsoluteConstraints(39, 355, 100, -1));

        btnUPDATESTUDENT.setBackground(new java.awt.Color(255, 255, 255));
        btnUPDATESTUDENT.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        btnUPDATESTUDENT.setText("Update Student");
        btnUPDATESTUDENT.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btnUPDATESTUDENT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUPDATESTUDENTActionPerformed(evt);
            }
        });
        jPanel1.add(btnUPDATESTUDENT, new org.netbeans.lib.awtextra.AbsoluteConstraints(151, 355, 100, -1));

        btnDELETESTUDENT.setBackground(new java.awt.Color(255, 255, 255));
        btnDELETESTUDENT.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        btnDELETESTUDENT.setText("Delete Student");
        btnDELETESTUDENT.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btnDELETESTUDENT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDELETESTUDENTActionPerformed(evt);
            }
        });
        jPanel1.add(btnDELETESTUDENT, new org.netbeans.lib.awtextra.AbsoluteConstraints(263, 355, 100, -1));

        btnBACKMAINMENU.setBackground(new java.awt.Color(255, 255, 255));
        btnBACKMAINMENU.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        btnBACKMAINMENU.setText("<--- Back");
        btnBACKMAINMENU.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btnBACKMAINMENU.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBACKMAINMENUActionPerformed(evt);
            }
        });
        jPanel1.add(btnBACKMAINMENU, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 80, 100, -1));

        btnVIEWSTUDENT1.setBackground(new java.awt.Color(255, 255, 255));
        btnVIEWSTUDENT1.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        btnVIEWSTUDENT1.setText("View Students");
        btnVIEWSTUDENT1.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        btnVIEWSTUDENT1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnVIEWSTUDENT1ActionPerformed(evt);
            }
        });
        jPanel1.add(btnVIEWSTUDENT1, new org.netbeans.lib.awtextra.AbsoluteConstraints(375, 355, 100, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 535, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 409, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtCLASSIDActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCLASSIDActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCLASSIDActionPerformed

    private void btnADDSTUDENTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnADDSTUDENTActionPerformed
        // TODO add your handling code here:
        String StudentId = txtSTUDENTID.getText();
        String firstName = txtFIRSTN.getText();
        String lastName = txtLASTN.getText();
        String address = txtADDRESS.getText();
        String email = txtEMAIL.getText();
        String phoneNumber = txtPHONEN.getText();
        String ClassId = txtCLASSID.getText();
        
        try {
            Connection conn = DB.getConnection();
            String query = "INSERT INTO students (first_name, last_name, address, email, phone_number, class_id) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, address);
            stmt.setString(4, email);
            stmt.setString(5, phoneNumber);
            stmt.setString(6, ClassId);
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Student Added Successfully");
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println(ex);
            JOptionPane.showMessageDialog(null, "Error adding Student");
        }
    
    }//GEN-LAST:event_btnADDSTUDENTActionPerformed

    private void btnUPDATESTUDENTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUPDATESTUDENTActionPerformed
        // TODO add your handling code here:
         if (txtSTUDENTID.getText().trim().isEmpty()) {
        JOptionPane.showMessageDialog(null, "Student ID is required");
        return;
    }
         int StudentId = Integer.parseInt(txtSTUDENTID.getText());
        String firstName = txtFIRSTN.getText();
        String lastName = txtLASTN.getText();
        String address = txtADDRESS.getText();
        String email = txtEMAIL.getText();
        String phoneNumber = txtPHONEN.getText();
        int ClassId = Integer.parseInt(txtCLASSID.getText());
        
        try {
            Connection conn = DB.getConnection();
            String query = "UPDATE students SET first_name = ?, last_name = ?, address = ?, email = ?, phone_number = ?, class_id = ? WHERE student_id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, address);
            stmt.setString(4, email);
            stmt.setString(5, phoneNumber);
            stmt.setInt(6, ClassId);
            stmt.setInt(7, StudentId);
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Student Updated Successfully");
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println(ex);
            JOptionPane.showMessageDialog(null, "Error updating Student");
        }
    }//GEN-LAST:event_btnUPDATESTUDENTActionPerformed

    private void btnDELETESTUDENTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDELETESTUDENTActionPerformed
        // TODO add your handling code here:
          if (txtSTUDENTID.getText().trim().isEmpty()) {
        JOptionPane.showMessageDialog(null, "Student ID is required");
        return;
    }
        int StudentId = Integer.parseInt(txtSTUDENTID.getText());
        
        try {
            Connection conn = DB.getConnection();
            String query = "DELETE FROM students WHERE student_id ="+StudentId;
           // PreparedStatement stmt = conn.prepareStatement(query);
           Statement stmt = conn.createStatement();
           // stmt.setInt(1, StudentId);
            stmt.executeUpdate(query);
            JOptionPane.showMessageDialog(null, "Student Deleted Successfully");
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println(ex);
            JOptionPane.showMessageDialog(null, "Error deleting Student");
        }
    }//GEN-LAST:event_btnDELETESTUDENTActionPerformed

    private void btnVIEWSTUDENT1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVIEWSTUDENT1ActionPerformed
        // TODO add your handling code here:
        this.dispose();
        new ViewStudent().setVisible(true);
        
    }//GEN-LAST:event_btnVIEWSTUDENT1ActionPerformed

    private void btnBACKMAINMENUActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBACKMAINMENUActionPerformed
        // TODO add your handling code here:
        DB obj = new DB();
        obj.returningToMainMenu();
        this.dispose();
    }//GEN-LAST:event_btnBACKMAINMENUActionPerformed

    /**
     * @param args the command line arguments
     */

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnADDSTUDENT;
    private javax.swing.JButton btnBACKMAINMENU;
    private javax.swing.JButton btnDELETESTUDENT;
    private javax.swing.JButton btnUPDATESTUDENT;
    private javax.swing.JButton btnVIEWSTUDENT1;
    private javax.swing.JEditorPane jEditorPane1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField txtADDRESS;
    private javax.swing.JTextField txtCLASSID;
    private javax.swing.JTextField txtEMAIL;
    private javax.swing.JTextField txtFIRSTN;
    private javax.swing.JTextField txtLASTN;
    private javax.swing.JTextField txtPHONEN;
    private javax.swing.JTextField txtSTUDENTID;
    // End of variables declaration//GEN-END:variables
}
