X-GM-THRID: 6664645719610097664
X-Received: by 2002:a17:906:1c46:: with SMTP id l6mr124578ejg.9.1551735719289;
        Mon, 04 Mar 2019 13:41:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls5082896edf.1.gmail; Mon, 04 Mar
 2019 13:41:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqzCJ3hklbQIZPei4CsXwqwrAix/WheXU8AJz/G35RhonCYp4NKV+ih1bz6oc3gz+c71fFEj
X-Received: by 2002:a50:addd:: with SMTP id b29mr2809637edd.11.1551735718634;
        Mon, 04 Mar 2019 13:41:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551735718; cv=none;
        d=google.com; s=arc-20160816;
        b=j/j7w4jsWBhqrEy9W3llCj8ZfHPG17FC3SLaodvG9lNUUaxdGNT8rEh+DJeeWu82hb
         Sfj912NGNC+FMSxavT/To5RFh6CPTBD4OYCdwsF+lGVA1vJOhHhE8sPTbhOvOWO71gBb
         /3o7gnUEzAuxDDqB7xO7K9x/ZXYdtJ8BIVpDftnv2wPBZS1gf6R+H9Tqrix0/RCGmHdu
         /L+09CJNh/QEMtzH2DDpXSDzdPrgFP10oADH68eCpGVUlK8lKGwrO+nAv1cOCVyeZn3f
         NRwDdbJR8lxCiWVJtvOlrw21HMUwoys4I/Pwhn3ceVq9qpdVB6jLC1LyQOCJuqS86dVN
         MUaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=WfBnvLqCOcy5lfSz/XJPQ4aXdKJhT/QbkOTTyJbdk50=;
        b=uw1Yjf/rS/d6xsf+ZU0CwT5Xw9kNTS+bKpjd4dTXxAIcI0/nKU2/LlW1Me49Bpjcxj
         +QCq4DRGfPOOVT6LpaNCQ7tE5QFyf1/DKpn/9fU6U4/CTxztykoCl1/r7Huk0VdMP0ju
         aPSUhzkovTjHUOB3nh3+cVtUzXEBC6wTnT+0zxL5TV13QI/4NGKhYMjWeasnt7QE8PDA
         yFdCSDqNxD+OZkrvWABJ6JYNF95ox02Tc7IJryHJSDxKk6n5/4yQ266L0MyiZKBrXt3p
         UEUydhURyH2nt+7kcbqhs590ctolqnJ9z6XFmcpjVvEApLLOK4LY+aEbmm/51jJpbOf0
         C7Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a7si378035edb.1.2019.03.04.13.41.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 13:41:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,441,1544482800"; 
   d="scan'208";a="298080643"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 22:41:58 +0100
Date: Mon, 4 Mar 2019 22:41:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dana Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Lines over 80
 characters
In-Reply-To: <ba227e82-6a25-4767-8358-26f2a1a17f13@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903042240560.2591@hadrien>
References: <20190304210909.GA4408@pthm> <alpine.DEB.2.21.1903042232270.2591@hadrien> <ba227e82-6a25-4767-8358-26f2a1a17f13@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-360240761-1551735718=:2591"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-360240761-1551735718=:2591
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 4 Mar 2019, Dana Mormocea wrote:

> ok, I understand, thank you
> should I correct the string issue and mail this patch again?

To my recollection, the rest looked ok.  So you can fix it up and send it
again.  Please don't top post.  You see how I have put my response under
your text that I am responding to.

julia


>
> On Monday, March 4, 2019 at 11:34:00 PM UTC+2, Julia Lawall wrote:
>
>
>       On Mon, 4 Mar 2019, Daniela Mormocea wrote:
>
>       > Fix lines with over 80 characters
>       >
>       > Signed-off-by: Daniela Mormocea <daniela....@gmail.com>
>       > ---
>       >  drivers/staging/fbtft/flexfb.c | 9 +++++++--
>       >  1 file changed, 7 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/fbtft/flexfb.c
>       b/drivers/staging/fbtft/flexfb.c
>       > index c5fa591..0759d93 100644
>       > --- a/drivers/staging/fbtft/flexfb.c
>       > +++ b/drivers/staging/fbtft/flexfb.c
>       > @@ -671,7 +671,10 @@ static int flexfb_probe_common(struct
>       spi_device *sdev,
>       >                          break;
>       >                  case 9:
>       >                          if (regwidth == 16) {
>       > -                                dev_err(dev, "argument
>       'regwidth': %d is not supported with buswidth=%d and SPI.\n",
>       regwidth, buswidth);
>       > +                                dev_err(dev,
>       > +                                        "argument 'regwidth':
>       %d is not
>       > +                                        supported with
>       buswidth=%d and SPI.\n",
>
>       Don't break the string in this way.  Strings are allowed to
>       drift over 80
>       characters, so that it is possible to grep for the string that
>       one sees at
>       runtime.
>
>       julia
>
>       > +                                        regwidth, buswidth);
>       >                                  return -EINVAL;
>       >                          }
>       >                          par->fbtftops.write_register =
>       fbtft_write_reg8_bus9;
>       > @@ -718,7 +721,9 @@ static int flexfb_probe_common(struct
>       spi_device *sdev,
>       >                          par->fbtftops.write_vmem =
>       fbtft_write_vmem16_bus16;
>       >                          break;
>       >                  default:
>       > -                        dev_err(dev, "argument 'buswidth': %d
>       is not supported with parallel.\n", buswidth);
>       > +                        dev_err(dev,
>       > +                                "argument 'buswidth': %d is
>       not supported with parallel.\n",
>       > +                                buswidth);
>       >                          return -EINVAL;
>       >                  }
>       >          }
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190304210909.GA4408%40
>       pthm.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/ba227e82-6a25-4767-8358-
> 26f2a1a17f13%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-360240761-1551735718=:2591--

