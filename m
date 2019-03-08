X-GM-THRID: 6665751809762525184
X-Received: by 2002:a67:e9d6:: with SMTP id q22mr10852811vso.19.1552028979854;
        Thu, 07 Mar 2019 23:09:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e895:: with SMTP id x21ls1940591vsn.1.gmail; Thu, 07 Mar
 2019 23:09:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqy9rj2z7rmPCS68I92C2TwIS5jjnuj3gai/R1MSzvujtoSWuvDMbq8DF9fAw18VFA6RYQjW
X-Received: by 2002:a67:7617:: with SMTP id r23mr11117842vsc.2.1552028979305;
        Thu, 07 Mar 2019 23:09:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028979; cv=none;
        d=google.com; s=arc-20160816;
        b=GvwdoaVmmDPhuypOAMp9Aso80L+ltdHHCABH0WERFftHiPD81eQS5YipA9z282h5mp
         +5V1mB92QzUjIc9Kiozm7OpzyD37wkuaEAYt6UHoO/w78Ky1HIrd9JoZq3U8436BR3Q8
         8U3KE3HZvt/tWn51iKKl/oB1aKNB4NjJAscejnTH220Y3sN5NazLv4ZXiM8yCrXPHjaF
         v1qImyICBKFvv74H2fNon5cmBag0QI+uZEqhBYkkoh+hKex4+sa1EobLYE+bGfZvR4J/
         frCCGbNnN2+hqiOfrKnktwAlOfyQjCi8KL7wr7NM3xENxuyjKDX+4e6hv2gkXhWphmvi
         K1NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JpLXMxNxg5tyWJzgJ8wST8vnMeGXUtRwDIMR6Ah58pI=;
        b=pqnUADICXnkyzkFGz0q4rg/3qEkYf0Kv9czYLD8iN934pLhedI62w2x3hCmIcL2f/G
         KdHo844fsedOnQvKGApgmoQF2EH7vNt1zu1v89jTAJLmOJHXScTKRm6LLCWcsR1S1djc
         fzjnxJ55ZuH310cNa31zfgV1A1GLH/L35y/Tkxc4M5nCqLdQnuj41QQqTvKR73lrPrH6
         fBRG21cb8h3vQR7bnHdS6CGWOr3fm6sCLogMdKpApRuYVuDyc2ITlxa4vHYdQaXwfPHE
         MSJHS6zxmogDO0rREhFNkCEr7evFrdwPGGhBltlt71b+4SWClPbDgWJXdHa1Oip8q/rC
         321w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZS5r5C5b;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id k19si388203vsm.0.2019.03.07.23.09.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:09:39 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZS5r5C5b;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x233.google.com with SMTP id g16so15132684oib.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 23:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JpLXMxNxg5tyWJzgJ8wST8vnMeGXUtRwDIMR6Ah58pI=;
        b=ZS5r5C5bTnkObyvTWDxLrQttVqg5X53VPiYVqKjm7HVcGJtIqRgwyKtfsbwR/dSv7s
         Wfh3OrSQujlQsuWxvQ9WtWFgGqMalBCc13uq7ZbQvMkmvkvuA8nF83H9xCoRFcuxsvPN
         HjivoUK/a5vbbnE18o32xA1MOy3BEuv6+zXn4pGvY78xAOJ804S8C8wrVrcyFONO0EaP
         L/6v6d+i7pqUG7MaTeKMdeakMN5VJ/ItcVWBOlfHNQig3SMY7+q3dFoRLNKw3l+JtWVL
         mknsXtn4L7D59OEjmc76YhcwBFv8/o/yIcnZrm4ySXXXxPtdoR/MldgpUwgFBlTmF3nX
         YUiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JpLXMxNxg5tyWJzgJ8wST8vnMeGXUtRwDIMR6Ah58pI=;
        b=QPTWiJO0m9IhWayTs+PF5wZ/q4wxJohtbn4IM6hkDqWP1DX0q0VBigiJ+u/VCkFsOw
         Sqdhj5tSaPc34zt1oGeKu29oBGZbVUY64oYx3ebsFuWSGjZZIhyRk4lV9xlOTv5QTL28
         lkprRdoMrDE6cmzlg1tYwlY5sC6ETBerh0PQKmQ89M2X1oXkGXFrYaIuxyXerzEsca8l
         YhUJOpT5H7ajc/4hi7Sm+vKX0UcavJANL2G18IPt1qcBUHBHIu/9crPqic+17eyawpbL
         XWG7TASLXOffSGKlb8OX2Zc3WajgWsgsCl4fxFou2Oh1P32qezCxOEU0VmVzORtB+yxx
         u1vA==
X-Gm-Message-State: APjAAAXxBCh4COvA9cnrCq5Xe/hNJZBB/0GlEIlKZVnixy4oySfe8sNO
	Sh30rfmEedbp7QAAs8D6GLc6zY+0Mu63iY61QyM=
X-Received: by 2002:aca:b589:: with SMTP id e131mr7622285oif.91.1552028978938;
 Thu, 07 Mar 2019 23:09:38 -0800 (PST)
MIME-Version: 1.0
References: <1551991259-109878-1-git-send-email-idebleenasen@gmail.com> <alpine.DEB.2.21.1903072153150.2558@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903072153150.2558@hadrien>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Fri, 8 Mar 2019 12:39:27 +0530
Message-ID: <CACw+u4H1=2YEH7eVo_JPkykHMbm6bC7fKFFhcT3mXdObPA+eHw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vboxvideo: Do not return -ENOSYS
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000f886a705838fe7e6"

--000000000000f886a705838fe7e6
Content-Type: text/plain; charset="UTF-8"

On Fri, 8 Mar 2019, 05:50 Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 7 Mar 2019, Debleena Sen wrote:
>
> > New instances of ENOSYS are errors. Refer
> /usr/include/asm-generic/errno.h
> > to find correct error code to use in place of ENOSYS.
>
> The second sentence is strange.  It would be better to just put the
> following message, and then add something at the end explaining how you
> chose -ENODEV.
>
> julia
>
> > In vbox_prime.c, replace all occurrences of -ENOSYS with -ENODEV to fix
> > checkpatch.pl warning:
> > WARNING: ENOSYS means 'invalid syscall nr' and nothing else
> >
> > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> > ---
> >  drivers/staging/vboxvideo/vbox_prime.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/vboxvideo/vbox_prime.c
> b/drivers/staging/vboxvideo/vbox_prime.c
> > index d61985b..702b1aa 100644
> > --- a/drivers/staging/vboxvideo/vbox_prime.c
> > +++ b/drivers/staging/vboxvideo/vbox_prime.c
> > @@ -16,7 +16,7 @@
> >  int vbox_gem_prime_pin(struct drm_gem_object *obj)
> >  {
> >       WARN_ONCE(1, "not implemented");
> > -     return -ENOSYS;
> > +     return -ENODEV;
> >  }
> >
> >  void vbox_gem_prime_unpin(struct drm_gem_object *obj)
> > @@ -27,7 +27,7 @@ void vbox_gem_prime_unpin(struct drm_gem_object *obj)
> >  struct sg_table *vbox_gem_prime_get_sg_table(struct drm_gem_object *obj)
> >  {
> >       WARN_ONCE(1, "not implemented");
> > -     return ERR_PTR(-ENOSYS);
> > +     return ERR_PTR(-ENODEV);
> >  }
> >
> >  struct drm_gem_object *vbox_gem_prime_import_sg_table(
> > @@ -35,13 +35,13 @@ struct drm_gem_object
> *vbox_gem_prime_import_sg_table(
> >       struct sg_table *table)
> >  {
> >       WARN_ONCE(1, "not implemented");
> > -     return ERR_PTR(-ENOSYS);
> > +     return ERR_PTR(-ENODEV);
> >  }
> >
> >  void *vbox_gem_prime_vmap(struct drm_gem_object *obj)
> >  {
> >       WARN_ONCE(1, "not implemented");
> > -     return ERR_PTR(-ENOSYS);
> > +     return ERR_PTR(-ENODEV);
> >  }
> >
> >  void vbox_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
> > @@ -52,5 +52,5 @@ void vbox_gem_prime_vunmap(struct drm_gem_object *obj,
> void *vaddr)
> >  int vbox_gem_prime_mmap(struct drm_gem_object *obj, struct
> vm_area_struct *area)
> >  {
> >       WARN_ONCE(1, "not implemented");
> > -     return -ENOSYS;
> > +     return -ENODEV;
> >  }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1551991259-109878-1-git-send-email-idebleenasen%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
OK. I'll do that.

>

--000000000000f886a705838fe7e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 8 Mar 2019, 05:50 Julia Lawall, &lt;<a href=3D=
"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
<br>
On Thu, 7 Mar 2019, Debleena Sen wrote:<br>
<br>
&gt; New instances of ENOSYS are errors. Refer /usr/include/asm-generic/err=
no.h<br>
&gt; to find correct error code to use in place of ENOSYS.<br>
<br>
The second sentence is strange.=C2=A0 It would be better to just put the<br=
>
following message, and then add something at the end explaining how you<br>
chose -ENODEV.<br>
<br>
julia<br>
<br>
&gt; In vbox_prime.c, replace all occurrences of -ENOSYS with -ENODEV to fi=
x<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer noreferrer" target=
=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; WARNING: ENOSYS means &#39;invalid syscall nr&#39; and nothing else<br=
>
&gt;<br>
&gt; Signed-off-by: Debleena Sen &lt;<a href=3D"mailto:idebleenasen@gmail.c=
om" target=3D"_blank" rel=3D"noreferrer">idebleenasen@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/vboxvideo/vbox_prime.c | 10 +++++-----<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/vboxvideo/vbox_prime.c b/drivers/staging/=
vboxvideo/vbox_prime.c<br>
&gt; index d61985b..702b1aa 100644<br>
&gt; --- a/drivers/staging/vboxvideo/vbox_prime.c<br>
&gt; +++ b/drivers/staging/vboxvideo/vbox_prime.c<br>
&gt; @@ -16,7 +16,7 @@<br>
&gt;=C2=A0 int vbox_gem_prime_pin(struct drm_gem_object *obj)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ONCE(1, &quot;not implemented&quot;);<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0return -ENOSYS;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 void vbox_gem_prime_unpin(struct drm_gem_object *obj)<br>
&gt; @@ -27,7 +27,7 @@ void vbox_gem_prime_unpin(struct drm_gem_object *obj=
)<br>
&gt;=C2=A0 struct sg_table *vbox_gem_prime_get_sg_table(struct drm_gem_obje=
ct *obj)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ONCE(1, &quot;not implemented&quot;);<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENOSYS);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENODEV);<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 struct drm_gem_object *vbox_gem_prime_import_sg_table(<br>
&gt; @@ -35,13 +35,13 @@ struct drm_gem_object *vbox_gem_prime_import_sg_ta=
ble(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct sg_table *table)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ONCE(1, &quot;not implemented&quot;);<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENOSYS);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENODEV);<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 void *vbox_gem_prime_vmap(struct drm_gem_object *obj)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ONCE(1, &quot;not implemented&quot;);<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENOSYS);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENODEV);<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 void vbox_gem_prime_vunmap(struct drm_gem_object *obj, void *vad=
dr)<br>
&gt; @@ -52,5 +52,5 @@ void vbox_gem_prime_vunmap(struct drm_gem_object *ob=
j, void *vaddr)<br>
&gt;=C2=A0 int vbox_gem_prime_mmap(struct drm_gem_object *obj, struct vm_ar=
ea_struct *area)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0WARN_ONCE(1, &quot;not implemented&quot;);<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0return -ENOSYS;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 2.7.4<br>
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
gle.com/d/msgid/outreachy-kernel/1551991259-109878-1-git-send-email-ideblee=
nasen%40gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
groups.google.com/d/msgid/outreachy-kernel/1551991259-109878-1-git-send-ema=
il-idebleenasen%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br></blockquote></div></div><div dir=3D"auto">OK. I&#39;ll do that.=C2=
=A0</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">
</blockquote></div></div></div>

--000000000000f886a705838fe7e6--

