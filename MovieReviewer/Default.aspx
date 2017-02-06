<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MovieReviewer.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Awesome Movie Reviewer</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
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
                            <li class="active"><a href="Default.aspx">Movie List<span class="sr-only">(current)</span></a></li>
                            <li><a href="AddMovie.aspx">Add A Movie</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false">Reviews <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="ReviewList.aspx">Review List</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h1>Be Gentle.</h1>

        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>IMDB Link</th>
                    <th>Release Date</th>
                    <th>Write A Review</th>
                </tr>
            </thead>
            <tbody>
                <% foreach (var movie in Movies)
                    { %>
                <tr>
                    <td><a class="btn" href="ModifyMovie.aspx?id=<%= movie.Id %>" role="button"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
                    <td id="title"><%= movie.Title %></td>
                    <td id="genre"><%= movie.Genre %></td>
                    <td><%= movie.IMDBLink %></td>
                    <td><%= movie.ReleaseDate %></td>
                    <td id="film"><a class="btn" href="CreateReview.aspx?id=<%= movie.Id %>" role="button"><span class="glyphicon glyphicon-film" aria-hidden="true"></span></a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
</body>
</html>
