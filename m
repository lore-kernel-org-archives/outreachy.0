X-GM-THRID: 6393354564445143040
X-Received: by 10.46.21.91 with SMTP id 27mr1191799ljv.0.1488638252733;
        Sat, 04 Mar 2017 06:37:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.66 with SMTP id h63ls1181721ljh.5.gmail; Sat, 04 Mar
 2017 06:37:32 -0800 (PST)
X-Received: by 10.25.157.14 with SMTP id g14mr1004197lfe.28.1488638252368;
        Sat, 04 Mar 2017 06:37:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si819628wmd.0.2017.03.04.06.37.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:37:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="263115501"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 15:37:31 +0100
Date: Sat, 4 Mar 2017 15:37:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/9] staging: media: atomisp: Fix
 multiple checkpatch issues.
In-Reply-To: <58bad051.c18a630a.70a47.c246@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703041536450.2072@hadrien>
References: <58bad051.c18a630a.70a47.c246@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

You need to say somewhere why there is a v2, either in the cover letter or
in the individual patches.  If there is no change, you should say that
there is no change.

julia

On Sat, 4 Mar 2017, Varsha Rao wrote:

> Fixes multiple checkpatch issues in media driver.
>
> Varsha Rao (9):
>   staging: media: atomisp: Removed unnecessary parentheses.
>   staging: media: atomisp: Fix line over 80 characters.
>   staging: media: atomisp: Added spaces around arithmetic and bitwise
>     operators.
>   staging: media: atomisp: Replace 'uint32_t' with kernel type u32.
>   staging: media: atomisp: Fix block comments warning.
>   staging: media: atomisp: Removes the FSF mailing address.
>   staging: media: atomisp: Use unsigned int instead of unsigned.
>   staging: media: atomisp: Fixed typo.
>   staging: media: atomisp: Replace NULL comparison.
>
>  drivers/staging/media/atomisp/i2c/gc0310.c         | 22 +++++++--------
>  drivers/staging/media/atomisp/i2c/gc2235.c         | 24 +++++++----------
>  drivers/staging/media/atomisp/i2c/ov2680.c         | 30 +++++++++------------
>  drivers/staging/media/atomisp/i2c/ov2722.c         | 31 ++++++++++------------
>  drivers/staging/media/atomisp/i2c/ov5693/ov5693.c  |  2 +-
>  drivers/staging/media/atomisp/i2c/ov8858.c         |  2 +-
>  .../css2400/isp/kernels/bnlm/ia_css_bnlm.host.c    | 16 +++++------
>  .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.c | 16 +++++------
>  .../isp/kernels/macc/macc1_5/ia_css_macc1_5.host.h |  6 ++---
>  .../isp/kernels/s3a/s3a_1.0/ia_css_s3a.host.c      |  2 +-
>  .../atomisp/pci/atomisp2/css2400/sh_css_mipi.c     | 19 ++++++-------
>  11 files changed, 78 insertions(+), 92 deletions(-)
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58bad051.c18a630a.70a47.c246%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

