X-GM-THRID: 6329478247155236864
X-Received: by 10.28.150.135 with SMTP id y129mr1132226wmd.1.1473697202708;
        Mon, 12 Sep 2016 09:20:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.229 with SMTP id e98ls72067lji.45.gmail; Mon, 12 Sep 2016
 09:20:02 -0700 (PDT)
X-Received: by 10.46.71.207 with SMTP id u198mr2799380lja.2.1473697202147;
        Mon, 12 Sep 2016 09:20:02 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w134si37212wmf.3.2016.09.12.09.20.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 09:20:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="192882514"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 18:20:01 +0200
Date: Mon, 12 Sep 2016 18:20:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: comedidev: Fixes
 CamelCase issue
In-Reply-To: <CAFrQyDEvVL_XEL3DtCn9npXa8H+Jxaixv7nVEzY2Sx8ROCD+RA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609121817510.29099@hadrien>
References: <CAFrQyDEvVL_XEL3DtCn9npXa8H+Jxaixv7nVEzY2Sx8ROCD+RA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-418797217-1473697200=:29099"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-418797217-1473697200=:29099
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 12 Sep 2016, Namrata A Shettar wrote:

> This patch fixes the checkpatch.pl issue:
> -Avoid CamelCase
>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/comedi/comedidev.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedidev.h
> b/drivers/staging/comedi/comedidev.h
> index dcb6376..9d941b1 100644
> --- a/drivers/staging/comedi/comedidev.h
> +++ b/drivers/staging/comedi/comedidev.h
> @@ -582,7 +582,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
>
>  #define RANGE(a, b)            {(a) * 1e6, (b) * 1e6, 0}
>  #define RANGE_ext(a, b)                {(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
> -#define RANGE_mA(a, b)         {(a) * 1e6, (b) * 1e6, UNIT_mA}
> +#define RANGE_ma(a, b)         {(a) * 1e6, (b) * 1e6, UNIT_ma}

Does this compile?  The old code was referring to UNIT_mA and the new code
is referring to UNIT_ma, but there doesn't seem to be a redefinition of
UNIT_mA anywhere.

Also, I'm not sure what mA means, but it looks like it could be something
that has a technical meaning in the context of the driver.  It doesn't
look like an ordinary instance of camel case, where an identifier would be
written likeThis.

julia

>  #define RANGE_unitless(a, b)   {(a) * 1e6, (b) * 1e6, 0}
>  #define BIP_RANGE(a)           {-(a) * 1e6, (a) * 1e6, 0}
>  #define UNI_RANGE(a)           {0, (a) * 1e6, 0}
> @@ -593,9 +593,9 @@ extern const struct comedi_lrange range_bipolar2_5;
>  extern const struct comedi_lrange range_unipolar10;
>  extern const struct comedi_lrange range_unipolar5;
>  extern const struct comedi_lrange range_unipolar2_5;
> -extern const struct comedi_lrange range_0_20mA;
> -extern const struct comedi_lrange range_4_20mA;
> -extern const struct comedi_lrange range_0_32mA;
> +extern const struct comedi_lrange range_0_20ma;
> +extern const struct comedi_lrange range_4_20ma;
> +extern const struct comedi_lrange range_0_32ma;
>  extern const struct comedi_lrange range_unknown;
>
>  #define range_digital          range_unipolar5
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDEvVL_XEL3DtCn9npX
> a8H%2BJxaixv7nVEzY2Sx8ROCD%2BRA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-418797217-1473697200=:29099--

