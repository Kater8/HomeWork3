import Foundation

/*
 
 Домашнє завдання 3
 
 Частина 1
 
 */

/*
 
 Розділ 1 - Потік керування
 
 - Цикли
 
 */

// Псевдонім для зберігання деталей товару
typealias ProductInfo = (String, Double, String, String, String)

// Користувач в інтернет-магазині додав наступні товари у кошик,
// але ще не визначився, яку саме відеократу придбати:
let cart: [ProductInfo] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socet: "sAM4", processor: "AMD")
]

/*
 
 Пункт 1.1
 
 Викороистовуючи цикил For виведіть у консоль усю інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 Сокет: значення, Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
     Сокет: s1151, Процессор: Intel
    ------------------------------------------------------
 */
for index in 0 ..< cart.count {
    let productInfo = cart[index]
    let productName = productInfo.0
    let price = productInfo.1
    let currency = productInfo.2
    let socket = productInfo.3
    let processor = productInfo.4
    
 
    print("------------------- \(index+1) -------------------------------")
    print("productName: \(productName)")
    print("price: \(price) \(currency)")
    print("socket: \(socket)")
    print("processor: \(processor)")
}


/*
 
 Пункт 1.2
 
 Викороистовуючи цикил For in виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD
     Процессор: Intel
    ------------------------------------------------------
 */
print("\n")
for index in 0..<cart.count {
    let productInfo = cart[index]
    let productName = productInfo.0
    let processor = productInfo.4
    
    print("------------------- \(index+1) -------------------------------")
    print("productName: \(productName)")
    print("processor: \(processor)")}


/*
 
 Пункт 1.3
 
 Викороистовуючи цикил While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Ціна: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Ціна: 1717.00 ₴
    ------------------------------------------------------
 */
print("\n")
var whilecounter = 0

while whilecounter < (cart.count){
    
    let productInfo = cart[whilecounter]
    let productName = productInfo.0
    let price = productInfo.1
    let currency = productInfo.2
    
    print("------------------- \(whilecounter+1) -------------------------------")
    print("productName: \(productName)")
    print("price: \(price) \(currency)")
    whilecounter += 1
    
}




/*
 
 Пункт 1.4
 
 Викороистовуючи цикил Repeate While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Сокет: s1151
    ------------------------------------------------------
 */
print("\n")
var repeatwhilecounter = 0
repeat {
    let productInfo = cart[repeatwhilecounter]
    let productName = productInfo.0
    let socet = productInfo.3
    
print("------------------- \(repeatwhilecounter+1) -------------------------------")
print("product Name: \(productName)")
print("socet: \(socet)")
    
    repeatwhilecounter += 1
} while repeatwhilecounter < cart.count


/*
 
 Розділ 1 - Потік керування
 
 - If / if else
 
 */

/*
 
 Пункт 1.5
 
 Викороистовуючи будь-який з циклів та умовні оператори if else
 виведіть у консоль тільки ті товари
 - ціна яких менша 5000.00 грн.
 - значення socket є s1151
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    Сокет: s1151
    ------------------------------------------------------
 */
print("\n")
for ifelse in 0..<(cart.count){
    let productInfo = cart[ifelse]
    let price = productInfo.1
    let socket = productInfo.3
    let currency = productInfo.2
    let productName = productInfo.0
    
    if price < 5000.0, socket == "s1151" {
        print("------------------- \(ifelse+1) -------------------------------")
        print("Product Name: \(productName)")
        print("price: \(price) \(currency)")
        print("socket: \(socket)")
    }
   
}


/*
 
 Розділ 1 - Потік керування
 
 - Switch
 
 */

/*
 
 Пункт 1.6
 
 Викороистовуючи будь-який з циклів та умовні оператор switch
 додати перевірку через case на відповідність процесору товару AMD чи Intel,
 значення процесору брати з опису товару
 (дивись Примітка після прикладу приклад switch) і
 вивести у консоль наступну інформацію про всі товари
 - назва товару
 - ціна товару
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ------------------------------------------------------

 * Примітка
    
     let processorStringValue = "Значення процесору з продукту"
 
     switch processorStringValue {
     case "Intel":
         // друк інформації для товару з процесором Intel
     case "AMD":
         // друк інформації для товару з процесором AMD
     default:
         // друк пустої строки
     }
    
 */

print("\n")
for switchcounter in 0..<(cart.count){
    let productInfo = cart[switchcounter]
    let price = productInfo.1
    let currency = productInfo.2
    let productName = productInfo.0
    let processorStringValue = productInfo.4
    print("------------------- \(switchcounter+1) -------------------------------")
    switch processorStringValue {
    case "Intel":
        print("Product Name (Intel): \(productName)")
        print("price: \(price) \(currency)")
    case "AMD":
        print("Product Name (AMD): \(productName)")
        print("price: \(price) \(currency)")
    default: print("")
   }
   
}


/*
 
 Розділ 2 - Функції
 
 */

/*
 
 Пункт 2.1
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію без параметрів,
 яка виведе інформацю про товари з кошика тільки з процесором Inetel
 у консоль у наступному форматі:
 
 ------------------- Inetel -------------------------------
 1 Назва товару: значення товару
 2 Назва товару: значення товару
 3 Назва товару: значення товару
 ...
 n Назва товару: значення товару // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Inetel -------------------------------
    1 Назва товару: ASRock H310CV-HD
    2 Назва товару: Asus Prime H310M-E R2.0
    ...
    n Назва товару: Asus WS C246 Pro // n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її
 
 */
print("\n")
print("------------------- Intel -------------------------------")
func productInfoIntel() {
    for intelcounter in 0..<(cart.count){
        let productInfo = cart[intelcounter]
        let productName = productInfo.0
        let processor = productInfo.4
        switch processor {
        case "Intel": print("\(intelcounter+1) Product Name : \(productName)")
        default: break
        }
    }
}

productInfoIntel()

/*
 
 Пункт 2.2
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію з параметром максимальна ціна (maxPrice: Double),
 яка виведе інформацю про товари з кошика тільки з ціною, яка менше за значення maxPrice
 у консоль у наступному форматі:
 
 ------------------- Товари з ціною менше значення -------------------------------
 1 Назва товару: значення, Ціна: знак валюти і значення
 2 Назва товару: значення, Ціна: знак валюти і значення
 3 Назва товару: значення, Ціна: знак валюти і значення
 ...
 n Назва товару: значення, Ціна: знак валюти і значення // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Товари з ціною менше 4500.00 -------------------------------
    1 Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ...
    n Назва товару: Asus WS C246 Pro, Ціна: 2299.0// n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її з максимальним значенням на свій розсуд для перевірки
 
 */
print("\n")
print("-------------------Товари з ціною менше 4500.00  -------------------------------")
func product(maxPrice: Double) {
    for counter in 0..<(cart.count) {
        let productInfo = cart[counter]
        let productName = productInfo.0
        let price = productInfo.1
        let currency = productInfo.2
        if price < maxPrice {
        print("\(counter+1) Product Name : \(productName), Price: \(price) \(currency)")
        }
    }
}
product(maxPrice: 4500.0)




/*
 
 Пункт 2.3
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію яка приймає параметром тип процесору (processor: String),
 та повертає найдорожчий товар (тобто поіністю елемент типу ProductInfo) з вказаним процесором processor
 
 результат записати у константу та вивести у консоль у форматі:
 ------------------- Найдорожчий товар за процесором значення -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
 
     ------------------- Найдорожчий товар за процесором Intel -------------------------------
     Назва товару: Asus WS C246 Pro, Ціна: 10979.00 ₴
     -----------------------------------------------------------------------------------------
 
 */

func findMostExpensiveProduct(withProcessor processor: String, in cart: [ProductInfo]) -> ProductInfo? {
    var maxPrice: Double = 0
    var mostExpensiveProduct: ProductInfo? = nil
    
    for productInfo in cart {
        let price = productInfo.1
        let processor = productInfo.4
        
        if processor == processor && price > maxPrice {
            maxPrice = price
            mostExpensiveProduct = productInfo
        }
    }
    
    return mostExpensiveProduct
}

if let mostExpensiveProduct = findMostExpensiveProduct(withProcessor: "Intel", in: cart) {
    print("\n")
    print("------------------- Найдорожчий товар за процесором \(mostExpensiveProduct.4) -------------------------------")
    print("Назва товару: \(mostExpensiveProduct.0), Ціна: \(mostExpensiveProduct.1) \(mostExpensiveProduct.2)")
}

/*
 
 Розділ 3 - Перечислення / Enum
 
 */

/*
 
 Пункт 3.1
 
 Зарезервувати (описати) enum для типу процесора ProcessorType, який матиме 2 випадки (cases) з тестовим описом
 - intel = "Intel"
 - amd = "AMD"
 
 створити змінну типу створенного enum з якимось із значень
 
 */






/*
 
 Пункт 3.2
 
 Зарезервувати (описати) enum для валюти (Currency), який матиме 3 випадки (cases) з тестовим описом
 - uah = "UAH"
 - usd = "USD"
 - eur = "EUR"
 
 створити змінну типу створенного enum з якимось із значень
 
 */





/*
 
 Розділ 4 - Структури і класи
 
 */

/*
 
 Пункт 4.1

 Описати структуру MotherBoard (Материньска плата)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - socet типу String
 - processor типу ProcessorType (enum, оголошений у розділі Перечислення)
 
 створити змінну типу MotherBoard і спробувати поміняти їй інші значення
 
 */






/*
 
 Пункт 4.2

 Описати клас Product (опис продукту)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - name типу String
 - price типу Double
 - currency типу Currency (використати enum з розділу 3 пункт 3.2)
 - motherBoard типу MotherBoard (використати структуру MotherBoard з розділу 4 пункт 4.1)
 
 створити змінну типу Product і спробувати поміняти їй інші значення
 
 */





