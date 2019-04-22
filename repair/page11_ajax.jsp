<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page11"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page11.do${wrAjax ? '#!ajax=true' : ''}" styleId="page11FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page11">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page11"/>
				<input type="hidden" name="ln75" value="<webratio:Link link="ln75"/>">
				<input type="hidden" name="ln76" value="<webratio:Link link="ln76"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page11"/>]]>
		</LinkData>
		<c:if test="${webratio:isLayoutRefreshed('mpage2_customlocation_0', pageContext)}">
			<ControlData control="mpage2_customlocation_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="wr-ajaxDiv" id="mpage2_grid_0"></div></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:isLayoutRefreshed('mpage2_grid_0,mpage2_customlocation_0', pageContext)}">
			<ControlData control="mpage2_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="mpage2_cell_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('mpage2_cell_0,mpage2_grid_0,mpage2_customlocation_0', pageContext)}">
			<ControlData control="mpage2_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau5_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau5_0,mpage2_cell_0,mpage2_grid_0,mpage2_customlocation_0', pageContext)}">
			<ControlData control="dau5_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau5) and (dau5.dataSize gt 0)}">
	  <div class="plain ">
	  	<div class="plain DataUnit">
			<p>
				<bean:message key="Welcome"/> 
<c:out value="${dau5.data.userName}"/> 
			</p>
			<ul>
			<c:if test="${webratio:isTargetAccessible('ln67', pageContext)}">
				  <li> <c:if test="${webratio:isTargetAccessible('ln67', pageContext)}">
		 			<a title="Logout" id="ln67"  href="<webratio:Link link="ln67" position="index"/>">
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
		<c:if test="${webratio:isLayoutRefreshed('page11_grid_0', pageContext)}">
			<ControlData control="page11_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page11_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page11_cell_13"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page11_cell_0,page11_grid_0', pageContext)}">
			<ControlData control="page11_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page11_grid_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page11_grid_1,page11_cell_0,page11_grid_0', pageContext)}">
			<ControlData control="page11_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="wr-ajaxDiv" id="page11_cell_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page11_cell_1,page11_grid_1,page11_cell_0,page11_grid_0', pageContext)}">
			<ControlData control="page11_cell_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><div class="frame">
	<div class="frame-title">Completed Processes</div>
	<div class="frame-content">
		<div class="wr-ajaxDiv" id="enu5_0"></div>
		<div class="wr-ajaxDiv" id="pwu6_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu5_0,page11_cell_1,page11_grid_1,page11_cell_0,page11_grid_0', pageContext)}">
			<ControlData control="enu5_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	 <div class="plain ">
		<div class="plain EntryUnit">
				<table>
					<tr>
						<td colspan="3" class="error">
							<html:errors property="enu5" />
						</td>
					</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								Process
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<html:select styleId="sfld12" styleClass="wr-submitButtons:ln76  selectionfield" property="sfld12" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld12List" labelProperty="sfld12LabelList"/>
			</html:select>
						</td>
								<td class="error"><span class=" error"><html:errors property="sfld12"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								From Date
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld9_locale" styleClass="wr-submitButtons:ln76  field" property="fld9_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld9_locale').datepicker({
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
								<td class="error"><span class=" error"><html:errors property="fld9_locale"/></span></td>
					 	</tr>
					<tr class="row">
							<th valign="middle" class=" header">
								To Date
							</th>
						<td valign="middle" nowrap="nowrap" class=" value">
								<div>
				<div style="padding-right: 24px; white-space: nowrap">
					<html:text  size="25" styleId="fld10_locale" styleClass="wr-submitButtons:ln76  field" property="fld10_locale" readonly="false" style="width: 100%; margin: 0"/>
					<c:choose><c:when test="false">
						<img src="Resources/calendar_disabled.gif" />
					</c:when><c:otherwise>
						<script type="text/javascript">
							jQuery(function($) { 								
								var pattern = $.wr.calendar.dateConfigFromJava("${datePattern}");
								$('#fld10_locale').datepicker({
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
								<td class="error"><span class=" error"><html:errors property="fld10_locale"/></span></td>
					 	</tr>
					<tr>
						<td colspan="3">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln76', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln76', pageContext)}">
			<input title="Search" onclick="$('#page11FormBean')[0].target='_self'" class=" button"  id="button:ln76" name="button:ln76" type="submit" value="Search">
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
		<c:if test="${webratio:isLayoutRefreshed('pwu6_0,page11_cell_1,page11_grid_1,page11_cell_0,page11_grid_0', pageContext)}">
			<ControlData control="pwu6_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu6) and (pwu6.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
					<c:if test="${pwu6.scroller.of gt 10}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu6.scroller.current ne pwu6.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu6First', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu6First" onclick="return ajaxRequest('<webratio:Link link="pwu6First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6First', sourcePage: 'page11'}))" class=" scroll" href="<webratio:Link link="pwu6First" position="index"/>">							
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
							                <c:when test="${pwu6.scroller.current ne pwu6.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu6Previous', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu6Previous" onclick="return ajaxRequest('<webratio:Link link="pwu6Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Previous', sourcePage: 'page11'}))" class=" scroll" href="<webratio:Link link="pwu6Previous" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu6.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu6.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu6.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu6.scroller.current ne pwu6.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu6Next', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu6Next" onclick="return ajaxRequest('<webratio:Link link="pwu6Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Next', sourcePage: 'page11'}))" class=" scroll" href="<webratio:Link link="pwu6Next" position="index"/>">							
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
					    		            <c:when test="${pwu6.scroller.current ne pwu6.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu6Last', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu6Last" onclick="return ajaxRequest('<webratio:Link link="pwu6Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Last', sourcePage: 'page11'}))" class=" scroll" href="<webratio:Link link="pwu6Last" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu6.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu6.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu6Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu6Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu6Block', sourcePage: 'page11'}))">${current}</a>
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
						     	Completed at
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
<th class=" header"></th> 
			</c:if>
						</tr>
						<!-- end header -->
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu6.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
						        <td class=" link<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln69" position="index"/>" class="link<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln69" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln69', sourcePage: 'page11'}))" >
			</c:if>
						            <img src="WRResources/spacer.gif" class="bullet<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" border="0" alt="activities"/>					
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
										</a>
			</c:if>
							    </td>
								   <td class=" link<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln69" position="index"/>" class=" link<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln69" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln69', sourcePage: 'page11'}))" >
			</c:if>
									<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln69" position="index"/>" class=" link<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln69" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln69', sourcePage: 'page11'}))" >
			</c:if>
									<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
										</a>
			</c:if>
								   </td>
			<c:if test="${webratio:isTargetAccessible('ln69', pageContext)}">
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
									<td class=" link<c:if test="${pwu6.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
							   			<c:choose>
							   				<c:when test="${pwu6.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln70" class=" linkCurrentAlternate" href="<webratio:Link link="ln70" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln70" class=" linkCurrent" href="<webratio:Link link="ln70" position="index"/>" target="_blank" >
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
															 <c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln70" class=" linkAlternate" href="<webratio:Link link="ln70" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
				</tr>
			</table>	
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln70', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln70" class=" link" href="<webratio:Link link="ln70" position="index"/>" target="_blank" >
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
				      <td><bean:message key="noProcessInstancesFound"/></td>
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
		<c:if test="${webratio:isLayoutRefreshed('page11_cell_13,page11_grid_0', pageContext)}">
			<ControlData control="page11_cell_13" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="inu3_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('inu3_0,page11_cell_13,page11_grid_0', pageContext)}">
			<ControlData control="inu3_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty inu3) and (inu3.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Completed Activities</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain IndexUnit">
				<table border="0" cellspacing="1" cellpadding="2" id="inu3_0_sortable">
					<tr>
						<th class=" header"></th>
						<th nowrap="nowrap" class=" header">Activity</th>
						<th nowrap="nowrap" class=" header">Completed at</th>
						<th nowrap="nowrap" class=" header">Username</th>
						<th nowrap="nowrap" class=" header">Group</th>
					</tr>
				<c:forEach var="current" varStatus="status" items="${inu3.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${inu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
								<td class=" value<c:if test="${inu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
									<img src="WRResources/spacer.gif" class="bullet<c:if test="${inu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" border="0" alt=""/>
								</td>
									<!-- not linked attribute -->
									<td class=" value<c:if test="${inu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.activityName}"/>
									</td>
									<!-- not linked attribute -->
									<td class=" value<c:if test="${inu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">				
										<fmt:formatDate value="${current.completedAt}" pattern="${timestampPattern}"/>
									</td>
									<!-- not linked attribute -->
									<td class=" value<c:if test="${inu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.userName}"/>
									</td>
									<!-- not linked attribute -->
									<td class=" value<c:if test="${inu3.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.group}"/>
									</td>
						</tr>
					</c:forEach>
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