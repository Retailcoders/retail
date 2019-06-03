
package Model;

public class Payment {
	private String name;

	 private int amount;
	 private int transId;
 public String getName() {
  return name;
 }
 public void setCardName(String name) {
  this.name = name;
 }
 
 public int getAmount() {
  return amount;
 }
 public void setAmount(int amount) {
  this.amount = amount;
 }
 public int getTransId() {
  return transId;
 }
 public void setTransId(int transId) {
  this.transId = transId;
 }

 
 public Payment(String name, int amount, int transId) {
  super();
   this.name = name;
   this.amount = amount;
  this.transId = transId;
 }
}