User.destroy_all

User.create!([{
    name: "John Doe",
    email: "john@doe.com",
    phonenumber: "123-456-7890"
}])

Account.destroy_all

Account.create!([{
    accttype: "Cash",
    name: "Cash account 1",
    balance: "100.00",
    user_id: "1"
}])