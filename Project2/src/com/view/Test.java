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
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.PopupMenu;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.swing.AbstractButton;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.Timer;
import javax.swing.border.BevelBorder;
import javax.swing.border.LineBorder;
import javax.swing.colorchooser.AbstractColorChooserPanel;

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
    public JPanel jPanel1[] = new JPanel[20];
    public JPanel jPanel2[] = new JPanel[20];
    public JTextArea jTex[] = new JTextArea[20];
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

        jButton4.setBackground(Color.BLACK);
        jButton4.setFont(new Font("Dialog", Font.PLAIN, 20));
        jButton4.setForeground(Color.WHITE);
        jButton5.setBackground(Color.BLACK);
        jButton5.setFont(new Font("Dialog", Font.PLAIN, 20));
        jButton5.setForeground(Color.WHITE);
        jButton6.setBackground(Color.BLACK);
        jButton6.setFont(new Font("Dialog", Font.PLAIN, 20));
        jButton6.setForeground(Color.WHITE);
        jButton7.setBackground(Color.BLACK);
        jButton7.setFont(new Font("Dialog", Font.PLAIN, 20));
        jButton7.setForeground(Color.WHITE);
        
        
        this.setLayout(new GridBagLayout());
        GridBagConstraints constraints = new GridBagConstraints();
        JPanel jPanelnp = new JPanel();
        jPanelnp.setLayout(new BoxLayout(jPanelnp, BoxLayout.LINE_AXIS));
        jPanelnp.setBorder(new LineBorder(Color.BLACK, 1));
        JPanel jPaneltime = null;
        jPaneltime = new JPanel(new GridBagLayout());
        jPaneltime.setBorder(new LineBorder(Color.BLACK, 1));
        GridBagConstraints constraints1 = new GridBagConstraints();
        JPanel jPanelclock = new JPanel(new FlowLayout());
        jPanelnp.add(jButton1);
        jPanelnp.add(Box.createHorizontalGlue());
        jPanelnp.add(Box.createRigidArea(new Dimension(1000, 0)));
        jPanelnp.add(jButton2);
        constraints1.gridx = 0;
        constraints1.gridy = 0;
        jPaneltime.add(labeltg, constraints1);
        constraints1.gridx = 0;
        constraints1.gridy = 1;
        constraints1.insets = new Insets(0, 0, 230, 0);
        jPanelclock.add(jButton4);
        jPanelclock.add(jButton5);
        jPanelclock.add(jButton6);
        jPanelclock.add(jButton7);
        jPaneltime.add(jPanelclock, constraints1);

        constraints1.gridx = 0;
        constraints1.gridy = 2;
        jPaneltime.add(jButton3, constraints1);
        constraints.gridx = 0;
        constraints.gridy = 0;

        this.add(jPanelnp, constraints);
        constraints.gridx = 1;
        constraints.gridy = 1;
        this.add(jPaneltime, constraints);
        String cateid = System.getProperty("cateid");
        listques = a.CategoryTest(Integer.parseInt(cateid));
        this.setSize(1366, 768);

        thoigian();

        int j = 0;
        for (int i = 0; i < jTex.length; i++) {

            lisanswer = b.getanswer(listques.get(i).getQuestionID());

            JPanel jp = new JPanel(new GridLayout(1, 2));

            JTextArea jtexx = new JTextArea();
            JLabel jLabel1 = new JLabel();

            jtexx.setText(listques.get(i).getQuestionDetail());
            Images link = imageForTest.getImage(listques.get(i).getQuestionID());
            if (link == null) {
                jLabel1.setText("");
            } else {
                jLabel1.setIcon(new ImageIcon(link.getImageLinks()));
                jLabel1.setHorizontalAlignment(JLabel.CENTER);
            }
            jTex[i] = jtexx;
            labels1[i] = jLabel1;
            jTex[i].setLineWrap(true);
            jTex[i].setEditable(false);
            jp.add(jTex[i]);
            jp.add(labels1[i]);
            JPanel jp1 = new JPanel(new GridLayout(4, 2));
            JRadioButton jRadioButton1 = new JRadioButton();
            ButtonGroup bg = new ButtonGroup();

            jRadioButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
            //jRadioButton1.setHorizontalAlignment(JRadioButton.CENTER);
            jp1.add(jRadioButton1);

            jRadioButton[j] = jRadioButton1;

            bg.add(jRadioButton[j]);

            jRadioButton1.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));

                    }
                    jRadioButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
                    jRadioButton1.setSelected(true);
                }
            });

            JTextArea jTextArea = new JTextArea(lisanswer.get(j).getAnswerDetail());
            jTextArea.setName(j + "");
            jTextArea.addFocusListener(new FocusAdapter() {
                @Override
                public void focusGained(FocusEvent e) {
                    JTextArea txt = (JTextArea) e.getComponent();
//                    super.focusGained(e); //To change body of generated methods, choose Tools | Templates.
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
                    }
                    jRadioButton[Integer.parseInt(txt.getName())].setIcon(new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
                    jRadioButton[Integer.parseInt(txt.getName())].setSelected(true);
                }

            });
            jTextArea.setLineWrap(true);
            jTextArea.setEditable(false);
            jp1.add(jTextArea);

            JRadioButton jRadioButton2 = new JRadioButton();
            jRadioButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
            jp1.add(jRadioButton2);
            jRadioButton[j + 1] = jRadioButton2;
            bg.add(jRadioButton[j + 1]);
            jRadioButton2.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
                    }
                    jRadioButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
                    jRadioButton2.setSelected(true);
                }
            });

            JTextArea jTextArea1 = new JTextArea(lisanswer.get(j + 1).getAnswerDetail());
            jTextArea1.setName((j + 1) + "");
            jTextArea1.addFocusListener(new FocusAdapter() {
                @Override
                public void focusGained(FocusEvent e) {
                    JTextArea txt = (JTextArea) e.getComponent();
//                    super.focusGained(e); //To change body of generated methods, choose Tools | Templates.
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
                    }
                    jRadioButton[Integer.parseInt(txt.getName())].setIcon(new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
                    jRadioButton[Integer.parseInt(txt.getName())].setSelected(true);
                }

            });
            jTextArea1.setLineWrap(true);
            jTextArea1.setEditable(false);
            jp1.add(jTextArea1);

            JRadioButton jRadioButton3 = new JRadioButton();
            jRadioButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
            jp1.add(jRadioButton3);
            jRadioButton[j + 2] = jRadioButton3;
            bg.add(jRadioButton[j + 2]);
            jRadioButton3.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
                    }
                    jRadioButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
                    jRadioButton3.setSelected(true);
                }
            });

            JTextArea jTextArea2 = new JTextArea(lisanswer.get(j + 2).getAnswerDetail());
            jTextArea2.setName((j + 2) + "");
            jTextArea2.addFocusListener(new FocusAdapter() {
                @Override
                public void focusGained(FocusEvent e) {
                    JTextArea txt = (JTextArea) e.getComponent();
//                    super.focusGained(e); //To change body of generated methods, choose Tools | Templates.
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
                    }
                    jRadioButton[Integer.parseInt(txt.getName())].setIcon(new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
                    jRadioButton[Integer.parseInt(txt.getName())].setSelected(true);
                }

            });
            jTextArea2.setLineWrap(true);
            jTextArea2.setEditable(false);
            jp1.add(jTextArea2);

            JRadioButton jRadioButton4 = new JRadioButton();
            jRadioButton4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
            jp1.add(jRadioButton4);
            jRadioButton[j + 3] = jRadioButton4;
            bg.add(jRadioButton[j + 3]);
            jRadioButton4.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
                    }
                    jRadioButton4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
                    jRadioButton4.setSelected(true);
                }
            });

            JTextArea jTextArea3 = new JTextArea(lisanswer.get(j + 3).getAnswerDetail());
            jTextArea3.setName((j + 3) + "");
            jTextArea3.addFocusListener(new FocusAdapter() {
                @Override
                public void focusGained(FocusEvent e) {
                    JTextArea txt = (JTextArea) e.getComponent();
//                    super.focusGained(e); //To change body of generated methods, choose Tools | Templates.
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/unselected.png")));
                    }
                    jRadioButton[Integer.parseInt(txt.getName())].setIcon(new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
                    jRadioButton[Integer.parseInt(txt.getName())].setSelected(true);
                }

            });
            jTextArea3.setLineWrap(true);
            jTextArea3.setEditable(false);
            jp1.add(jTextArea3);
            buttonGroup[i] = bg;

//            jp.add(jRadioButton[j]);
//
//            jp.add(jRadioButton[j + 1]);
//            jp.add(jRadioButton[j + 2]);
//
//            jp.add(jRadioButton[j + 3]);
            jPanel1[i] = jp;
            jPanel2[i] = jp1;
            JPanel jpmain = new JPanel(new GridLayout(2, 1));
            jPanel[i] = jpmain;
            jPanel[i].add(jp);
            jPanel[i].add(jp1);
            jTabbedPane1.add("Câu " + (i + 1), jPanel[i]);
            jTabbedPane1.setIconAt(i, new javax.swing.ImageIcon(getClass().getResource("/selected.png")));
            j = j + 4;
        }
        constraints.gridx = 0;
        constraints.gridy = 1;
        this.add(jTabbedPane1, constraints);
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
                        jButton4.setText((phut + 1) / 10 + "");
                        jButton5.setText((phut + 1) % 10 + "");
                        jButton6.setText("0");
                        jButton7.setText("0");
//                        lbTime.setText((phut + 1) + " phút:" + "00 giây");

                    } else {
                        jButton4.setText(phut / 10 + "");
                        jButton5.setText(phut % 10 + "");
                        jButton6.setText(giay / 10 + "");
                        jButton7.setText(giay % 10 + "");
//                        lbTime.setText(phut + " phút:" + giay + " giây");
                    }
                } else if (phut == 0) {
                    jButton4.setVisible(false);
                    jButton5.setVisible(false);
                    jButton6.setText(giay / 10 + "");
                    jButton7.setText(giay % 10 + "");
//                    lbTime.setText(giay + " giây");
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
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(1366, 768));
        setResizable(false);

        labeltg.setFont(new java.awt.Font("Times New Roman", 0, 24)); // NOI18N
        labeltg.setText("Thời gian:");

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

        jTabbedPane1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        jTabbedPane1.setTabLayoutPolicy(javax.swing.JTabbedPane.SCROLL_TAB_LAYOUT);
        jTabbedPane1.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jTabbedPane1StateChanged(evt);
            }
        });

        jButton6.setText("jButton6");

        jButton7.setText("jButton7");

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
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(69, 69, 69)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(labeltg)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(16, 16, 16)
                        .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton6)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton7)))
                .addGap(489, 489, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(labeltg))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(51, 51, 51)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(jButton4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jButton7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(26, 26, 26)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 421, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(154, Short.MAX_VALUE))
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

    private void jTabbedPane1StateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jTabbedPane1StateChanged
        index = jTabbedPane1.getSelectedIndex();
    }//GEN-LAST:event_jTabbedPane1StateChanged
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
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel labeltg;
    // End of variables declaration//GEN-END:variables
}
