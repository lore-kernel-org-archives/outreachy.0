X-GM-THRID: 6391110237247504384
X-Received: by 10.25.204.15 with SMTP id c15mr1257908lfg.5.1488118977235;
        Sun, 26 Feb 2017 06:22:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls374291lja.6.gmail; Sun, 26 Feb
 2017 06:22:55 -0800 (PST)
X-Received: by 10.25.29.11 with SMTP id d11mr1412485lfd.14.1488118975681;
        Sun, 26 Feb 2017 06:22:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c188si499862wmd.0.2017.02.26.06.22.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 06:22:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,208,1484002800"; 
   d="scan'208";a="262127093"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 15:22:55 +0100
Date: Sun, 26 Feb 2017 15:22:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/7] staging: sm750fb: Fix multiple
 checkpatch issues.
In-Reply-To: <58b2cde2.0edf620a.b79de.50fc@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702261522310.2056@hadrien>
References: <58b2cde2.0edf620a.b79de.50fc@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

All of the patches in the series should have the same version number, even
if some of them have no changes.

julia

On Sun, 26 Feb 2017, Varsha Rao wrote:

> Fixes multiple checkpatch issues in sm750fb driver.
>
> Varsha Rao (7):
>   staging: sm750fb: Add braces around if statement.
>   staging: sm750fb: Fix line over 80 characters
>   staging: sm750fb: Add identifier to function definition argument.
>   staging: sm750fb: Remove unnecessary blank lines.
>   staging: sm750fb: Added spaces around arithmetic operators.
>   staging: sm750fb: Replace NULL comparison.
>   staging: sm750fb: Remove blank lines after { and before } braces.
>
>  drivers/staging/sm750fb/ddk750_chip.c    | 14 +++++++-------
>  drivers/staging/sm750fb/ddk750_chip.h    |  2 +-
>  drivers/staging/sm750fb/ddk750_display.h |  5 -----
>  drivers/staging/sm750fb/ddk750_dvi.c     |  6 +-----
>  drivers/staging/sm750fb/ddk750_mode.c    |  5 -----
>  drivers/staging/sm750fb/ddk750_mode.h    |  2 --
>  drivers/staging/sm750fb/ddk750_power.c   |  5 -----
>  drivers/staging/sm750fb/ddk750_power.h   |  1 -
>  drivers/staging/sm750fb/ddk750_reg.h     |  4 ----
>  drivers/staging/sm750fb/sm750.c          |  1 -
>  drivers/staging/sm750fb/sm750.h          |  2 +-
>  drivers/staging/sm750fb/sm750_accel.c    |  6 +-----
>  drivers/staging/sm750fb/sm750_cursor.c   |  4 ----
>  13 files changed, 11 insertions(+), 46 deletions(-)
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b2cde2.0edf620a.b79de.50fc%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

