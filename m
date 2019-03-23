X-GM-THRID: 6671492660700643328
X-Received: by 2002:a17:906:f44:: with SMTP id h4mr7817483ejj.4.1553330559281;
        Sat, 23 Mar 2019 01:42:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:453:: with SMTP id e19ls2052720eja.9.gmail; Sat, 23
 Mar 2019 01:42:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzTFnhBvZf9n+BpTmL4TA4D6chdEP1RHfSNndGGR+3cI0MdJgUzSYDjZnRR/Tf4lJVwRsit
X-Received: by 2002:a17:906:5a59:: with SMTP id l25mr8003219ejs.122.1553330558412;
        Sat, 23 Mar 2019 01:42:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553330558; cv=none;
        d=google.com; s=arc-20160816;
        b=v1ZZuUnKOsRRjGS8tBeBol/Ra9GAkNNo0Qv7HhG5YXi5joKXlRMP/KI4yjrCwV25ZI
         rYU3HGPPy4rO+P+vx2Xi4I1+ZTq9KEhXTPxPPbJ4ZWNtzG1SJoY2c/nxy43Z02BK8p2h
         +2h1LAUZ3kLrAIyF6bRwCZceFGMTBDcQQG5kGy7MJFm3nujNecNfXhENY2Vgn3UW+P5G
         U1Z+WRbLK6jcktgfzYaT1KO5IaD4o5oGiHyNtE1es+j0EsgBuqy17HYaXk0kaVLe2G1n
         ZmMa5w71WotTKN//+WVoOKGsEJEIrsG1LH1edD/STZtPSx9gh8EMqoi1CHv5lD5lupjo
         2MlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Lw6+NHSaKmq8CMdUQIA2yjrTzw2L7NgAulp+TOygUqA=;
        b=hNzpWwVoeiClLOC7MiHLNLq05pEAkLHEanEF5uxeO0Kh9/ZXHETfzvmoTQLVXDIf+i
         NNGK+9imqdk4z5NsMXXn82KjvJ1oYVpumVSLZLqz1ibDz3/VK/parg+WFOJ5MBjysmgV
         gOkeurlsiK7MimoYWjBunzxATX5Kdp0ULhcqm2zE9fO2kfbc8v7bcrJXZ/SyoKVZAHqS
         kDsG3MV/TGTi/4TyDh11pMlGZq4R8uDw8/KcDrIoLWvIbQeJWHmE72FccRSzZhh7uX9H
         gppFKKLyKC9t7ioXtFVCUSy0Y+jxnd+a4mmUV7jVw4q25ULI2+3Pp4xEfZ87Jy99t9xX
         mDDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a5si571746edn.3.2019.03.23.01.42.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 01:42:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375397231"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 09:42:37 +0100
Date: Sat, 23 Mar 2019 09:42:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com, pkbehappyallthetime@gmail.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: rtl8712: avoid camelcase
 variable name 'bPowerOn'
In-Reply-To: <CANTOzWFyaovbYWFXJZhwL3LygV-As8CTbWOKR7K0eY50uj8ryg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903230942200.2537@hadrien>
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com> <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com> <alpine.DEB.2.21.1903230910120.2537@hadrien>
 <CANTOzWFyaovbYWFXJZhwL3LygV-As8CTbWOKR7K0eY50uj8ryg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1131267037-1553330558=:2537"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1131267037-1553330558=:2537
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 23 Mar 2019, Payal Kshirsagar wrote:

>
>
> On Sat, 23 Mar 2019 at 13:43, Julia Lawall <julia.lawall@lip6.fr> wrote:
>       When you make a series, it is nice to make a cover letter as
>       well, so that
>       one can see the scope of the changes all at once.  see the
>       tutorial if you
>       don't know how to do this.
>
> Sending.
>
>       On Sat, 23 Mar 2019, Payal Kshirsagar wrote:
>
>       > Eliminate camelcase variable names to fix the style issue –
>       ‘avoid
>       > camelcase’
>       >
>       > Signed-off-by: Payal Kshirsagar
>       <payal.s.kshirsagar.98@gmail.com>
>       > ---
>       >  drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c
>       b/drivers/staging/rtl8712/rtl8712_efuse.c
>       > index 00babd0..3275f7a 100644
>       > --- a/drivers/staging/rtl8712/rtl8712_efuse.c
>       > +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
>       > @@ -23,11 +23,11 @@
>       >  /* reserve 3 bytes for HW stop read */
>       >  static int efuse_available_max_size = EFUSE_MAX_SIZE - 3
>       /*0x1FD*/;
>       >
>       > -static void efuse_reg_ctrl(struct _adapter *padapter, u8
>       bPowerOn)
>       > +static void efuse_reg_ctrl(struct _adapter *padapter, u8
>       power_on)
>
>       It seems that bPowerOn always has a boolean value.  It would be
>       nice to
>       add other patches to the series that declare the variables as
>       type bool
>       instead of u8 (or int in one case).
>
>       Actually, this particular function is only called once and only
>       called
>       with the argument false.  The function that looks like it should
>       call this
>       one with the argument true currently just returns true,  I don't
>       know if
>       this function should be specialized to the false case and then
>       inlined
>       into the call site, or if it is considered that the true case
>       gives useful
>       information about the device, even if the code is not used.
>        
>
> Do you want me to do further changes?

Please do the change from u8 to bool.

julia

> thanks,
> payal
>       julia
>
>       >  {
>       >       u8 tmpu8 = 0;
>       >
>       > -     if (bPowerOn) {
>       > +     if (power_on) {
>       >               /* -----------------e-fuse pwr & clk reg ctrl
>       ---------------
>       >                * Enable LDOE25 Macro Block
>       >                */
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/6b2beffe41d8256284179eda
>       6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032309
>       10120.2537%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANTOzWFyaovbYWFXJZhwL3L
> ygV-As8CTbWOKR7K0eY50uj8ryg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1131267037-1553330558=:2537--

