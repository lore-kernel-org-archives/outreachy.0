X-GM-THRID: 7018482002461458432
X-Received: by 2002:a05:600c:b5a:: with SMTP id k26mr11590457wmr.172.1634117873753;
        Wed, 13 Oct 2021 02:37:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a285:: with SMTP id s5ls2041800wra.1.gmail; Wed, 13 Oct
 2021 02:37:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxM2HCkPqgZdnu7cXBP3CfByhJMa5uaHL7EZpzlgMKU7GpFNCuBcPOHlMoTIuT/+wV++fMZ
X-Received: by 2002:a05:6000:1889:: with SMTP id a9mr23031943wri.400.1634117872150;
        Wed, 13 Oct 2021 02:37:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634117872; cv=none;
        d=google.com; s=arc-20160816;
        b=ti8y0RyfnolCeIx0Xdd/MWvwjODGKMMb3XMPYu22VCnFzZ+Nn7X615Jk3wOeHUaq5s
         xLFF9MajhxHsstqRK7CPooeJ8wMYvS3BdLifzE4p7af5OYUy42d5TVQ/kX4DDKWE4kcG
         vk8RxQjDpKBXa/EXKuN3cBVsj02X+p7+PsxvBpyWLtL3J0cMzR5Ao7A6zlliNzc6nqPE
         GX2U6EWy5s+4haOTMMfDQ7xLEJAeOP9jwYI1rDgNfABiInJ47FoR1Bi6AuIWSnyRt0bj
         PgLAo5yufK7sKBTYjN3/+Cf0qtOHH4QG/igP1B7DWYrS83Uv4zQKdNKklde+tc0WW1/A
         GKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=OVzTRNACLTqnTrHXKzhxeJyj2LqlhZeCxzwSnEEXqhI=;
        b=w1ZuCtHGdY4sTq7wBPyBkEI8bPgCgodTra4yekeDzO7B81B5OD/X5AC+tDJOWoz1lB
         qo+HmIvg9qZtPby0hmAGBbclYM5Dzg+6XRtCPEgByQcaBfdQxp2LJWiLsc5LaMnMRpQG
         U7U72yZdi8vRsX5DTZ7R1l7I3O7O0kjPyfVhwttPh+MKeGfcIEBab5pLLyNN2o+CgSX7
         x8u+ImzjriksyJ4RmApc4TJ0jcoRFll4n6r/9MKns5/MiUi3ODllkc0OP/yo67ZPoP2d
         iOxM+6ACSbNMXx45TWgYWpGM7MSROUfw1Ryazi5tM5y16A2dkLZVGoraOsCKXovKiSgX
         4ADw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f9si461788wmg.2.2021.10.13.02.37.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Oct 2021 02:37:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3An/0FGqs1MDXH187yDLgqJ8Ib7skDcdV00zEX?=
 =?us-ascii?q?/kB9WHVpm62j5qSTdZsgviMc5Ax6ZJhko7G90cq7MBbhHPxOgbX5VI3KNDUO+l?=
 =?us-ascii?q?HYT72KhrGN/9SPIUHDH6JmpMVdWpk7OZnLAV92gd2S2mSFOtwrqePpzJyV?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="395759119"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2021 11:37:51 +0200
Date: Wed, 13 Oct 2021 11:37:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: =?ISO-8859-7?Q?Re=3A_=5BOutreachy_kernel=5D_Can=A2t_install_ker?=
 =?ISO-8859-7?Q?nel_when_CONFIG=5FSYSTEM=5FTRUSTED=5FKEYS_is_set?=
In-Reply-To: <d89839a7-c1c6-4768-9f5c-c9001b1239a2n@googlegroups.com>
Message-ID: <alpine.DEB.2.22.394.2110131136370.3465@hadrien>
References: <d89839a7-c1c6-4768-9f5c-c9001b1239a2n@googlegroups.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-534873501-1634117871=:3465"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-534873501-1634117871=:3465
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 13 Oct 2021, Karolina Drobnik wrote:

> Hi everyone,
>
> I tried to compile a kernel using my system config file (Debian 11,
> 5.10.0-9-amd64). Unfortunately, when I run `sudo make modules_install
> install`, I got this:
>
> ```
> At main.c:160:
> - SSL error:02001002:system library:fopen:No such file or directory:
> ../crypto/bio/bss_file.c:69
> - SSL error:2006D080:BIO routines:BIO_new_file:no such file:
> ../crypto/bio/bss_file.c:76
> sign-file: : No such file or directory
> ```
>
> After a bit of a research, I found out that the solution is to comment out
> the `CONFIG_SYSTEM_TRUSTED_KEYS` flag. Mine was set to
> "debian/certs/debian-uefi-certs.pem", a file that’s clearly absent from the
> kernel tree.
>
> I’m not quite sure if this is the right way of going about it. Is it fine to
> leave this one out when I'm working on a kernel or not?
>
> Bonus question: What happens if TRUSTED_KEYS is commented out? Will the
> *.pem file be generated automatically or does it turn the module signing
> off?

I often receive complaints about this file, and I have just replaced
"debian/certs/debian-uefi-certs.pem" by "", rather than removing the
configuration option.  No other changes to the configuration inherited
from my debian installation.

julia

>
>
> Many thanks,
> Karolina
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/d89839a7-c1c6-4768-9f5c-
> c9001b1239a2n%40googlegroups.com.
>
>
--8323329-534873501-1634117871=:3465--

