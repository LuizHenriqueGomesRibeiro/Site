<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form method="get" action="<%=request.getContextPath()%>/ServletProjetos" id="projeto" name="contactForm" class="contactForm">
				<input type="hidden" name="acao" value="alternarRankingProjetos" type="hidden">
				<div id="divId_projeto"></div>
				<div class="modal-body">
					<select name="ranking_projeto" class="form-control" id="sel1">
						<c:forEach items="${options}" var="ml" varStatus="status">
							<c:choose>
								<c:when test="${ml}">
									<c:choose>
										<c:when test="${projeto.ranking == status.index + 1}">
											<option selected="selected" id="option${status.index + 1}" value="${status.index + 1}">Ranking ${status.index + 1} (em utilização)
											</option>
										</c:when>
										<c:otherwise>
											<option id="option${status.index + 1}" value="${status.index + 1}">Ranking ${status.index + 1} (em utilização)</option>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${projeto.ranking == status.index + 1}">
											<option selected="selected" id="option${status.index + 1}" value="${status.index + 1}">Ranking ${status.index + 1}</option>
										</c:when>
										<c:otherwise>
											<option id="option${status.index + 1}" value="${status.index + 1}">Ranking ${status.index + 1}</option>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	function putId(id){
		jQuery("#divId_projeto").append("<input type=\"hidden\" name=\"id_projeto\" id=\"id_projeto\" value=" + id + ">");
	}
</script>
