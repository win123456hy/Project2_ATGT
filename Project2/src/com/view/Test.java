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
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.swing.AbstractButton;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextArea;
import javax.swing.Timer;
import javax.swing.border.LineBorder;

/**
 *
 * @author Admin
 */
public class Test extends javax.swing.JFrame {

    /**
     * Creates new form Test
     */
       class MouseEv extends MouseAdapter {
        int idd;
        public MouseEv() {
            super();
        }

        public void mouseClicked(MouseEvent evt) {
              JDialog dialog = new JDialog();
              dialog.setPreferredSize(new Dimension(1000, 500));
            dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
            dialog.setTitle("Chữ to");
            JLabel jLabelto = new JLabel(jTex[idd].getText());
            jLabelto.setFont(new Font("aa", Font.BOLD, 30));
             dialog.add(jLabelto);
            
            dialog.pack();
            dialog.setLocationRelativeTo(null);
            dialog.setVisible(true);
        }

        public void setid(int id) {
            idd=id;
        }

    }
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
        this.setSize(1366, 768);
        thoigian();
         MouseEv mouseEv = null;
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
        lbprevious.setIcon(new ImageIcon("Images/previous.png"));
        lbnext.setIcon(new ImageIcon("Images/next.png"));
        lbnopbai.setIcon(new ImageIcon("Images/nopbai.png"));

        this.setLayout(new GridBagLayout());
        GridBagConstraints constraints = new GridBagConstraints();
        JPanel jPanelnp = new JPanel();

        jPanelnp.setLayout(new BoxLayout(jPanelnp, BoxLayout.LINE_AXIS));

        constraints.gridx = 0;
        constraints.gridy = 0;

        this.add(jPanelnp, constraints);

        String cateid = System.getProperty("cateid");
        listques = a.CategoryTest(Integer.parseInt(cateid));

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
             mouseEv = new MouseEv();
            mouseEv.setid(i);
            jTex[i].addMouseListener(mouseEv);
            jp.add(jTex[i]);
            jp.add(labels1[i]);
            JPanel jp1 = new JPanel(new GridLayout(4, 2));
            JRadioButton jRadioButton1 = new JRadioButton();
            ButtonGroup bg = new ButtonGroup();

            jRadioButton1.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
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
                        selectedRadio.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));

                    }
                    jRadioButton1.setIcon(new javax.swing.ImageIcon("Images/chon.png"));
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
                        selectedRadio.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
                    }
                    jRadioButton[Integer.parseInt(txt.getName())].setIcon(new javax.swing.ImageIcon("Images/chon.png"));
                    jRadioButton[Integer.parseInt(txt.getName())].setSelected(true);
                }

            });
            jTextArea.setLineWrap(true);
            jTextArea.setEditable(false);

            jp1.add(jTextArea);

            JRadioButton jRadioButton2 = new JRadioButton();
            jRadioButton2.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
            jp1.add(jRadioButton2);
            jRadioButton[j + 1] = jRadioButton2;
            bg.add(jRadioButton[j + 1]);
            jRadioButton2.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
                    }
                    jRadioButton2.setIcon(new javax.swing.ImageIcon("Images/chon.png"));
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
                        selectedRadio.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
                    }
                    jRadioButton[Integer.parseInt(txt.getName())].setIcon(new javax.swing.ImageIcon("Images/chon.png"));
                    jRadioButton[Integer.parseInt(txt.getName())].setSelected(true);
                }

            });
            jTextArea1.setLineWrap(true);
            jTextArea1.setEditable(false);
            ;
            jp1.add(jTextArea1);

            JRadioButton jRadioButton3 = new JRadioButton();
            jRadioButton3.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
            jp1.add(jRadioButton3);
            jRadioButton[j + 2] = jRadioButton3;
            bg.add(jRadioButton[j + 2]);
            jRadioButton3.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
                    }
                    jRadioButton3.setIcon(new javax.swing.ImageIcon("Images/chon.png"));
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
                        selectedRadio.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
                    }
                    jRadioButton[Integer.parseInt(txt.getName())].setIcon(new javax.swing.ImageIcon("Images/chon.png"));
                    jRadioButton[Integer.parseInt(txt.getName())].setSelected(true);
                }

            });
            jTextArea2.setLineWrap(true);
            jTextArea2.setEditable(false);

            jp1.add(jTextArea2);

            JRadioButton jRadioButton4 = new JRadioButton();
            jRadioButton4.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
            jp1.add(jRadioButton4);
            jRadioButton[j + 3] = jRadioButton4;
            bg.add(jRadioButton[j + 3]);
            jRadioButton4.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Enumeration<AbstractButton> elements = bg.getElements();
                    while (elements.hasMoreElements()) {
                        JRadioButton selectedRadio = (JRadioButton) elements.nextElement();
                        selectedRadio.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
                    }
                    jRadioButton4.setIcon(new javax.swing.ImageIcon("Images/chon.png"));
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
                        selectedRadio.setIcon(new javax.swing.ImageIcon("Images/bochon.png"));
                    }
                    jRadioButton[Integer.parseInt(txt.getName())].setIcon(new javax.swing.ImageIcon("Images/chon.png"));
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
            jPanel[i].setPreferredSize(new Dimension(900, 500));
            jTabbedPane1.add(jPanel[i]);

            j = j + 4;
        }
        jTabbedPane1.setIconAt(0, new javax.swing.ImageIcon("Images/1.png"));
        jTabbedPane1.setIconAt(1, new javax.swing.ImageIcon("Images/2.png"));
        jTabbedPane1.setIconAt(2, new javax.swing.ImageIcon("Images/3.png"));
        jTabbedPane1.setIconAt(3, new javax.swing.ImageIcon("Images/4.png"));
        jTabbedPane1.setIconAt(4, new javax.swing.ImageIcon("Images/5.png"));
        jTabbedPane1.setIconAt(5, new javax.swing.ImageIcon("Images/6.png"));
        jTabbedPane1.setIconAt(6, new javax.swing.ImageIcon("Images/7.png"));
        jTabbedPane1.setIconAt(7, new javax.swing.ImageIcon("Images/8.png"));
        jTabbedPane1.setIconAt(8, new javax.swing.ImageIcon("Images/9.png"));
        jTabbedPane1.setIconAt(9, new javax.swing.ImageIcon("Images/10.png"));
        jTabbedPane1.setIconAt(10, new javax.swing.ImageIcon("Images/11.png"));
        jTabbedPane1.setIconAt(11, new javax.swing.ImageIcon("Images/12.png"));
        jTabbedPane1.setIconAt(12, new javax.swing.ImageIcon("Images/13.png"));
        jTabbedPane1.setIconAt(13, new javax.swing.ImageIcon("Images/14.png"));
        jTabbedPane1.setIconAt(14, new javax.swing.ImageIcon("Images/15.png"));
        jTabbedPane1.setIconAt(15, new javax.swing.ImageIcon("Images/16.png"));
        jTabbedPane1.setIconAt(16, new javax.swing.ImageIcon("Images/17.png"));
        jTabbedPane1.setIconAt(17, new javax.swing.ImageIcon("Images/18.png"));
        jTabbedPane1.setIconAt(18, new javax.swing.ImageIcon("Images/19.png"));
        jTabbedPane1.setIconAt(19, new javax.swing.ImageIcon("Images/20.png"));

        constraints.gridx = 0;
        constraints.gridy = 1;
        this.add(jTabbedPane1, constraints);

        JPanel jPaneltime = null;
        jPaneltime = new JPanel(new GridBagLayout());
        jPaneltime.setBorder(new LineBorder(Color.BLACK, 1));
        GridBagConstraints constraints1 = new GridBagConstraints();
        JPanel jPanelclock = new JPanel(new FlowLayout());
        jPanelnp.add(lbprevious);
        jPanelnp.add(Box.createHorizontalGlue());
        jPanelnp.add(Box.createRigidArea(new Dimension(800, 0)));
        jPanelnp.add(lbnext);
        constraints1.gridx = 0;
        constraints1.gridy = 0;
        jPaneltime.add(labeltg, constraints1);
        constraints1.gridx = 0;
        constraints1.gridy = 1;
        constraints1.insets = new Insets(0, 0,250,0 );
        jPanelclock.add(jButton4);
        jPanelclock.add(jButton5);
        JLabel lbael = new JLabel(":");
        lbael.setFont(new Font("sad", Font.BOLD, 20));
        jPanelclock.add(lbael);

        jPanelclock.add(jButton6);
        jPanelclock.add(jButton7);
        jPaneltime.add(jPanelclock, constraints1);

        constraints1.gridx = 0;
        constraints1.gridy = 2;
        jPaneltime.add(lbnopbai, constraints1);
        constraints.gridx = 1;
        constraints.gridy = 1;
        this.add(jPaneltime, constraints);

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
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        lbprevious = new javax.swing.JLabel();
        lbnext = new javax.swing.JLabel();
        lbnopbai = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        labeltg.setFont(new java.awt.Font("Times New Roman", 0, 24)); // NOI18N
        labeltg.setText("Thời gian:");

        jTabbedPane1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        jTabbedPane1.setTabLayoutPolicy(javax.swing.JTabbedPane.SCROLL_TAB_LAYOUT);
        jTabbedPane1.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jTabbedPane1StateChanged(evt);
            }
        });

        jButton6.setText("jButton6");

        jButton7.setText("jButton7");

        lbprevious.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbpreviousMouseClicked(evt);
            }
        });

        lbnext.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbnextMouseClicked(evt);
            }
        });

        lbnopbai.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbnopbaiMouseClicked(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 1091, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(224, 224, 224)
                        .addComponent(lbprevious)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(lbnext)
                        .addGap(73, 73, 73)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(69, 69, 69)
                        .addComponent(labeltg))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(16, 16, 16)
                        .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton6)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton7))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(97, 97, 97)
                        .addComponent(lbnopbai)))
                .addContainerGap(517, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(labeltg)
                    .addComponent(lbprevious)
                    .addComponent(lbnext))
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
                        .addGap(85, 85, 85)
                        .addComponent(lbnopbai))
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 475, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(119, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTabbedPane1StateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jTabbedPane1StateChanged
        index = jTabbedPane1.getSelectedIndex();
    }//GEN-LAST:event_jTabbedPane1StateChanged

    private void lbnextMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbnextMouseClicked
        index++;
        if (index > 19) {
            index = 0;
        }
        jTabbedPane1.setSelectedIndex(index);
    }//GEN-LAST:event_lbnextMouseClicked

    private void lbpreviousMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbpreviousMouseClicked
        index--;
        if (index < 0) {
            index = 19;
        }
        jTabbedPane1.setSelectedIndex(index);
    }//GEN-LAST:event_lbpreviousMouseClicked

    private void lbnopbaiMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbnopbaiMouseClicked
        Nopbai();
        time.stop();
    }//GEN-LAST:event_lbnopbaiMouseClicked
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
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel labeltg;
    private javax.swing.JLabel lbnext;
    private javax.swing.JLabel lbnopbai;
    private javax.swing.JLabel lbprevious;
    // End of variables declaration//GEN-END:variables
}
