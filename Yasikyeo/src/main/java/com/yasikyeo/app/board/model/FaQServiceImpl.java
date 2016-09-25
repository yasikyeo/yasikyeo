package com.yasikyeo.app.board.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yasikyeo.app.common.SearchVO;

@Service
public class FaQServiceImpl implements FaQService{

	
	
	@Autowired
	private FaQDAO faqDao;
	
	@Override
	public int insertFaq(FaQVO faqVo) {
		return faqDao.insertFaQ(faqVo);
	}

	@Override
	public List<FaQVO> selectAllFaQ(SearchVO searchVO) {
		return faqDao.selectAllFaQ(searchVO);
	}

	@Override
	public int selectfaqTotalCount(SearchVO searchVO) {
		return faqDao.selectfaqTotalCount(searchVO);
	}

	@Override
	public FaQVO selectByNoFaq(int faqNo) {
		return faqDao.selectByNoFaq(faqNo);
	}

	@Override
	public int faqUpdate(FaQVO faqVo) {
		return faqDao.faqUpdate(faqVo);
	}

	@Override
	public int faqDelete(int faqNo) {
		return faqDao.faqDelete(faqNo);
	}

	@Override
	public int faqDelete(List<FaQVO> faqList) {
		int cnt =0;
		try{
			for(FaQVO vo : faqList){
				int faqNo= vo.getFaqNo();
				if(faqNo!=0){
					cnt = faqDao.faqDelete(faqNo);
				}
			}
		}catch(RuntimeException e){
			e.printStackTrace();
			cnt=-1;
		}
		
		return cnt;
	}

		
	
	
	
}
