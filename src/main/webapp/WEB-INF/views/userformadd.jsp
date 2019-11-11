<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<title>Tambah User</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div align="left">
        <h1>Tambah Member</h1>
        <br />
        <form action="saveuser" th:action="@{/saveuser}" th:object="${TBL_MEMBER}" method="POST">
            
    <div class="form-group">
      <label for="email">Member ID:</label>
      <input type="text" class="form-control" th:field="*{memberid}" id="memberid"  placeholder="Read Only" name="memberid" readonly="readonly">
    </div> 
    
    <div class="form-group">
      <label for="pwd">Nama Member:</label>
      <input type="text" class="form-control" th:field="*{membername}" id="membername" placeholder="Masukan Nama Member" name="membername">
    </div>
   <div class="form-group">
      <label for="pwd">DOB:</label>
      <input type="date" class="form-control" th:field="*{dob}" id="dob" placeholder="Masukan DOB" name="dob">
    </div>
   
    <button type="submit" class="btn btn-default">Save</button>
  </form>
    </div>

</body>
</html>