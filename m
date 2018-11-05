X-GM-THRID: 6619753207840112640
X-Received: by 2002:a19:519a:: with SMTP id g26-v6mr1863856lfl.2.1541457502305;
        Mon, 05 Nov 2018 14:38:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:874e:: with SMTP id q14-v6ls1483777ljj.24.gmail; Mon, 05
 Nov 2018 14:38:21 -0800 (PST)
X-Google-Smtp-Source: AJdET5cV5VqWH4vyfCZB8gQ3/FwMqn/0sko/AYuQDLtB9jzVQ2P2mS7JrcYqFPH9oGyrsurt8QL0
X-Received: by 2002:a2e:350e:: with SMTP id z14-v6mr2129388ljz.14.1541457501447;
        Mon, 05 Nov 2018 14:38:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541457501; cv=none;
        d=google.com; s=arc-20160816;
        b=xkNPE0ouTDupJ1sHPADwUgQMk3PcF5HFGx4OtsiotfO+h3ZIMgo+WQV5lDSdTJU88c
         mcJFSo6MHISpJAEMbuhTY2Y1H0KAK6BUtVuIdRcikhjWLJ7ca1Dq5bo8VS+TxmI+u+BN
         Xbn461fDYsIWNMuHXYwLl8BHk2+O/fUy/+ckf4Rfca6CQUD8COwF+KG+LDrTGcR2EZSI
         EebTSW393SYwqFO68ylEWHS6iu/8bUzV2nXEr9Rd4Zb0a98G59EBC85+yO4ZdQMBOHO5
         Sq4s3eOseIXOIpB8QpNp6H7LmQmv3DPynfD8pWdud/1zV71Q9lkf7XJnFIAT7Q28Iujj
         VfkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=GQbSkc3wghFMQI+WMIPAGQNURSo30xdHGH7l+e9O0lU=;
        b=UsaW2SKQzGVXtFe0IazICvpFraQfPmNu5nO6ZsQVCj50g5BZm615Vll4Bb0VAWgYI9
         uOHjEbWXEVBx7Typ78Nq90CUtZXeZcwfHUQlafd0I7+Bezs2ONVR0FChMzMuTBbN0qZC
         8gglxIIrh06gQYNk0H5nVgThyghV5z+VTxjIUJv+VJFDAbq4MZ0hS1RS0/k4mmWTrj2W
         W7ariIZ1vPVKQTLnsq2mPzWT3xZt5wrMuqKI+MGbJypWVtG9/rubNjxKBjHUoP8JYvA6
         tSMPOLPnQwfVSa+69KEcizevKfGSOOIqdSnPC4zo9nkhQ9zgmcj/F8DQ0Kpe0OnhmHXr
         cmZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i127-v6si974279lfi.1.2018.11.05.14.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 14:38:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,469,1534802400"; 
   d="scan'208";a="284435314"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2018 23:38:20 +0100
Date: Mon, 5 Nov 2018 23:38:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: davinci_vpfe: add spdx
 license identifier
In-Reply-To: <20181105222627.15162-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1811052336140.2459@hadrien>
References: <20181105222627.15162-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 5 Nov 2018, Irenge Jules Bashizi wrote:

> add spdx license to fix  all warnings of missing or malformed license

It may seem a bit pedantic, but I think Greg was hoping for a real
sentence, that starts with a capital letter and ends with a period.  There
should be only one space between each pair of words.  Clear communication
is a really important part of working on an open source project, and part
of that is having the text look like it is expected to look, so that the
reader can concerntrate on the message.

julia

>
> Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_isif.c         | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_isif.h         | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe.h               | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_video.c         | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_video.h         | 1 +
>  18 files changed, 18 insertions(+)
>
> diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> index 7cc115c9ebe6..69594bb70a2b 100644
> --- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> +++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 30cb98d48565..1419c6b9a270 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> index d81b29e19309..39bd29a3aa89 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> index dbb7ddc70bef..76d1d0fe982c 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> index 7ee157233047..4728aff84480 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> index a53231b08d30..24bb1e93af23 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> index cea3d61335af..a27b76fb593c 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
> index e2a69b59554a..0296ef5a1116 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> index 39eb0819ab4e..728a443ea60d 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
> index 89e814e9c0d7..732da81a1552 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
> index 64fbb459baa2..915a05baa7ab 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> index 72bbbc34d18c..ca1ddae50c22 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> index cf560a33d862..17eba2e35f23 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
> index 0587bc52a840..2e03b95b937f 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe.h
> +++ b/drivers/staging/media/davinci_vpfe/vpfe.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> index bdf6ee5ad96c..da2b5dcbd269 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
> index 8ad8d743f4e0..f232acc3e238 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> index 5e9769ea8a50..204bc238d67b 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.h b/drivers/staging/media/davinci_vpfe/vpfe_video.h
> index 4bbd219e8329..2be00e782505 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_video.h
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_video.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/
>  /*
>   * Copyright (C) 2012 Texas Instruments Inc
>   *
> --
> 2.17.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181105222627.15162-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

