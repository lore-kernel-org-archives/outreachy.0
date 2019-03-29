X-GM-THRID: 6673442126229929984
X-Received: by 2002:adf:d4c1:: with SMTP id w1mr1433425wrk.30.1553878895351;
        Fri, 29 Mar 2019 10:01:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2341:: with SMTP id j62ls430341wmj.5.canary-gmail; Fri,
 29 Mar 2019 10:01:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyh/CoJYgx7rSY6CtP/SubYXKH7qgwq+VClGIL+UX9lTslkCoDENyNKoHyFd1zyuE+cd3CP
X-Received: by 2002:a1c:2044:: with SMTP id g65mr456985wmg.8.1553878894275;
        Fri, 29 Mar 2019 10:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553878894; cv=none;
        d=google.com; s=arc-20160816;
        b=B4YgNkj4EHPHEt63Et1wi+wXZST5VAZU6BuvxPNfp75HWX3ovEiYwMzc0PQ6j589nf
         cYlDEN9WEnkZN2ENYW+j6IcRJ/p12D+5rwhzFjVmVchMAkSw79m3DFTJ+HMLHI3QFGKp
         K45Z/UJiGQyE9acj9y7isQF8O84YPQjaNsQq0NkbTYVKcJ5s4Tr+8NVABaUn8gsjJo9+
         3ch/2ENXxTdgMniBlD7eQnGH8blxoG9m6gpkYGF45/RMsy91Q3x/9fyOHwa8T3xQj0Zh
         VLxswbxRiA6p3R2hMa1QGnw6o2giSnesRnaPEE7md3DWImOYGsJ0GCS1OsDC9LPh0rCR
         QyVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=cfISHOwgjoDAzXh4H0dlhWGa2qEaSGh2LkEol1VW/QI=;
        b=bR1l1Cp/wa5Li5POctpkbNboxbaJ6VlDlhKCA+VbHD+KVjPuz2dBRpWxdd5r6OK1cm
         7oI1wOeye12UnSJ5Emw46Y+wNik3Ta6YXvriZC4sxaVaRz/zRmJkFQrk/iUzlGQw7A3Y
         QYwJ0Ob0MuGCdcAfjArAmCvbl+bWit6mORqixQSRdwze34DQvnzqZXrV10NHoFPUlbk1
         iyrGMZAOCzR+3ZfwS7df74YTmXj8/seNmzeBgi9RRa9zMnVUTlY4Q+MoAoCDIhxM1M86
         6BlI4C8E11mgy/lDVY3usoi5veO0NeEyPRIaddF/cNn9YKIvhB0VOBECOWlvkgn9lY+Q
         G+iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sTay6ee8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id v17si618349wmc.4.2019.03.29.10.01.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 10:01:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sTay6ee8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x229.google.com with SMTP id q66so2592595ljq.7
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 10:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cfISHOwgjoDAzXh4H0dlhWGa2qEaSGh2LkEol1VW/QI=;
        b=sTay6ee8Oz5ivvvRIVwApaE5/m2I/GUkLAFCdYj9kacaz4HGvlES451/sdX9+qptbP
         c3COrmm71qtGm+VI5vWrUPJRgFCXf6GjKjFBAIjZbkQcpz/P5QE97KZGHQc6jStNpKj3
         MWV8JAMBr0DOIhy7UJeh0Ki40qmjJsHXAk+qvljFDeTeOvEbKqnfwIAD6i/AP6FZUXBp
         IbXhyVaEx/cPl9mps/kftT12Y+ScZlo5Ja1IZwYULraG2kd29t+X6WUBO6N2qW8lWSg3
         AtBEPxcxTYPKKDD8DFdh1Ouiq2tFQGqcKV/3o0lHs4YNLBDtiemN6Jm4A6YKMwj8tS3s
         stuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cfISHOwgjoDAzXh4H0dlhWGa2qEaSGh2LkEol1VW/QI=;
        b=qAJHx0/KI1CmGU51LcqoN6u2TL8Sg0jz+UsFoxov1OxWCu1GhP38BOolClCDPgU5Dj
         sRPust+8A6TE2piTcJ+iFvH1mg1i7Xkq7IfjCQhVhHEn9ondtEWmf6rjxYmjlFkSUjHf
         O7dbwMRbj1l1iJktGLkBe8df1v+/FgoDp/xP8Xk5kJDesATShL9TFtFkT7zyNz1Q3y4P
         k7QCgDZgry8oQ+WrmUi6e/iyQWteHBpgpI5cGfCLkJ4fCpUlfbw+3Af1ncp+RCWvunHP
         Juq1qS5dC9wzYk4I5YyJxovVGIh4xA2pFPFCylBJOZfzSeiDdJgndvgjXrpYyqmGds+4
         Qt/A==
X-Gm-Message-State: APjAAAUXKurPeclZDpkkPD/84cx7GfA5qMaDL9K3/fa0M6r5/iHsX5+0
	5dgrDot2bExQ34/GT374NmRxd5Pfo01GHIJQWOIkEA==
X-Received: by 2002:a2e:2f04:: with SMTP id v4mr27617436ljv.129.1553878893822;
 Fri, 29 Mar 2019 10:01:33 -0700 (PDT)
MIME-Version: 1.0
References: <1553790264-4801-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190329161253.GA32685@kroah.com>
In-Reply-To: <20190329161253.GA32685@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 29 Mar 2019 22:31:20 +0530
Message-ID: <CANTOzWHDocw4XhDetGo_pu3q7NrkbcHnXKXFYxy8amVYPk=K=g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove
 unnecessary parentheses
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007d86c305853e9fc6"

--0000000000007d86c305853e9fc6
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 29, 2019, 9:42 PM Greg KH <greg@kroah.com> wrote:

> On Thu, Mar 28, 2019 at 09:54:24PM +0530, Payal Kshirsagar wrote:
> > Challenge suggested by coccinelle
> >
> > This patch removes unnecessary parentheses while returning a value and
> > removes unnecessary space.
> > Using following semantic patch:
> >
> > @@
> > local idexpression id;
> > @@
> >
> > - return(id);
> > + return id;
> >
> > @@
> > local idexpression id;
> > @@
> >
> > -return (id) ;
> > +return id;
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c
> > ---
> > Changes in v2:
> >       -Add new semantic patch to drop spaces.
> >
> > --- drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ /tmp/cocci-output-4620-ca634c-ioctl_linux.c
>
> That is a _VERY_ odd diff, and obviously does not apply to the kernel
> tree.  Did something go wrong when creating it?
>
> Please fix up and resend.
>

Okay,I will fix it and resend.
Thanks ,
Payal

thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190329161253.GA32685%40kroah.com
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000007d86c305853e9fc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Mar 29, 2019, 9:42 PM Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
 target=3D"_blank" rel=3D"noreferrer">greg@kroah.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">On Thu, Mar 28, 2019 at 09:54:24PM +0530, =
Payal Kshirsagar wrote:<br>
&gt; Challenge suggested by coccinelle<br>
&gt; <br>
&gt; This patch removes unnecessary parentheses while returning a value and=
 <br>
&gt; removes unnecessary space.<br>
&gt; Using following semantic patch:<br>
&gt; <br>
&gt; @@ <br>
&gt; local idexpression id;<br>
&gt; @@<br>
&gt; <br>
&gt; - return(id);<br>
&gt; + return id;<br>
&gt; <br>
&gt; @@ <br>
&gt; local idexpression id;<br>
&gt; @@<br>
&gt; <br>
&gt; -return (id) ;<br>
&gt; +return id;<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;payal.s.kshirsagar.98@gmail.c<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Add new semantic patch to drop spaces.<br>
&gt; <br>
&gt; --- drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; +++ /tmp/cocci-output-4620-ca634c-ioctl_linux.c<br>
<br>
That is a _VERY_ odd diff, and obviously does not apply to the kernel<br>
tree.=C2=A0 Did something go wrong when creating it?<br>
<br>
Please fix up and resend.<br></blockquote></div></div><div dir=3D"auto"><br=
></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"></blockquote></div></div><div dir=3D"auto">Okay,I will fix it and r=
esend.</div><div dir=3D"auto">Thanks ,</div><div dir=3D"auto">Payal=C2=A0</=
div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
rel=3D"noreferrer noreferrer" target=3D"_blank">outreachy-kernel+unsubscrib=
e@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" rel=3D"noreferrer noreferrer" target=3D"_blank">outreachy-ke=
rnel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20190329161253.GA32685%40kroah.com" rel=3D"nore=
ferrer noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d=
/msgid/outreachy-kernel/20190329161253.GA32685%40kroah.com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://groups.goog=
le.com/d/optout</a>.<br>
</blockquote></div></div></div>

--0000000000007d86c305853e9fc6--

