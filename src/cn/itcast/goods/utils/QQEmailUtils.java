package cn.itcast.goods.utils;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
/**
 * 简单的qq邮件发送
 * @author Administrator
 */
public class QQEmailUtils {
	
	public static void sendMail(String fromEmail, String toEmail, String emailName, String emailPassword, String title, String centent) throws Exception {
	     // 创建Properties 类用于记录邮箱的一些属性
        final Properties props = new Properties();
        // 表示SMTP发送邮件，必须进行身份验证
        props.put("mail.smtp.auth", "true");
        //此处填写SMTP服务器
        props.put("mail.smtp.host", "smtp.qq.com");
        //端口号，QQ邮箱给出了两个端口，但是另一个我一直使用不了，所以就给出这一个587
        props.put("mail.smtp.port", "587");
        // 此处填写你的账号
        props.put("mail.user", fromEmail);
        // 此处的密码就是前面说的16位STMP口令
        props.put("mail.password", emailPassword);

        // 构建授权信息，用于进行SMTP进行身份验证
        Authenticator authenticator = new Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {
                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
        // 使用环境属性和授权信息，创建邮件会话
        Session mailSession = Session.getInstance(props, authenticator);
        // 创建邮件消息
        MimeMessage message = new MimeMessage(mailSession);
        // 设置发件人
        InternetAddress form = new InternetAddress(
                props.getProperty("mail.user"));
        message.setFrom(form);

        // 设置收件人的邮箱
        InternetAddress to = new InternetAddress(toEmail);
        message.setRecipient(RecipientType.TO, to);

        // 设置邮件标题
        message.setSubject(title);

        // 设置邮件的内容体
        message.setContent(centent, "text/html;charset=UTF-8");

        // 最后当然就是发送邮件啦
        Transport.send(message);
	}
	
	public static void main(String[] args) {
		try {
			QQEmailUtils.sendMail("发送者qq邮箱", "接受者qq邮箱", "用户名", "密码", "标题", "内容");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
