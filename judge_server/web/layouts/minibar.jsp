<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
                <div id="menus">
                <a <logic:equal name="region" value="Home">class="selected"</logic:equal> href="<%=request.getContextPath()%>">Home</a>
                | <a <logic:equal name="region" value="Contests">class="selected"</logic:equal> href="<%=request.getContextPath()%>/showContests.do">Contests</a>
                <%-- | <a <logic:equal name="region" value="Problems">class="selected"</logic:equal> href="<%=request.getContextPath()%>/showProblemsets.do">Problems</a>
                 | <a <logic:equal name="region" value="Forum">class="selected"</logic:equal> href="#">Forum</a> --%>
                <logic:present name="oj_security">
                <logic:equal name="oj_security" property="superAdmin" value="true" scope="session">
                | <a <logic:equal name="region" value="Admin">class="selected"</logic:equal>
                href="<%=request.getContextPath()%>/systemParameters.do">Admin</a>
                </logic:equal>
                </logic:present>
                </div>

