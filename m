X-GM-THRID: 6393675902317756416
X-Received: by 10.46.69.7 with SMTP id s7mr1224196lja.18.1488644105245;
        Sat, 04 Mar 2017 08:15:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.206 with SMTP id 197ls1257742ljj.39.gmail; Sat, 04 Mar
 2017 08:15:04 -0800 (PST)
X-Received: by 10.46.7.10 with SMTP id 10mr1192938ljh.1.1488644104729;
        Sat, 04 Mar 2017 08:15:04 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si517615wmf.0.2017.03.04.08.15.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:15:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="215567647"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 17:15:03 +0100
Date: Sat, 4 Mar 2017 17:15:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: abbotti@mev.co.uk, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, johan@kernel.org, dtwlin@gmail.com, 
    outreachy-kernel@googlegroups.com, greybus-dev@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH 0/3] Replace "is is " with "is"
In-Reply-To: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703041714120.2072@hadrien>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Joe suggested to indicate the subsystem in the subject line of the cover
letter, ie staging here.

How are you finding these?

julia

On Sat, 4 Mar 2017, simran singhal wrote:

> This patch series replace "is is " with "is" in various drivers.
>
> simran singhal (3):
>   staging: rtl8192u: Replace "is is" with "is"
>   staging: greybus: Replace "is is" with "is"
>   staging: comedi: Replace "is is" with "is"
>
>  drivers/staging/comedi/drivers/ni_usb6501.c | 2 +-
>  drivers/staging/greybus/uart.c              | 2 +-
>  drivers/staging/rtl8192u/r819xU_cmdpkt.c    | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488643671-24758-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

