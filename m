X-GM-THRID: 6670691993159467008
X-Received: by 2002:a17:906:4f0a:: with SMTP id t10mr259841eju.5.1553156113220;
        Thu, 21 Mar 2019 01:15:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:89b1:: with SMTP id g46ls115138edg.6.gmail; Thu, 21 Mar
 2019 01:15:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzBi43OtEz0pGwPO7eNK6TWzMEy/KXj7R+stTRE+9lc+u83hmpyWy/sHM4cngsFkSB4KYnA
X-Received: by 2002:aa7:c64a:: with SMTP id z10mr232906edr.0.1553156112209;
        Thu, 21 Mar 2019 01:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553156112; cv=none;
        d=google.com; s=arc-20160816;
        b=WJe5g38NStwxcSyonMe6V0dFb7rKUg4XGInxcbBjYMf6XtpysI4v2i/fJuPRIOQcxc
         MzEBIHtmMQy4mTooia1RoVcc1VG/0YO6LNejor7DBV6L968+D5qdp6Y9/RRCXY8fLG5Y
         KaLllb/d5mMeL1H0+N0B6hs+Fy+BV5TW25hM2BFVza1ENZ5hHy+Zyyjh5epiyJkNK7Gd
         l8LCqLmZjwIUr2fJ0sTn/es9Qf3gegD5C4rUP0Rf4ftrj3lS6B4groOqLtwUYBRozojM
         g8ECCdD3Tk4iye1z5fSAMB3PVwFHKcOHrktNnZrOeP49FSxIzTRidUUvfGAASrHSdT7h
         oL1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OmcwOeZTz4OYEWYAEPdqAf+HTTpJMCCtdgkAqRfcrOg=;
        b=t0IDst8ECgiCPGyQ3RJuY0I9GC0/2210hQoRzgdedzkzAsjp0diOF58kEeJ1MJ72zC
         EbvkjuLdSAuZUs753UDdGVwshqZY+8Ud3XB4Om8SXS5WCYMRxLf6UO1wqniUqljn5KBp
         yPVEs1vockmYLHhKcDGVPIoi4elITxRF5BHcgwbvF7BspaZuEUy0px3PBCwTOMkgSYVF
         +8kadAXJ+7VHyReQBHUhAvf+7E1890FjQjOWvYT2QJGa6OWQaE2dY1+6VuQM17KO7+h5
         yp7m1UY6vFQ6sW/Nj6eGbzz3Ja8nXn+cPxCApO6u+LuhB1fU9tdc9g0BwX5EhXMZ3D9P
         18Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RBOHrX7+;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id f15si127518ejk.0.2019.03.21.01.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 01:15:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RBOHrX7+;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12e.google.com with SMTP id a6so3937695lfl.5
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 01:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OmcwOeZTz4OYEWYAEPdqAf+HTTpJMCCtdgkAqRfcrOg=;
        b=RBOHrX7+nTRs5DYD3WFTerYw8yefH6b43ANMlQbA0lpGYZ0BEiyS1GZBug9GiJZxfv
         Czy0SlIQgQKNBKeG6eaIcVCuvra5EWmDK6s5mANKzmf664xR8vHQjszT7WlCN6jjMCBs
         tR2zUYXf+3NFXrQ3/GG30wKzxSryVk8K1mb0N7dKDexqJdung9vZ9wU71sJlFfAk+ch3
         dJNGzCDK3ICRwJyfRES5VGOX+kjDxkgfliSUONv1/635DrEIoq/xgP54zdHk14y+bJ8V
         4YQcBw+2Q6xkDEt+yCHwwp425rPP4gjI7iQwZQD4cJIihaunhgwaR929YLGV6AXZg9sj
         +Jjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OmcwOeZTz4OYEWYAEPdqAf+HTTpJMCCtdgkAqRfcrOg=;
        b=t/G+iSyGI/J899y+fNiouDXNUhDjgr6CJGow+nhHBF6p79yjj3wcdFQIaJIdLoQAx7
         lyGvoaZhfmsMBsl74lCjJjvf1wjhBILnmFp5TqqiBgU/8Xtx8YnsMT4P8bSOo4LLTU+T
         1LWBBsg1WZd1ShFKoAtDbe4AM/N4ITgS9RY3fBGLgyTIL/Zq9IKw4Tg6hogfTyhexQmQ
         J2Pz1CikkloKOOQTa/Wkl7gQ9aGYc57Eg9VVaZDPSWmlyzJlCuyv9U2/TgRgbuvebQMN
         Mm5QNpsIKfhJfK/p69egvBOVaUpWRnlxy1RLFLBI0bb8MsyBoO+WRWaxtPYhwqUa6iuC
         3cag==
X-Gm-Message-State: APjAAAXFi3oRVzB5k3o8y/zgZ5moYLDpdJaJV3H9JLQ4m6J1R4WXioDb
	gzdSlkyM58a//Xa2IxDPxgqnWcsHHKT82Q/LIKGpdw==
X-Received: by 2002:a19:5789:: with SMTP id l131mr1243932lfb.8.1553156112006;
 Thu, 21 Mar 2019 01:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <1553141487-3582-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190321071949.GE28171@kroah.com>
In-Reply-To: <20190321071949.GE28171@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 21 Mar 2019 13:45:00 +0530
Message-ID: <CANTOzWH8dOXazeioxUeDrPABUFYTMw28FzXN1TABggL55fz7rQ@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: emxx_udc: replace 0 with false
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005642a805849656cc"

--0000000000005642a805849656cc
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2019 at 12:49, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 21, 2019 at 09:41:27AM +0530, Payal Kshirsagar wrote:
> > replace 0 with FALSE in file rivers/staging/emxx_udc/emxx_udc.h
>
> Why?
>
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.h
> b/drivers/staging/emxx_udc/emxx_udc.h
> > index b8c3dee..540e4ca 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > @@ -10,7 +10,7 @@
> >
> >
> /*---------------------------------------------------------------------------*/
> >  /*----------------- Default undef */
> > -#if 0
> > +#if FALSE
>
> Are you sure this is ok?  Why is this change needed at all?
>
> ohh I am sorry. This change if of no use.
payal

> thanks,
>
> greg k-h
>

--0000000000005642a805849656cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 2019 at 12:49, Greg KH=
 &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Thu, Mar 21, 2019 at 09:41:27AM +0530, Payal Kshirsagar wrote:<br>
&gt; replace 0 with FALSE in file rivers/staging/emxx_udc/emxx_udc.h<br>
<br>
Why?<br>
<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/emxx_udc/emxx_udc.h | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emx=
x_udc/emxx_udc.h<br>
&gt; index b8c3dee..540e4ca 100644<br>
&gt; --- a/drivers/staging/emxx_udc/emxx_udc.h<br>
&gt; +++ b/drivers/staging/emxx_udc/emxx_udc.h<br>
&gt; @@ -10,7 +10,7 @@<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 /*--------------------------------------------------------------=
-------------*/<br>
&gt;=C2=A0 /*----------------- Default undef */<br>
&gt; -#if 0<br>
&gt; +#if FALSE<br>
<br>
Are you sure this is ok?=C2=A0 Why is this change needed at all?<br>
<br></blockquote><div>ohh I am sorry. This change if of no use. <br></div><=
div>payal<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--0000000000005642a805849656cc--

