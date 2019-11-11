<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<title>Tambah Asset</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div align="left">
        <h1>Tambah Asset</h1>
        <br />

        <form action="saveasset" th:action="@{/saveasset}" th:object="${tbl_asset}"
            method="post">
            
    <div class="form-group">
      <label for="email">Asset ID:</label>
      <input type="text" class="form-control" th:field="*{assetid}" id="assetid"  placeholder="Read Only" name="assetid" readonly="readonly">
    </div> 
    
    <div class="form-group">
      <label for="pwd">Asset Number:</label>
      <input type="number" class="form-control" th:field="*{assetnumber}" id="assetnumber" placeholder="Masukan Asset Number" name="assetnumber">
    </div>
   <div class="form-group">
      <label for="pwd">Asset Name:</label>
      <input type="text" class="form-control" th:field="*{assetname}" id="assetname" placeholder="Masukan Asset Name" name="assetname">
    </div>
            
    <div class="form-group">
      <label for="pwd">Category:</label>
      <input type="text" class="form-control" th:field="*{category}" id="nama" placeholder="Masukan Category" name="category">
    </div>
   
    <button type="submit" class="btn btn-default">Save</button>
  </form>
    </div>

</body>
</html>