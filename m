X-GM-THRID: 6329478247155236864
X-Received: by 10.36.204.68 with SMTP id x65mr821784itf.3.1473776510310;
        Tue, 13 Sep 2016 07:21:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.20.142 with SMTP id 136ls170250iou.26.gmail; Tue, 13 Sep
 2016 07:21:49 -0700 (PDT)
X-Received: by 10.66.188.137 with SMTP id ga9mr811317pac.23.1473776509137;
        Tue, 13 Sep 2016 07:21:49 -0700 (PDT)
Received: by 10.55.9.211 with SMTP id 202msqkj;
        Mon, 12 Sep 2016 09:50:31 -0700 (PDT)
X-Received: by 10.28.206.138 with SMTP id e132mr1934358wmg.5.1473699031311;
        Mon, 12 Sep 2016 09:50:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v132si81110wmf.1.2016.09.12.09.50.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 09:50:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="236164058"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 18:50:31 +0200
Date: Mon, 12 Sep 2016 18:50:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: comedi: comedidev: Fixes
 CamelCase issue
In-Reply-To: <aaed82ca-fe9f-4682-952b-d0d8d1c8317d@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609121850000.29099@hadrien>
References: <CAFrQyDEvVL_XEL3DtCn9npXa8H+Jxaixv7nVEzY2Sx8ROCD+RA@mail.gmail.com> <aaed82ca-fe9f-4682-952b-d0d8d1c8317d@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-329616624-1473699030=:29099"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-329616624-1473699030=:29099
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 12 Sep 2016, Namrata A Shettar wrote:

>  It did compile when I tried.

OK, it's a macro.  It is possible that the macro is not used in the code
that gets compiled.

julia

>  Thanks for pointing that out. Also, mA stands for the physical unit of
> current milli-Amperes.I realize that it's not a good idea to change the
> notation for a physical unit.
>  Sorry for that,will be more careful the next time :)
>
> On Monday, September 12, 2016 at 9:38:14 PM UTC+5:30, Namrata A Shettar
> wrote:
>       This patch fixes the checkpatch.pl issue:
>       -Avoid CamelCase
>
>       Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
>       ---
>        drivers/staging/comedi/comedidev.h | 8 ++++----
>        1 file changed, 4 insertions(+), 4 deletions(-)
>
>       diff --git a/drivers/staging/comedi/comedidev.h
>       b/drivers/staging/comedi/comedidev.h
>       index dcb6376..9d941b1 100644
>       --- a/drivers/staging/comedi/comedidev.h
>       +++ b/drivers/staging/comedi/comedidev.h
>       @@ -582,7 +582,7 @@ int comedi_check_chanlist(struct
>       comedi_subdevice *s,
>
>        #define RANGE(a, b)            {(a) * 1e6, (b) * 1e6, 0}
>        #define RANGE_ext(a, b)                {(a) * 1e6, (b) * 1e6,
>       RF_EXTERNAL}
>       -#define RANGE_mA(a, b)         {(a) * 1e6, (b) * 1e6, UNIT_mA}
>       +#define RANGE_ma(a, b)         {(a) * 1e6, (b) * 1e6, UNIT_ma}
>        #define RANGE_unitless(a, b)   {(a) * 1e6, (b) * 1e6, 0}
>        #define BIP_RANGE(a)           {-(a) * 1e6, (a) * 1e6, 0}
>        #define UNI_RANGE(a)           {0, (a) * 1e6, 0}
>       @@ -593,9 +593,9 @@ extern const struct comedi_lrange
>       range_bipolar2_5;
>        extern const struct comedi_lrange range_unipolar10;
>        extern const struct comedi_lrange range_unipolar5;
>        extern const struct comedi_lrange range_unipolar2_5;
>       -extern const struct comedi_lrange range_0_20mA;
>       -extern const struct comedi_lrange range_4_20mA;
>       -extern const struct comedi_lrange range_0_32mA;
>       +extern const struct comedi_lrange range_0_20ma;
>       +extern const struct comedi_lrange range_4_20ma;
>       +extern const struct comedi_lrange range_0_32ma;
>        extern const struct comedi_lrange range_unknown;
>
>        #define range_digital          range_unipolar5
>       --
>       2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/aaed82ca-fe9f-4682-952b-
> d0d8d1c8317d%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-329616624-1473699030=:29099--

