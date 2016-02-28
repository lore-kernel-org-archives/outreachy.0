X-GM-THRID: 6256436509149233152
X-Received: by 10.13.215.140 with SMTP id z134mr10802013ywd.7.1456692141422;
        Sun, 28 Feb 2016 12:42:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.130 with SMTP id e124ls1072183ioe.17.gmail; Sun, 28 Feb
 2016 12:42:21 -0800 (PST)
X-Received: by 10.107.136.160 with SMTP id s32mr15751597ioi.14.1456692141061;
        Sun, 28 Feb 2016 12:42:21 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x242.google.com (mail-ob0-x242.google.com. [2607:f8b0:4003:c01::242])
        by gmr-mx.google.com with ESMTPS id k15si735857igt.3.2016.02.28.12.42.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:42:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) client-ip=2607:f8b0:4003:c01::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x242.google.com with SMTP id wz1so8942271obc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:cc;
        bh=8t9vajum63VgctH+e6LSzbq8lQO8fj5fgc+iOG7AbS4=;
        b=vI1z7A6pXP6mLLgVVpIwT8iss+uF+nB1ahA8xtk9bQdeljcYQQp+MafBlJe18wq76G
         CpdlYI8N0sv+MJiE4J6WMsmIaOMwt0XujRowCAQBlYLjSpU27IrHVTm1NmEUFcNAeTmC
         e0iY+MZc4cJoErpNpd++aHKXo3oGoKkstxptqkJJ70pcqN9YJlzUURo4UDE3eV5sQpC8
         Pa0v+QPmUs2Bc+ta/06LlK+egZeQjxEximUsbaQjK4okOjT1dtj9x1OI+h+D3Mkt9Vou
         uibc5/QUpXLn5yClSVem60ZtvYCuSq+g1/ax4ttfPWWkCUGqSsUOiykLJqEoWS8ScUbx
         ReCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to:cc;
        bh=8t9vajum63VgctH+e6LSzbq8lQO8fj5fgc+iOG7AbS4=;
        b=GgIgpNbU7qtlZzNb6d7VcMvMktyQtFW12FBqpo+dSipqyKMIfUwH9hWUWSDX8vsBoH
         gYHjEJJMbpRA4yun9Lmwjo9dpCxrAu1BHXKwjoswpdrJypA5Wa/1iH214k4vFnXMAV8u
         Bu31J/2d8WBWcN0vcJ1Zsb4NG8bVc8uoZkaMo6GDWlWXch+XNphCZ7WShuKZYykkei04
         S0oF2aRONkOm/Oznq8BMbuy9bezj0O2m6JsKhUv619H4AXloQC2HzG4Cj4zlieRXkpZH
         zewVixTodo+81sDPmH/O4almMKvCQtK40kTLcqoFjqNWHC8h/l3Wma2aQmrrkU07yFAW
         9nIg==
X-Gm-Message-State: AD7BkJJgbkq/xuLcC2+WxS0PLeFGSVd9+zYWEh5g5H/MfMfWQHKZ8GkzaHT4Oq89BgVjOQ4mhE7dee5AHSCWiA==
MIME-Version: 1.0
X-Received: by 10.60.101.199 with SMTP id fi7mr9079685oeb.20.1456692140732;
 Sun, 28 Feb 2016 12:42:20 -0800 (PST)
Received: by 10.157.47.239 with HTTP; Sun, 28 Feb 2016 12:42:20 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.02.1602282116200.2075@localhost6.localdomain6>
References: <cover.1456660509.git.bankarsandhya512@gmail.com>
	<alpine.DEB.2.02.1602282116200.2075@localhost6.localdomain6>
Date: Mon, 29 Feb 2016 02:12:20 +0530
Message-ID: <CAA3ASz=KgvebFeQpHiuGiVgFiwaix8F5Evw_GwYjsCb8BcC_+w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: Use ether_addr_equal_64bits()
 insted of ether_addr_equal().
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0111beb0987774052cda9184

--089e0111beb0987774052cda9184
Content-Type: text/plain; charset=UTF-8

Thanks for the information.!!
I will provide detail explanation of the patch in message body as well as
cover letter in upcoming patches.


Thanks
Sandhya

On Mon, Feb 29, 2016 at 1:48 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sun, 28 Feb 2016, Sandhya Bankar wrote:
>
> > Use ether_addr_equal_64bits() insted of ether_addr_equal().
> > ether_addr_equal_64bits() is more efficient than ether_addr_equal(), and
> can be used when each argument is an array within a structure.
>
> This seems to have come to me more slowly than the patches :)
>
> However, it would be good to have the explanation in the patches, because
> that is the only thing that will be committed.  The cover letter just
> exists in the mailing list.
>
> You chould check in each case that the mentioned field is not at the end
> of the structure, ie that it has at least two bytes within the structure
> after it.
>
> However, what I recall from the mailing list discussions on this issue was
> that the condition for the call being valid was considered to be quite
> fragile, and so using this function was not considered to be worth it
> unless performance was really critical.
>
> julia
>
> >
> > Sandhya Bankar (2):
> >   [PATCH 1/2] Staging: slicoss: Use ether_addr_equal_64bits() insted of
> ether_addr_equal().
> >   [PATCH 2/2] Staging: rtl8192e: Use ether_addr_equal_64bits() instead
> of ether_addr_equal().
> >
> >  drivers/staging/rtl8192e/rtllib_softmac.c | 5 +++--
> >  drivers/staging/slicoss/slicoss.c         | 4 ++--
> >  2 files changed, 5 insertions(+), 4 deletions(-)
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
> https://groups.google.com/d/msgid/outreachy-kernel/cover.1456660509.git.bankarsandhya512%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e0111beb0987774052cda9184
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Thanks for the information.!! <br></div>I w=
ill provide detail explanation of the patch in message body as well as cove=
r letter in upcoming patches. <br><br><br></div>Thanks<br></div>Sandhya<br>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Feb=
 29, 2016 at 1:48 AM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:=
julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sun, 28 Feb 2=
016, Sandhya Bankar wrote:<br>
<br>
&gt; Use ether_addr_equal_64bits() insted of ether_addr_equal().<br>
&gt; ether_addr_equal_64bits() is more efficient than ether_addr_equal(), a=
nd can be used when each argument is an array within a structure.<br>
<br>
</span>This seems to have come to me more slowly than the patches :)<br>
<br>
However, it would be good to have the explanation in the patches, because<b=
r>
that is the only thing that will be committed.=C2=A0 The cover letter just<=
br>
exists in the mailing list.<br>
<br>
You chould check in each case that the mentioned field is not at the end<br=
>
of the structure, ie that it has at least two bytes within the structure<br=
>
after it.<br>
<br>
However, what I recall from the mailing list discussions on this issue was<=
br>
that the condition for the call being valid was considered to be quite<br>
fragile, and so using this function was not considered to be worth it<br>
unless performance was really critical.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Sandhya Bankar (2):<br>
&gt;=C2=A0 =C2=A0[PATCH 1/2] Staging: slicoss: Use ether_addr_equal_64bits(=
) insted of ether_addr_equal().<br>
&gt;=C2=A0 =C2=A0[PATCH 2/2] Staging: rtl8192e: Use ether_addr_equal_64bits=
() instead of ether_addr_equal().<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/rtl8192e/rtllib_softmac.c | 5 +++--<br>
&gt;=C2=A0 drivers/staging/slicoss/slicoss.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 4 ++--<br>
&gt;=C2=A0 2 files changed, 5 insertions(+), 4 deletions(-)<br>
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
gle.com/d/msgid/outreachy-kernel/cover.1456660509.git.bankarsandhya512%40gm=
ail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/m=
sgid/outreachy-kernel/cover.1456660509.git.bankarsandhya512%40gmail.com</a>=
.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e0111beb0987774052cda9184--

