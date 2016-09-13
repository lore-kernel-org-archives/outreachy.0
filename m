X-GM-THRID: 6329698324214448128
X-Received: by 10.25.18.100 with SMTP id h97mr3305936lfi.6.1473751633218;
        Tue, 13 Sep 2016 00:27:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.17.7 with SMTP id 7ls1705202wmr.0.canary; Tue, 13 Sep 2016
 00:27:12 -0700 (PDT)
X-Received: by 10.28.193.198 with SMTP id r189mr2411191wmf.7.1473751632558;
        Tue, 13 Sep 2016 00:27:12 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y7si1433005wmd.0.2016.09.13.00.27.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 00:27:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,327,1470693600"; 
   d="scan'208";a="236216175"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 09:27:12 +0200
Date: Tue, 13 Sep 2016 09:27:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, badbuddha91@gmail.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: comedi_pcmcia:
 Removes unnecessary blank line
In-Reply-To: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609130926080.3355@hadrien>
References: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-714071184-1473751631=:3355"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-714071184-1473751631=:3355
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 13 Sep 2016, Namrata A Shettar wrote:

> This patch removes an unnecessary blank line that caused checkpatch issue.

Actually, commit messages and subject lines should be written in the
imperative.  So you should say eg

Remove unnecessary blank line

instead of

Removes unnecessary blank line

julia

>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
> Changes in v2:
>   - Changed the subject line
>   - Changed description of patch
>
>  drivers/staging/comedi/comedi_pcmcia.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/comedi_pcmcia.c
> b/drivers/staging/comedi/comedi_pcmcia.c
> index d7072a5..ec8a0ad 100644
> --- a/drivers/staging/comedi/comedi_pcmcia.c
> +++ b/drivers/staging/comedi/comedi_pcmcia.c
> @@ -18,7 +18,6 @@
>
>  #include <linux/module.h>
>  #include <linux/kernel.h>
> -
>  #include "comedi_pcmcia.h"
>
>  /**
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDErWX1NgsruZtt10hi
> hZR2J3cvK-Q9Zj_dp_GLc_0mLmA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-714071184-1473751631=:3355--

