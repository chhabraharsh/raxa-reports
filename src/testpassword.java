import org.apache.commons.codec.digest.DigestUtils;
public class testpassword {
	public static String calculateHash(String data, String salt) {
	    return DigestUtils.shaHex(data + salt);
	}
	public static void main(String args[]) {
	    System.out.println("SHA512 Hash: " +calculateHash("raxa","abc" ));
	}
}
