<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="MovieReviewer.AddMovie" %>

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
                    <li><a href="Default.aspx">Movie List</a></li>
                    <li class="active"><a href="AddMovie.aspx">Add A Movie<span class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false">Create A Review <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <% foreach (var movie in Movies)
                                { %>
                            <li><a href="CreateReview.aspx?id=<%= movie.Id %>"><%= movie.Title %></a></li>
                            <% } %>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <form runat="server" action="Add.aspx" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="title" placeholder="Title" />
                <input type="text" class="form-control" name="genre" placeholder="Genre" />
                <input type="text" class="form-control" name="imdb" placeholder="IMDB Link" />
                <input type="text" class="form-control" name="release" placeholder="Release Date" />
            </div>
            <input type="submit" class="btn btn-primary" value="Add" />
        </form>
    </div>

    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
</body>
</html>
