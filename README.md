#Yellow Apollo: Web controller for your Vagrant boxes

So, the basic idea is as follows:

You have a dedicated machine for your [Vagrant](http://vagrantup.com) boxes.

You want to just click a button and it starts up a box for you, with SSH acess etc.

So what Yellow Apollo does for you is exactly that - it gives you a (currently sparse) web UI for that.


To start using Yellow Apollo, first you need to install [Virtual Box](https://virtualbox.org).

Then, clone the git repo and run `bundle install`.

You will need to add a Vagrant Box - currently, I have it setup to use the following:

`vagrant box add base http://files.vagrantup.com/lucid32.box`

After that, just run main.rb with `ruby main.rb`, and head over to [http://localhost:4567](http://localhost:4567), and take a look:

![alt text](http://i.imgur.com/cJnKk.png)