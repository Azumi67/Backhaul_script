![R (2)](https://github.com/Azumi67/PrivateIP-Tunnel/assets/119934376/a064577c-9302-4f43-b3bf-3d4f84245a6f)
نام پروژه : اسکریپت backhaul
---------------------------------------------------------------

![check](https://github.com/Azumi67/PrivateIP-Tunnel/assets/119934376/13de8d36-dcfe-498b-9d99-440049c0cf14)
**امکانات**
- ریورس تانل به صورت single یا multi
- یک سرور ایران و ده سرور خارج
- دارای ویرایش تمام سرور ها و کلاینت ها
- دارای status و نمایش لاگ ها
- پشتیبانی از ws, wss, tcp, tcpmux, wsmux, wssmux
- پورت فوروارد و امکان فوروارد پورت از یک ایپی بر روی ایپی دیگر
- امکان استفاده از لوکال ایپی ها به همراه این تانل
- داری حذف کامل تانل
- داری retry interval و mux
- پشتیبانی از nodelay
- پشتیبانی از selft signed certs
- پشتیبانی از authentication token
- دارای ریست تایمر بر حسب دقیقه یا ساعت

-----------------------
<div align="right">
  <details>
    <summary><strong><img src="https://github.com/Azumi67/Rathole_reverseTunnel/assets/119934376/3cfd920d-30da-4085-8234-1eec16a67460" alt="Image"> نکات</strong></summary>
  
------------------------------------ 


- ادرس cert ها در این مکان میباشد  < /etc/backhaul
- ادرس sniff در حالت single در این directory میباشد > /etc/backhaul.json
- ادرس sniff در حالت multi در این directory میباشد > /etc/backhaul_server1.json  یا /etc/backhaul_client1.json
- در حالت مولتی هر کانفیگ در سرور ایران برای یک کلاینت خارج میباشد. به عبارتی اگر دو کلاینت خارج دارم، پس باید در سرور ایران دو کانفیگ داشته باشم
- برای تغییر یا ویرایش پس از انجام تغییرات، گزینه save را بزنید

  </details>
</div>
  
------------------------------------ 

  ![6348248](https://github.com/Azumi67/PrivateIP-Tunnel/assets/119934376/398f8b07-65be-472e-9821-631f7b70f783)
**آموزش استفاده از اسکریپت**

 <div align="right">
  <details>
    <summary><strong><img src="https://github.com/Azumi67/Rathole_reverseTunnel/assets/119934376/fcbbdc62-2de5-48aa-bbdd-e323e96a62b5" alt="Image"> </strong>روش ریورس tcpmux - single</summary>

------------------
- این اموزش برای نمونه نوشته شده است و تنها برای اشنایی شما با این اسکریپت میباشد
- بقیه روش هم به همین صورت است و میتوانید از این اموزش برای سایر موارد در single method استفاده نمایید. در این روش من به وسیله tcpmux بین یک سرور ایران و یک کلاینت خارج ارتباط برقرار میکنم

![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **سرور ایران**

<p align="right">
  <img src="https://github.com/user-attachments/assets/e53358b2-a2bb-4a81-9934-e1b212ef5b72" alt="Image" />
</p>

- خب اول سرور ایران را کانفیگ میکنم. من در کلاینت خارج دو عدد پورت دارم. پورت اول، 5050 و پورت دوم 6060 میباشد.
- نخست از من سوال میشود که تانل پورت چه میباشد. من 800 را وارد میکنم
- توکن را azumi قرار میدهم.
- گزینه Nodelay را فعال میکنم . شما میتوانید غیرفعال کنید که bandwidth بهتری داشته باشد
- نیاری به web interface ندارم و No را واد میکنم
- سایر موارد را به صورت پیش فرض قرار میدهم. شما میتوانید در صورت دانش کافی، اعداد مورد نظر خود را وارد نمایید
- سپس به قسمت بعدی کانفیگ میرسم . گزینه اول که همون فوروارد پورت میباشد. گزینه دوم فوروارد پورت از یک ایپی خاص. گزینه سوم فوروارد پورت بر روی ایپی خاص. گزینه 4 ، فوروارد پورت از یک ایپی خاص بر روی یک ایپی خاص میباشد
- من گزینه اول را انتخاب میکنم. از من سوال میشود که چند عدد پورت دارید. من در کلاینت خارج دو عدد پورت دارم، پس عدد 2 را وارد میکنم و سپس پورت ها را به ترتیب وارد میکنم.
<p align="right">
  <img src="https://github.com/user-attachments/assets/a8c45b89-a720-4ff3-aa05-cb279f7b9372" alt="Image" />
</p>
 
- سپس از من سوال میشود که ایا ریست تایمر میخواهم فعال کنم که گزینه Y را میزنم. شما هر ساعتی که مناسب خودتان است را وارد نمایید.

----------------------

![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **کلاینت خارج**

<p align="right">
  <img src="https://github.com/user-attachments/assets/1f2e485b-86ca-4ff8-89bf-77d499a17653" alt="Image" />
</p>

- سپس کلاینت خارج را کانفیگ میکنم.
- ایپی 4 یا 6 سرور ایران را میخواهد که من ایپی 4 سرور ایران را وارد میکنم
- پورت تانل را همانند سرور ایران وارد میکنم
- توکن هم همانند سرور ایران وارد میکنم
- گزینه Nodelay را فعال میکنم
- نیازی به web interface و sniff ندارم
- سایر موارد به صورت default قرار میدهم. بعدا میتوان در ویرایش تانل ان ها را تغییر داد
- سپس از من سوال میشود که ایا ریست تایمر را میخواهم که فعال شود که گزینه y را میزنم و همان مقدار سرور ایران را وارد میکنم
<p align="right">
  <img src="https://github.com/user-attachments/assets/e08cb1ef-8924-41da-af77-668cb39f0897" alt="Image" />
</p>

- این status متود تانل شما و مقداری از لاگ های شما را نشان میدهد. در صورت مشاهده کامل، نام سرویس در قسمت بالا نوشته شده است. با systemctl status بررسی نمایید
<p align="right">
  <img src="https://github.com/user-attachments/assets/222b63c5-5b6c-45d4-89f2-2a7bccc58a5a" alt="Image" />
</p>

- این نمونه ای از ویرایش تانل میباشد که میتوانید گزینه های مختلف را ویرایش نمایید. مثلا من پورت تانل را عوض میکنم و سپس save را میزنم و سپس همین کار را در کلاینت خارج انجام میدهم.
- در کلاینت خارج در کنار تغییر پورت، امکان تغییر ایپی سرور ایران هم وجود دارد.
- سایر موارد هم در صورت نیاز میتوانید تغییر دهید و save را بزنید
------------------

  </details>
</div>
<div align="right">
  <details>
    <summary><strong><img src="https://github.com/Azumi67/Rathole_reverseTunnel/assets/119934376/fcbbdc62-2de5-48aa-bbdd-e323e96a62b5" alt="Image"> </strong>روش ریورس wss - single</summary>

------------------
- این اموزش برای نمونه نوشته شده است و تنها برای اشنایی شما با این اسکریپت میباشد
- بقیه روش هم به همین صورت است و میتوانید از این اموزش برای سایر موارد در single method استفاده نمایید. در این روش من به وسیله wss بین یک سرور ایران و یک کلاینت خارج ارتباط برقرار میکنم

![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **سرور ایران**

<p align="right">
  <img src="https://github.com/user-attachments/assets/29105625-a739-4b03-ad68-8da156dd6d48" alt="Image" />
</p>

- خب اول سرور ایران را کانفیگ میکنم. من در کلاینت خارج دو عدد پورت دارم. پورت اول، 5050 و پورت دوم 6060 میباشد.
- نخست پیش نیاز ها نصب میشود و self signed cert هم generate میشود
- نخست از من سوال میشود که تانل پورت چه میباشد. من 800 را وارد میکنم
- توکن را azumi قرار میدهم.
- گزینه Nodelay را فعال میکنم . شما میتوانید غیرفعال کنید که bandwidth بهتری داشته باشد
- نیاری به web interface ندارم و No را واد میکنم
- سایر موارد را به صورت پیش فرض قرار میدهم. شما میتوانید در صورت دانش کافی، اعداد مورد نظر خود را وارد نمایید
- سپس به قسمت بعدی کانفیگ میرسم . گزینه اول که همون فوروارد پورت میباشد. گزینه دوم فوروارد پورت از یک ایپی خاص. گزینه سوم فوروارد پورت بر روی ایپی خاص. گزینه 4 ، فوروارد پورت از یک ایپی خاص بر روی یک ایپی خاص میباشد
- من گزینه اول را انتخاب میکنم. از من سوال میشود که چند عدد پورت دارید. من در کلاینت خارج دو عدد پورت دارم، پس عدد 2 را وارد میکنم و سپس پورت ها را به ترتیب وارد میکنم
- سپس از من سوال میشود که ایا ریست تایمر میخواهم فعال کنم که گزینه Y را میزنم. شما هر ساعتی که مناسب خودتان است را وارد نمایید.

----------------------

![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **کلاینت خارج**

<p align="right">
  <img src="https://github.com/user-attachments/assets/374a05eb-b1f4-4a52-917a-7f305d71642d" alt="Image" />
</p>

- سپس کلاینت خارج را کانفیگ میکنم.
- ایپی 4 یا 6 سرور ایران را میخواهد که من ایپی 4 سرور ایران را وارد میکنم
- پورت تانل را همانند سرور ایران وارد میکنم
- توکن هم همانند سرور ایران وارد میکنم
- گزینه Nodelay را فعال میکنم
- نیازی به web interface و sniff ندارم
- سایر موارد به صورت default قرار میدهم. بعدا میتوان در ویرایش تانل ان ها را تغییر داد
- سپس از من سوال میشود که ایا ریست تایمر را میخواهم که فعال شود که گزینه y را میزنم و همان مقدار سرور ایران را وارد میکنم
- در مورد status و edit tunnel در قسمت tcpmux توضیحاتی دادم
------------------

  </details>
</div>
<div align="right">
  <details>
    <summary><strong><img src="https://github.com/Azumi67/Rathole_reverseTunnel/assets/119934376/fcbbdc62-2de5-48aa-bbdd-e323e96a62b5" alt="Image"> </strong>روش ریورس ws - single</summary>

------------------
- این اموزش برای نمونه نوشته شده است و تنها برای اشنایی شما با این اسکریپت میباشد
- بقیه روش هم به همین صورت است و میتوانید از این اموزش برای سایر موارد در single method استفاده نمایید. در این روش من به وسیله ws بین یک سرور ایران و یک کلاینت خارج ارتباط برقرار میکنم

![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **سرور ایران**

<p align="right">
  <img src="https://github.com/user-attachments/assets/4c8d5fbc-66fe-49c2-b5e7-d8d85f0e0fd3" alt="Image" />
</p>

- خب اول سرور ایران را کانفیگ میکنم. من در کلاینت خارج دو عدد پورت دارم. پورت اول، 5050 و پورت دوم 6060 میباشد.
- نخست از من سوال میشود که تانل پورت چه میباشد. من 800 را وارد میکنم
- توکن را azumi قرار میدهم.
- گزینه Nodelay را فعال میکنم . شما میتوانید غیرفعال کنید که bandwidth بهتری داشته باشد
- نیاری به web interface ندارم و No را واد میکنم
- سایر موارد را به صورت پیش فرض قرار میدهم. شما میتوانید در صورت دانش کافی، اعداد مورد نظر خود را وارد نمایید
- سپس به قسمت بعدی کانفیگ میرسم . گزینه اول که همون فوروارد پورت میباشد. گزینه دوم فوروارد پورت از یک ایپی خاص. گزینه سوم فوروارد پورت بر روی ایپی خاص. گزینه 4 ، فوروارد پورت از یک ایپی خاص بر روی یک ایپی خاص میباشد
- من گزینه اول را انتخاب میکنم. از من سوال میشود که چند عدد پورت دارید. من در کلاینت خارج دو عدد پورت دارم، پس عدد 2 را وارد میکنم و سپس پورت ها را به ترتیب وارد میکنم.
- سپس از من سوال میشود که ایا ریست تایمر میخواهم فعال کنم که گزینه Y را میزنم. شما هر ساعتی که مناسب خودتان است را وارد نمایید.

----------------------

![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **کلاینت خارج**

<p align="right">
  <img src="https://github.com/user-attachments/assets/b259e927-51ea-49ee-9c57-4ebf02846d10" alt="Image" />
</p>

- سپس کلاینت خارج را کانفیگ میکنم.
- ایپی 4 یا 6 سرور ایران را میخواهد که من ایپی 4 سرور ایران را وارد میکنم
- پورت تانل را همانند سرور ایران وارد میکنم
- توکن هم همانند سرور ایران وارد میکنم
- گزینه Nodelay را فعال میکنم
- نیازی به web interface و sniff ندارم
- سایر موارد به صورت default قرار میدهم. بعدا میتوان در ویرایش تانل ان ها را تغییر داد
- سپس از من سوال میشود که ایا ریست تایمر را میخواهم که فعال شود که گزینه y را میزنم و همان مقدار سرور ایران را وارد میکنم
<p align="right">
  <img src="https://github.com/user-attachments/assets/65b5f1fb-b85e-41b4-8952-166a660cf97e" alt="Image" />
</p>

- این نمونه برای سرور ایران میباشد که میتوانید گزینه های مختلف را ویرایش نمایید. مثلا من پورت تانل را عوض میکنم و سپس save را میزنم و سپس همین کار را در کلاینت خارج انجام میدهم.
<p align="right">
  <img src="https://github.com/user-attachments/assets/b8572f39-faee-4aa2-a446-7279c35d588b" alt="Image" />
</p>

- در کلاینت خارج در کنار تغییر پورت، امکان تغییر ایپی سرور ایران هم وجود دارد.
- سایر موارد هم در صورت نیاز میتوانید تغییر دهید و save را بزنید

------------------

  </details>
</div>
<div align="right">
  <details>
    <summary><strong><img src="https://github.com/Azumi67/Rathole_reverseTunnel/assets/119934376/fcbbdc62-2de5-48aa-bbdd-e323e96a62b5" alt="Image"> </strong>روش ریورس wss - مولتی</summary>

------------------
- این اموزش برای نمونه نوشته شده است و تنها برای اشنایی شما با این اسکریپت میباشد
- بقیه روش هم به همین صورت است و میتوانید از این اموزش برای سایر موارد در multi method استفاده نمایید. در این روش من به وسیله wss بین یک سرور ایران و دو کلاینت خارج ارتباط برقرار میکنم

![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **سرور ایران کانفیگ اول**

<p align="right">
  <img src="https://github.com/user-attachments/assets/e32035f4-2256-4403-82dd-cef85be4f3fa" alt="Image" />
</p>

- دقت نمایید که هر کانفیگ در سرور ایران در برابر کلاینت خارج میباشد. بدین صورت که اگر من 2 عدد کلاینت خارج دارم پس باید در سرور ایران، دو عدد کانفیگ داشته باشم
<p align="right">
  <img src="https://github.com/user-attachments/assets/b1ced759-ccb1-47ff-b70c-fd9c0ff30db8" alt="Image" />
</p>

- خب اول سرور ایران را کانفیگ میکنم. من در کلاینت خارج اول دو عدد پورت دارم و در کلاینت خارج دوم یک عدد پورت دارم
- در کلاینت خارج اول، پورت اول 5050 و پورت دوم 6060 میباشد و در کلاینت خارج دوم، پورت ان 5051 میباشد
- در سرور ایران، کانفیگ اول را setup میکنیم. نخست از من سوال میشود که تانل پورت چه میباشد. من 800 را وارد میکنم
- توکن کانفیگ اول را azumi قرار میدهم.
- گزینه Nodelay را فعال میکنم . شما میتوانید غیرفعال کنید که bandwidth بهتری داشته باشد
- نیاری به web interface ندارم و No را واد میکنم
- سایر موارد را به صورت پیش فرض قرار میدهم. شما میتوانید در صورت دانش کافی، اعداد مورد نظر خود را وارد نمایید
- سپس به قسمت بعدی کانفیگ میرسم . گزینه اول که همون فوروارد پورت میباشد. گزینه دوم فوروارد پورت از یک ایپی خاص. گزینه سوم فوروارد پورت بر روی ایپی خاص. گزینه 4 ، فوروارد پورت از یک ایپی خاص بر روی یک ایپی خاص میباشد
- من گزینه اول را انتخاب میکنم. از من سوال میشود که چند عدد پورت دارید. من دو عدد کلاینت خارج دارم و این کانفیگ اول میباشد پس مربوط به کلاینت اول خارج میباشد. من در کلاینت خارج اول، دو عدد پورت دارم، پس عدد 2 را وارد میکنم و سپس پورت ها را به ترتیب وارد میکنم.
- سپس از من سوال میشود که ایا ریست تایمر میخواهم فعال کنم که گزینه Y را میزنم. شما هر ساعتی که مناسب خودتان است را وارد نمایید.

----------------------
![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **سرور ایران کانفیگ دوم**

<p align="right">
  <img src="https://github.com/user-attachments/assets/8a41cf45-9462-4e67-b273-29eb5dd3cc8c" alt="Image" />
</p>

- کانفیگ اول در سرور ایران setup شد. حالا باید کانفیگ دوم را انجام دهم.
- چون دو عدد کلاینت خارج دارم باید دو عدد کانفیگ در سرور ایران داشته باشم که سرور ایران به هر دو کلاینت خارج متصل شود
- هر کلاینت خارج ممکن است چندین پورت داشته باشد که تعداد پورت را مشخص میکنید.
- به طور مثال من در کلاینت خارج اول، دو عدد پورت دارم و در کلاینت خارج دوم، 1 عدد پورت دارم
- در کلاینت خارج اول، پورت اول 5050 و پورت دوم 6060 میباشد و در کلاینت خارج دوم، پورت ان 5051 میباشد
- در سرور ایران، کانفیگ دوم را setup میکنم. نخست از من سوال میشود که تانل پورت چه میباشد. من 801 را وارد میکنم/ پورت تانل کانفیگ اول با کانفیگ دوم متفاوت خواهد بود
- توکن کانفیگ دوم را azumitan قرار میدهم.
- گزینه Nodelay را فعال میکنم . شما میتوانید غیرفعال کنید که bandwidth بهتری داشته باشد
- نیاری به web interface ندارم و No را واد میکنم
- سایر موارد را به صورت پیش فرض قرار میدهم. شما میتوانید در صورت دانش کافی، اعداد مورد نظر خود را وارد نمایید
- سپس به قسمت بعدی کانفیگ میرسم . گزینه اول که همون فوروارد پورت میباشد. گزینه دوم فوروارد پورت از یک ایپی خاص. گزینه سوم فوروارد پورت بر روی ایپی خاص. گزینه 4 ، فوروارد پورت از یک ایپی خاص بر روی یک ایپی خاص میباشد
- من گزینه اول را انتخاب میکنم. از من سوال میشود که چند عدد پورت دارید. تعداد پورت من در کلاینت خارج دوم، یک عدد 5051 است . پس عدد 1 را وارد میکنم
- سپس از من سوال میشود که ایا ریست تایمر میخواهم فعال کنم که گزینه Y را میزنم. شما هر ساعتی که مناسب خودتان است را وارد نمایید.زمان ها برابر باشد

----------------------
![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **کلاینت خارج اول**

<p align="right">
  <img src="https://github.com/user-attachments/assets/2bb96ca0-97f5-4dbf-8298-74def9876060" alt="Image" />
</p>

- سپس کلاینت خارج اول را کانفیگ میکنم.
- ایپی 4 یا 6 سرور ایران را میخواهد که من ایپی 4 سرور ایران را وارد میکنم
- پورت تانل کانفیگ اول را وارد میکنم. پورت 800 بود
- توکن هم همان توکن کانفیگ اول در سرور ایران را وارد میکنم. توکن azumi بود
- گزینه Nodelay را فعال میکنم
- نیازی به web interface و sniff ندارم
- سایر موارد به صورت default قرار میدهم. بعدا میتوان در ویرایش تانل ان ها را تغییر داد
- سپس از من سوال میشود که ایا ریست تایمر را میخواهم که فعال شود که گزینه y را میزنم و همان مقدار سرور ایران را وارد میکنم

----------------------
![green-dot-clipart-3](https://github.com/Azumi67/6TO4-PrivateIP/assets/119934376/902a2efa-f48f-4048-bc2a-5be12143bef3) **کلاینت خارج دوم**

<p align="right">
  <img src="https://github.com/user-attachments/assets/fe2105f3-ca34-4a1f-b32c-fe3ac5980a89" alt="Image" />
</p>

- سپس کلاینت خارج دوم را کانفیگ میکنم.
- ایپی 4 یا 6 سرور ایران را میخواهد که من ایپی 4 سرور ایران را وارد میکنم
- پورت تانل کانفیگ دوم را وارد میکنم. پورت 801 بود
- توکن هم همان توکن کانفیگ دوم در سرور ایران را وارد میکنم. توکن azumitan بود
- گزینه Nodelay را فعال میکنم
- نیازی به web interface و sniff ندارم
- سایر موارد به صورت default قرار میدهم. بعدا میتوان در ویرایش تانل ان ها را تغییر داد
- سپس از من سوال میشود که ایا ریست تایمر را میخواهم که فعال شود که گزینه y را میزنم و همان مقدار سرور ایران را وارد میکنم
<p align="right">
  <img src="https://github.com/user-attachments/assets/73da9352-d0da-45e2-86e5-a299da2ab5e3" alt="Image" />
</p>

- توضیحی کوتاه در مورد status مولتی میدم. در اینجا نوع تانل و مقدار کانفیگ های سرور ایران را نشان میدهد و مقدار از سرویس لاگ تانل شما هم نمایش میدهد.
- برای مشاهده status به صورت manual، نام سرویس را کپی کنید و با دستور systemclt status مشاهده نمایید
<p align="right">
  <img src="https://github.com/user-attachments/assets/02374739-4fec-49de-8c0e-766e2abcc57d" alt="Image" />
</p>

- این نمونه ای از ویرایش تانل در سرور ایران میباشد که گزینه های مختلفی را میشود تغییر داد
- به طور مثال من میخواهم پورت تانل کانفیگ اول در سرور ایران را تغییر بدهم.سپس باید در کلاینت خارج اول هم همین مقدار را وارد کنم. در اسکرین بعدی نشان میدم
- سایر موارد هم در صورت نیاز میتوانید تغییر دهید و save را بزنید
<p align="right">
  <img src="https://github.com/user-attachments/assets/709556e5-f795-4d9c-9fc7-0e229ffbd48f" alt="Image" />
</p>

- در کلاینت خارج اول هم پورت تانل را تغییر میدهم. ایپی سرور ایران هم که تغییری نکرده است
- سایر موارد هم در صورت نیاز میتوانید تغییر دهید و save را بزنید
------------------

  </details>
</div>

- در حال نوشتن ادامه اموزش
