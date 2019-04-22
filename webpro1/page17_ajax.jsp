<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
	<%@ taglib prefix="webratio" uri="http://www.webratio.com/2006/TagLib/JSP20" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/xml; charset=UTF-8"%>
<webratio:Page page="page17"/>
<PageRefresh>
		<![CDATA[
			<html:form action="form_page17.do${wrAjax ? '#!ajax=true' : ''}" styleId="page17FormBean" enctype="multipart/form-data">
		]]>
		<HiddenFields page="page17">
			<![CDATA[
			<html:hidden property="CSRFToken"/>
			<html:hidden property="lastURL" styleId="lastURL_page17"/>
				<input type="hidden" name="ln92" value="<webratio:Link link="ln92"/>">
		]]>
		</HiddenFields>
		<LinkData>
			<![CDATA[<webratio:LinkData page="page17"/>]]>
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
		<c:if test="${webratio:isLayoutRefreshed('page17_grid_0', pageContext)}">
			<ControlData control="page17_grid_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="container_12">
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page17_cell_0"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page17_cell_12"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page17_cell_24"></div>
				</div>
					<div class="clear"></div>
				<div class="grid_12 alpha omega agrd_24">
					<div class="wr-ajaxDiv" id="page17_cell_36"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17_cell_0,page17_grid_0', pageContext)}">
			<ControlData control="page17_cell_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu8_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu8_0,page17_cell_0,page17_grid_0', pageContext)}">
			<ControlData control="pwu8_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pwu8) and (pwu8.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Notifications</div>
	<div class="frame-content">
		<div class="plain notification">
			<div class="plain PowerIndexUnit">
					<c:if test="${pwu8.scroller.of gt 5}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu8.scroller.current ne pwu8.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu8First', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu8First" onclick="return ajaxRequest('<webratio:Link link="pwu8First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8First', sourcePage: 'page17'}))" class=" scroll" href="<webratio:Link link="pwu8First" position="index"/>">							
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
							                <c:when test="${pwu8.scroller.current ne pwu8.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu8Previous', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu8Previous" onclick="return ajaxRequest('<webratio:Link link="pwu8Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8Previous', sourcePage: 'page17'}))" class=" scroll" href="<webratio:Link link="pwu8Previous" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu8.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu8.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu8.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu8.scroller.current ne pwu8.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu8Next', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu8Next" onclick="return ajaxRequest('<webratio:Link link="pwu8Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8Next', sourcePage: 'page17'}))" class=" scroll" href="<webratio:Link link="pwu8Next" position="index"/>">							
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
					    		            <c:when test="${pwu8.scroller.current ne pwu8.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu8Last', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu8Last" onclick="return ajaxRequest('<webratio:Link link="pwu8Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8Last', sourcePage: 'page17'}))" class=" scroll" href="<webratio:Link link="pwu8Last" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu8.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu8.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu8Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu8Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu8Block', sourcePage: 'page17'}))">${current}</a>
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
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu8.data}">
					<c:set var="index" value="${status.index}"/>
						<tr class="row<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> <c:if test="${not(current.read)}">not-</c:if>highlight">	
								   <td class=" value<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">				
										<c:out value="${current.message}"/>
								   </td>
			<c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
									<td class=" value<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu8.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
		 			<a title="delete" id="ln89" class=" linkCurrentAlternate" href="<webratio:Link link="ln89" position="index"/>">
					delete</a>
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
		 			<a title="delete" id="ln89" class=" linkCurrent" href="<webratio:Link link="ln89" position="index"/>">
					delete</a>
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
		 			<a title="delete" id="ln89" class=" linkAlternate" href="<webratio:Link link="ln89" position="index"/>">
					delete</a>
	</c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:isTargetAccessible('ln89', pageContext)}">
		 			<a title="delete" id="ln89" class=" link" href="<webratio:Link link="ln89" position="index"/>">
					delete</a>
	</c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
<c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}">
									<td class="nowrap value<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu8.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
		 			<a title="mark as read" id="ln90" class="nowrap linkCurrentAlternate" href="<webratio:Link link="ln90" position="index"/>">
					mark as read</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
		 			<a title="mark as read" id="ln90" class="nowrap linkCurrent" href="<webratio:Link link="ln90" position="index"/>">
					mark as read</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
		 			<a title="mark as read" id="ln90" class="nowrap linkAlternate" href="<webratio:Link link="ln90" position="index"/>">
					mark as read</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${not(webratio:evaluateCondition('cexpr_var13', 'index', pageContext))}"><c:if test="${webratio:isTargetAccessible('ln90', pageContext)}">
		 			<a title="mark as read" id="ln90" class="nowrap link" href="<webratio:Link link="ln90" position="index"/>">
					mark as read</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}">
									<td class="nowrap value<c:if test="${pwu8.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
										<c:choose>
							   				<c:when test="${pwu8.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
		 			<a title="mark as unread" id="ln91" class="nowrap linkCurrentAlternate" href="<webratio:Link link="ln91" position="index"/>">
					mark as unread</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
		 			<a title="mark as unread" id="ln91" class="nowrap linkCurrent" href="<webratio:Link link="ln91" position="index"/>">
					mark as unread</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
		 			<a title="mark as unread" id="ln91" class="nowrap linkAlternate" href="<webratio:Link link="ln91" position="index"/>">
					mark as unread</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr_var13', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln91', pageContext)}">
		 			<a title="mark as unread" id="ln91" class="nowrap link" href="<webratio:Link link="ln91" position="index"/>">
					mark as unread</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
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
		<c:if test="${webratio:isLayoutRefreshed('page17_cell_12,page17_grid_0', pageContext)}">
			<ControlData control="page17_cell_12" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="enu6_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('enu6_0,page17_cell_12,page17_grid_0', pageContext)}">
			<ControlData control="enu6_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<div class="frame">
	<div class="frame-title">Search</div>
	<div class="frame-content">
	 <div class="plain ">
		<div class="plain EntryUnit">
		   		<table border="0" cellpadding="0" cellspacing="0">
		   			<tr>
		   				<td>
				<table>
					<tr>
						<td colspan="6" class="error">
							<html:errors property="enu6" />
						</td>
					</tr>
					<tr>
							<th valign="middle" class=" header">
								Process
							</th>
							<td valign="middle" nowrap="nowrap" class=" value">
									<html:select styleId="sfld13" styleClass="wr-submitButtons:ln92  selectionfield" property="sfld13" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld13List" labelProperty="sfld13LabelList"/>
			</html:select>
							</td> 
									<td class="error"><span class=" error"><html:errors property="sfld13"/></span></td>
							<th valign="middle" class=" header">
								Status
							</th>
							<td valign="middle" nowrap="nowrap" class=" value">
									<html:select styleId="sfld14" styleClass="wr-submitButtons:ln92  selectionfield" property="sfld14" disabled="false">
			  		<html:option value=""><bean:message key="selectionfield.noselection"/></html:option>
			    <html:options property="sfld14List" labelProperty="sfld14LabelList"/>
			</html:select>
							</td> 
									<td class="error"><span class=" error"><html:errors property="sfld14"/></span></td>
					</tr>			
					</table>
						</td>
						<td valign="bottom">
					<table>
				      <tr>
			<c:if test="${webratio:isTargetAccessible('ln92', pageContext)}">
					  <td> <c:if test="${webratio:isTargetAccessible('ln92', pageContext)}">
			<input title="Search" onclick="$('#page17FormBean')[0].target='_self'" class=" button"  id="button:ln92" name="button:ln92" type="submit" value="Search">
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
		<c:if test="${webratio:isLayoutRefreshed('page17_cell_24,page17_grid_0', pageContext)}">
			<ControlData control="page17_cell_24" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pwu7_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pwu7_0,page17_cell_24,page17_grid_0', pageContext)}">
			<ControlData control="pwu7_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:choose>
<c:when test="${not(empty pwu7) and (pwu7.dataSize gt 0)}">
	<div class="frame">
	<div class="frame-title">Desktop</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
					<c:if test="${pwu7.scroller.of gt 10}">
						<table border="0" cellspacing="1" cellpadding="2">
						   <tr> 
									<td class="scrollText">
								        <c:choose>
								            <c:when test="${pwu7.scroller.current ne pwu7.scroller.first}">
							     	             <c:if test="${webratio:isTargetAccessible('pwu7First', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.First"/>" id="pwu7First" onclick="return ajaxRequest('<webratio:Link link="pwu7First" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7First', sourcePage: 'page17'}))" class=" scroll" href="<webratio:Link link="pwu7First" position="index"/>">							
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
							                <c:when test="${pwu7.scroller.current ne pwu7.scroller.previous}">
								    	         <c:if test="${webratio:isTargetAccessible('pwu7Previous', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Previous"/>" id="pwu7Previous" onclick="return ajaxRequest('<webratio:Link link="pwu7Previous" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Previous', sourcePage: 'page17'}))" class=" scroll" href="<webratio:Link link="pwu7Previous" position="index"/>">							
					<bean:message key="PowerIndex.Previous"/></a>
	</c:if>
							                </c:when>
							                <c:otherwise>
								           			<span><bean:message key="PowerIndex.Previous"/></span>
								           	</c:otherwise>
							            </c:choose>
								    </td>
							    <td class="scrollText" nowrap>${pwu7.scroller.from} <bean:message key="PowerIndex.To"/> ${pwu7.scroller.to} <bean:message key="PowerIndex.Of"/> ${pwu7.scroller.of}</td>
								    <td class="scrollText">
								        <c:choose>
							                <c:when test="${pwu7.scroller.current ne pwu7.scroller.next}">
					    			    	     <c:if test="${webratio:isTargetAccessible('pwu7Next', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Next"/>" id="pwu7Next" onclick="return ajaxRequest('<webratio:Link link="pwu7Next" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Next', sourcePage: 'page17'}))" class=" scroll" href="<webratio:Link link="pwu7Next" position="index"/>">							
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
					    		            <c:when test="${pwu7.scroller.current ne pwu7.scroller.last}">
						    		    	     <c:if test="${webratio:isTargetAccessible('pwu7Last', pageContext)}">
		 			<a title="<bean:message key="PowerIndex.Last"/>" id="pwu7Last" onclick="return ajaxRequest('<webratio:Link link="pwu7Last" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Last', sourcePage: 'page17'}))" class=" scroll" href="<webratio:Link link="pwu7Last" position="index"/>">							
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
									    <c:forEach var="current" varStatus="status" items="${pwu7.scroller.blocks}">
									      <c:set var="index" value="${status.index}"/>
									      <span class="jump">
									      <c:choose>
									        <c:when test="${current ne pwu7.scroller.current}">
									          <a class=" link" href="<webratio:Link escapeXml="true" link="pwu7Block" position="index"/>"  onclick="return ajaxRequest('<webratio:Link link="pwu7Block" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7Block', sourcePage: 'page17'}))">${current}</a>
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
					        <th nowrap="nowrap" class="attachment header">
						            #
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7activityInstanceProcessInstanceName', pageContext)}">
		 			<a title="Process" id="pwu7activityInstanceProcessInstanceName" onclick="return ajaxRequest('<webratio:Link link="pwu7activityInstanceProcessInstanceName" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7activityInstanceProcessInstanceName', sourcePage: 'page17'}))" class=" sort" href="<webratio:Link link="pwu7activityInstanceProcessInstanceName" position="index"/>">							
					Process</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7activityInstanceName', pageContext)}">
		 			<a title="Activity" id="pwu7activityInstanceName" onclick="return ajaxRequest('<webratio:Link link="pwu7activityInstanceName" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7activityInstanceName', sourcePage: 'page17'}))" class=" sort" href="<webratio:Link link="pwu7activityInstanceName" position="index"/>">							
					Activity</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7activityInstanceStatus', pageContext)}">
		 			<a title="Status" id="pwu7activityInstanceStatus" onclick="return ajaxRequest('<webratio:Link link="pwu7activityInstanceStatus" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7activityInstanceStatus', sourcePage: 'page17'}))" class=" sort" href="<webratio:Link link="pwu7activityInstanceStatus" position="index"/>">							
					Status</a>
	</c:if>
					        </th>
					        <th nowrap="nowrap" class=" header">
						             <c:if test="${webratio:isTargetAccessible('pwu7activityInstanceReadyTimestamp', pageContext)}">
		 			<a title="Running for" id="pwu7activityInstanceReadyTimestamp" onclick="return ajaxRequest('<webratio:Link link="pwu7activityInstanceReadyTimestamp" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'pwu7activityInstanceReadyTimestamp', sourcePage: 'page17'}))" class=" sort" href="<webratio:Link link="pwu7activityInstanceReadyTimestamp" position="index"/>">							
					Running for</a>
	</c:if>
					        </th>
			<c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr10', null, pageContext)}">
<th class="small header"></th> 
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr11', null, pageContext)}">
<th class=" header"></th> 
</c:if>
			</c:if>
						</tr>
						<!-- end header -->
				<!-- instances -->
				<c:forEach var="current" varStatus="status" items="${pwu7.data}">
					<c:set var="index" value="${status.index}"/>	
						<tr class="row<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">	
						        <td class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class="link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page17'}))" >
			</c:if>
						            <img src="WRResources/spacer.gif" class="bullet<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" border="0" alt="details"/>					
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										</a>
			</c:if>
							    </td>
								   <td class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> integer">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page17'}))" >
			</c:if>
									<fmt:formatNumber value="${current.processAttachmentCount}" pattern="${integerPattern}"/>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page17'}))" >
			</c:if>
									<c:out value="${current.processInstanceName}"/>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page17'}))" >
			</c:if>
									<c:out value="${current.name}"/>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> string">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page17'}))" >
			</c:if>
									<c:out value="${current.status}"/>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										</a>
			</c:if>
								   </td>
								   <td class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if> timestamp">
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										<a href="<webratio:Link escapeXml="true" link="ln83" position="index"/>" class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>" onclick="return ajaxRequest('<webratio:Link link="ln83" position="index" selectiveRefresh="true"/>', $H({pressedLink: 'ln83', sourcePage: 'page17'}))" >
			</c:if>
									<c:set var="startedSince" value="${current.readySince}"/>    
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
<% } %>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
										</a>
			</c:if>
								   </td>
			<c:if test="${webratio:isTargetAccessible('ln83', pageContext)}">
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr10', 'index', pageContext)}">
									<td class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
							   			<c:choose>
							   				<c:when test="${pwu7.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr10', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
		 			<a title="resume" id="ln82" class="small linkCurrentAlternate" href="<webratio:Link link="ln82" position="index"/>">
					resume</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr10', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
		 			<a title="resume" id="ln82" class="small linkCurrent" href="<webratio:Link link="ln82" position="index"/>">
					resume</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr10', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
		 			<a title="resume" id="ln82" class="small linkAlternate" href="<webratio:Link link="ln82" position="index"/>">
					resume</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr10', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln82', pageContext)}">
		 			<a title="resume" id="ln82" class="small link" href="<webratio:Link link="ln82" position="index"/>">
					resume</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
			<c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
<c:if test="${webratio:evaluateCondition('cexpr11', 'index', pageContext)}">
									<td class=" link<c:if test="${pwu7.currentIndex eq index}">Current</c:if><c:if test="${index mod 2 eq 0}">Alternate</c:if>">
							   			<c:choose>
							   				<c:when test="${pwu7.currentIndex eq index}">
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr11', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
		 			<a title="work on" id="ln84" class=" linkCurrentAlternate" href="<webratio:Link link="ln84" position="index"/>">
					work on</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr11', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
		 			<a title="work on" id="ln84" class=" linkCurrent" href="<webratio:Link link="ln84" position="index"/>">
					work on</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:when>
							   				<c:otherwise>
							   						<c:choose>
							   							<c:when test="${index mod 2 eq 0}">
															 <c:if test="${webratio:evaluateCondition('cexpr11', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
		 			<a title="work on" id="ln84" class=" linkAlternate" href="<webratio:Link link="ln84" position="index"/>">
					work on</a>
	</c:if></c:if>
														</c:when>
														<c:otherwise>
															 <c:if test="${webratio:evaluateCondition('cexpr11', 'index', pageContext)}"><c:if test="${webratio:isTargetAccessible('ln84', pageContext)}">
		 			<a title="work on" id="ln84" class=" link" href="<webratio:Link link="ln84" position="index"/>">
					work on</a>
	</c:if></c:if>
														</c:otherwise>
							   						</c:choose>
							   				</c:otherwise>
							   			</c:choose>
						   			</td>
</c:if>
			</c:if>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
</c:when>
<c:otherwise>
	<div class="frame">
	<div class="frame-title">Desktop</div>
	<div class="frame-content">
		<div class="plain ">
			<div class="plain PowerIndexUnit">
				<table>
				    <tr>
				      <td><bean:message key="NoWorkItemsFound"/></td>
				    </tr>
				</table>
			</div>
		</div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17_cell_36,page17_grid_0', pageContext)}">
			<ControlData control="page17_cell_36" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="page17_grid_1"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('page17_grid_1,page17_cell_36,page17_grid_0', pageContext)}">
			<ControlData control="page17_grid_1" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped"><c:if test="${webratio:evaluateCondition('cexpr9', null, pageContext)}">
<div class="frame">
	<div class="frame-title">Work Item Details</div>
	<div class="frame-content">
<div class="container_12">
				<div class="grid_6 alpha agrd_12">
					<div class="wr-ajaxDiv" id="page17_cell_37"></div>
				</div>
				<div class="grid_6 omega agrd_12">
					<div class="wr-ajaxDiv" id="page17_cell_43"></div>
				</div>
					<div class="clear"></div>
</div>
</div>
</div></c:if></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		<c:if test="${webratio:evaluateCondition('cexpr9', null, pageContext)}">
		<c:if test="${webratio:isLayoutRefreshed('page17_cell_37,page17_grid_1,page17_cell_36,page17_grid_0', pageContext)}">
			<ControlData control="page17_cell_37" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="dau6_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('dau6_0,page17_cell_37,page17_grid_1,page17_cell_36,page17_grid_0', pageContext)}">
			<ControlData control="dau6_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty dau6) and (dau6.dataSize gt 0)}">
		<div class="plain ">
			<div class="plain DataUnit">
			    <table>
							<tr class="row">
			        		  	<th class=" header">process name</th>
			        		  	<td class=" value string"><c:out value="${dau6.data.processName}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">name</th>
			        		  	<td class=" value string"><c:out value="${dau6.data.name}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">role</th>
			        		  	<td class=" value string"><c:out value="${dau6.data.group}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">status</th>
			        		  	<td class=" value string"><c:out value="${dau6.data.status}"/></td>
			        		</tr>
							<tr class="row">
			        		  	<th class=" header">ready since</th>
			        		  	<td class=" value timestamp"><c:set var="startedSince" value="${dau6.data.readySince}"/>    
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
			        		  	<th class=" header">active since</th>
			        		  	<td class=" value timestamp"><c:set var="startedSince" value="${dau6.data.activeSince}"/>    
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
			        		  	<th class=" header">worked at</th>
			        		  	<td class=" value timestamp"><fmt:formatDate value="${dau6.data.workedAt}" pattern="${timestampPattern}"/></td>
			        		</tr>
				  <tr>
				  <td colspan="14">
			           <table>
			               <tr>
			<c:if test="${webratio:isTargetAccessible('ln88', pageContext)}">
			                 <td class="link"> <c:if test="${webratio:isTargetAccessible('ln88', pageContext)}">
				<table cellspacing="0" cellpadding="0">
					<tr>
				<td valign="middle">
			 			<a title="History Diagram" id="ln88" class=" link" href="<webratio:Link link="ln88" position="index"/>" target="_blank" >
						<img title="History Diagram" alt="History Diagram" src="Resources/diagram.png" border="0"/>
					</a>
				</td>
					<td>
		 			<a title="History Diagram" id="ln88" class=" link" href="<webratio:Link link="ln88" position="index"/>" target="_blank" >
					History Diagram</a>
					</td>
				</tr>
			</table>	
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
		<c:if test="${webratio:isLayoutRefreshed('page17_cell_43,page17_grid_1,page17_cell_36,page17_grid_0', pageContext)}">
			<ControlData control="page17_cell_43" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
	<div class="wr-ajaxDiv" id="pu26_0"></div>
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
		<c:if test="${webratio:isLayoutRefreshed('pu26_0,page17_cell_43,page17_grid_1,page17_cell_36,page17_grid_0', pageContext)}">
			<ControlData control="pu26_0" type="text/html">
				<![CDATA[<webratio:CollectScripts var="inlineScripts" enabled="${wrBoxed}" eventHandlerWrapper="wr.keepScoped">
<c:if test="${not(empty pu26) and (pu26.dataSize gt 0)}">
 <div class="plain ">
	<div class="plain ProcessUnit">
      <table>
	      <c:forEach var="current" varStatus="status" items="${pu26.data}">
	           <c:set var="index" value="${status.index}"/>    
	           <c:set var="type" value="${current.type}"/>
	           <c:set var="typePattern" value="${type}Pattern"/>
	           <tr class="row">
	           	<th class="header">
	           		<c:out value="${current.name}"/>
	           	</th>
	           	<td class="value ${type}">
		           <c:forEach var="value" varStatus="vStatus" items="${current.values}">
		                <c:choose>
		                   <c:when test="${type eq 'boolean'}">
		                      <c:choose>
		                        <c:when test="${value}"><bean:message key="${type}.yes"/></c:when>
		                        <c:otherwise><bean:message key="${type}.no"/></c:otherwise>
		                      </c:choose>
		                   </c:when>
		                   <c:when test="${type eq 'date' or type eq 'time' or type eq 'timestamp'}">
		                     <fmt:formatDate value="${value}" pattern="${pageScope[typePattern]}"/>
		                   </c:when>
		                   <c:when test="${type eq 'integer' or type eq 'float' or type eq 'decimal'}">
		                     <fmt:formatNumber value="${value}" pattern="${pageScope[typePattern]}"/>
		                   </c:when>
		                   <c:when test="${type eq 'blob'}">
		                     <c:if test="${not (empty value)}">
		                       <a target="_blank" border="0" href="<webratio:BLOB value="${value}"/>"><c:out value="${value.name}"/></a>
		                     </c:if>
		                   </c:when>
		                   <c:when test="${type eq 'url'}">
		                     <c:if test="${not(empty value)}">
		                       <a target="_blank" href="<c:out value="${value}"/>"><c:out value="${value}"/></a>
		                     </c:if>
		                   </c:when>
		                   <c:when test="${type eq 'text'}">
		                     <c:out value="${value}"/>
		                   </c:when>
		                   <c:when test="${current.hasCases}">
		                     <c:out value="${value}"/>
		                   </c:when>
		                   <c:otherwise><c:out value="${value}"/></c:otherwise>
		                </c:choose>
		                <c:if test="${not vStatus.last}">&nbsp;</c:if>
		            </c:forEach>
	             </td>
	            </tr>
	        </c:forEach>
		</table>
	</div>
 </div>	
</c:if></webratio:CollectScripts>
					<c:if test="${wrBoxed and not(empty inlineScripts)}">
							<script type="text/javascript">
								wr.runScoped("${wrClientAppName}", function(ajaxRequest, WRAjaxRequest, $H, WRAjax, WRAjaxRequestUtils, WRAjaxRequestQueue, WREvent, WREventUtils, Form) {
									${inlineScripts}
								});
							</script>
					</c:if>]]>
			</ControlData>
		</c:if>
		</c:if>
		<![CDATA[
		</html:form>
	]]>
</PageRefresh>