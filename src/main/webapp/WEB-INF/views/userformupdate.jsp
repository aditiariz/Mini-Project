<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />

<title>Tambah Member</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
 <div align="left">
        <h1>Edit Data</h1>
        <br />
        <form action="#" th:action="@{/update}" th:object="${TBL_MEMBER}"
            method="post">
            
    <div class="form-group">
      <label for="email">ID:</label>
      <input type="text" class="form-control" th:field="*{memberid}" id="id"  placeholder="Read Only" name="id" readonly="readonly">
    </div> 
    
    <div class="form-group">
      <label for="pwd">Nama Member:</label>
      <input type="text" class="form-control" th:field="*{membername}" id="membername" placeholder="Masukan Nama Member" name="membername">
    </div>
    
     <div class="form-group">
      <label for="pwd">DOB:</label>
      <input type="date" class="form-control" th:field="*{dob}" id="dob" placeholder="Masukan Email" name="dob">
    </div>
    
      <button type="submit" class="btn btn-default">Save</button>
  </form>
    </div>


</body>
</html>