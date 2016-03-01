X-GM-THRID: 6256792083376373760
X-Received: by 10.50.20.135 with SMTP id n7mr767702ige.5.1456863335723;
        Tue, 01 Mar 2016 12:15:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.110 with SMTP id p14ls1443524obq.6.gmail; Tue, 01 Mar
 2016 12:15:35 -0800 (PST)
X-Received: by 10.182.112.193 with SMTP id is1mr18719062obb.38.1456863335174;
        Tue, 01 Mar 2016 12:15:35 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-oi0-x244.google.com (mail-oi0-x244.google.com. [2607:f8b0:4003:c06::244])
        by gmr-mx.google.com with ESMTPS id k15si60174igt.3.2016.03.01.12.15.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 12:15:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::244 as permitted sender) client-ip=2607:f8b0:4003:c06::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x244.google.com with SMTP id m82so2886298oif.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 12:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:cc;
        bh=TY65xjBq/RjSIKZw0cRAEmHX9/9oAbtsySBdBRXV9bU=;
        b=Mpilst96guAxpvxUfsSrhjDQYEhoAUWARJtEMdK+6bxaYiRxPDCzK3TQT5R9bjAyHE
         zSOcyoAY2PiP/BrDCoxXdlZGZTHIHwMftEl/zJNcca7hHyZQOQVziSG38/IYTw5sF3oy
         1vZxlUklbgYFZDlwcCqtrdDpXI9qOpQR26XPSzph93XgXPpZSNRS1a0ZEPOkW5/BIvnO
         ezEo49vhqHKw733yIRNh6vZ23jWl7x2vVE0Z+2cvhZ52kpa4Wxo6GXr8kFmeaiJx8xy9
         QOmH1F0hWsUhxzJuRF9NElJtUEfbr8oH4B04R+Vmy4IubMu7onoulBM/Q7k638Chvg3I
         dcsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to:cc;
        bh=TY65xjBq/RjSIKZw0cRAEmHX9/9oAbtsySBdBRXV9bU=;
        b=DCE0KnSKngDbGRc8nlJknaA6sbBl0X03QiIba/xihRjPDZg2RDL4F8DLKgspdboT/p
         q/VVDhAMio28j96qkuxeXCAULLped1iOColaDdEkTJ47l0UuzV666t8hIZy+OoMDF/FZ
         y4ooWrvySc2Q1+UcGeOzDLHWdmRJtNjuB5asu/TWgvBlt6yVxL/f2lgU28ZIFSQWeSUe
         8HtE1zZxOCg/POBPGIG5VzwSOv3SFmQKuUUnvye0iA35chH7W6yoM856aWo148U+nFiU
         GjAC0jJJkmT617ESmFVIRRG3SqVQ6Jq+G9Ft4F+/efF1eTMlD7Kowu5vDuphq1rZRgBl
         DR0A==
X-Gm-Message-State: AD7BkJLNuiJKU0yxq2AmaVs7DgJ7fB7d6AqKpjoqa3BVPt/WdPUijX8RLwjXc2jiWVYnHnjdV5APlsz8GeGn1g==
MIME-Version: 1.0
X-Received: by 10.202.211.138 with SMTP id k132mr10335424oig.128.1456863334939;
 Tue, 01 Mar 2016 12:15:34 -0800 (PST)
Received: by 10.157.47.239 with HTTP; Tue, 1 Mar 2016 12:15:34 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.10.1603011929140.2624@hadrien>
References: <CAA3ASzkQGGZ9bzG5jNykQ-9rjHSvZP-hp0chad_LLPS-XFcLew@mail.gmail.com>
	<alpine.DEB.2.10.1603011929140.2624@hadrien>
Date: Wed, 2 Mar 2016 01:45:34 +0530
Message-ID: <CAA3ASz=N+zgt7GHedBSVRbJiSSOtTuyRJFuC7ms8n4h59vebpw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 3/5] Staging: iio: ade7758_core:
 Remove unnecessary goto.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Daniel Baluta <Daniel.baluta@gmail.com>
Content-Type: multipart/alternative; boundary=001a113d3b4c90c3a7052d026df7

--001a113d3b4c90c3a7052d026df7
Content-Type: text/plain; charset=UTF-8

Hi Julia/Daniel,
Thanks for suggestion.! I will resend the [patch v2] with suggested changes.


Thanks,
Sandhya

On Wed, Mar 2, 2016 at 12:00 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Tue, 1 Mar 2016, sandhya bankar wrote:
>
> > Hello,
> >     If We remove  all occurrence of goto then next code below the goto,
> will
> > execute even if error come.
> > So what exactly i have to change?
>
> As Daniel suggested, if you change the first goto to just return ret,
> which is allowed by the Linux kernel coding style, then you don't need the
> ending label at all, because there will be no more jump to it.  This will
> simplify the code a lot.
>
> julia
>
> >
> >
> > Thanks
> > Sandhya
> >
> >
> > Thanks
> > Sandhya
> >
> > On Mon, Feb 29, 2016 at 4:53 PM, Sandhya Bankar <
> bankarsandhya512@gmail.com>
> > wrote:
> >       Remove unnecessary goto.
> >       Used below semantic patch to detect the unnecessary goto:
> >       @r@
> >       expression ret;
> >       identifier f,l;
> >       statement S;
> >       position p;
> >       @@
> >
> >       (
> >       if (<+...f(...)...+>) S
> >       |
> >       if@p (...) return ret;
> >       return ret;
> >       |
> >       if@p (...) goto l;
> >       l:
> >       return ret;
> >       )
> >
> >       Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> >       ---
> >        drivers/staging/iio/meter/ade7758_core.c | 2 --
> >        1 file changed, 2 deletions(-)
> >
> >       diff --git a/drivers/staging/iio/meter/ade7758_core.c
> >       b/drivers/staging/iio/meter/ade7758_core.c
> >       index 0db23e4..32792d0 100644
> >       --- a/drivers/staging/iio/meter/ade7758_core.c
> >       +++ b/drivers/staging/iio/meter/ade7758_core.c
> >       @@ -432,8 +432,6 @@ int ade7758_set_irq(struct device *dev, bool
> >       enable)
> >                       irqen &= ~BIT(16);
> >
> >               ret = ade7758_spi_write_reg_24(dev, ADE7758_MASK,
> >       irqen);
> >       -       if (ret)
> >       -               goto error_ret;
> >
> >        error_ret:
> >               return ret;
> >       --
> >       1.8.3.4
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAA3ASzkQGGZ9bzG5jNykQ-9
> > rjHSvZP-hp0chad_LLPS-XFcLew%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--001a113d3b4c90c3a7052d026df7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Julia/Daniel,<br>Thanks for suggestion.! I wi=
ll resend the [patch v2] with suggested changes.<br><br><br></div>Thanks,<b=
r></div>Sandhya<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Wed, Mar 2, 2016 at 12:00 AM, Julia Lawall <span dir=3D"ltr">&lt=
;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip=
6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On Tue, 1 Mar 2016, sandhya bankar wrote:<br>
<br>
&gt; Hello,<br>
&gt; =C2=A0=C2=A0=C2=A0 If We remove=C2=A0 all occurrence of goto then next=
 code below the goto, will<br>
&gt; execute even if error come.<br>
&gt; So what exactly i have to change?<br>
<br>
</span>As Daniel suggested, if you change the first goto to just return ret=
,<br>
which is allowed by the Linux kernel coding style, then you don&#39;t need =
the<br>
ending label at all, because there will be no more jump to it.=C2=A0 This w=
ill<br>
simplify the code a lot.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;<br>
&gt; Thanks<br>
&gt; Sandhya<br>
&gt;<br>
&gt;<br>
&gt; Thanks<br>
&gt; Sandhya<br>
&gt;<br>
&gt; On Mon, Feb 29, 2016 at 4:53 PM, Sandhya Bankar &lt;<a href=3D"mailto:=
bankarsandhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Remove unnecessary goto.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Used below semantic patch to detect the unne=
cessary goto:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0@r@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0expression ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0identifier f,l;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0statement S;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0position p;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0@@<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (&lt;+...f(...)...+&gt;) S<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if@p (...) return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if@p (...) goto l;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0l:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Signed-off-by: Sandhya Bankar &lt;<a href=3D=
"mailto:bankarsandhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0drivers/staging/iio/meter/ade7758_core=
.c | 2 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A01 file changed, 2 deletions(-)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0diff --git a/drivers/staging/iio/meter/ade77=
58_core.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/iio/meter/ade7758_core.c<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0index 0db23e4..32792d0 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--- a/drivers/staging/iio/meter/ade7758_core=
.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0+++ b/drivers/staging/iio/meter/ade7758_core=
.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0@@ -432,8 +432,6 @@ int ade7758_set_irq(stru=
ct device *dev, bool<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0enable)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 irqen &amp;=3D ~BIT(16);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D ade7758_=
spi_write_reg_24(dev, ADE7758_MASK,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0irqen);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto error_ret;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0error_ret:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A01.8.3.4<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CAA3ASzkQGGZ9bzG5jNykQ-9" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/CAA3A=
SzkQGGZ9bzG5jNykQ-9</a><br>
&gt; rjHSvZP-hp0chad_LLPS-XFcLew%<a href=3D"http://40mail.gmail.com" rel=3D=
"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
&gt;</font></span></blockquote></div><br></div>

--001a113d3b4c90c3a7052d026df7--

