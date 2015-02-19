X-GM-THRID: 797133766656
Date: Thu, 19 Feb 2015 10:45:41 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com
Message-Id: <7c7deedc-b929-472d-b2a9-c028655abf25@googlegroups.com>
In-Reply-To: <1424371263-16991-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1424371263-16991-1-git-send-email-ksenija.stanojevic@gmail.com>
Subject: Re: [PATCH] Staging: media: parport: Replace header file
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_38_1373678018.1424371541126"
X-Google-Token: ENXemKcFOIZM6rwkDMI0
X-Google-IP: 77.46.215.254

------=_Part_38_1373678018.1424371541126
Content-Type: multipart/alternative; 
	boundary="----=_Part_39_1957243276.1424371541126"

------=_Part_39_1957243276.1424371541126
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I just saw  Vatika did the same patch, sorry.

On Thursday, February 19, 2015 at 7:41:13 PM UTC+1, Ksenija Stanojevic 
wrote:
>
> This patch fixes the checkpatch.pl warning: 
> WARNING: "Use #include <linux/uaccess.h> instead of <asm/uaccess.h>" 
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com> 
> --- 
>  drivers/staging/media/parport/bw-qcam.c | 2 +- 
>  1 file changed, 1 insertion(+), 1 deletion(-) 
>
> diff --git a/drivers/staging/media/parport/bw-qcam.c 
> b/drivers/staging/media/parport/bw-qcam.c 
> index 67b9da1..27f9e4a 100644 
> --- a/drivers/staging/media/parport/bw-qcam.c 
> +++ b/drivers/staging/media/parport/bw-qcam.c 
> @@ -73,7 +73,7 @@ OTHER DEALINGS IN THE SOFTWARE. 
>  #include <linux/sched.h> 
>  #include <linux/videodev2.h> 
>  #include <linux/mutex.h> 
> -#include <asm/uaccess.h> 
> +#include <linux/uaccess.h> 
>  #include <media/v4l2-common.h> 
>  #include <media/v4l2-ioctl.h> 
>  #include <media/v4l2-device.h> 
> -- 
> 1.9.1 
>
>
------=_Part_39_1957243276.1424371541126
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">I just saw&nbsp; Vatika did the same patch, sorry.<br><br>On Thursday, February 19, 2015 at 7:41:13 PM UTC+1, Ksenija Stanojevic wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This patch fixes the <a href="http://checkpatch.pl" target="_blank">checkpatch.pl</a> warning:
<br>WARNING: "Use #include &lt;linux/uaccess.h&gt; instead of &lt;asm/uaccess.h&gt;"
<br>
<br>Signed-off-by: Ksenija Stanojevic &lt;<a href="mailto:ksenija.stanojevic@gmail.com" target="_blank">ksenija.stanojevic@gmail.com</a>&gt;
<br>---
<br>&nbsp;drivers/staging/media/<wbr>parport/bw-qcam.c | 2 +-
<br>&nbsp;1 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/drivers/staging/media/<wbr>parport/bw-qcam.c b/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>index 67b9da1..27f9e4a 100644
<br>--- a/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>+++ b/drivers/staging/media/<wbr>parport/bw-qcam.c
<br>@@ -73,7 +73,7 @@ OTHER DEALINGS IN THE SOFTWARE.
<br>&nbsp;#include &lt;linux/sched.h&gt;
<br>&nbsp;#include &lt;linux/videodev2.h&gt;
<br>&nbsp;#include &lt;linux/mutex.h&gt;
<br>-#include &lt;asm/uaccess.h&gt;
<br>+#include &lt;linux/uaccess.h&gt;
<br>&nbsp;#include &lt;media/v4l2-common.h&gt;
<br>&nbsp;#include &lt;media/v4l2-ioctl.h&gt;
<br>&nbsp;#include &lt;media/v4l2-device.h&gt;
<br>-- 
<br>1.9.1
<br>
<br></blockquote></div>
------=_Part_39_1957243276.1424371541126--

------=_Part_38_1373678018.1424371541126--

