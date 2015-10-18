X-GM-THRID: 6206591728806264832
X-Received: by 10.112.144.105 with SMTP id sl9mr759930lbb.3.1445188209444;
        Sun, 18 Oct 2015 10:10:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.147.66 with SMTP id v63ls518031lfd.22.gmail; Sun, 18 Oct
 2015 10:10:08 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr6063040lbs.18.1445188208656;
        Sun, 18 Oct 2015 10:10:08 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id go9si305376wib.3.2015.10.18.10.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 10:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id fx6so20962029wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 10:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=3RCoW64R/BSuDfyEuxs1qS/70xSSOULYUfBYqSJCbzc=;
        b=isGWe8IoB3bcE8IWFYRbs80WG8W5iLLb6E1T9dIPqOKAxSf6Td6I/B0E/+ZDUcoGLS
         hYtsQ3e+CdWTgGP/qDhDSOlxYjqLWzyb/3C+eQWyuIteSdDGonWHHJy/9WslifAURr3u
         tKr7wyvQcRz8DAasneMl7XPeLKSrHUm4+NyuKIerluabCgjQE7saNIh1doiJ7IhoQmZb
         aOjVAXQeL0rswByyvfgzl/y0lP4v9qSahWBJlVrdNiSaxedEliVVOB7vgr571FlZ86TS
         4aRVVAddXMx7zr6Jy05BZ+mmtJL4XvW4KYlR2WCsCpBWh4yvotswMVDAo37YmsU2ceiu
         6+tQ==
MIME-Version: 1.0
X-Received: by 10.180.211.47 with SMTP id mz15mr15361802wic.93.1445188208522;
 Sun, 18 Oct 2015 10:10:08 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Sun, 18 Oct 2015 10:10:08 -0700 (PDT)
In-Reply-To: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>
References: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>
Date: Sun, 18 Oct 2015 20:10:08 +0300
Message-ID: <CAEnQRZDMqZ4bbLsVW2jA7NqWQpvRkRUGR3TMcgtcE306h5v+7A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: wilc1000: Remove multiple
 blank lines
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Aybuke Ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 17, 2015 at 3:25 PM, Aybuke Ozdemir <aybuke.147@gmail.com> wrote:
> Remove multiple blank lines. Problem found using checkpatch.pl
> CHECK: Please don't use multiple blank lines.
>
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 3d45cc3..93f3c75 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -8,7 +8,6 @@
>   *  @version   1.0
>   */
>
> -
>  #include "coreconfigurator.h"
>  #include "wilc_wlan_if.h"
>  #include "wilc_wlan.h"
> @@ -544,7 +543,6 @@ s32 ParseAssocRespInfo(u8 *pu8Buffer, u32 u32BufferLen,
>
>         *ppstrConnectRespInfo = pstrConnectRespInfo;
>
> -
>         return s32Error;
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445084735-20133-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

