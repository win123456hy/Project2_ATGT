/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.view;

import com.dao.getAnswerforTest;
import com.dao.getExam;
import com.dao.getImageForTest;
import com.dao.getQuesforTest;
import com.dao.setAnsweredforTest;
import com.dao.setExam;
import com.model.Answers;
import com.model.Exams;
import com.model.Images;
import com.model.Question;
import com.model.Users;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.PopupMenu;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTabbedPane;
import javax.swing.Timer;

/**
 *
 * @author Admin
 */
public class Test extends javax.swing.JFrame {

    /**
     * Creates new form Test
     */
    private Timer time;
    private int giay = 60;
    private int phut = 44;
    private int index = 0;
    public JPanel jPanel[] = new JPanel[20];
    public JLabel labels[] = new JLabel[20];
    public JLabel labels1[] = new JLabel[20];
    public JRadioButton jRadioButton[] = new JRadioButton[80];
    public ButtonGroup buttonGroup[] = new ButtonGroup[20];
    public getQuesforTest a = new getQuesforTest();
    public getAnswerforTest b = new getAnswerforTest();
    public ArrayList<Question> listques;
    public ArrayList<Answers> lisanswer;
    public setAnsweredforTest answeredforTest = new setAnsweredforTest();
    public getImageForTest imageForTest = new getImageForTest();

    public Test() {

        initComponents();
        String cateid = System.getProperty("cateid");
        listques = a.CategoryTest(Integer.parseInt(cateid));
        this.setSize(1366, 768);

        thoigian();

        GridBagConstraints constraints = new GridBagConstraints();
        int j = 0;
        for (int i = 0; i < labels.length; i++) {
            lisanswer = b.getanswer(listques.get(i).getQuestionID());

            JPanel jp = new JPanel(new GridBagLayout());

            JLabel jLabel = new JLabel();
            JLabel jLabel1 = new JLabel();
            JRadioButton jRadioButton1 = new JRadioButton();
            JRadioButton jRadioButton2 = new JRadioButton();
            JRadioButton jRadioButton3 = new JRadioButton();
            JRadioButton jRadioButton4 = new JRadioButton();
            ButtonGroup bg = new ButtonGroup();

            jRadioButton1.setText(lisanswer.get(j).getAnswerDetail());
            jRadioButton2.setText(lisanswer.get(j + 1).getAnswerDetail());
            jRadioButton3.setText(lisanswer.get(j + 2).getAnswerDetail());
            jRadioButton4.setText(lisanswer.get(j + 3).getAnswerDetail());
            jRadioButton[j] = jRadioButton1;
            jRadioButton[j + 1] = jRadioButton2;
            jRadioButton[j + 2] = jRadioButton3;
            jRadioButton[j + 3] = jRadioButton4;

            bg.add(jRadioButton[j]);
            bg.add(jRadioButton[j + 1]);
            bg.add(jRadioButton[j + 2]);
            bg.add(jRadioButton[j + 3]);

            buttonGroup[i] = bg;
            constraints.gridx = 0;
            constraints.gridy = 0;
            jLabel.setText(listques.get(i).getQuestionDetail());
            Images link = imageForTest.getImage(listques.get(i).getQuestionID());
            if (link == null) {
                jLabel1.setText("");
            } else {
                jLabel1.setIcon(new ImageIcon(link.getImageLinks()));
            }
            labels[i] = jLabel;
            labels1[i] = jLabel1;

            jp.add(labels[i], constraints);
            constraints.gridx = 0;
            constraints.gridy = 1;
            jp.add(new JLabel("                                                                                "), constraints);
            constraints.gridx = 0;
            constraints.gridy = 2;
            jp.add(labels1[i], constraints);
            constraints.gridx = 0;
            constraints.gridy = 3;
            constraints.anchor = GridBagConstraints.WEST;
            jp.add(jRadioButton[j], constraints);
            constraints.gridx = 0;
            constraints.gridy = 4;
            constraints.anchor = GridBagConstraints.WEST;
            jp.add(jRadioButton[j + 1], constraints);
            constraints.gridx = 0;
            constraints.gridy = 5;
            constraints.anchor = GridBagConstraints.WEST;
            jp.add(jRadioButton[j + 2], constraints);
            constraints.gridx = 0;
            constraints.gridy = 6;
            constraints.anchor = GridBagConstraints.WEST;
            jp.add(jRadioButton[j + 3], constraints);
            jPanel[i] = jp;
            jTabbedPane1.add("Câu " + (i + 1), jPanel[i]);
            j = j + 4;
        }

    }

    public void thoigian() {
        time = new Timer(1000, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                giay--;

                if (phut > 0) {
                    if (giay == 0) {
                        giay = 60;
                        phut--;
                    }
                    if (giay == 60) {
                        lbTime.setText((phut + 1) + " phút:" + "00 giây");
                    } else {
                        lbTime.setText(phut + " phút:" + giay + " giây");
                    }
                } else if (phut == 0) {
                    lbTime.setText(giay + " giây");
                }

                if (phut == 0 && giay == 0) {
                    time.stop();
                    Nopbai();
                }
            }
        });
        time.start();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        labeltg = new javax.swing.JLabel();
        lbTime = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jTabbedPane1 = new javax.swing.JTabbedPane();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(1366, 768));
        setResizable(false);

        labeltg.setFont(new java.awt.Font("Times New Roman", 0, 24)); // NOI18N
        labeltg.setText("Thời gian:");

        lbTime.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        lbTime.setText("jLabel4");

        jButton1.setText("Previous");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Next");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setFont(new java.awt.Font("Times New Roman", 0, 24)); // NOI18N
        jButton3.setText("Nộp bài");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jTabbedPane1.setTabLayoutPolicy(javax.swing.JTabbedPane.SCROLL_TAB_LAYOUT);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(83, 83, 83)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(860, 860, 860)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 1091, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(69, 69, 69)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lbTime)
                    .addComponent(labeltg)
                    .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(365, 559, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(labeltg))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(lbTime)
                        .addGap(77, 77, 77)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 530, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(45, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        index++;
        if (index > 19) {
            index = 0;
        }
        jTabbedPane1.setSelectedIndex(index);
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        index--;
        if (index < 0) {
            index = 19;
        }
        jTabbedPane1.setSelectedIndex(index);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        Nopbai();
        time.stop();
    }//GEN-LAST:event_jButton3ActionPerformed
    public void Nopbai() {
        setExam sete = new setExam();
        String usid = System.getProperty("userid");
        sete.createExam(Integer.parseInt(usid));
        getExam gete = new getExam();
        Exams exa = gete.getExamx(Integer.parseInt(usid));

        for (int i = 0; i < jRadioButton.length; i++) {
            if (jRadioButton[i].isSelected()) {
                if (i < 4) {
                    answeredforTest.Answered(exa.getExamID(), listques.get(0).getQuestionID(), lisanswer.get(i).getAnswerID());
                } else {
                    answeredforTest.Answered(exa.getExamID(), listques.get(i / 4).getQuestionID(), lisanswer.get(i).getAnswerID());
                }
            }
        }
        System.setProperty("time", phut + " phút " + giay + " giây");
        ResultTest rs = new ResultTest();
        rs.setVisible(true);
        this.dispose();
    }

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
            java.util.logging.Logger.getLogger(Test.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Test.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Test.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Test.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {

                Test t = new Test();
                t.setVisible(true);

            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel labeltg;
    private javax.swing.JLabel lbTime;
    // End of variables declaration//GEN-END:variables
}
