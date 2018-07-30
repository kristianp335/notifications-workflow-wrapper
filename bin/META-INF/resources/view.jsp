<%@ include file="/init.jsp" %>
<% 
	String tabs1 = ParamUtil.getString(request, "tabs1", "Notifications");	
	String workflowPortletName = (String) renderRequest.getAttribute("workflowPortletName");
	PortletURL portletURL = renderResponse.createRenderURL();
	portletURL.setParameter("tabs1", tabs1);
	
%>
<liferay-ui:tabs
    names='<%= "Notifications,Workflow" %>'
    param="tabs1"
    refresh="<%= true %>"
    url="<%= portletURL.toString() %>"
    type="tabs nav-tabs-default"
>
	<liferay-ui:section>
		<p>
			<liferay-portlet:runtime portletName="com_liferay_notifications_web_portlet_NotificationsPortlet" />
		</p>
	</liferay-ui:section>
	<liferay-ui:section>
		<p>
			<liferay-portlet:runtime portletName="${workflowPortletName}" />
		</p>
	</liferay-ui:section>
</liferay-ui:tabs>

