<h1> Crypto Tracker </h1>

Crypto Tracker is a demo portfolio and crypto currency information tracking app. The app does function however information may not be upto date and will have to manually be updated. With Crypto Tracker you can manage your portfolio and include both currencies listed within the app or your personal input (with limited functionality).

<h2> Installation </h2>
To download this app, fork and clone both the backend and frontend repo (seperate).
<br>
Before setting up the frontend, please set up the backend.
<br>
Within the backend repo terminal, type:
<br>

```
bundle install
```
<br>

```
rails db:migrate
```

<br>

```
rails db:seed
```

<br>
To update information, a database reset as of right now is necessary. To do This you will lose the account created (will be updated once alternative is found)
<br>

```
rails db:reset
```

Next run the server using:
<br>

```
rails s
```

<br>
To close the server, within the console press CTRL + C.
<br>
Next read the README within the frontend repo.
<br>
<h2> Usage </h2>
From here, you can select a currency, view its information such as the highs and lows for the day, current value, marketcap, and supply. After signing up, you will gain access to using the portfolio tracker where you can monitor the amount of each currency as well as the total value of each investment (if the coin is supported).

