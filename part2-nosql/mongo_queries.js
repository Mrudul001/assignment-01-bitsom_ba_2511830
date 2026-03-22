// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
    {
        _id: "E101",
        name: "Smartphone X",
        category: "Electronics",
        price: 35000,
        brand: "TechBrand",
        specs: { warranty_years: 2, voltage: "220V", battery: "5000mAh" },
        features: ["5G", "OLED Display", "Fast Charging"]
    },
    {
        _id: "C101",
        name: "Men's Jacket",
        category: "Clothing",
        price: 2500,
        brand: "FashionHub",
        sizes: ["S", "M", "L", "XL"],
        material: "Polyester",
        colors: ["Black", "Blue"]
    },
    {
        _id: "G101",
        name: "Organic Milk",
        category: "Groceries",
        price: 60,
        brand: "FreshFarm",
        expiry_date: new Date("2024-12-20"),
        nutrition: { calories: 42, protein: "3.4g", fat: "1g" },
        storage: "Refrigerated"
    }
]);

// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({
    category: "Electronics",
    price: { $gt: 20000 }
});

// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({
    category: "Groceries",
    expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne() — add a "discount_percent" field to a specific product
db.products.updateOne(
    { _id: "E101" },
    { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — create an index on category field
db.products.createIndex({ category: 1 });

