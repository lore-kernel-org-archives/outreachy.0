X-GM-THRID: 6467232921524633600
X-Received: by 10.223.168.41 with SMTP id l38mr19964wrc.24.1505803340451;
        Mon, 18 Sep 2017 23:42:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls790292wmv.9.canary-gmail; Mon, 18
 Sep 2017 23:42:19 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA63eAReEqSTIjtN5bla1+LEKUWTbe3uLvPS/3p3BsXgahMQ8Mu5twJ7zvY5CX7OvwyW1vC
X-Received: by 10.28.212.73 with SMTP id l70mr4039wmg.14.1505803339703;
        Mon, 18 Sep 2017 23:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505803339; cv=none;
        d=google.com; s=arc-20160816;
        b=B7XroxswfKzINphWYzfgs7nNvDGgU5DuRhNSHwDIxORDFyt05Tls1px6dJRgxg3X8f
         oDKn7r6GrvSDyXJG5n8YEMmfF1zn8p/wqXrt0yfYqMcEGH36jTXINeUinPhRRosnP9op
         egdXqqDWUlmT1KK3mEtzIOO8O8e46FNd/SoS8wNInLIjfQS7k8kSrCh2gvXaZmDleW81
         A+q/bYSL78dhFjY5EGABeeoEZijRVtTIVPjRF5ynmPOtlxqvkh8yB+Sz0a49HkvLQxKh
         orbr1oWHVNzJkllqeolCGsZSTy0C+uAfIHJj5TobZjOEd4A0Br1fstGORhlzXsJS/XiP
         0woA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=9lJNbcCzFQ5wEI994vzrghY68XBgtw39x3lB2D40NTA=;
        b=IWXjWjlD81aaJvhCI0KHglU6tDUzTBk/jlv9nOvSNqlPH3WtR2dTFxX9UJIM92Oj5Q
         uAUQdqi4LDWkZ2ghCVnVoXaHur2RdzZeyMoaJs864IL2JmR72sq4QfJe+WLb+yFqQeGb
         ahRFlDV7H78LZdK0uF9rUXBYWrhUGNsXrv5xKJh/ttYtPaL5MIiRhcE3eCVk3pNfopGn
         Fz+GeJB/7HuE4sm3xLuyTvBwzHPOs1B+MVt0m++cvfLgWPdnPfguA9a8WZGdr2EGn9n1
         xEeL9USU5Lk0fNyZXCg+XBuHtmLkQflO3fpU1M4xipZpRY95EcjCY04lvTge3d493a5a
         pulQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si87166wma.1.2017.09.18.23.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 23:42:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,416,1500933600"; 
   d="scan'208";a="237948945"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2017 08:42:19 +0200
Date: Tue, 19 Sep 2017 08:42:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Check sscanf
 return value
In-Reply-To: <CALta04wPg7EUimMO0SX7_diEP=m4URFs4n=UC20+8X1JDRjcqw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709190841440.2290@hadrien>
References: <20170918212640.inn4in2kwsn2pzvr@fireworks> <alpine.DEB.2.20.1709190718100.2029@hadrien> <CALta04wPg7EUimMO0SX7_diEP=m4URFs4n=UC20+8X1JDRjcqw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1648647198-1505803339=:2290"

--8323329-1648647198-1505803339=:2290
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 19 Sep 2017, Georgiana Chelu wrote:

> Thanks for the review! I was thinking of the basic case with only one
> argument.
> The sscanf function returns "the number of input items successfully matched
> and assigned" [1].
>
> I will resend the patch, checking for value 2 (on the first fix) and 3 (on
> the second fix).

Actually, when I was looking around in the kernel, the first example I
came across made the same mistake :)

julia

>
> [1] https://linux.die.net/man/3/sscanf
>
> Best regards,
> Georgiana
>
> On 19 September 2017 at 08:18, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Tue, 19 Sep 2017, Georgiana Chelu wrote:
>
>       > Check the sscanf return value and handle it.
>
>       Why do you check for a return value of 1?
>
>       julia
>
>
>       >
>       > Issue found by checkpatch.pl.
>       > WARNING: unchecked sscanf return value
>       >
>       > Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
>       > ---
>       >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 11
>       +++++++++--
>       >  1 file changed, 9 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>       b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>       > index 6a8f805c0b28..18aa4011a576 100644
>       > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>       > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
>       > @@ -2355,7 +2355,11 @@ static int rtw_wx_read32(struct
>       net_device *dev,
>       >
>       >       bytes = 0;
>       >       addr = 0;
>       > -     sscanf(ptmp, "%d,%x", &bytes, &addr);
>       > +     ret = sscanf(ptmp, "%d,%x", &bytes, &addr);
>       > +     if (ret != 1) {
>       > +             ret = -EINVAL;
>       > +             goto exit;
>       > +     }
>       >
>       >       switch (bytes) {
>       >               case 1:
>       > @@ -2392,12 +2396,15 @@ static int rtw_wx_write32(struct
>       net_device *dev,
>       >       u32 addr;
>       >       u32 data32;
>       >       u32 bytes;
>       > +     int ret;
>       >
>       >
>       >       bytes = 0;
>       >       addr = 0;
>       >       data32 = 0;
>       > -     sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
>       > +     ret = sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
>       > +     if (ret != 1)
>       > +             return -EINVAL;
>       >
>       >       switch (bytes) {
>       >               case 1:
>       > --
>       > 2.11.0
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170918212640.inn4in2kw
> sn2pzvr%40fireworks.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CALta04wPg7EUimMO0SX7_di
> EP%3Dm4URFs4n%3DUC20%2B8X1JDRjcqw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1648647198-1505803339=:2290--

