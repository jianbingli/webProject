package webService;

import java.awt.Color;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.SwingConstants;
import javax.swing.WindowConstants;

public class webService extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			creatFrame();
	}	
public static void creatFrame() {
		
		JFrame jf = new JFrame("窗口");
		
		jf.setLocation(530, 330);
		jf.setSize(500, 500);
		jf.setVisible(true);
		jf.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		Container container =  jf.getContentPane();
		container.setBackground(Color.white);
		
		
		
		JLabel jl = new JLabel("这是一个窗口");
		jl.setHorizontalAlignment(SwingConstants.CENTER);
		
		JButton jb = new JButton("确定sd");
		jb.setBounds(50, 50, 80, 80);
		container.setLayout(null);
		container.add(jb);
		jb.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				
				JOptionPane.showMessageDialog(null, "弹出对话框");
			}
		});
	}
	
}

