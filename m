X-GM-THRID: 10161736384512
Date: Sun, 29 Mar 2015 05:31:51 -0700 (PDT)
From: Cristina Georgiana Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: cristina.opriceana@gmail.com
Message-Id: <15b6d646-9754-4212-a199-83d1b23ddd30@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1503280706330.2060@localhost6.localdomain6>
References: <20150328013012.GA7624@Inspiron>
 <alpine.DEB.2.02.1503280706330.2060@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove duplicated
 argument to |
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_49_1417362416.1427632311478"
X-Google-Token: ELfh36gF8BgfxlVyXLo0
X-Google-IP: 141.85.0.103

------=_Part_49_1417362416.1427632311478
Content-Type: multipart/alternative; 
	boundary="----=_Part_50_1721513188.1427632311478"

------=_Part_50_1721513188.1427632311478
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On Saturday, March 28, 2015 at 8:07:40 AM UTC+2, Julia Lawall wrote:
>
> On Sat, 28 Mar 2015, Cristina Opriceana wrote: 
>
> > Delete duplicated argument to | for the state argument in 
> > the _clr_fwstate_() function call as it is redundant. 
> > Detected with coccinelle. 
> > 
> > Signed-off-by: Cristina Opriceana <cristina....@gmail.com <javascript:>> 
>
> > --- 
> >  drivers/staging/rtl8712/rtl871x_ioctl_set.c | 3 +-- 
> >  1 file changed, 1 insertion(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c 
> b/drivers/staging/rtl8712/rtl871x_ioctl_set.c 
> > index bd1d1b7..22262b3 100644 
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c 
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c 
> > @@ -266,8 +266,7 @@ void r8712_set_802_11_infrastructure_mode(struct 
> _adapter *padapter, 
> >                  /* clear WIFI_STATION_STATE; WIFI_AP_STATE; 
> WIFI_ADHOC_STATE; 
> >                   * WIFI_ADHOC_MASTER_STATE */ 
> >                  _clr_fwstate_(pmlmepriv, WIFI_STATION_STATE | 
> WIFI_AP_STATE | 
> > -                              WIFI_ADHOC_STATE | 
> WIFI_ADHOC_MASTER_STATE | 
> > -                              WIFI_AP_STATE); 
> > +                              WIFI_ADHOC_STATE | 
> WIFI_ADHOC_MASTER_STATE); 
>
> For these, you should normally check the nearby code to see if they 
> actually meant something else, but thanks to the comment that seems 
> unlikely in this case.  How did you find it? 
>
> julia 
>

Well, it was detected with coccinelle, then I followed the code and saw it 
was duplicated.

 

>
> >                  switch (networktype) { 
> >                  case Ndis802_11IBSS: 
> >                          set_fwstate(pmlmepriv, WIFI_ADHOC_STATE); 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20150328013012.GA7624%40Inspiron. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_50_1721513188.1427632311478
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br>On Saturday, March 28, 2015 at 8:07:40 AM UTC+2, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sat, 28 Mar 2015, Cristina Opriceana wrote:
<br>
<br>&gt; Delete duplicated argument to | for the state argument in
<br>&gt; the _clr_fwstate_() function call as it is redundant.
<br>&gt; Detected with coccinelle.
<br>&gt; 
<br>&gt; Signed-off-by: Cristina Opriceana &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="KnhKOZeb8HUJ" rel="nofollow">cristina....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/rtl8712/<wbr>rtl871x_ioctl_set.c | 3 +--
<br>&gt; &nbsp;1 file changed, 1 insertion(+), 2 deletions(-)
<br>&gt; 
<br>&gt; diff --git a/drivers/staging/rtl8712/<wbr>rtl871x_ioctl_set.c b/drivers/staging/rtl8712/<wbr>rtl871x_ioctl_set.c
<br>&gt; index bd1d1b7..22262b3 100644
<br>&gt; --- a/drivers/staging/rtl8712/<wbr>rtl871x_ioctl_set.c
<br>&gt; +++ b/drivers/staging/rtl8712/<wbr>rtl871x_ioctl_set.c
<br>&gt; @@ -266,8 +266,7 @@ void r8712_set_802_11_<wbr>infrastructure_mode(struct _adapter *padapter,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* clear WIFI_STATION_STATE; WIFI_AP_STATE; WIFI_ADHOC_STATE;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * WIFI_ADHOC_MASTER_STATE */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_clr_fwstate_<wbr>(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE |
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE |
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;WIFI_AP_STATE);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE);
<br>
<br>For these, you should normally check the nearby code to see if they 
<br>actually meant something else, but thanks to the comment that seems 
<br>unlikely in this case. &nbsp;How did you find it?
<br>
<br>julia
<br></blockquote><div><br></div><div>Well, it was detected with coccinelle, then I followed the code and saw it was duplicated.</div><div><br></div><div>&nbsp;</div><blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch (networktype) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case Ndis802_11IBSS:
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;set_<wbr>fwstate(pmlmepriv, WIFI_ADHOC_STATE);
<br>&gt; -- 
<br>&gt; 1.9.1
<br>&gt; 
<br>&gt; -- 
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="KnhKOZeb8HUJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="KnhKOZeb8HUJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/20150328013012.GA7624%40Inspiron" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20150328013012.GA7624%<wbr>40Inspiron</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; 
<br></blockquote></div>
------=_Part_50_1721513188.1427632311478--

------=_Part_49_1417362416.1427632311478--

