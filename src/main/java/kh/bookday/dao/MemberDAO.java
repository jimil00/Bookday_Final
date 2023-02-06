package kh.bookday.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.MemberDTO;
import kh.bookday.dto.MonthSubMemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession db;

	// 회원정보 출력
	public MemberDTO selectMemberById(String id){
		return db.selectOne("Member.selectMemberById", id);
	}

	// 핸드폰 중복 검사
	public boolean  checkByPhone(String phone){
		return db.selectOne("Member.checkByPhone",phone);
	}

	// 닉네임 중복 검사
	public boolean checkByNickname(String nickname){
		return db.selectOne("Member.checkByNickname",nickname);
	}

	// 로그인
	public boolean isLoginOk(Map<String, String> param){

		return db.selectOne("Member.isLoginOk",param);
	}

	// 회원가입
	public int signUp(MemberDTO dto) {
		return db.insert("Member.signUp", dto);
	}

	// 아이디로 세션값 주기 위한 로직
	public String selectIdByPhone(String phone) {
		return db.selectOne("Member.selectIdByPhone", phone);
	}

	// 이메일로 카톡 로그인 여부 확인하는 로직
	public boolean selectByEmail(String email) {
		return db.selectOne("Member.selectByEmail", email);
	}

	//비번 재설정
	public void updatePw(Map<String, String> param) {
		db.update("Member.updatePw", param);
	}
	
	//회원정보수정
	public void updateMemInfo(MemberDTO dto) {
		db.update("Member.updateMemInfo", dto);
		}
		

	//지민
	// 회원 배송지 정보 입력 
	public void updateMemberAddressById(MemberDTO dto) {
		db.update("Member.updateMemberAddressById", dto);
	}

	// 회원 등급 변경 
	public void updateMemberGradeById(String id) {
		db.update("Member.updateMemberGradeById", id);
	}

	// 월 구독 회원 등록 
	public void insertMonthSubMemberById(String id) {
		db.insert("Member.insertMonthSubMemberById", id);
	}

	// 월 구독 회원 정보 조회 
	public MonthSubMemberDTO selectMonthSubMemberById(String id) {
		return db.selectOne("Member.selectMonthSubMemberById", id);
	}

	// 월 구독 회원 남은 배송 횟수, 남은 대여 권수 계산 
	public void updateMonthSubMemberById(MonthSubMemberDTO dto) {
		db.update("Member.updateMonthSubMemberById", dto);
	}
	// 지민
}
