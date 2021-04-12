X-GM-THRID: 6950201228210995200
X-Received: by 2002:a05:622a:1716:: with SMTP id h22mr25722708qtk.273.1618247260190;
        Mon, 12 Apr 2021 10:07:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:12c4:: with SMTP id e4ls9605651qkl.4.gmail; Mon, 12
 Apr 2021 10:07:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHWDNd0j35ohZpuKlqqcjono+GORc7FMdZvXuzQNLlsveqWHKFMSQfT/JvBRKVHWeHNHaF
X-Received: by 2002:a37:988:: with SMTP id 130mr29782249qkj.120.1618247259091;
        Mon, 12 Apr 2021 10:07:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618247259; cv=none;
        d=google.com; s=arc-20160816;
        b=h7hf3zC6UmIw3HsBBQ4LzjxZx4bZjrcNXL4Am9sMbBoPF27K0IWHoMB1hoNWwbjvb+
         U3iPA8/RbkB4gxTUMcdFwyjaGnIMLRSI7fylxDz57oASk75PYNgiShovzjlrUk3On+B3
         vW5fIVGouOmhRSasvSxQUptgfyLdyhsXHydgLhZcKJkcKtxENDJkPFYNo817OKud6JNf
         cNLk6xmpJ4gaXn99hYetbABMTfcd6u2ykGUfKTcwu/1C6Fvmoqmqmy8KeYzWhGZRlPwZ
         o6yFLIusnDhSs/Lvd9Hhi7O7FhWewqx61McJSuk5MEVmZ/38X9XHxIic9SHpzNIyT9vc
         e/sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=blAf5vlYVTGXtK3equOjvIlR2ixAbU6rCvtFofxdJ8c=;
        b=DCOwnvBZPJkx1yY7DyLv6gaW1JNidKSsNP11hLbP7DF5cQMYOnBHdcfcJMHNTaXKn1
         Asd47mTU0I1N4ti/Lf2UBY0He+SDEZUN5OsDX7iJDaFjDREBMsIgVBvmw2BKwwBG/OkB
         RlHp/NuGy5aeQS12h3tscKN1YgH/DamPiy2GOalZycp0u3Ny6txZk4+8eY1E7qW5KUB3
         Fi7TAFm7K/uHqB+2xFgv9KIuaTojkari+hzkGjJ6M7J3u4yalpvLa9TVV4kQ1o3iHKxN
         Mm3EX3UH+zUrpziNe9jZ6d0gNNkaFfJScMxbCHite8QcuT2ju2JeuEBy3R3UCmZJDcBN
         8RZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k319CmB5;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id l15si200677qke.1.2021.04.12.10.07.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:07:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k319CmB5;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x329.google.com with SMTP id w21-20020a9d63950000b02901ce7b8c45b4so13463425otk.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 10:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=blAf5vlYVTGXtK3equOjvIlR2ixAbU6rCvtFofxdJ8c=;
        b=k319CmB5jCPQ+WFy+vwwu6y2PhG4xZCiU3YVeMmwIaUCOx5Coh0S4RdsCZ8PGdT4W0
         ESU65dglmL1UqShviIwZUyE5AFLPn8Sgt0ifra6QAemdxkEniR+VjVr5JOo0XEd61k3M
         kNaWFRBBDpzf4IVcvG3WuKbjR69Sbd5wDn+NM7U6MbAPrEf+ULC0jkhMx766X/Om/RyY
         GrAmm39ozXe0+VorxeYMQMVsltH93erhzmUAwuogZxR3UVIq3dX5bjg8LXW85QdMAp2x
         /kil1JKSdZyFSx528L7F8MY2w/ckJVD8GTxvr1Di/WfYggLFkuE3Z2KjGTSDDncLHOJM
         vivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=blAf5vlYVTGXtK3equOjvIlR2ixAbU6rCvtFofxdJ8c=;
        b=Q9gz+TQ8lnfvBB80fYRnTV7iQAy9kWiHZ6VumPauSqAwodl7kFIoq2Wo67DUeeQDVD
         6rDD4Fuqz5RvW+p2oHJ8rbUUE9tXxgYL/4K9mIXUELKD6FYNc9svnJDgpkFarCf6Dsd3
         pkd7iS3OaCGmTx9GxFpFgwjkkklHA8V8V6R3c9mAfymhXN6BAzGB5hWXF75rWC63MZSJ
         B8wkycnd7DjbUwoK/nu2HrMNH2dx537WuQjnG9v0P9Q/xnj0NyX3n/N0oLlSy+eA7kUz
         jAU+I2gEesYIyubFesG4dvBPfvBIVQDhQCiks12Ohtdz7LuK4MuwcMVb20hKNEOzlFsB
         mZFg==
X-Gm-Message-State: AOAM532RcOvOc7mGUJIuQNC4XQ7+7EVXyJ5QfWbE0j/vk2UDr7UAkD8K
	hwdqhlZAT9FbDM0JIfsr46PWDsNfWIvOysC3AGQ=
X-Received: by 2002:a9d:1c7:: with SMTP id e65mr24349601ote.259.1618247258485;
 Mon, 12 Apr 2021 10:07:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>
 <alpine.DEB.2.22.394.2104121208530.6734@hadrien> <3c032481-f359-45c7-947b-54b39e989822n@googlegroups.com>
 <alpine.DEB.2.22.394.2104121401100.9408@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2104121401100.9408@hadrien>
From: PEGGY TAWAH <tawahpeggy98@gmail.com>
Date: Mon, 12 Apr 2021 18:07:25 +0100
Message-ID: <CADT-=4kSZrzZs4=WZM8F-WBiG03XWjLGudvZ83E7_M6Gg6-now@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: Remove line to fix checkpatch error
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000000036f205bfc98d90"

--0000000000000036f205bfc98d90
Content-Type: text/plain; charset="UTF-8"

Ok, thanks!

On Mon, Apr 12, 2021, 1:01 PM Julia Lawall <julia.lawall@inria.fr> wrote:

>
>
> On Mon, 12 Apr 2021, PEGGY TAWAH wrote:
>
> > Thank you Julia for your timely feedback and intervention. i think the
> patch
> > got mixed up after i did git add <name of file modified> now i
> understand it
> > was a wrong move.  will fix that right away and submit.Thanks again.
>
> Actually, someone else said that it is a generated file.  So you should
> just move on to something else.
>
> julia
>
> > Tawah Peggy
> >
> > On Monday, April 12, 2021 at 6:10:56 AM UTC-4 Julia....@inria.fr wrote:
> >
> >
> >       On Sun, 11 Apr 2021, tawahpeggy wrote:
> >
> >       > remove one empty line.CHECK: Please don't use multiple blank
> >       lines
> >
> >       Did something go wrong with the patch generation? You say that
> >       you are
> >       removing one line, but the diff information looks like you are
> >       adding a
> >       file. Normally a patch has only the changed lines and a few
> >       lines before
> >       and after.
> >
> >       > Signed-off-by: tawahpeggy <tawahp...@gmail.com>
> >
> >       You need to put your real name when contributing to the Linux
> >       kernel.
> >
> >       For example, I would put:
> >
> >       Julia Lawall <julia....@inria.fr>
> >
> >       julia
> >
> >       >
> >       > ---
> >       > drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -
> >       > 1 file changed, 0 insertion(+), 1 deletion(-)
> >       > create mode 100644 drivers/staging/comedi/comedi_pcmcia.mod.c
> >       >
> >       > diff --git a/drivers/staging/comedi/comedi_pcmcia.mod.c
> >       b/drivers/staging/comedi/comedi_pcmcia.mod.c
> >       > index 0904b8765afs96..3984db1a39c8
> >       > --- /dev/null
> >       > +++ b/drivers/staging/comedi/comedi_pcmcia.mod.c
> >       > @@ -0,0 +1,31 @@
> >       > #include <linux/module.h>
> >       > #define INCLUDE_VERMAGIC
> >       > #include <linux/build-salt.h>
> >       > #include <linux/vermagic.h>
> >       > #include <linux/compiler.h>
> >       >
> >       > BUILD_SALT;
> >       >
> >       > MODULE_INFO(vermagic, VERMAGIC_STRING);
> >       > MODULE_INFO(name, KBUILD_MODNAME);
> >       >
> >       > __visible struct module __this_module
> >       > __section(".gnu.linkonce.this_module") = {
> >       > .name = KBUILD_MODNAME,
> >       > .init = init_module,
> >       > #ifdef CONFIG_MODULE_UNLOAD
> >       > .exit = cleanup_module,
> >       > #endif
> >       > .arch = MODULE_ARCH_INIT,
> >       > };
> >       >
> >       > #ifdef CONFIG_RETPOLINE
> >       > MODULE_INFO(retpoline, "Y");
> >       > #endif
> >       >
> >       > MODULE_INFO(staging, "Y");
> >       >
> >       > MODULE_INFO(depends, "pcmcia,comedi");
> >       >
> >       > -
> >       > MODULE_INFO(srcversion, "ED971F2E01020DFA2B04486");
> >       > --
> >       > 2.17.1
> >       > h-Hartman <gre...@linuxfoundation.org>
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to outreachy-kern...@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20210411204933.GA3524%40
> >       peggy-Lenovo-V130-15IKB.
> >       >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/3c032481-f359-45c7-947b-
> > 54b39e989822n%40googlegroups.com.
> >
> >

--0000000000000036f205bfc98d90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, thanks!=C2=A0</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021, 1:01 PM Julia Lawa=
ll &lt;<a href=3D"mailto:julia.lawall@inria.fr">julia.lawall@inria.fr</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Mon, 12 Apr 2021, PEGGY TAWAH wrote:<br>
<br>
&gt; Thank you Julia for your timely feedback and intervention. i think the=
 patch<br>
&gt; got mixed up after i did git add &lt;name of file modified&gt; now i u=
nderstand it<br>
&gt; was a wrong move.=C2=A0 will fix that right away and submit.Thanks aga=
in.<br>
<br>
Actually, someone else said that it is a generated file.=C2=A0 So you shoul=
d<br>
just move on to something else.<br>
<br>
julia<br>
<br>
&gt; Tawah Peggy<br>
&gt;<br>
&gt; On Monday, April 12, 2021 at 6:10:56 AM UTC-4 <a href=3D"mailto:Julia.=
...@inria.fr" target=3D"_blank" rel=3D"noreferrer">Julia....@inria.fr</a> w=
rote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 11 Apr 2021, tawahpeggy wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; remove one empty line.CHECK: Please don=
&#39;t use multiple blank<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lines<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Did something go wrong with the patch genera=
tion? You say that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0you are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0removing one line, but the diff information =
looks like you are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adding a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0file. Normally a patch has only the changed =
lines and a few<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lines before<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0and after.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: tawahpeggy &lt;<a href=
=3D"mailto:tawahp...@gmail.com" target=3D"_blank" rel=3D"noreferrer">tawahp=
...@gmail.com</a>&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You need to put your real name when contribu=
ting to the Linux<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0kernel.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For example, I would put:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Julia Lawall &lt;<a href=3D"mailto:julia....=
@inria.fr" target=3D"_blank" rel=3D"noreferrer">julia....@inria.fr</a>&gt;<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; drivers/staging/comedi/comedi_pcmcia.mo=
d.c | 1 -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 1 file changed, 0 insertion(+), 1 delet=
ion(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; create mode 100644 drivers/staging/come=
di/comedi_pcmcia.mod.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/comedi/com=
edi_pcmcia.mod.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/comedi/comedi_pcmcia.mod.c=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 0904b8765afs96..3984db1a39c8<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- /dev/null<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/comedi/comedi_pcm=
cia.mod.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -0,0 +1,31 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #include &lt;linux/module.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #define INCLUDE_VERMAGIC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #include &lt;linux/build-salt.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #include &lt;linux/vermagic.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #include &lt;linux/compiler.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; BUILD_SALT;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; MODULE_INFO(vermagic, VERMAGIC_STRING);=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; MODULE_INFO(name, KBUILD_MODNAME);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; __visible struct module __this_module<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; __section(&quot;.gnu.linkonce.this_modu=
le&quot;) =3D {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; .name =3D KBUILD_MODNAME,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; .init =3D init_module,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #ifdef CONFIG_MODULE_UNLOAD<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; .exit =3D cleanup_module,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #endif<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; .arch =3D MODULE_ARCH_INIT,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; };<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #ifdef CONFIG_RETPOLINE<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; MODULE_INFO(retpoline, &quot;Y&quot;);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; #endif<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; MODULE_INFO(staging, &quot;Y&quot;);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; MODULE_INFO(depends, &quot;pcmcia,comed=
i&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; MODULE_INFO(srcversion, &quot;ED971F2E0=
1020DFA2B04486&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.17.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; h-Hartman &lt;<a href=3D"mailto:gre...@=
linuxfoundation.org" target=3D"_blank" rel=3D"noreferrer">gre...@linuxfound=
ation.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to <a href=3D"mailto:outre=
achy-kern...@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreac=
hy-kern...@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/20210=
411204933.GA3524%40" rel=3D"noreferrer noreferrer" target=3D"_blank">groups=
.google.com/d/msgid/outreachy-kernel/20210411204933.GA3524%40</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0peggy-Lenovo-V130-15IKB.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goo=
glegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/3c032481-f359-45c7-947b-" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-k=
ernel/3c032481-f359-45c7-947b-</a><br>
&gt; 54b39e989822n%<a href=3D"http://40googlegroups.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">40googlegroups.com</a>.<br>
&gt;<br>
&gt;</blockquote></div>

--0000000000000036f205bfc98d90--

