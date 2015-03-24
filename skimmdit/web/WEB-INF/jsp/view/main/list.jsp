<%--@elvariable id="ticketDatabase" type="java.util.Map<Integer, com.wrox.site.Ticket>"--%>
<template:basic htmlTitle="Skimmdit" bodyTitle="Skimmdit">
    <c:choose>
        <c:when test="${fn:length(postDatabase) == 0}">
            <i>There are no posts in the system.</i>
        </c:when>
        <c:otherwise>
            <c:forEach items="${postDatabase}" var="entry">
                ${entry.key}:
                <a href="<c:url value="/main/voteUp/${entry.key}"></c:url>">
                <img src="https://raw.githubusercontent.com/iconic/open-iconic/master/png/arrow-top-2x.png">
				</a>
				<c:out value="${entry.value.votes}"/>
                <a href="<c:url value="/main/voteDown/${entry.key}"></c:url>">
                	<img src="https://raw.githubusercontent.com/iconic/open-iconic/master/png/arrow-bottom-2x.png">
				</a>
                <a href="<c:url value="/main/view/${entry.key}" />">
                	<c:out value="${entry.value.title}"/>
                </a>
                <br />
<%--                 <c:out value="${entry.value.description}" /> created ticket --%>
                <a href="${post.link}" target="_blank">
      				<c:out value="${post.link}"/>
    			</a>
<%--                 <wrox:formatDate value="${entry.value.dateCreated}" type="both" --%>
<!--                                  timeStyle="short" dateStyle="medium" /><br /> -->
                <br />
            </c:forEach>
        </c:otherwise>
    </c:choose>
</template:basic>
