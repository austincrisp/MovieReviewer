<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MovieReviewer.Default" %>

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
                    <li class="active"><a href="Default.aspx">Movie List<span class="sr-only">(current)</span></a></li>
                    <li><a href="AddMovie.aspx">Add A Movie</a></li>
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
        <h1>Be Gentle.</h1>

        <table class="table">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>IMDB Link</th>
                    <th>Release Date</th>
                </tr>
            </thead>
            <tbody>
                <% foreach (var movie in Movies)
                    { %>
                <tr>
                    <td><%= movie.Title %></td>
                    <td><%= movie.Genre %></td>
                    <td><%= movie.IMDBLink %></td>
                    <td><%= movie.ReleaseDate %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
</body>
</html>
