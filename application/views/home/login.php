<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title><?= $title ?></title>
</head>
<body>
  <form action="<?= base_url('secure/login0112') ?>" method="POST">
    <input type="text" name="username" placeholder="Username..">
    <input type="password" name="password" placeholder="Password..">
    <button type="submit" name="submit">Login</button>
  </form>
</body>
</html>