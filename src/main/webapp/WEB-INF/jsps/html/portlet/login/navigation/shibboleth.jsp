<%@ include file="/html/portlet/login/init.jsp"%>

<%

	final String SHIBBOLETH_ENABLED = "shibboleth.enabled";
	final String SHIBBOLETH_LOGIN_URL = "shibboleth.login.url";

	boolean shibbolethEnabled = GetterUtil.getBoolean(PrefsPropsUtil.getString(PortalUtil.getCompanyId(renderRequest), SHIBBOLETH_ENABLED));
    String shibbolethLoginUrl = PrefsPropsUtil.getString(company.getCompanyId(), "shibboleth.login.url", "");
%>

<c:if test="<%=shibbolethEnabled%>">

	<liferay-ui:icon
		src="/liferay-shibboleth-plugin-hook/images/shibboleth.png"
		url="<%= shibbolethLoginUrl %>" message="shibboleth" />

</c:if>
