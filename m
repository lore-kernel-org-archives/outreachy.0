X-GM-THRID: 6673442126229929984
X-Received: by 2002:ac2:5463:: with SMTP id e3mr1286727lfn.6.1553885107018;
        Fri, 29 Mar 2019 11:45:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:2443:: with SMTP id k64ls317027lfk.1.gmail; Fri, 29 Mar
 2019 11:45:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyiwkY7xkZrzJcBfnAbqD2U8P2t1LtGVq16dQ++4v4rWYRfc2T9utTixZiofHokKavRQZOy
X-Received: by 2002:ac2:5632:: with SMTP id b18mr1289202lff.5.1553885106062;
        Fri, 29 Mar 2019 11:45:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553885106; cv=none;
        d=google.com; s=arc-20160816;
        b=Y00Je+t7n+E8UCkdKLpKy2lshTwukBVMp7uBB2Y2UWCD3OYXDBndIjr5jiqhMDq+FE
         GarTTJ8MEuB/FNrFtS4oJnK2Mo9ofbPGJqaZrSGddX6RANS7Cw+5E/2nJdvar+gTBEhu
         XBq2af4mD/fknqPRli9fYhusEWYvOw5utt7Yi2GQ8mc9AUwJZ+EOamy8tlrRFQmWrCD0
         jOxOgloKZyO1ewl3BfKRPJhx4Ms5MksxkUOD25v2muFfTpF+mG4C5YTHR/L5rUeS5zWR
         VyOMWxAJpQlmwr+FBOhtbJj+VaAcVNXOxQMAxlmyxjIS+nBDdkAvKoD0FOo6AxkNyXqm
         sEZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZCBgqwAv/0WYpQmGnig1vHRNQBakOECN0uix1zetePE=;
        b=xJlSwJjUxQ8YC14WdgmmiIdQGsgzEcEc/4J1ezyww9pX3slQD9sSYVGtbFOK8ENwvq
         NRkbakzeV5XlOTwSRIbRa+SThQS68Hsa7DyYH7CkNZyozfeKxO54amP9UyyFDV0O3+pm
         hush/3CG0MfvkU/O0Qp6NPGYbEhQfZNLcuEKhpAD/eHBDjMWZVcn6rs2SlWqGy6Si4ab
         /zjG1p55OMSrz5bxXPeO1AgkCvf/lOHhAwZzCDOz7TpsYqMiaubKX4ZRpVpZCqCSRICB
         AjJ8v97gDMAtdqfIbdaQgsAO/qAj6dmCmY7JJZcnz264BV/LK3V1e+PvMLloiXzT5qqQ
         6bTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Fkj/jT34";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id f10si137046ljk.2.2019.03.29.11.45.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:45:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Fkj/jT34";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x230.google.com with SMTP id p14so2856131ljg.5
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 11:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZCBgqwAv/0WYpQmGnig1vHRNQBakOECN0uix1zetePE=;
        b=Fkj/jT3475mxK8Fi7LBDVymlxnGz1ph6DJOVB/FzthT9uggpKrSFYZyE0pEbNsNE2S
         vcv5LFRJfI1s9Qz32Pp+s8gxS7SMhuNeoXPInBBjX83LBoXh/w5vgQzzCUjxIfJ9YfzV
         cHab5RVyzOncavTwgGUXhxd086FzYbZrRhKgv2A2rPDcd3YvvU5CUuRCwRXYdgWZhYlR
         vr2wbu8Nuoy3FmhjOg64xA6Oz47dfsH7PfhdbDZSR61ovKoEzSv6rxraa2PPsua1XqMb
         +YSy4R27pAutN9/lfswrPzZmkmPLYuqGqokM1V1ZJfdgalKhkUFkijc7BiPwGq+yQwvn
         iF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZCBgqwAv/0WYpQmGnig1vHRNQBakOECN0uix1zetePE=;
        b=SaVNMdtXGd50Xvsb5PEKsDic2HZHP35KSGT1KKb53tbHhtW+OnpSWL3OI8KwsWAMBN
         WIJSYLXKpHwQiM1jToh79Melxp2Qyb085bud3QItIHe47lQhC1TfKt2+8q7kyOuhB7CS
         PtQJ6E9uG33D0CP1C7o+ik9Ibw2nL2wRtXMqjDx2QLTA/jk7BaAnGbsg2d7MTd/X5yRx
         KMsbvVIDoU1ddqBaNVjiqPQ0DKKIXBBeagKG7kWL+BSQgUR4Mx+51zmmelCGqO2y7MoG
         FgxSDN3eguZwY6drKp9RGV3FcgT0sBfRNfseLb4gjlpd/3XfU6478N3//yRe9jm5dD95
         stNg==
X-Gm-Message-State: APjAAAU3dXOs/QO6IdIgMQRP8uOLDWB7vYISm9cRoZMLXPOvsqMDpicq
	tq+EXwuCXsxoU9OfukMh+JqrfDPRwj9G+vPq/xyjwA==
X-Received: by 2002:a2e:3311:: with SMTP id d17mr26800884ljc.165.1553885105899;
 Fri, 29 Mar 2019 11:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <1553790264-4801-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190329161253.GA32685@kroah.com> <alpine.DEB.2.21.1903291907400.3335@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903291907400.3335@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 30 Mar 2019 00:14:52 +0530
Message-ID: <CANTOzWF=0rDe797CGsMB_4jd5oND3rkuE-PYQkzEBXoaDXjg0Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove
 unnecessary parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <greg@kroah.com>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c24c9d0585401161"

--000000000000c24c9d0585401161
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 29, 2019, 11:38 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 29 Mar 2019, Greg KH wrote:
>
> > On Thu, Mar 28, 2019 at 09:54:24PM +0530, Payal Kshirsagar wrote:
> > > Challenge suggested by coccinelle
> > >
> > > This patch removes unnecessary parentheses while returning a value and
> > > removes unnecessary space.
> > > Using following semantic patch:
> > >
> > > @@
> > > local idexpression id;
> > > @@
> > >
> > > - return(id);
> > > + return id;
> > >
> > > @@
> > > local idexpression id;
> > > @@
> > >
> > > -return (id) ;
> > > +return id;
> > >
> > > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c
> > > ---
> > > Changes in v2:
> > >     -Add new semantic patch to drop spaces.
> > >
> > > --- drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > > +++ /tmp/cocci-output-4620-ca634c-ioctl_linux.c
> >
> > That is a _VERY_ odd diff, and obviously does not apply to the kernel
> > tree.  Did something go wrong when creating it?
>
> It looks like the output of Coccinelle.  Payal, you have to apply the diff
> that you get from Coccinelle to your kernel tree, check that it compiles,
> and then make a patch in the normal way.
>

Thank you for letting me know :)
Payal

julia
>
> >
> > Please fix up and resend.
> >
> > thanks,
> >
> > greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190329161253.GA32685%40kroah.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000c24c9d0585401161
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Mar 29, 2019, 11:38 PM Julia Lawall &lt;<a href=3D"mailto:julia.law=
all@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Fri, 29 Mar 2019, Greg KH wrote:<br>
<br>
&gt; On Thu, Mar 28, 2019 at 09:54:24PM +0530, Payal Kshirsagar wrote:<br>
&gt; &gt; Challenge suggested by coccinelle<br>
&gt; &gt;<br>
&gt; &gt; This patch removes unnecessary parentheses while returning a valu=
e and<br>
&gt; &gt; removes unnecessary space.<br>
&gt; &gt; Using following semantic patch:<br>
&gt; &gt;<br>
&gt; &gt; @@<br>
&gt; &gt; local idexpression id;<br>
&gt; &gt; @@<br>
&gt; &gt;<br>
&gt; &gt; - return(id);<br>
&gt; &gt; + return id;<br>
&gt; &gt;<br>
&gt; &gt; @@<br>
&gt; &gt; local idexpression id;<br>
&gt; &gt; @@<br>
&gt; &gt;<br>
&gt; &gt; -return (id) ;<br>
&gt; &gt; +return id;<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Payal Kshirsagar &lt;payal.s.kshirsagar.98@gmail.c=
<br>
&gt; &gt; ---<br>
&gt; &gt; Changes in v2:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0-Add new semantic patch to drop spaces.<br>
&gt; &gt;<br>
&gt; &gt; --- drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; &gt; +++ /tmp/cocci-output-4620-ca634c-ioctl_linux.c<br>
&gt;<br>
&gt; That is a _VERY_ odd diff, and obviously does not apply to the kernel<=
br>
&gt; tree.=C2=A0 Did something go wrong when creating it?<br>
<br>
It looks like the output of Coccinelle.=C2=A0 Payal, you have to apply the =
diff<br>
that you get from Coccinelle to your kernel tree, check that it compiles,<b=
r>
and then make a patch in the normal way.<br></blockquote></div></div><div d=
ir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"></blockquote></div></div><div dir=3D"auto">Thank you=
 for letting me know :)=C2=A0</div><div dir=3D"auto">Payal</div><div dir=3D=
"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
julia<br>
<br>
&gt;<br>
&gt; Please fix up and resend.<br>
&gt;<br>
&gt; thanks,<br>
&gt;<br>
&gt; greg k-h<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190329161253.GA32685%40kroah.com" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20190329161253.GA32685%40kroah.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--000000000000c24c9d0585401161--

