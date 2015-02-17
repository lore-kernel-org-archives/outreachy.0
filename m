X-GM-THRID: 126410031104
Date: Tue, 17 Feb 2015 06:52:49 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com
Message-Id: <b15e99a1-8a07-44ea-a6c5-b749f6e3d8cc@googlegroups.com>
In-Reply-To: <1424183244-4997-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1424183244-4997-1-git-send-email-ksenija.stanojevic@gmail.com>
Subject: Re: [PATCH] Staging: media: vino: Replace C99 with C89 style
 comment.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1529_502734438.1424184769670"
X-Google-Token: EMGrjacFmeTtLFZTI9o0
X-Google-IP: 77.46.215.254

------=_Part_1529_502734438.1424184769670
Content-Type: multipart/alternative; 
	boundary="----=_Part_1530_1257032168.1424184769670"

------=_Part_1530_1257032168.1424184769670
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Yes, I can try. Should I make those changes in form of individual patch(es) 
or make a patchset along with this patch

On Tuesday, February 17, 2015 at 3:30:08 PM UTC+1, Ksenija Stanojevic wrote:
>
> This patch fixes checkpatch.pl error in saa7191.c file 
> ERROR: "do not use C99 // comments" 
>
> Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com> 
> --- 
>  drivers/staging/media/vino/saa7191.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/media/vino/saa7191.c 
> b/drivers/staging/media/vino/saa7191.c 
> index 8e96992..087acab 100644 
> --- a/drivers/staging/media/vino/saa7191.c 
> +++ b/drivers/staging/media/vino/saa7191.c 
> @@ -33,7 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>"); 
>
>  MODULE_LICENSE("GPL"); 
>   
>   
> -// #define SAA7191_DEBUG 
> +/* #define SAA7191_DEBUG */ 
>   
>  #ifdef SAA7191_DEBUG 
>  #define dprintk(x...) printk("SAA7191: " x); 
> -- 
> 1.9.1 
>
>
------=_Part_1530_1257032168.1424184769670
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Yes, I can try. Should I make those changes in form of individual patch(es) or make a patchset along with this patch<br><br>On Tuesday, February 17, 2015 at 3:30:08 PM UTC+1, Ksenija Stanojevic wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This patch fixes <a href="http://checkpatch.pl" target="_blank">checkpatch.pl</a> error in saa7191.c file
<br>ERROR: "do not use C99 // comments"
<br>
<br>Signed-off-by: Ksenija Stanojevic&lt;<a href="mailto:ksenija.stanojevic@gmail.com" target="_blank">ksenija.stanojevic@<wbr>gmail.com</a>&gt;
<br>---
<br>&nbsp;drivers/staging/media/vino/<wbr>saa7191.c | 2 +-
<br>&nbsp;1 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/media/vino/<wbr>saa7191.c b/drivers/staging/media/vino/<wbr>saa7191.c
<br>index 8e96992..087acab 100644
<br>--- a/drivers/staging/media/vino/<wbr>saa7191.c
<br>+++ b/drivers/staging/media/vino/<wbr>saa7191.c
<br>@@ -33,7 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen &lt;<a href="mailto:tmnousia@cc.hut.fi" target="_blank">tmnousia@cc.hut.fi</a>&gt;");
<br>&nbsp;MODULE_LICENSE("GPL");
<br>&nbsp;
<br>&nbsp;
<br>-// #define SAA7191_DEBUG
<br>+/* #define SAA7191_DEBUG */
<br>&nbsp;
<br>&nbsp;#ifdef SAA7191_DEBUG
<br>&nbsp;#define dprintk(x...) printk("SAA7191: " x);
<br>-- 
<br>1.9.1
<br>
<br></blockquote></div>
------=_Part_1530_1257032168.1424184769670--

------=_Part_1529_502734438.1424184769670--

