X-GM-THRID: 6256792083376373760
X-Received: by 10.107.184.195 with SMTP id i186mr19889957iof.24.1456774208439;
        Mon, 29 Feb 2016 11:30:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.42 with SMTP id o10ls133058iga.35.canary; Mon, 29 Feb
 2016 11:30:08 -0800 (PST)
X-Received: by 10.66.193.225 with SMTP id hr1mr13993157pac.34.1456774208107;
        Mon, 29 Feb 2016 11:30:08 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-oi0-x244.google.com (mail-oi0-x244.google.com. [2607:f8b0:4003:c06::244])
        by gmr-mx.google.com with ESMTPS id i9si1171249igg.1.2016.02.29.11.30.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 11:30:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::244 as permitted sender) client-ip=2607:f8b0:4003:c06::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x244.google.com with SMTP id c203so1579043oia.0
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 11:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to;
        bh=+lT9R3HhAP29N2s4JO5queXS61vKf4/rZRUvDfP93Yw=;
        b=hyHw+FyA+PfGhgquy5yBmEEvk8V6ZJBLJMY5pNDeJ58+BKnN3WGfy1T3uwvTGF61V2
         T3tJaUN32PCuMEmUFHpmQ0x7/fmWmA2Z3EsYAV5/tSke8hHguiW6z8Y7QPL12Y7DgSC3
         Ow2B1Gdx7KHWrbStPcV+KvpTlepKxs89vov7g6jR9wzZWysxYDC1xuk1fnMQPeHXXV9l
         ssQH3xssTNDy3R0HEicCiI30nm4YibjghnXmnAbAzISkC/2JRKQddZp0jMo9PHRzZENj
         gxbbDpldrXW+5olMhn+cVlFeMoikv2l2VXI42X8Y1kH5L8aqN2v5IXM7eAkWdfYQ4UvD
         yCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to;
        bh=+lT9R3HhAP29N2s4JO5queXS61vKf4/rZRUvDfP93Yw=;
        b=ZAS4JWgSRLF6nvuTeU6UfNiLKsNVJa+nf9faTqDLS1k4ByBN7Wz6Hqg1iK8pIf3F0u
         U53YI35x4k0v+GBmCXCzpiNO0SEf475uK37qdsDOzACuNOso87V0F6CB1+hVb+I2PqiK
         JUOHFnyJh265fEJ3qFA77v9FF2Evgo6HJe3E+pS//2JrfgV0RUdZeG/WQJ6yZUUNieh/
         RvTQqjAdbmeBov7J5ZTUjfsFYgZ3maS00hp/4nl4A0VWBhBQWBBbUEnZvGuI0Bb1HzrB
         mot47Hqtx4JHyqsHN0p3li5io2xETauXCmtg/30NeXPcoysJsl23d/RW5FW8dds86WXu
         Ei7A==
X-Gm-Message-State: AD7BkJJrtD6pdfAPYp3c/Uf0SSrFD5paUTONGmNTPglnOt1Q6qysgjXDj5ALsquWytQGww6e7V+AvNfA4mZKhw==
MIME-Version: 1.0
X-Received: by 10.202.69.196 with SMTP id s187mr12712690oia.89.1456774207759;
 Mon, 29 Feb 2016 11:30:07 -0800 (PST)
Received: by 10.157.47.239 with HTTP; Mon, 29 Feb 2016 11:30:07 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.10.1602292011080.2600@hadrien>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
	<alpine.DEB.2.10.1602292011080.2600@hadrien>
Date: Tue, 1 Mar 2016 01:00:07 +0530
Message-ID: <CAA3ASzmojvs8HDo2SZ168NDCsJjU84yL1YYw==a0FDL_3PAnNA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/5] Staging: Remove unnecessary goto.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113ddb722bf22e052cedad85

--001a113ddb722bf22e052cedad85
Content-Type: text/plain; charset=UTF-8

I have used this semantic patch to detect the unnecessary goto.

On Tue, Mar 1, 2016 at 12:41 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 29 Feb 2016, Sandhya Bankar wrote:
>
> > Remove unnecessary goto.
> > Semantic patch:
> > @r@
> > expression ret;
> > identifier f,l;
> > statement S;
> > position p;
> > @@
> >
> > (
> > if (<+...f(...)...+>) S
> > |
> > if@p (...) return ret;
> > return ret;
> > |
> > if@p (...) goto l;
> > l:
> > return ret;
> > )
>
> The semantic patch doesn't remove (or add) anything?
>
> julia
>
> >
> > Sandhya Bankar (5):
> >   Staging: media: Remove Unnecessary goto.
> >   Staging: iio: ade7854: Remove unnecessary goto.
> >   Staging: iio: ade7758_core: Remove unnecessary goto.
> >   Staging: iio: ade7754: Remove unnecessary goto.
> >   Staging: gdm72xx: Remove unnecessary goto.
> >
> >  drivers/staging/gdm72xx/usb_boot.c            | 3 +--
> >  drivers/staging/iio/meter/ade7754.c           | 2 --
> >  drivers/staging/iio/meter/ade7758_core.c      | 2 --
> >  drivers/staging/iio/meter/ade7854.c           | 2 --
> >  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 --
> >  5 files changed, 1 insertion(+), 10 deletions(-)
> >
> > --
> > 1.8.3.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/cover.1456743650.git.bankarsandhya512%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a113ddb722bf22e052cedad85
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have used this semantic patch to detect the unnecessary =
goto.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Tue, Mar 1, 2016 at 12:41 AM, Julia Lawall <span dir=3D"ltr">&lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On Mon, 29 Feb 2016, Sandhya Bankar wrote:<br>
<br>
&gt; Remove unnecessary goto.<br>
&gt; Semantic patch:<br>
&gt; @r@<br>
&gt; expression ret;<br>
&gt; identifier f,l;<br>
&gt; statement S;<br>
&gt; position p;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt; if (&lt;+...f(...)...+&gt;) S<br>
&gt; |<br>
&gt; if@p (...) return ret;<br>
&gt; return ret;<br>
&gt; |<br>
&gt; if@p (...) goto l;<br>
&gt; l:<br>
&gt; return ret;<br>
&gt; )<br>
<br>
</span>The semantic patch doesn&#39;t remove (or add) anything?<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Sandhya Bankar (5):<br>
&gt;=C2=A0 =C2=A0Staging: media: Remove Unnecessary goto.<br>
&gt;=C2=A0 =C2=A0Staging: iio: ade7854: Remove unnecessary goto.<br>
&gt;=C2=A0 =C2=A0Staging: iio: ade7758_core: Remove unnecessary goto.<br>
&gt;=C2=A0 =C2=A0Staging: iio: ade7754: Remove unnecessary goto.<br>
&gt;=C2=A0 =C2=A0Staging: gdm72xx: Remove unnecessary goto.<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/gdm72xx/usb_boot.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 3 +--<br>
&gt;=C2=A0 drivers/staging/iio/meter/ade7754.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 2 --<br>
&gt;=C2=A0 drivers/staging/iio/meter/ade7758_core.c=C2=A0 =C2=A0 =C2=A0 | 2=
 --<br>
&gt;=C2=A0 drivers/staging/iio/meter/ade7854.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 2 --<br>
&gt;=C2=A0 drivers/staging/media/bcm2048/radio-bcm2048.c | 2 --<br>
&gt;=C2=A0 5 files changed, 1 insertion(+), 10 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; 1.8.3.4<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/cover.1456743650.git.bankarsandhya512%40gm=
ail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/m=
sgid/outreachy-kernel/cover.1456743650.git.bankarsandhya512%40gmail.com</a>=
.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a113ddb722bf22e052cedad85--

