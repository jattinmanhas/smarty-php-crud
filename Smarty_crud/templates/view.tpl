<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" referrerpolicy="no-referrer" />
    <title>View Users</title>
</head>

<body>
    <div>
        <h1 class="text-3xl mt-1 font-bold text-center">All User's Details</h1>
        <hr class=" block mt-2 mb-2 w-96 mx-auto">
        <table class="border-collapse border border-black-800 m-8">
            <thead>
                <tr>
                    <th class="border border-black-600 p-2">ID</th>
                    <th class="border border-black-600 p-2">NAME</th>
                    <th class="border border-black-600 p-2">AGE</th>
                    <th class="border border-black-600 p-2">COUNTRY</th>
                    <th class="border border-black-600 p-2">GENDER</th>
                    <th class="border border-black-600 p-2">LANGUAGES</th>
                    <th class="border border-black-600 p-2">BIRTHDATE</th>
                    <th class="border border-black-600 p-2">COMMENTS</th>
                    <th class="border border-black-600 p-2">FILE</th>
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
                    <td class="border border-black-600 p-2"><a class="font-medium text-blue-600 dark:text-blue-500 hover:underline" href="update.php?id=<?php echo $row['id']; ?>">Edit</a>&nbsp;&nbsp; <a class="font-medium text-blue-600 dark:text-blue-500 hover:underline" href="delete.php?id=<?php echo $row['id']; ?>">Delete</a></td>
                </tr>
        {/foreach}
            </tbody>
        </table>

    </div>
</body>

</html>