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
public class HocBienBao extends javax.swing.JFrame {

    /**
     * Creates new form LearnLaw
     */
    public HocBienBao() {
        initComponents();
        this.setSize(1366,768);
        back_hocluat.setIcon(new ImageIcon("Images/Back.png"));
        bienbaocam.setIcon(new ImageIcon("Images/BienBaoCam.png"));
        bienbaochidan.setIcon(new ImageIcon("Images/BienBaoChiDan.png"));
        bienbaohieulenh.setIcon(new ImageIcon("Images/BienBaoHieuLenh.png"));
        bienbaonguyhiem.setIcon(new ImageIcon("Images/BienBaoNguyHiem.png"));
        
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
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        back_hocluat = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        bienbaocam = new javax.swing.JLabel();
        bienbaochidan = new javax.swing.JLabel();
        bienbaohieulenh = new javax.swing.JLabel();
        bienbaonguyhiem = new javax.swing.JLabel();

        jMenu1.setText("jMenu1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new java.awt.GridLayout(6, 5));

        jPanel1.setLayout(new java.awt.GridLayout(1, 2));

        jPanel2.setLayout(new java.awt.GridLayout(1, 4));

        back_hocluat.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        back_hocluat.setIcon(new javax.swing.ImageIcon("D:\\Github\\Project2_ATGT\\Project2\\Images\\Back.png")); // NOI18N
        back_hocluat.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                back_hocluatMouseClicked(evt);
            }
        });
        jPanel2.add(back_hocluat);
        jPanel2.add(jLabel4);
        jPanel2.add(jLabel5);
        jPanel2.add(jLabel3);

        jPanel1.add(jPanel2);
        jPanel1.add(jLabel1);

        getContentPane().add(jPanel1);

        bienbaocam.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        bienbaocam.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                bienbaocamMouseClicked(evt);
            }
        });
        getContentPane().add(bienbaocam);

        bienbaochidan.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        bienbaochidan.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                bienbaochidanMouseClicked(evt);
            }
        });
        getContentPane().add(bienbaochidan);

        bienbaohieulenh.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        bienbaohieulenh.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                bienbaohieulenhMouseClicked(evt);
            }
        });
        getContentPane().add(bienbaohieulenh);

        bienbaonguyhiem.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        bienbaonguyhiem.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        bienbaonguyhiem.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                bienbaonguyhiemMouseClicked(evt);
            }
        });
        getContentPane().add(bienbaonguyhiem);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void bienbaochidanMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_bienbaochidanMouseClicked
        System.setProperty("catetraffic", "7");
        ShowTraffic la = new ShowTraffic();
            la.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_bienbaochidanMouseClicked

    private void bienbaohieulenhMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_bienbaohieulenhMouseClicked
        System.setProperty("catetraffic", "8");
        ShowTraffic lu = new ShowTraffic();
            lu.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_bienbaohieulenhMouseClicked

    private void bienbaocamMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_bienbaocamMouseClicked
       System.setProperty("catetraffic", "6");
        ShowTraffic lu = new ShowTraffic();
             lu.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_bienbaocamMouseClicked

    private void back_hocluatMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_back_hocluatMouseClicked
         Home lo = new Home();
            lo.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_back_hocluatMouseClicked

    private void bienbaonguyhiemMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_bienbaonguyhiemMouseClicked
        System.setProperty("catetraffic", "9");
        ShowTraffic lu = new ShowTraffic();
             lu.setVisible(true);
              this.dispose();
    }//GEN-LAST:event_bienbaonguyhiemMouseClicked

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
            java.util.logging.Logger.getLogger(HocBienBao.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(HocBienBao.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(HocBienBao.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(HocBienBao.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new HocBienBao().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel back_hocluat;
    private javax.swing.JLabel bienbaocam;
    private javax.swing.JLabel bienbaochidan;
    private javax.swing.JLabel bienbaohieulenh;
    private javax.swing.JLabel bienbaonguyhiem;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
}