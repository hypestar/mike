<div class=header>
     <a href="${resource(dir:'')}"><img src="${resource(dir: 'images', file: 'logo.png')}" alt="Mike's logo"/></a>

<g:if test="${session.user}">
     <p> You are logged in as ${session.user.userName} | <g:link controller="user" action="logout">Logout </g:link></p>
</g:if>
<g:if test="${!session.user}">
     <p> You are logged in as Guest | <g:link controller="user" action="login">Login </g:link></p>
</g:if>

</div>
