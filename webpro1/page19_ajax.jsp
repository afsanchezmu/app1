<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page19"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page19.do${wrAjax ? '#!ajax=true' : ''}" styleId="page19FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page19">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page19"/>
				<input type="hidden" name="ln110" value="<webratio:Link link="ln110"/>">
				<input type="hidden" name="ln111" value="<webratio:Link link="ln111"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page19"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('mpage3_customlocation_0', pageContext)}">
			<ControlData control="mpage3_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="mpage3_grid_0"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage3_grid_0,mpage3_customlocation_0', pageContext)}">
			<ControlData control="mpage3_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="mpage3_cell_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage3_cell_0,mpage3_grid_0,mpage3_customlocation_0', pageContext)}">
			<ControlData control="mpage3_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau8_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('dau8_0,mpage3_cell_0,mpage3_grid_0,mpage3_customlocation_0', pageContext)}">
			<ControlData control="dau8_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau8) and (dau8.dataSize gt 0)}">
	  <div class="plain ">
	  	<div class="plain DataUnit">
			<p>
				<bean:message key="Welcome"/> 
<c:out value="${dau8.data.userName}"/> 
			</p>
			<ul>
			<c:if test="${webratio:isTargetAccessible('ln118', pageContext)}">
				  <li> <c:if test="${webratio:isTargetAccessible('ln118', pageContext)}">
		 			<a title="Logout" id="ln118"  href="<webratio:Link link="ln118" position="index"/>">
					Logout</a>
	</c:if>
 </li>
			</c:if>
			</ul>
		</div>
	  </div>
</c:if>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page19_grid_0', pageContext)}">
			<ControlData control="page19_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page19_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page19_cell_13"></div>
				</div>
					<div class="clear"></div>
</div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page19_cell_0,page19_grid_0', pageContext)}">
			<ControlData control="page19_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page19_grid_1"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page19_grid_1,page19_cell_0,page19_grid_0', pageContext)}">
			<ControlData control="page19_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="page19_cell_1"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page19_cell_1,page19_grid_1,page19_cell_0,page19_grid_0', pageContext)}">
			<ControlData control="page19_cell_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="frame">
	<div class="frame-title">Active Items</div>
	<div class="frame-content">
		<div class="wr-ajaxDiv" id="enu7_0"></div>
		<div class="wr-ajaxDiv" id="pwu9_0"></div>
</div>
</div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('enu7_0,page19_cell_1,page19_grid_1,page19_cell_0,page19_grid_0', pageContext)}">
			<ControlData control="enu7_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu7" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Process
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld15" styleClass="wr-submitButtons:ln111  selectionfield" property="sfld15" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld15List" labelProperty="sfld15LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld15"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								User
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld16" styleClass="wr-submitButtons:ln111  selectionfield" property="sfld16" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld16List" labelProperty="sfld16LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld16"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Group
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld17" styleClass="wr-submitButtons:ln111  selectionfield" property="sfld17" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld17List" labelProperty="sfld17LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld17"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Status
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld18" styleClass="wr-submitButtons:ln111  selectionfield" property="sfld18" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld18List" labelProperty="sfld18LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld18"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								From Date
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld17_locale" styleClass="wr-submitButtons:ln111  field" property="fld17_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld17_locale').datepicker({
									showOn: "button",
									showWeek: true,
									buttonImage: "Resources/calendar.gif",
									buttonImageOnly: true,
									showButtonPanel: true,
									dateFormat: pattern.dateFormat,
									firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
								});
							});
						</script>
					</c:otherwise></c:choose>
				</div>
			</div>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld17_locale"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								To Date
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld18_locale" styleClass="wr-submitButtons:ln111  field" property="fld18_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld18_locale').datepicker({
									showOn: "button",
									showWeek: true,
									buttonImage: "Resources/calendar.gif",
									buttonImageOnly: true,
									showButtonPanel: true,
									dateFormat: pattern.dateFormat,
									firstDay: <%= java.util.Calendar.getInstance((java.util.Locale) session.getAttribute(org.apache.struts.Globals.LOCALE_KEY)).getFirstDayOfWeek() - 1 %>
								});
							});
						</script>
					</c:otherwise></c:choose>
				</div>
			</div>
						</td>
								<td class="error"><span class=" error"><html:errors property="fld18_locale"/></span></td>
					 	</tr>
					<tr>
						<td colspan="3">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln111', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln111', pageContext)}">
			<input title="Search" onclick="$('#page19FormBean')[0].target='_self'" class=" button"  id="button:ln111" name="button:ln111" type="submit" value="Search">
	</c:if>
 </td>
			</c:if>
					</tr>
				    </table>
				   </td>
			   </tr>
		  </table>
		</div>
	</div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('pwu9_0,page19_cell_1,page19_grid_1,page19_cell_0,page19_grid_0', pageContext)}">
			<ControlData control="pwu9_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu9) and (pwu9.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
					<c:if test="${pwu9.scroller.of gt 10}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu9.scroller.current ne pwu9.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu9First', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu9First" onclick="return ajaxRequest('<webratio:Link link="pwu9First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9First', sourcePage: 'page19'}))" class=" scroll" href="<webratio:Link link="pwu9First" position="index"/>">							
					<bean:message key="PowerIndex.First"/></a>
	</c:if>
								            </c:when>
								            <c:otherwise>
								           			<span><bean:message key="PowerIndex.First"/></span>
								           		</c:otherwise>
								        </c:choose>
								    </td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu9.scroller.current ne pwu9.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu9Previous', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu9Previous" onclick="return ajaxRequest('<webratio:Link link="pwu9Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Previous', sourcePage: 'page19'}))" class=" scroll" href="<webratio:Link link="pwu9Previous" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu9.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu9.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu9.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu9.scroller.current ne pwu9.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu9Next', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu9Next" onclick="return ajaxRequest('<webratio:Link link="pwu9Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Next', sourcePage: 'page19'}))" class=" scroll" href="<webratio:Link link="pwu9Next" position="index"/>">							
					<bean:message key="PowerIndex.Next"/></a>
	</c:if>
					    		            </c:when>
						    	            <c:otherwise>
								           			<span><bean:message key="PowerIndex.Next"/></span>
						    	            </c:otherwise>
						    	        </c:choose>
								    </td>
								    <td class="scrollText">
								    	<c:choose>
					    		            <c:when test="${pwu9.scroller.current ne pwu9.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu9Last', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu9Last" onclick="return ajaxRequest('<webratio:Link link="pwu9Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Last', sourcePage: 'page19'}))" class=" scroll" href="<webratio:Link link="pwu9Last" position="index"/>">							
					<bean:message key="PowerIndex.Last"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Last"/></span>
							               </c:otherwise>
							            </c:choose>
								    </td>
						   </tr>
							   <tr>  
								    <td colspan="5" class="scrollText"> 
									    <span><bean:message key="PowerIndex.Jump"/></span>
									    <c:forEach var="current" varStatus="status" items="${pwu9.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu9.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu9Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu9Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu9Block', sourcePage: 'page19'}))">${current}</a>
									        </c:when>
									        <c:otherwise>
									          ${current}
									        </c:otherwise>
									      </c:choose>
									      </span>
								    	</c:forEach> 
								    </td>
							   </tr>
						 </table>
					</c:if>
				<table border="0" cellspacing="1" cellpadding="2">
						<!-- begin header -->
						<tr>
							<th class=" header"></th>
					        <th nowrap="nowrap" class=" header">
						     	Process Name
					        </th>
					        <th nowrap="nowrap" class=" header">
						     	Process Active Since
					        </th>
					        <th nowrap="nowrap" class=" header">
						     	Activity Name
					        </th>
					        <th nowrap="nowrap" class=" header">
						     	Role
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln115', pageContext)}">
<th class=" header"></th> 
			</c:if>
						</tr>
						<!-- end header -->
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu9.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
						        <td class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln116" position="index"/>" class="link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln116" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln116', sourcePage: 'page19'}))" >
			</c:if>
						            <img src="WRResources/spacer.gif" class="bullet<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" border="0" alt="Details"/>					
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										</a>
			</c:if>
							    </td>
								   <td class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln116" position="index"/>" class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln116" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln116', sourcePage: 'page19'}))" >
			</c:if>
									<c:out value="${current.processInstanceName}"/>
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln116" position="index"/>" class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln116" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln116', sourcePage: 'page19'}))" >
			</c:if>
									<fmt:formatDate value="${current.processActiveSince}" pattern="${timestampPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln116" position="index"/>" class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln116" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln116', sourcePage: 'page19'}))" >
			</c:if>
									<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln116" position="index"/>" class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln116" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln116', sourcePage: 'page19'}))" >
			</c:if>
									<c:out value="${current.group}"/>
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
										</a>
			</c:if>
								   </td>
			<c:if test="${webratio:isTargetAccessible('ln116', pageContext)}">
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln115', pageContext)}">
									<td class=" link<c:if test="${pwu9.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
							   			<c:choose>
							   				<c:when test="${pwu9.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln115', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln115" class=" linkCurrentAlternate" href="<webratio:Link link="ln115" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln115', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln115" class=" linkCurrent" href="<webratio:Link link="ln115" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln115', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln115" class=" linkAlternate" href="<webratio:Link link="ln115" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln115', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln115" class=" link" href="<webratio:Link link="ln115" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
			</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
</c:when>
<c:otherwise>
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<table>
				    <tr>
				      <td><bean:message key="noItemsFound"/></td>
				    </tr>
				</table>
			</div>
		</div>
</c:otherwise>
</c:choose>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('page19_cell_13,page19_grid_0', pageContext)}">
			<ControlData control="page19_cell_13" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau7_0"></div>
</webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('dau7_0,page19_cell_13,page19_grid_0', pageContext)}">
			<ControlData control="dau7_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau7) and (dau7.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Item Details</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
							<tr class="row">
			        		  	<th class=" header">Process Instance Name</th>
			        		  	<td class=" value string"><c:out value="${dau7.data.processInstanceName}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Activity Name</th>
			        		  	<td class=" value string"><c:out value="${dau7.data.name}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Role</th>
			        		  	<td class=" value string"><c:out value="${dau7.data.group}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Status</th>
			        		  	<td class=" value string"><c:out value="${dau7.data.status}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Ready Since</th>
			        		  	<td class=" value timestamp"><c:set var="startedSince" value="${dau7.data.readySince}"/>    
<%   
 {
    java.sql.Timestamp startedSince = (java.sql.Timestamp) pageContext.getAttribute("startedSince");
    String duration = null;
    if(startedSince != null){
      java.sql.Timestamp  end = new java.sql.Timestamp(System.currentTimeMillis());  
      long delta = end.getTime() - startedSince.getTime();
      duration = " " + org.apache.commons.lang.time.DurationFormatUtils.formatDuration(delta, "d'd 'H'h 'm'm 's's'");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0d", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0h", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0m", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0s", "");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "s", "\"");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "m", "'").trim();
    }else{
      duration = " - ";
    }
%><%=duration%>
<% } %></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Active Since</th>
			        		  	<td class=" value timestamp"><c:set var="startedSince" value="${dau7.data.activeSince}"/>    
<%   
 {
    java.sql.Timestamp startedSince = (java.sql.Timestamp) pageContext.getAttribute("startedSince");
    String duration = null;
    if(startedSince != null){
      java.sql.Timestamp  end = new java.sql.Timestamp(System.currentTimeMillis());  
      long delta = end.getTime() - startedSince.getTime();
      duration = " " + org.apache.commons.lang.time.DurationFormatUtils.formatDuration(delta, "d'd 'H'h 'm'm 's's'");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0d", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0h", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0m", "");
      duration = org.apache.commons.lang.StringUtils.replaceOnce(duration, " 0s", "");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "s", "\"");
      duration = org.apache.commons.lang.StringUtils.replace(duration, "m", "'").trim();
    }else{
      duration = " - ";
    }
%><%=duration%>
<% } %></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">Worked At</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${dau7.data.workedAt}" pattern="${timestampPattern}"/></td>
			        		</tr>
				  <tr>
				  <td colspan="14">
			           <table>
			               <tr>
			               </tr>
			           </table>
			        </td>
			      </tr>  
			    </table> 
			 </div>
		 </div>
	</div>
</div>
</c:if>
    </webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>