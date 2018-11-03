X-GM-THRID: 6619413531629453312
X-Received: by 2002:a37:87c3:: with SMTP id j186-v6mr12423639qkd.51.1541254669118;
        Sat, 03 Nov 2018 07:17:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4a83:: with SMTP id x125-v6ls9860095qka.12.gmail; Sat,
 03 Nov 2018 07:17:48 -0700 (PDT)
X-Received: by 2002:a37:a4d:: with SMTP id 74mr12305518qkk.57.1541254668671;
        Sat, 03 Nov 2018 07:17:48 -0700 (PDT)
Received: by 2002:a37:286:0:0:0:0:0 with SMTP id v6msqkg;
        Sat, 3 Nov 2018 04:37:55 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dnPlDWXiPGxvuO/9U9nBkbjj2XkfMANpMYNLsymGe1wq/k3enGOPWFSGkQZgo1MTqFxSsfoHNjmg==
X-Received: by 2002:a37:4946:: with SMTP id w67-v6mr215067qka.5.1541245074457;
        Sat, 03 Nov 2018 04:37:54 -0700 (PDT)
X-Google-Thread-Subscription: Yes
X-Google-Web-Client: true
Date: Sat, 3 Nov 2018 04:37:54 -0700 (PDT)
From: tungolcild@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <a43ce3ad-9062-4294-a23c-f9898fe44276@googlegroups.com>
In-Reply-To: <alpine.DEB.2.21.1811030757170.2922@hadrien>
References: <20181102234508.GA27353@kvasir.local>
 <alpine.DEB.2.21.1811030757170.2922@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove extra space
 before tab
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_880_1570575996.1541245074270"
X-Google-Token: EJKR9t4Flv2BfzTJOIU0
X-Google-IP: 90.242.56.176

------=_Part_880_1570575996.1541245074270
Content-Type: multipart/alternative; 
	boundary="----=_Part_881_1799221193.1541245074270"

------=_Part_881_1799221193.1541245074270
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On Saturday, November 3, 2018 at 6:57:54 AM UTC, Julia Lawall wrote:
>
>
>
> On Fri, 2 Nov 2018, Ioannis Valasakis wrote: 
>
> > Remove extra spaces before the tab character inside a comment section. 
> > Reported by checkpatch. 
> > 
> > Signed-off-by: Ioannis Valasakis <co...@wizofe.uk <javascript:>> 
> > --- 
> >  drivers/staging/greybus/greybus_protocols.h | 4 ++-- 
>
> You seem to have sent three patches on this file.  Greg will want them to 
> be in a series, to reduce ambiguity about how they should be applied. 
>
> Likewise for the other files. 
>
> julia 
>
>
By series do you mean that I need to create a patchset? 

ta
ioannis 

> >  1 file changed, 2 insertions(+), 2 deletions(-) 
> > 
> > diff --git a/drivers/staging/greybus/greybus_protocols.h 
> b/drivers/staging/greybus/greybus_protocols.h 
> > index 5783f715bdc2..429a952c5200 100644 
> > --- a/drivers/staging/greybus/greybus_protocols.h 
> > +++ b/drivers/staging/greybus/greybus_protocols.h 
> > @@ -918,8 +918,8 @@ struct gb_spi_device_config_response { 
> >   *        0 the default (from @spi_device) is used. 
> >   * @len: size of rx and tx buffers (in bytes) 
> >   * @delay_usecs: microseconds to delay after this transfer before 
> (optionally) 
> > - *         changing the chipselect status, then starting the next 
> transfer or 
> > - *         completing this spi_message. 
> > + *        changing the chipselect status, then starting the next 
> transfer or 
> > + *        completing this spi_message. 
> >   * @cs_change: affects chipselect after this transfer completes 
> >   * @bits_per_word: select a bits_per_word other than the device default 
> for this 
> >   *        transfer. If 0 the default (from @spi_device) is used. 
> > -- 
> > 2.19.1 
> > 
> > 
> > -- 
> > ta 
> > ioannis 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20181102234508.GA27353%40kvasir.local. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_881_1799221193.1541245074270
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Saturday, November 3, 2018 at 6:57:54 AM UTC, Julia Law=
all wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Fri, 2 Nov 2018, Ioannis Valasakis wrote:
<br>
<br>&gt; Remove extra spaces before the tab character inside a comment sect=
ion.
<br>&gt; Reported by checkpatch.
<br>&gt;
<br>&gt; Signed-off-by: Ioannis Valasakis &lt;<a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"7uvbfp7cAgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">co...@wizofe.uk</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/greybus/<wbr>greybus_protocols.h | 4 ++--
<br>
<br>You seem to have sent three patches on this file. =C2=A0Greg will want =
them to
<br>be in a series, to reduce ambiguity about how they should be applied.
<br>
<br>Likewise for the other files.
<br>
<br>julia
<br>
<br></blockquote><div><br></div><div>By series do you mean that I need to c=
reate a patchset?=C2=A0</div><div><br></div><div>ta</div><div>ioannis=C2=A0=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left:=
 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; =C2=A01 file ch=
anged, 2 insertions(+), 2 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/greybus/<wbr>greybus_protocols.h b/dr=
ivers/staging/greybus/<wbr>greybus_protocols.h
<br>&gt; index 5783f715bdc2..429a952c5200 100644
<br>&gt; --- a/drivers/staging/greybus/<wbr>greybus_protocols.h
<br>&gt; +++ b/drivers/staging/greybus/<wbr>greybus_protocols.h
<br>&gt; @@ -918,8 +918,8 @@ struct gb_spi_device_config_response {
<br>&gt; =C2=A0 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00 the defa=
ult (from @spi_device) is used.
<br>&gt; =C2=A0 * @len: size of rx and tx buffers (in bytes)
<br>&gt; =C2=A0 * @delay_usecs: microseconds to delay after this transfer b=
efore (optionally)
<br>&gt; - * =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0changing the c=
hipselect status, then starting the next transfer or
<br>&gt; - * =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0completing thi=
s spi_message.
<br>&gt; + *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0changing the ch=
ipselect status, then starting the next transfer or
<br>&gt; + *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0completing this=
 spi_message.
<br>&gt; =C2=A0 * @cs_change: affects chipselect after this transfer comple=
tes
<br>&gt; =C2=A0 * @bits_per_word: select a bits_per_word other than the dev=
ice default for this
<br>&gt; =C2=A0 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0transfer. =
If 0 the default (from @spi_device) is used.
<br>&gt; --
<br>&gt; 2.19.1
<br>&gt;
<br>&gt;
<br>&gt; --
<br>&gt; ta
<br>&gt; ioannis
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"7uvbfp7cAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"7uvbfp7cAgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20181102234508.GA27353%40kvasir.local"=
 target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https:/=
/groups.google.com/d/msgid/outreachy-kernel/20181102234508.GA27353%40kvasir=
.local&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google=
.com/d/msgid/outreachy-kernel/20181102234508.GA27353%40kvasir.local&#39;;re=
turn true;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20=
181102234508.GA27353%<wbr>40kvasir.local</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_881_1799221193.1541245074270--

------=_Part_880_1570575996.1541245074270--

