package util;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;

public class ValidationCodeImage {
	
	public ValidationCodeImage() throws IOException
	{
		generateValidationCodeImage();
	}

	// 保存验证码图像数据的字节数组
	private byte[] imageBytes;

	// 保存验证码图像对应的字符串
	private String validationCode;

	// 验证码图片的宽度。
	private static final int WIDTH = 60;
	// 验证码图片的高度。
	private static final int HEIGHT = 20;
	// 验证码的数量。
	private static final int CODE_AMOUNT = 4;

	// 验证码序列。
	private static final char[] randomSequence = new char[] { 'A', 'B', 'C',
			'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
			'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
			'3', '4', '5', '6', '7', '8', '9' };

	/**
	 * 给定范围内获得随机颜色
	 * 
	 * @param fc
	 * @param bc
	 * @return
	 */
	private Color getRangeColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255)
			fc = 200;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

	/**
	   * 产生验证码图像，将图像数据保存到字节数组中
	   * @throws ImageFormatException
	   * @throws IOException
	   */
	  private void generateValidationCodeImage() throws IOException
	  {
	    //输出验证码图像时要用到的数据
	    //字体高度
	    int fontHeight;
	    //验证码边框宽度和高度
	    int rectWidth, rectHeight;
	    //验证码偏移量
	    int offsetWidth;
	    //在图像中写入验证码的额外偏移。
	    int addition;
	    //在图像中写入验证码时指定的高度。
	    int codeHight;
	    
	    //对输出验证码图像时要用到的数据进行初始化
	    fontHeight = HEIGHT - 2;
	    rectWidth = WIDTH - 1;
	    rectHeight = HEIGHT - 1;
	    offsetWidth = WIDTH / (CODE_AMOUNT+1);
	    addition = offsetWidth / 2;
	    codeHight = HEIGHT - 4;
	    
	    BufferedImage buffImg = new BufferedImage(WIDTH, HEIGHT,
	        BufferedImage.TYPE_INT_RGB);
	    Graphics2D g = buffImg.createGraphics();

	    //创建一个随机数生成器类。
	    Random random = new Random();

	    //设定背景色
	    g.setColor(getRangeColor(200, 250));

	    g.fillRect(0, 0, WIDTH, HEIGHT);

	    //创建字体，字体的大小应该根据图片的高度来定。
	    Font font = new Font("Times New Roman", Font.PLAIN, fontHeight);
	    //设置字体。
	    g.setFont(font);

	    //画边框。
	    g.setColor(Color.BLACK);
	    g.drawRect(0, 0, rectWidth, rectHeight);

	    //随机产生160条干扰线，使图象中的认证码不易被其它程序探测到。
	    g.setColor(getRangeColor(160, 200));
	    for (int i = 0; i < 160; i++)
	    {
	      int x = random.nextInt(WIDTH);
	      int y = random.nextInt(HEIGHT);
	      int xl = random.nextInt(12);
	      int yl = random.nextInt(12);
	      g.drawLine(x, y, x + xl, y + yl);
	    }

	    //sb用于保存随机产生的验证码，以便用户登录后进行验证。
	    StringBuffer sb = new StringBuffer();

	    int red = 0, green = 0, blue = 0;

	    //随机产生指定位数的验证码。
	    for (int i = 0; i < CODE_AMOUNT; i++)
	    {
	      //得到随机产生的验证码。
	      int index = random.nextInt(35);
	      String strRand = String.valueOf(randomSequence[index]);

	      //将产生的验证码组合在一起。
	      sb.append(strRand);

	      //产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同。
	      red = random.nextInt(110);
	      green = random.nextInt(50);
	      blue = random.nextInt(50);

	      //用随机产生的颜色将验证码绘制到图像中。
	      g.setColor(new Color(20 + red, 20 + green, 20 + blue));
	      g.drawString(strRand, offsetWidth * i + addition, codeHight);

	    }
	    //将验证码保存到Session中。
	    this.validationCode = sb.toString();
	    
	    //创建ByteArrayOutputStream对象
	    ByteArrayOutputStream baos = new ByteArrayOutputStream();
	    
	    //将验证码图像按照jpeg格式输出到ByteArrayOutputStream中。
	    ImageIO.write(buffImg, "jpeg", baos);
	    
	    //获取保存了图像数据的字节数组
	    imageBytes = baos.toByteArray();
	    baos.close();
	  }
	
	public byte[] getImageBytes() {
		return imageBytes;
	}

	public void setImageBytes(byte[] imageBytes) {
		this.imageBytes = imageBytes;
	}

	public String getValidationCode() {
		return validationCode;
	}

	public void setValidationCode(String validationCode) {
		this.validationCode = validationCode;
	}
}
