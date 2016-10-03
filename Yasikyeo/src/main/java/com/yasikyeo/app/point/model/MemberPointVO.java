package com.yasikyeo.app.point.model;

public class MemberPointVO {

	private int point_no;
	private String point_type; /* 구분 default '적립완료' */
	private int point_point; /* 포인트 */
	private int member_no; /* 회원코드 */
	private int orderlist_no; /* 주문코드 */
	
	
	public MemberPointVO() {
		
	}
	
	public MemberPointVO(String point_type, int point_point, int member_no, int orderlist_no) {
		this.point_type = point_type;
		this.point_point = point_point;
		this.member_no = member_no;
		this.orderlist_no = orderlist_no;
	}
	public int getPoint_no() {
		return point_no;
	}
	public void setPoint_no(int point_no) {
		this.point_no = point_no;
	}
	public String getPoint_type() {
		return point_type;
	}
	public void setPoint_type(String point_type) {
		this.point_type = point_type;
	}
	public int getPoint_point() {
		return point_point;
	}
	public void setPoint_point(int point_point) {
		this.point_point = point_point;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getOrderlist_no() {
		return orderlist_no;
	}
	public void setOrderlist_no(int orderlist_no) {
		this.orderlist_no = orderlist_no;
	}
	@Override
	public String toString() {
		return "MemberPointVO [point_no=" + point_no + ", point_type=" + point_type + ", point_point=" + point_point
				+ ", member_no=" + member_no + ", orderlist_no=" + orderlist_no + "]";
	}
	
}
