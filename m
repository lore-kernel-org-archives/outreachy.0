X-GM-THRID: 6528466201738215424
X-Received: by 10.80.232.139 with SMTP id f11mr2555514edn.5.1520062368213;
        Fri, 02 Mar 2018 23:32:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.169.98 with SMTP id m31ls5781718edc.0.gmail; Fri, 02 Mar
 2018 23:32:46 -0800 (PST)
X-Google-Smtp-Source: AG47ELuczcZfmAsXg57d91IgptWbkgcJeKxzGLm0582H9lUXlG/8pqVLEJinU2wuMhpPR6w4p/LJ
X-Received: by 10.80.202.69 with SMTP id e5mr2554966edi.9.1520062366505;
        Fri, 02 Mar 2018 23:32:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520062366; cv=none;
        d=google.com; s=arc-20160816;
        b=HShM7v8+Sgd8OTEcuokAdaLr4I/+/S7aRqWfVm+UWeInjgAoR73uMiW+p7mCyJoHKN
         gOlVTPZ10Kj870u8+z/EaZpXRj1GMM37zehitCtLwZpBWAV0/jLZEF81YWzS8yPg8Yuc
         A7wk3kFYm+19yNTBdybr55HNDJyW+QPNBma3ZafYnvwJTLe3Y3nPN8XwygeWLv2pNaAP
         oSjupkIa4B+y5QOGrDvRo7uDcMhfSzPOsPbHzeWkvoPcc4XgotQ6434xipt1Cx28l/pW
         p6Jwy/KhdyqSvWC1gGIRyCiZHy8jJb2mBwO3g+UGT0jnX8UnveXrYcLHD4/p9ueEiPxn
         MfgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=l6Z/yJMNl8yecmM1RBGvJkVs/bgCp0aRotisbteUC/A=;
        b=Rj5EDCmMrEj46DWMhcVlf1hPmTn2V1gdGUeU6gzSalZjkN5s459dpkSDMWgkmZzUpM
         4mPdgPwARw9Np3LKklScBagi09GT3ibBplUxyKCx9fLjNHVS6bS6s35ctSK/JVspgiF7
         j1/ZjOcqNYOIqY2TQGZCDhVL+H/ndy3YxI5rUhAXHLyZUuMd/Yl/y3sZ4frHlaKJ+qvk
         ueAUl7B9F+gBWl4iha399PU9dMDCY9IlA3vdrE37pMqC18ZlYq8/cn7WRfLbCyZNaSwo
         hqCc3tLDrkp1EhOXpNzrr7pVG41suulPQo5ocGJkFX1LUurLIcWccKpGHJQ+FRRa11oy
         J4BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y16si538776edc.1.2018.03.02.23.32.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 23:32:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,416,1515452400"; 
   d="scan'208";a="316179593"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 08:32:45 +0100
Date: Sat, 3 Mar 2018 08:32:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net, 
    florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/6] staging: rtl8712: fix coding
 style issues
In-Reply-To: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1803030832091.3191@hadrien>
References: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Arushi Singhal wrote:

> Fix issues found with checkpatch.pl to conform to the Linux
> kernel coding style.

For the series:

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


>
> Changes in v2:
> * From and Signed-off emails were not same in v1.
> * Added detailed commit message
>
> Arushi Singhal (6):
>   staging: rtl8712: Fixed 'tabstop' coding style warning
>   staging: rtl8712: match alignment with open parenthesis
>   staging: rtl8712: Remove multiple blank line(s)
>   staging: rtl8712: Added spaces around '+'
>   staging: rtl8712: Add spaces around '|'
>   staging: rtl8712: remove unnecessary parentheses
>
>  drivers/staging/rtl8712/drv_types.h                |  2 +-
>  drivers/staging/rtl8712/mlme_linux.c               |  2 +-
>  drivers/staging/rtl8712/os_intfs.c                 |  3 +-
>  drivers/staging/rtl8712/recv_linux.c               |  4 +-
>  drivers/staging/rtl8712/rtl8712_bitdef.h           |  1 -
>  drivers/staging/rtl8712/rtl8712_cmd.c              |  8 +--
>  drivers/staging/rtl8712/rtl8712_cmd.h              |  4 +-
>  drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h   |  2 +-
>  drivers/staging/rtl8712/rtl8712_cmdctrl_regdef.h   |  2 -
>  drivers/staging/rtl8712/rtl8712_debugctrl_bitdef.h |  1 -
>  drivers/staging/rtl8712/rtl8712_debugctrl_regdef.h |  2 -
>  drivers/staging/rtl8712/rtl8712_fifoctrl_bitdef.h  |  1 -
>  drivers/staging/rtl8712/rtl8712_fifoctrl_regdef.h  |  2 -
>  drivers/staging/rtl8712/rtl8712_gp_bitdef.h        |  2 +-
>  drivers/staging/rtl8712/rtl8712_gp_regdef.h        |  1 -
>  drivers/staging/rtl8712/rtl8712_interrupt_bitdef.h |  1 -
>  drivers/staging/rtl8712/rtl8712_led.c              | 70 +++++++++++-----------
>  17 files changed, 48 insertions(+), 60 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520055156-8388-1-git-send-email-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

