<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateReview.aspx.cs" Inherits="MovieReviewer.CreateReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Awesome Movie Reviewer</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Default.aspx">Movie Review</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false">Movies <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Default.aspx">Movie List</a></li>
                            <li><a href="AddMovie.aspx">Add A Movie</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false">Reviews <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="ReviewList.aspx">Review List</a></li>
                            <li><a href="CreateReview.aspx">Create A Review</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <form runat="server" action="CreateReview.aspx" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="name" placeholder="Name" />
                <p>
                    Movie: <%= reviewInstance.Movie.Title %>
                </p>
                <input type="text" class="form-control" name="rating" placeholder="Rating (1-5)" />
                <input type="text" class="form-control" name="age" placeholder="Age" />
                <input type="text" class="form-control" name="gender" placeholder="Gender" />
                <input type="text" class="form-control" name="occupation" placeholder="Occupation" />
            </div>
            <input type="submit" class="btn btn-primary" value="Add" />
        </form>
    </div>

    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
</body>
</html>
