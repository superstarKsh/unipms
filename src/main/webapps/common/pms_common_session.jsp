<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String sPARAM = request.getParameter("sPARAM"     );
	
	if ("LOGIN".equals(sPARAM)) {

		String sUSER_ID        = request.getParameter("sUSER_ID"     );
		String sUSER_NO        = request.getParameter("sUSER_NO"     );
		String sUSER_NM        = request.getParameter("sUSER_NM"     );
		String sUSER_PSTN      = request.getParameter("sUSER_PSTN"   );
		String sCURR_PRJT_ID   = request.getParameter("sCURR_PRJT_ID");
		String sPMS_AUTH       = request.getParameter("sPMS_AUTH"    );
		String sPRJT_ID        = request.getParameter("sPRJT_ID"     );
		String sPRJT_NM        = request.getParameter("sPRJT_NM"     );
		String sCURR_STAGE     = request.getParameter("sCURR_STAGE"  );
		String sPRJT_TYPE      = request.getParameter("sPRJT_TYPE"   );
		String sDEV_STAGE      = request.getParameter("sDEV_STAGE"   );
		String sTEST_STAGE     = request.getParameter("sTEST_STAGE"  );
		
		session.setAttribute("sUSER_ID"     , sUSER_ID       );
		session.setAttribute("sUSER_NO"     , sUSER_NO       );
		session.setAttribute("sUSER_NM"     , sUSER_NM       );
		session.setAttribute("sUSER_PSTN"   , sUSER_PSTN     );
		session.setAttribute("sCURR_PRJT_ID", sCURR_PRJT_ID  );
		session.setAttribute("sPMS_AUTH"    , sPMS_AUTH      );

		if ("".equals(sPRJT_ID))
			session.setAttribute("sPRJT_ID"     , "00000000" );
		else
			session.setAttribute("sPRJT_ID"     , sPRJT_ID   );

		session.setAttribute("sPRJT_NM"     , sPRJT_NM       );
		session.setAttribute("sCURR_STAGE"  , sCURR_STAGE    );
		session.setAttribute("sPRJT_TYPE"   , sPRJT_TYPE     );
		session.setAttribute("sDEV_STAGE"   , sDEV_STAGE     );
		session.setAttribute("sTEST_STAGE"  , sTEST_STAGE    );
		
	} else if ("LOGOUT".equals(sPARAM)) {
		session.invalidate();
	} else if ("PRJTSEL".equals(sPARAM)) {
		String sPRJT_ID        = request.getParameter("sPRJT_ID"     );
		String sPRJT_NM        = request.getParameter("sPRJT_NM"     );
		String sPRJT_TYPE      = request.getParameter("sPRJT_TYPE"   );
		String sCURR_STAGE     = request.getParameter("sCURR_STAGE"  );
		String sDEV_STAGE      = request.getParameter("sDEV_STAGE"   );
		String sTEST_STAGE     = request.getParameter("sTEST_STAGE"  );
		
		session.setAttribute("sPRJT_ID"     , sPRJT_ID       );
		session.setAttribute("sPRJT_NM"     , sPRJT_NM       );
		session.setAttribute("sCURR_STAGE"  , sCURR_STAGE    );
		session.setAttribute("sPRJT_TYPE"   , sPRJT_TYPE     );
		session.setAttribute("sDEV_STAGE"   , sDEV_STAGE     );
		session.setAttribute("sTEST_STAGE"  , sTEST_STAGE    );
	} else if ("LOCALMENU".equals(sPARAM)) {
		String sLOCALMENU      = request.getParameter("sLOCALMENU"     );

		session.setAttribute("sLOCALMENU"   , sLOCALMENU       );
	} else if ("DELPRJT".equals(sPARAM)) {
		String sPRJT_ID        = request.getParameter("sPRJT_ID"     );
		String sPRJT_NM        = request.getParameter("sPRJT_NM"     );
		
		session.setAttribute("sPRJT_ID"   , "00000000"       );
		session.setAttribute("sPRJT_NM"   , ""               );
	}  
	
	
%>