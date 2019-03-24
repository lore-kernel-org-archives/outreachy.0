X-GM-THRID: 6671224625234444288
X-Received: by 2002:a81:52c1:: with SMTP id g184mr17650397ywb.341.1553449736165;
        Sun, 24 Mar 2019 10:48:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:9b8a:: with SMTP id s132ls5541131ywg.2.gmail; Sun, 24
 Mar 2019 10:48:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqysdkA0F3brEAE/6CKEyDr6h+PN2e2okjeDhYFQN9NflltcVwW4LIO8p5EZ16jNWNRYAz1V
X-Received: by 2002:a81:30d1:: with SMTP id w200mr18409103yww.360.1553449735231;
        Sun, 24 Mar 2019 10:48:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553449735; cv=none;
        d=google.com; s=arc-20160816;
        b=l+o3HqSdzssH6exCvL53iHboW2E2PNMMTDY8HgQVphdRfMJpcpTDZnxu76W63IDdYI
         MnQZ5x1EJKSLMrl7vkbLwOjRX6GC/Js/1IF5tMN4QYicVmkKXVJv+0YX31XuhF7v54VM
         Ab0W3Q9lXi6Vo1oBCPEbCC1Q/TjqhaC2pUq217v68WemrtMZKPCJ9hMMtSnEwuiil+TB
         QHe4xil9nGp6GvU+0wuN/XbuYsVd0Yd1ws+aufLxtguELwnByDPgcomw01DxU20POGO0
         5Mb6H90kfJN5DeH1OOI+/sXyjkXAPavX+ifcQnG7mi/OFaeL+uedOvSfOgse2z/VAPYB
         6lmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z2dGfzGCguwyzslw1Z/sXr8mDVyCBKVFu7AaZLoxTmo=;
        b=FfOCt1V646nm8y8pyuo1lBmudow3Wie6cNkdgkDtfg13Gz77O8XaDFmzgiJ3kz++7h
         Qlt4r4SUoS0xX8CyAH66B6TPKR6nrki9gvzdGjAqm1YdXo6tSL3+q7L6rCa99QZb3KmA
         mXG//FauZvZRFF3ofosHScg4a0WYSjBbXHWYh0belYjTL4n7TEXB016VLcqTjFwWG9wo
         B+f+mLScG/b79kBCNhW3p5rcn5qaCXjKBpCYYi3QUV4uEP2gjAm+717Fq8f/4bMAVtyy
         AbMNiLsZK55DX+46cn2hbArouGn4BZSFPZEoTJF2P/pjQYF7K1gOEmtNkdiJAEolTNnn
         Eqkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZziQioiY;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id e23si1067584ybb.1.2019.03.24.10.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 10:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZziQioiY;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-qk1-x72a.google.com with SMTP id n68so4056345qka.1
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 10:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z2dGfzGCguwyzslw1Z/sXr8mDVyCBKVFu7AaZLoxTmo=;
        b=ZziQioiYNZYPbmJt1UfKUc4OXqQuwjJ4glEn62ZyKfWaJ2PcAxDMR3KINpFHQGo9Co
         uVUklStpJu7ffrdTGXv4gOLIqi+9H37lr3+vdplcGgV50vPUKt99eXVk4QXvydrQ17Ck
         6AJRrdV/7bQjY82t36sVxrXJr+3TgtS959o2s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z2dGfzGCguwyzslw1Z/sXr8mDVyCBKVFu7AaZLoxTmo=;
        b=SSfxAuEt1olZR2Vw6OXqNJ/TdNxviSU68gQA13SeMxTh4UTuUyoIqNWgoZBE9/2JmU
         99HGXCk0nfs7oMK+3CHqTzS+aFrxf2hSB6wvBg7qYUjnCq92PwnzzfCwN2OgLB4Wt0qv
         nSnYwNOnZr53MzDSjQKszAtWjLmxy7nWszg9m9awj0k6xVTsuTBws19zrVkeHN+s3sC/
         gyDMOsnJJqgxJ8HsjgKb4n5QXmtuF3h63mGBAJ937z4Ayk9v+pqaPPK0f3ahr2FJf1bb
         4K72t7Q5V8HK2ZGhTAy3h4rkHDmd0Z9Yi5R+RqYpjlE7AWNjW6LmZoNn0ZAkVoET+nra
         +eBg==
X-Gm-Message-State: APjAAAVvSzCGU4hbry74EJCpfmUTgxKpri0c6YUmKr8oimZXFHcSiBe1
	ZaF7kPT1mmVEuKIDDxKhWpZGUM4bVlh9jDVotkaj0A==
X-Received: by 2002:a05:620a:12ea:: with SMTP id f10mr15099409qkl.86.1553449734820;
 Sun, 24 Mar 2019 10:48:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
 <20190322143827.24480-6-nishka.dasgupta@yahoo.com> <20190324084946.GA17494@kroah.com>
 <20190324085328.GA21171@kroah.com>
In-Reply-To: <20190324085328.GA21171@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Sun, 24 Mar 2019 23:18:41 +0530
Message-ID: <CAC4++KCj19mwMfSrAL2uNr-L6OboWCPnkJo7=E51GDim99Cz=g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 5/5] staging: rtl8723bs: core:
 Remove return variable in rtw_io.c
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 24, 2019 at 2:23 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, Mar 24, 2019 at 09:49:46AM +0100, Greg KH wrote:
> > On Fri, Mar 22, 2019 at 08:08:27PM +0530, Nishka Dasgupta wrote:
> > > Remove unnecessary local return variable in rtw_io.c. Issue found with
> > > Coccinelle using ret.cocci.
> > >
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > > Changes in v2:
> > > - Remove trailing whitespace.
> > >
> > >  drivers/staging/rtl8723bs/core/rtw_io.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
> > > index d341069097e2..985eaa49ad3c 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_io.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_io.c
> > > @@ -45,8 +45,7 @@ u8 _rtw_read8(struct adapter *adapter, u32 addr)
> > >
> > >     _read8 = pintfhdl->io_ops._read8;
> > >
> > > -   r_val = _read8(pintfhdl, addr);
> > > -   return r_val;
> > > +   return _read8(pintfhdl, addr);
> >
> > This did not give you a build warning when you applied it?  Odd, let me
> > check...
>
> Yes, this adds a build warning, so I can not take this patch.
>
> Always test-build your patches.

Sorry about that! I'll take another look at this.
- Nishka

> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190324085328.GA21171%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.

