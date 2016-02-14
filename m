X-GM-THRID: 6250910328324882432
X-Received: by 10.13.194.67 with SMTP id e64mr10991657ywd.17.1455461989035;
        Sun, 14 Feb 2016 06:59:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.25 with SMTP id j25ls635028ioo.59.gmail; Sun, 14 Feb
 2016 06:59:48 -0800 (PST)
X-Received: by 10.107.29.20 with SMTP id d20mr12793184iod.29.1455461988729;
        Sun, 14 Feb 2016 06:59:48 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x235.google.com (mail-ob0-x235.google.com. [2607:f8b0:4003:c01::235])
        by gmr-mx.google.com with ESMTPS id k15si731067igt.3.2016.02.14.06.59.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 06:59:48 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::235 as permitted sender) client-ip=2607:f8b0:4003:c01::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x235.google.com with SMTP id wb13so182272284obb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 06:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=QVsayRYPYPxKemsIF2tf69vJPQq7fLEHLL5Bp26ixsU=;
        b=K63/b9LPIzcWSTJthW+hKnY5ux12PCsJEAAPkcyeN09GWQW+S4oiSAKs1TRTa9ztPm
         xqIlPqynH0tfQeDdoktkB8LuFxwDtkpd4aIfY0n0/xabywvzv4g/Yb4lRtTXfsJl9jAY
         0jf5TPDJQa4nnW4pqpY84Gce36M3lggJeTP9Je/I1c/cwqcmsVBFaMXxKsMhU/rpurhH
         DHAzwPG1h0ZKM8PNiCZGg8R/3BGJY35yqz205MLhILYer4f1VFtQTy/g04qCGqZvnVCr
         9l7ZnrlwzW7d49ickCdH8hmkDUidSa7bqiFbpQCYLP/gOyHoyBCs26ZZLBb+80frogrZ
         rrgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=QVsayRYPYPxKemsIF2tf69vJPQq7fLEHLL5Bp26ixsU=;
        b=UhnZPoMTKxujNju9E7rEf1v3dW3wFgP00k0tdt0FuoU12oEUZK0gISNuA07LhoJASa
         c1uhJKde3WN6m0W2ccsFSjH/+BD/OFiXyIbz2CAnzl70rpMPQDoI0wXji3EsOD0piXbu
         EMnpcuMpeoduxnPbTtRKVNG21VQzeu0bvBjnP0ezT5Dc01OCODuMc2SfZ/rxUZbtL/Rx
         dw3nMS/BW7usdsWwRO7sADMpYeMi1NIwS+Vr2I2NU2kagdj9GCuWpHDx8qPSZpVM+VM3
         GSAOFWkjjY7e5h2ES0Zqi5kgmYy4AwvIGkSeZkkPV7Ecq4A/BbOLMX2UUE3yBUej98DU
         NPAg==
X-Gm-Message-State: AG10YOTrQPOrDzFetaxd8ItlMro9CGKKZg28Nf/iJfBIK+zsoljIdhhAMcXvr+Kia53R9Z4rzd83pI1vM0TShg==
MIME-Version: 1.0
X-Received: by 10.60.135.98 with SMTP id pr2mr9073342oeb.65.1455461988482;
 Sun, 14 Feb 2016 06:59:48 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Sun, 14 Feb 2016 06:59:48 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602140833030.2039@localhost6.localdomain6>
References: <20160214034355.GA24997@janani-Inspiron-3521>
	<alpine.DEB.2.02.1602140833030.2039@localhost6.localdomain6>
Date: Sun, 14 Feb 2016 09:59:48 -0500
Message-ID: <CANnt6X=xgYovBN0CW3j-MUW7iuaoaWRP3VPHO5m=jMx3=3rJKw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Parenthesize complex
 values in macros
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b417921cec6c4052bbc26f0

--047d7b417921cec6c4052bbc26f0
Content-Type: text/plain; charset=UTF-8

> Are these used anywhere?  Grepping for a few of them didn't turn up
> anything.

No, Julia, these don't seem to be used anywhere. They are just defined.


> But maybe they provide useful information about the device that
> should be preserved.

True.

>

In summary, I'm missing to see what kind of C
> expression has the form e1:e2, and I wonder if this is intended to be part
> of something else that will break when you add the parentheses.
>

I added the parentheses as checkpatch recognized it as a complex
expression and suggested the parentheses.
I might have made a mistake. In that case, please ignore this patch :)

Janani

>
> julia
>
>
> >
> >
> >  /* hw_cursor_xxx works for voyager,718 and 750 */
> > --
> > 2.5.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160214034355.GA24997%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--047d7b417921cec6c4052bbc26f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te"><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"=
h5">
<br>
</div></div>Are these used anywhere?=C2=A0 Grepping for a few of them didn&=
#39;t turn up<br>
anything.=C2=A0 </blockquote><div>No, Julia, these don&#39;t seem to be use=
d anywhere. They are just defined.<br>=C2=A0<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">But maybe they provide useful information about the device that<b=
r>
should be preserved.</blockquote><div>True. <br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">=C2=A0=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"> In summ=
ary, I&#39;m missing to see what kind of C<br>
expression has the form e1:e2, and I wonder if this is intended to be part<=
br>
of something else that will break when you add the parentheses.<br></blockq=
uote><div><br>I added the parentheses as checkpatch recognized it as a comp=
lex<br></div><div>expression and suggested the parentheses. <br>I might hav=
e made a mistake. In that case, please ignore this patch :)<br><br></div><d=
iv>Janani <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 /* hw_cursor_xxx works for voyager,718 and 750 */<br>
&gt; --<br>
&gt; 2.5.0<br>
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
gle.com/d/msgid/outreachy-kernel/20160214034355.GA24997%40janani-Inspiron-3=
521" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20160214034355.GA24997%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--047d7b417921cec6c4052bbc26f0--

