	<br/>
	<div class="authbar">
		<span>Dear <strong>${loggedinuser}</strong>, Welcome to Online Examination System.</span> <span class="floatRight"><a href="<c:url value="/logout" />">Logout</a></span>
	</div>
<nav class="navbar navbar-inverse">
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="<c:url value='/' />">Home <span class="sr-only">(current)</span></a></li>
        <li><a href="<c:url value='/courses' />">Courses<span class="sr-only">(current)</span></a></li>
        <li><a href="#">Products</a></li>
        <li><a href="<c:url value='/list' />">Administration<span class="sr-only">(current)</span></a></li>

      </ul>
      <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>

    </div><!-- /.navbar-collapse -->
</nav>