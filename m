X-GM-THRID: 6950274232690409472
Date: Mon, 12 Apr 2021 10:18:34 -0700 (PDT)
From: PEGGY TAWAH <tawahpeggy98@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <db3845ad-609b-47a1-b5ea-d2f894e54dc3n@googlegroups.com>
In-Reply-To: <YHRX6glqzA95kKpy@kroah.com>
References: <20210412141329.GA31738@peggy-Lenovo-V130-15IKB>
 <YHRX6glqzA95kKpy@kroah.com>
Subject: Re: [PATCH] Staging: greybus: Remove a space because line is too
 long
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1292_32818690.1618247914478"

------=_Part_1292_32818690.1618247914478
Content-Type: multipart/alternative; 
	boundary="----=_Part_1293_535502073.1618247914478"

------=_Part_1293_535502073.1618247914478
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Okay thank you all.
working on fixes to match the changes stated.
On Monday, April 12, 2021 at 10:23:42 AM UTC-4 gregkh wrote:

> On Mon, Apr 12, 2021 at 10:13:34AM -0400, PEGGY TAWAH wrote: 
> > checkpatch complained of line 182 too long in greybus driver,so i 
> removed some spaces. CHECK: line length of 101 exceeds 100 colums 
>
> Please line-wrap your changelog text. 
>
> > 
> > Signed-off-by: PEGGY TAWAH <tawahp...@gmail.com> 
>
> Please use lower case letters where needed. 
>
> Also you did not cc: the proper mailing lists, please read the 
> instructions again. 
>
>
> > 
> > --- 
> > drivers/staging/greybus/arche-platform.c | 2 +- 
> > 1 file changed, 1 insertion(+), 1 deletion(-) 
> > 
> > diff --git a/drivers/staging/greybus/arche-platform.c 
> b/drivers/staging/greybus/arche-platform.c 
> > index e374dfc0c92f..1bfec5fae849 100644 
> > --- a/drivers/staging/greybus/arche-platform.c 
> > +++ b/drivers/staging/greybus/arche-platform.c 
> > @@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, 
> void *devid) 
> > if (arche_pdata->wake_detect_state != 
> > WD_STATE_COLDBOOT_START) { 
> > arche_platform_set_wake_detect_state(arche_pdata, 
> > - WD_STATE_COLDBOOT_TRIG); 
> > + WD_STATE_COLDBOOT_TRIG); 
> > spin_unlock_irqrestore(&arche_pdata->wake_lock, 
> > flags); 
> > return IRQ_WAKE_THREAD; 
> > -- 
> > 2.17.1 
> > 
> > 
>
> Your patch is whitespace damaged and can not be applied at all :( 
>

------=_Part_1293_535502073.1618247914478
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<br>Okay thank you all.<div>working on fixes to match the changes stated.</div><div class="gmail_quote"><div dir="auto" class="gmail_attr">On Monday, April 12, 2021 at 10:23:42 AM UTC-4 gregkh wrote:<br></div><blockquote class="gmail_quote" style="margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">On Mon, Apr 12, 2021 at 10:13:34AM -0400, PEGGY TAWAH wrote:
<br>&gt; checkpatch complained of line 182 too long in greybus driver,so i removed some spaces. CHECK: line length of 101 exceeds 100 colums
<br>
<br>Please line-wrap your changelog text.
<br>
<br>&gt; 
<br>&gt; Signed-off-by:  PEGGY TAWAH &lt;<a href="" data-email-masked="" rel="nofollow">tawahp...@gmail.com</a>&gt;
<br>
<br>Please use lower case letters where needed.
<br>
<br>Also you did not cc: the proper mailing lists, please read the
<br>instructions again.
<br>
<br>
<br>&gt; 
<br>&gt; ---
<br>&gt;  drivers/staging/greybus/arche-platform.c | 2 +-
<br>&gt;  1 file changed, 1 insertion(+), 1 deletion(-)
<br>&gt; 
<br>&gt; diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
<br>&gt; index e374dfc0c92f..1bfec5fae849 100644
<br>&gt; --- a/drivers/staging/greybus/arche-platform.c
<br>&gt; +++ b/drivers/staging/greybus/arche-platform.c
<br>&gt; @@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
<br>&gt;                                 if (arche_pdata-&gt;wake_detect_state !=
<br>&gt;                                                 WD_STATE_COLDBOOT_START) {
<br>&gt;                                         arche_platform_set_wake_detect_state(arche_pdata,
<br>&gt; -                                                                            WD_STATE_COLDBOOT_TRIG);
<br>&gt; +                                                                 WD_STATE_COLDBOOT_TRIG);
<br>&gt;                                         spin_unlock_irqrestore(&amp;arche_pdata-&gt;wake_lock,
<br>&gt;                                                                flags);
<br>&gt;                                         return IRQ_WAKE_THREAD;
<br>&gt; --
<br>&gt; 2.17.1
<br>&gt; 
<br>&gt; 
<br>
<br>Your patch is whitespace damaged and can not be applied at all :(
<br></blockquote></div>
------=_Part_1293_535502073.1618247914478--

------=_Part_1292_32818690.1618247914478--

