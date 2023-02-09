<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/jq-3.6.0/dt-1.13.2/datatables.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Data Table</title>
</head>
<body >
    <div class="container">
        <h1 class="text-center">USER'S DETAILS</h1>
        <hr>

        <a class="btn btn-primary m-1 mb-3" href="../modules/index.php" role="button">Add a new User</a>
        <table id="myTable" class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>AGE</th>
                <th>COUNTRY</th>
                <th>GENDER</th>
                <th>LANGUAGES</th>
                <th>BIRTHDATE</th>
                <th>COMMENTS</th>
                <th>FILE</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$data item=item}
                <tr>
                    <td class="border border-black-600 p-2">{$item.id}</td>
                    <td class="border border-black-600 p-2">{$item.name}</td>
                    <td class="border border-black-600 p-2">{$item.age}</td>
                    <td class="border border-black-600 p-2">{$item.country}</td>
                    <td class="border border-black-600 p-2">{$item.gender}</td>
                    <td class="border border-black-600 p-2">{$item.languages}</td>
                    <td class="border border-black-600 p-2">{$item.birthdate}</td>
                    <td class="border border-black-600 p-2">{$item.comments}</td>
                    <td class="border border-black-600 p-2">{$item.filename}</td>
                    <td class="border border-black-600 p-2"><a class="font-medium text-blue-600 dark:text-blue-500 hover:underline" href="update.php?id={$item.id}">Edit</a>&nbsp;&nbsp; <a class="link-danger font-medium text-blue-600 dark:text-blue-500 hover:underline" href="delete.php?id={$item.id}">Delete</a></td>
                </tr>
        {/foreach}
        </tbody>
    </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs5/jq-3.6.0/dt-1.13.2/datatables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script>
        $(document).ready( function () {
        $('#myTable').DataTable();
    } );
    </script>
</body>

</html>