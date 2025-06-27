Bu projede, bir e-ticaret platformunun iki temel işlevi olan **ürün listesi** ve **kullanıcı yönetimi** için **Product Catalog** ve **User Management** adlı iki bağımsız mikroservis geliştirilmiştir. Servisler kendi veri setlerini **HTML+JSON formatında** barındırmakta ve `index.html` üzerinden dinamik içerik sunmaktadır.

**Product Catalog** servisi, `products.json` içindeki verileri kullanıcıya ürün adı ve fiyat olarak sunar. **User Management** servisi ise `users.json` verileriyle kullanıcı adlarını ve isimlerini listeler. Her iki servis, sadece veri sunumu amaçlı çalıştığı için **diğer servislerle iletişim gerektirmez**.

Bu iki servis birbirinden tamamen bağımsız çalışmakta ve **doğrudan birbiriyle iletişim kurmamaktadır**. Uygulama, bir **monolit** yerine **mikroservis mantığıyla** yapılandırıldığından, servisler herhangi bir API üzerinden veri alışverişi yapmaz; bunun yerine her biri kendi verisini kendi içerisinde barındırır ve işler. 

Bu yapı, servisler arasında **sıkı bağlılık (tight coupling)** oluşmasını engeller ve servislerin ayrı ayrı **test edilmesini, deploy edilmesini ve ölçeklenmesini kolaylaştırır**.

Projede her bir servis için **ayrı bir klasör** ve **bağımsız CI/CD hattı** yapılandırılmıştır. Tek bir monorepo yerine **bağımsız repo veya bağımsız klasör yapısının tercih edilmesinin temel nedeni**, bu mikroservislerin birbirinden bağımsız olarak **geliştirilebilir ve yönetilebilir olmasıdır**.
