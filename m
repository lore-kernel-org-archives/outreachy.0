X-GM-THRID: 6670759463317667840
X-Received: by 2002:a17:906:a417:: with SMTP id l23mr313161ejz.4.1553162896808;
        Thu, 21 Mar 2019 03:08:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3d62:: with SMTP id r2ls948464ejf.2.gmail; Thu, 21
 Mar 2019 03:08:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxq+KurS+iqpC8frzcyTDOTZEW6hc4hi7RY/y6rDvRLTK103BnhY33VtJ333kAi/9GaQCWm
X-Received: by 2002:a17:906:3744:: with SMTP id e4mr308672ejc.3.1553162895791;
        Thu, 21 Mar 2019 03:08:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553162895; cv=none;
        d=google.com; s=arc-20160816;
        b=ec7DAeukS1mFFB6OBYWVlshgAqoET9zejeiH/AfFigz/AIlFynx1oY1BWQqadHkJAU
         uAiFiqTujZara5P8Lc6GMYGB/akspiWiywEz4uOU6Qoe2TTfOJ5YySnSS2P+ah64uscA
         cr93cfaAz8JfnT9OI0fst/hEPd61Bswkp7/tMMak13RZNeR0MnGp0RovgV/7K+/CXrYd
         R5259wWlkW8k/MjGEfej339d35k/+JD23hTsJbCE2TqPalw2/hBHQAl9GuKJyXB/A1k/
         thJPgpRPe8XZSGzVACNqeMwg5JU794wGPx8t/j68Xn+UW+CY/x1sStxBKp7l5my+vaLA
         B+5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gKlZq2Y3ILUacdpwUu6tOdnWoaIy3bCdJcK/PN44S/g=;
        b=ORtFX4822fonWH7iw9O6aIuuajk5bAh7cGpmaX7i86XB8H/1mGLaJfG167AjIktYYC
         /ktUgW8/GsQzHQrEctP4Uy8NMdh8e2gcjBripVuNoSn7WtsCwZw9BiUIigTJo2aLPQbi
         +56OoiQamHkkX+MOxw6xisib0mH5Img9XXFvvxbCEEZW8Afk21PBeByVkhTh3O+mRtCc
         xryJkDpCXcG3h6PZRnd9QJARZid35016sHfPfQJdCMQcmpef2FC4R4MVEx/GILlCPEJp
         qw8zmcsvSQ2CMuxSjr5Ib2qReEyYgG0oCJi7ZKr0r1nYClaFwtHShw3on2M0zsLLHqNZ
         6dQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e5/uc1ZM";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id p25si263962eju.1.2019.03.21.03.08.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 03:08:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e5/uc1ZM";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x136.google.com with SMTP id p1so4115677lfk.9
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 03:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gKlZq2Y3ILUacdpwUu6tOdnWoaIy3bCdJcK/PN44S/g=;
        b=e5/uc1ZMPrACv2JjKrbIiJ52Utq32U2xkUs7+OzoKIZEtnC8vPHvwv6DF0gDrupU45
         9+5jBptRf5JoygJTHcZixirXSmpoIWi7zmRocraHKgtqZwtK4jQEpfqWLGM3FnEiGCnc
         pMm2ioPYCyf+5CuoXqi6vbrwZiKqbVNSAWKcEfTYDPJErnzC2dB6lSvjUqxw7qL5TxhB
         MYE/8EF+aVQYc32HjQ2lq6xewS8oy3BLuMqmgLyd7+ad0ayUJ+Pg+Gy/PtV0ZP+HXR2J
         PBlOHRcq9nXMb4Sw15hZmHwyxezg7YxjfvU5xa2QXpNsoDvX9qabd4zGK0UDOkhsY/sg
         wltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gKlZq2Y3ILUacdpwUu6tOdnWoaIy3bCdJcK/PN44S/g=;
        b=GHLGvY/NOMcgpxTz8H2GxBG4BFfv3iZjWWhZJqDWbNVsC3hKPLOiy3oldofCgWFRR7
         8KZ2lD45Mw9K0HYZmry20CXdesh/jtVyXjn63Dlg3O1b8wM2fosJxrtK3M77QKNap8fD
         g83eLMgRhKh2kBQXIlw3zsJXV6+FTRWVbhDfT/GmdB9houc1NFPypp7dZ9cPDdvfWceB
         ZeCZ+ombdEn2+uQ8005ga5auG9L3pa1rPgVxKEBRis+ViFK6G6vdVqkXZRGIk1HtRUFS
         fnO4LtlR8AEkKF/4HsWR0MVE7HuMSWVWjvlULOIwxqwCCf29kLxvCq9lm28jckIE8DUU
         lVLQ==
X-Gm-Message-State: APjAAAXBGkSGuacYp7xwoajvJZboWuK8Ay9bc6+fhDMBWwsO5l6LFZxz
	oLocgUDVhFd2p2xPU9LZUp4zG7N7qQrMd2PLXA0DNw==
X-Received: by 2002:ac2:5479:: with SMTP id e25mr1377826lfn.121.1553162895612;
 Thu, 21 Mar 2019 03:08:15 -0700 (PDT)
MIME-Version: 1.0
References: <1553157183-2879-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190321100139.GD2836@kroah.com>
In-Reply-To: <20190321100139.GD2836@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 21 Mar 2019 15:38:03 +0530
Message-ID: <CANTOzWHPafLhC+AuPf5asDeXsR_rsKuEGpMBv2A4ozJC1DDj8g@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: mxx_udc: remove unused code
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000abe004058497eafb"

--000000000000abe004058497eafb
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Mar 2019 at 15:31, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 21, 2019 at 02:03:03PM +0530, Payal Kshirsagar wrote:
> > Remove the code enclosed by #if 0 and its #endif because that code never
> > going to be run
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/emxx_udc/emxx_udc.h | 7 -------
> >  1 file changed, 7 deletions(-)
> >
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.h
> b/drivers/staging/emxx_udc/emxx_udc.h
> > index 540e4ca..212aded 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.h
> > +++ b/drivers/staging/emxx_udc/emxx_udc.h
> > @@ -8,13 +8,6 @@
> >  #ifndef _LINUX_EMXX_H
> >  #define _LINUX_EMXX_H
> >
> >
> -/*---------------------------------------------------------------------------*/
> > -/*----------------- Default undef */
> > -#if FALSE
> > -#define DEBUG
> > -#define UDC_DEBUG_DUMP
> > -#endif
>
> The reason this is here is to make it "easy" for a developer to enable
> debugging for the driver.
>
> Now we should just rely on the in-kernel dynamic debugging support, so
> we should be able to get rid of this, but before you do that, you need
> to remove the use of those two #defines on the codebase.
>
> So for now, please leave this as-is.
>
> okay.
payal

thanks,
>
> greg k-h
>

--000000000000abe004058497eafb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 2019 at 15:31, Greg KH=
 &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Thu, Mar 21, 2019 at 02:03:03PM +0530, Payal Kshirsagar wrote:<br>
&gt; Remove the code enclosed by #if 0 and its #endif because that code nev=
er<br>
&gt; going to be run<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/emxx_udc/emxx_udc.h | 7 -------<br>
&gt;=C2=A0 1 file changed, 7 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emx=
x_udc/emxx_udc.h<br>
&gt; index 540e4ca..212aded 100644<br>
&gt; --- a/drivers/staging/emxx_udc/emxx_udc.h<br>
&gt; +++ b/drivers/staging/emxx_udc/emxx_udc.h<br>
&gt; @@ -8,13 +8,6 @@<br>
&gt;=C2=A0 #ifndef _LINUX_EMXX_H<br>
&gt;=C2=A0 #define _LINUX_EMXX_H<br>
&gt;=C2=A0 <br>
&gt; -/*-------------------------------------------------------------------=
--------*/<br>
&gt; -/*----------------- Default undef */<br>
&gt; -#if FALSE<br>
&gt; -#define DEBUG<br>
&gt; -#define UDC_DEBUG_DUMP<br>
&gt; -#endif<br>
<br>
The reason this is here is to make it &quot;easy&quot; for a developer to e=
nable<br>
debugging for the driver.<br>
<br>
Now we should just rely on the in-kernel dynamic debugging support, so<br>
we should be able to get rid of this, but before you do that, you need<br>
to remove the use of those two #defines on the codebase.<br>
<br>
So for now, please leave this as-is.<br>
<br></blockquote><div>okay.</div><div>payal</div><div><br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--000000000000abe004058497eafb--

