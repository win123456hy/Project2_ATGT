/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.view;

import javax.swing.ImageIcon;

/**
 *
 * @author 84968
 */
public class LearnLaw extends javax.swing.JFrame {

    /**
     * Creates new form LearnLaw
     */
    public LearnLaw() {
        initComponents();
        this.setSize(1366,768);
        back_hocluat.setIcon(new ImageIcon("Images/Back.png"));
        luatduongbo.setIcon(new ImageIcon("Images/LuatDuongBo.png"));
        xe2banh.setIcon(new ImageIcon("Images/Xe2Banh.png"));
        xe4banh.setIcon(new ImageIcon("Images/Xe4Banh.png"));
        luatduongsat.setIcon(new ImageIcon("Images/LuatDuongSat.png"));
        luatduongthuy.setIcon(new ImageIcon("Images/LuatDuongThuy.png"));
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jMenu1 = new javax.swing.JMenu();
        back_hocluat = new javax.swing.JLabel();
        luatduongbo = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel8 = new javax.swing.JLabel();
        xe2banh = new javax.swing.JLabel();
        xe4banh = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        luatduongsat = new javax.swing.JLabel();
        luatduongthuy = new javax.swing.JLabel();

        jMenu1.setText("jMenu1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new java.awt.GridLayout(6, 5));

        back_hocluat.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        back_hocluat.setAlignmentX(0.5F);
        back_hocluat.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        back_hocluat.setDebugGraphicsOptions(javax.swing.DebugGraphics.LOG_OPTION);
        back_hocluat.setHorizontalTextPosition(javax.swing.SwingConstants.LEFT);
        back_hocluat.setName(""); // NOI18N
        back_hocluat.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                back_hocluatMouseClicked(evt);
            }
        });
        getContentPane().add(back_hocluat);

        luatduongbo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(luatduongbo);

        jPanel3.setLayout(new java.awt.GridLayout(1, 4));
        jPanel3.add(jLabel8);

        xe2banh.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        xe2banh.setDebugGraphicsOptions(javax.swing.DebugGraphics.NONE_OPTION);
        xe2banh.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        xe2banh.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                xe2banhMouseClicked(evt);
            }
        });
        jPanel3.add(xe2banh);

        xe4banh.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        xe4banh.setDebugGraphicsOptions(javax.swing.DebugGraphics.NONE_OPTION);
        xe4banh.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        xe4banh.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                xe4banhMouseClicked(evt);
            }
        });
        jPanel3.add(xe4banh);
        jPanel3.add(jLabel7);

        getContentPane().add(jPanel3);

        luatduongsat.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        luatduongsat.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                luatduongsatMouseClicked(evt);
            }
        });
        getContentPane().add(luatduongsat);

        luatduongthuy.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        luatduongthuy.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                luatduongthuyMouseClicked(evt);
            }
        });
        getContentPane().add(luatduongthuy);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void back_hocluatMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_back_hocluatMouseClicked
        Home lo = new Home();
            lo.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_back_hocluatMouseClicked

    private void xe2banhMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_xe2banhMouseClicked
        LuatXe2Banh xe2 = new LuatXe2Banh();
            xe2.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_xe2banhMouseClicked

    private void xe4banhMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_xe4banhMouseClicked
        LuatXe4Banh xe4 = new LuatXe4Banh();
            xe4.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_xe4banhMouseClicked

    private void luatduongsatMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_luatduongsatMouseClicked
        LuatDuongSat la = new LuatDuongSat();
            la.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_luatduongsatMouseClicked

    private void luatduongthuyMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_luatduongthuyMouseClicked
        LuatDuongThuy lu = new LuatDuongThuy();
            lu.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_luatduongthuyMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(LearnLaw.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(LearnLaw.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(LearnLaw.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(LearnLaw.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new LearnLaw().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel back_hocluat;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JLabel luatduongbo;
    private javax.swing.JLabel luatduongsat;
    private javax.swing.JLabel luatduongthuy;
    private javax.swing.JLabel xe2banh;
    private javax.swing.JLabel xe4banh;
    // End of variables declaration//GEN-END:variables
}
