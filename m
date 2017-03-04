X-GM-THRID: 6393330913423392768
X-Received: by 10.46.33.163 with SMTP id h35mr1339074lji.17.1488642221237;
        Sat, 04 Mar 2017 07:43:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.15 with SMTP id h15ls1197065ljb.14.gmail; Sat, 04 Mar
 2017 07:43:40 -0800 (PST)
X-Received: by 10.46.71.15 with SMTP id u15mr1320261lja.9.1488642220320;
        Sat, 04 Mar 2017 07:43:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v201si419430wmv.3.2017.03.04.07.43.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:43:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="263119549"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 16:43:39 +0100
Date: Sat, 4 Mar 2017 16:43:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, oleg.drokin@intel.com, marvin24@gmx.de, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 0/5] Remove unnecessary cast on
 void pointer
In-Reply-To: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703041643110.2072@hadrien>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, simran singhal wrote:

> This patch-series removes unnecessary cast on void pointer in various
> drivers.
>
> v5:
>   -Fixed compliation warning in lustre/lustre/llite/range_lock.c
>    which remain unfixed in v3.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>
for the whole series.


> v4:
>   -change the cover-letter subject
> v3:
>   -Fixed compilation warning in lustre/lustre/llite/range_lock.c
>
> simran singhal (5):
>   staging: nvec: Remove unnecessary cast on void pointer
>   staging: lustre: Remove unnecessary cast on void pointer
>   staging: lustre: lustre: Remove unnecessary cast on void pointer
>   staging: rts5208: Remove unnecessary cast on void pointer
>   staging: rtl8712: Remove unnecessary cast on void pointer
>
>  drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
>  drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
>  drivers/staging/nvec/nvec_kbd.c                  |  2 +-
>  drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
>  drivers/staging/rts5208/rtsx_transport.c         |  3 +--
>  5 files changed, 10 insertions(+), 12 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488641453-22575-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

