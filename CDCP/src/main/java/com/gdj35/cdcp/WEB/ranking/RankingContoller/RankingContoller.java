package com.gdj35.cdcp.WEB.ranking.RankingContoller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.cdcp.WEB.ranking.RankingService.RankingIService;
import com.gdj35.cdcp.WEB.user.UserContoller.UserContoller;
import com.gdj35.cdcp.WEB.user.UserService.UserIService;
import com.gdj35.cdcp.common.bean.PagingBean;
import com.gdj35.cdcp.common.service.IPagingService;

@Controller 
public class RankingContoller {
	
	@Autowired
	public RankingIService RankingiService;
	
	@Autowired
	public IPagingService iPagingService;

	@Autowired
	public UserContoller userContoller;
	
	@Autowired 
	public UserIService useriService;
	
//	card rank 메인페이지
	@RequestMapping(value="/card_rank")
	public ModelAndView card_rank(ModelAndView mav) {
		
		mav.setViewName("ranking/card_rank");
		
		return mav;
	}
	
//	신용카드 top10 페이지
	@RequestMapping(value="/creditTop10")
	public ModelAndView creditTop10(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
		
		List<HashMap<String, String>> list
			= RankingiService.getRCredit(params);
		
		mav.addObject("list", list);
		
		mav.setViewName("ranking/creditTop10");
		
		return mav;
	}


	/*
	 * // 신용카드 top20 페이지
	 * 
	 * @RequestMapping(value="/creditTop20") public ModelAndView creditTop20(
	 * 
	 * @RequestParam HashMap<String, String> params, ModelAndView mav) throws
	 * Throwable{
	 * 
	 * List<HashMap<String, String>> list = RankingiService.getRCredit(params);
	 * 
	 * mav.addObject("list", list);
	 * 
	 * mav.setViewName("ranking/creditTop20");
	 * 
	 * return mav; }
	 */


//	체크카드 top10  페이지
	@RequestMapping(value="/checkTop10")
	public ModelAndView checkTop10(
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable {
		
		
		List<HashMap<String, String>> list 
			= RankingiService.getRCheck(params);
		
		mav.addObject("list", list);
		
		mav.setViewName("ranking/checkTop10");
		
		return mav;
	}

// 카드사별 Top3 페이지
	@RequestMapping(value="/cardcompany_top3")
	public ModelAndView cardcompany_top3 (
			@RequestParam HashMap<String, String> params,
			ModelAndView mav) throws Throwable{
	System.out.println(params);
		List<HashMap<String, String>> top1
			= RankingiService.cmpTop1(params);
		List<HashMap<String, String>> top2
			= RankingiService.cmpTop2(params);
		List<HashMap<String, String>> top3
			= RankingiService.cmpTop3(params);
		
		mav.addObject("top1", top1);
		mav.addObject("top2", top2);
		mav.addObject("top3", top3);
		
		
		mav.setViewName("ranking/cardcompany_top3");
		
		return mav;
	}
//	카드사별 top3 페이지 test
	@RequestMapping(value="/cardcompany_top3s",
			method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String cardcompany_top3s(
			@RequestParam HashMap<String, String> params) throws Throwable {
		System.out.println(params);
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		List<HashMap<String, String>> top1
			= RankingiService.cmpTop1(params);
		List<HashMap<String, String>> top2
			= RankingiService.cmpTop2(params);
		List<HashMap<String, String>> top3
			= RankingiService.cmpTop3(params);
				
		if(top1 != null && top2 != null && top3 != null) {
			modelMap.put("msg", "success");
			modelMap.put("top1", top1);
			modelMap.put("top2", top2);
			modelMap.put("top3", top3);
			
		} else {
			modelMap.put("msg", "failed");
		}
		return mapper.writeValueAsString(modelMap);
	}
//	카드상세보기 페이지
	  @RequestMapping(value="/cardview")
	  public ModelAndView cardview(
			  @RequestParam HashMap<String, String> params, 
			  ModelAndView mav) throws Throwable {
		 // 카드 신청 클릭수 증가	  
		  if(params.get("cardClick") != null) {
			  int cnt = RankingiService.updateCnt(params);
		  }
		
		 // 카드 상세보기 화면 
		  try { 
			  if(params.get("cardNo") != null) { 
		  
				// 현재 페이지
				int page = 1;
										
				if(params.get("page") != null) {
					page = Integer.parseInt(params.get("page"));
				}	
				  List<HashMap<String, String>>
				  data = RankingiService.getCView(params);
				 
				  mav.addObject("data", data);
				  mav.addObject("page", page);
				  
				  mav.setViewName("ranking/cardview");
			  }else {
				  mav.setViewName("ranking/wrongApproach");
			  }
		  } catch(Throwable e) {
		  		e.printStackTrace();
		  }
	  return mav; 
	 }
	  @RequestMapping(value="/cardviews",
				method = RequestMethod.POST,
				produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String cardviews(
				@RequestParam HashMap<String, String> params) throws Throwable {
			System.out.println(params);
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			// 현재 페이지
			int page = Integer.parseInt(params.get("page"));
			
			  // 총 게시글 수
			int cnt = RankingiService.getReviewCnt(params);
				
			  // 페이징 계산
			 PagingBean pb = iPagingService.getPagingBean(page, cnt, 4, 5);

			 params.put("startCnt", Integer.toString(pb.getStartCount()));
			 params.put("endCnt", Integer.toString(pb.getEndCount()));

			 List<HashMap<String, String>> review 
			 	= RankingiService.reviewList(params);
			  
			  if(review != null) {
				  modelMap.put("msg", "success");
				  modelMap.put("review", review);
				  modelMap.put("pb", pb);
				  modelMap.put("cnt", cnt);
				  
			  }else {
				  modelMap.put("msg", "error");
			  }
		
			return mapper.writeValueAsString(modelMap);
	  }
	  // 리뷰작성 팝업
	  @RequestMapping(value = "/reviewWrite", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String reviewWrite(
				@RequestParam HashMap<String, String> params) throws Throwable { 
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			System.out.println("=====리뷰작성 팝업=====");
			System.out.println(params);
			System.out.println("=====리뷰작성 팝업=====");
			
			int checkCnt = RankingiService.gethaveCard(params);
			
			List<HashMap<String, String>>
			  data = RankingiService.getCView(params);
			System.out.println(data);
			
			
			if(data != null) {
			
				modelMap.put("msg", "success");
				modelMap.put("data", data);
				modelMap.put("checkCnt", checkCnt);
			}else {
				  modelMap.put("msg", "error");
			  }
			return mapper.writeValueAsString(modelMap);
		}
	  // 등록
	  @RequestMapping(value="/reviewAdds", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		
		@ResponseBody
		public String reviewAdds(
				@RequestParam HashMap<String, String> params) throws Throwable{
			
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			System.out.println("=====작성 뭐들고 나오냐=====");
			System.out.println(params);
			System.out.println("=====작성 뭐들고 나오냐=====");
			
			try {
				int cnt = RankingiService.reviewAdd(params);
				System.out.println(cnt);
				if(cnt > 0) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
			} catch (Throwable e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			
			return mapper.writeValueAsString(modelMap);
		}
}

