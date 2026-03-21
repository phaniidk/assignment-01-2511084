// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: "E1",
    name: "Laptop",
    category: "Electronics",
    price: 60000,
    brand: "Dell",
    specs: { warranty: "2 years", voltage: "220V" }
  },
  {
    product_id: "C1",
    name: "T-Shirt",
    category: "Clothing",
    price: 1000,
    brand: "Nike",
    sizes: ["S", "M", "L"],
    material: "Cotton"
  },
  {
    product_id: "G1",
    name: "Milk",
    category: "Groceries",
    price: 50,
    expiry_date: new Date("2024-12-01"),
    nutrition: { calories: 150, fat: "5g" }
  }
]);

// OP2: find() — retrieve Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — retrieve Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { product_id: "E1" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — create index on category
db.products.createIndex({ category: 1 });
