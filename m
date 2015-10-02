X-GM-THRID: 6200896862154653696
Date: Fri, 2 Oct 2015 03:00:13 -0700 (PDT)
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <b520f0bf-34b7-41a1-948f-7ca510325cfd@googlegroups.com>
In-Reply-To: <20151002040637.GA41415@ubuntu>
References: <20151002040637.GA41415@ubuntu>
Subject: Re: [PATCH] Staging: board: Fixed the error for implicit
 declaration of function
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_666_164422159.1443780013923"
X-Google-Token: EK2rubAFG6LwHIMBuy80
X-Google-IP: 124.124.47.116

------=_Part_666_164422159.1443780013923
Content-Type: multipart/alternative; 
	boundary="----=_Part_667_1079016198.1443780013924"

------=_Part_667_1079016198.1443780013924
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Julia! I have a doubt. I think I'm having trouble with the header file 
because it declares the function prototype with an extern keyword (I'm not 
sure if memory allocation plays a role in this). And, if the function has 
been declared in some header file then re-declaration of it won't be a good 
practice, I suppose. Please tell me whether extern has to do anything with 
it or not. This is the header file 
http://lxr.free-electrons.com/source/include/linux/of.h#L189. 
Thank you.

On Friday, October 2, 2015 at 9:36:47 AM UTC+5:30, Shivani Bhardwaj wrote:
>
> Fixed the error for implicit declaration of the function 
> 'of_find_all_nodes' by adding the appropriate header file and declaring 
> the function before it has been called. 
>
> Signed-off-by: Shivani Bhardwaj: <shivanib134@gmail.com> 
> --- 
>  drivers/staging/board/board.c | 2 ++ 
>  1 file changed, 2 insertions(+) 
>
> diff --git a/drivers/staging/board/board.c b/drivers/staging/board/board.c 
> index 29d456e..8d0ac82 100644 
> --- a/drivers/staging/board/board.c 
> +++ b/drivers/staging/board/board.c 
> @@ -19,11 +19,13 @@ 
>  #include <linux/of_irq.h> 
>  #include <linux/platform_device.h> 
>  #include <linux/pm_domain.h> 
> +#include <asm/prom.h> 
>   
>  #include "board.h" 
>   
>  static struct device_node *irqc_node __initdata; 
>  static unsigned int irqc_base __initdata; 
> +struct device_node *of_find_all_nodes(struct device_node *prev); 
>   
>  static bool find_by_address(u64 base_address) 
>  { 
> -- 
> 2.1.0 
>
>
------=_Part_667_1079016198.1443780013924
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julia! I have a doubt. I think I&#39;m having trouble w=
ith the header file because it declares the function prototype with an exte=
rn keyword (I&#39;m not sure if memory allocation plays a role in this). An=
d, if the function has been declared in some header file then re-declaratio=
n of it won&#39;t be a good practice, I suppose. Please tell me whether ext=
ern has to do anything with it or not. This is the header file http://lxr.f=
ree-electrons.com/source/include/linux/of.h#L189. <br>Thank you.<br><br>On =
Friday, October 2, 2015 at 9:36:47 AM UTC+5:30, Shivani Bhardwaj wrote:<blo=
ckquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-=
left: 1px #ccc solid;padding-left: 1ex;">Fixed the error for implicit decla=
ration of the function
<br>&#39;of_find_all_nodes&#39; by adding the appropriate header file and d=
eclaring
<br>the function before it has been called.
<br>
<br>Signed-off-by: Shivani Bhardwaj: &lt;<a href=3D"mailto:shivanib134@gmai=
l.com" target=3D"_blank">shivanib134@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/board/board.c | 2 ++
<br>=C2=A01 file changed, 2 insertions(+)
<br>
<br>diff --git a/drivers/staging/board/board.<wbr>c b/drivers/staging/board=
/board.<wbr>c
<br>index 29d456e..8d0ac82 100644
<br>--- a/drivers/staging/board/board.<wbr>c
<br>+++ b/drivers/staging/board/board.<wbr>c
<br>@@ -19,11 +19,13 @@
<br>=C2=A0#include &lt;linux/of_irq.h&gt;
<br>=C2=A0#include &lt;linux/platform_device.h&gt;
<br>=C2=A0#include &lt;linux/pm_domain.h&gt;
<br>+#include &lt;asm/prom.h&gt;
<br>=C2=A0
<br>=C2=A0#include &quot;board.h&quot;
<br>=C2=A0
<br>=C2=A0static struct device_node *irqc_node __initdata;
<br>=C2=A0static unsigned int irqc_base __initdata;
<br>+struct device_node *of_find_all_nodes(struct device_node *prev);
<br>=C2=A0
<br>=C2=A0static bool find_by_address(u64 base_address)
<br>=C2=A0{
<br>--=20
<br>2.1.0
<br>
<br></blockquote></div>
------=_Part_667_1079016198.1443780013924--

------=_Part_666_164422159.1443780013923--

