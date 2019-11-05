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
        <h1>Tambah User</h1>
        <br />
        <form action="save" th:action="@{/update}" th:object="${TBL_USER_JAVA}"
            method="post">
            
    <div class="form-group">
      <label for="email">ID:</label>
      <input type="text" class="form-control" th:field="*{id}" id="id"  placeholder="Read Only" name="id" readonly="readonly">
    </div> 
    
    <div class="form-group">
      <label for="pwd">Nama Member:</label>
      <input type="text" class="form-control" th:field="*{name}" id="nama" placeholder="Masukan Nama Member" name="nama">
    </div>
   <div class="form-group">
      <label for="pwd">Email:</label>
      <input type="text" class="form-control" th:field="*{email}" id="email" placeholder="Masukan Email" name="email">
    </div>
   
    <button type="submit" class="btn btn-default">Save</button>
  </form>
    </div>

</body>
</html>