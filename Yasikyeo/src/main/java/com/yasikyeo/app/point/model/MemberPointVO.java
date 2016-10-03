package com.yasikyeo.app.point.model;

public class MemberPointVO {

	private int pointNo;
	private String pointType; /* 구분 default '적립완료' */
	private int pointPoint; /* 포인트 */
	private int memberNo; /* 회원코드 */
	private int orderlistNo; /* 주문코드 */
	
	public MemberPointVO() {
		super();
	}

	public MemberPointVO(String pointType, int pointPoint, int memberNo, int orderlistNo) {
		super();
		this.pointType = pointType;
		this.pointPoint = pointPoint;
		this.memberNo = memberNo;
		this.orderlistNo = orderlistNo;
	}

	public int getPointNo() {
		return pointNo;
	}

	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}

	public String getPointType() {
		return pointType;
	}

	public void setPointType(String pointType) {
		this.pointType = pointType;
	}

	public int getPointPoint() {
		return pointPoint;
	}

	public void setPointPoint(int pointPoint) {
		this.pointPoint = pointPoint;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getOrderlistNo() {
		return orderlistNo;
	}

	public void setOrderlistNo(int orderlistNo) {
		this.orderlistNo = orderlistNo;
	}

	@Override
	public String toString() {
		return "MemberPointVO [pointNo=" + pointNo + ", pointType=" + pointType + ", pointPoint=" + pointPoint
				+ ", memberNo=" + memberNo + ", orderlistNo=" + orderlistNo + "]";
	}
	
	
	
	
}
