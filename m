X-GM-THRID: 6619603219062456320
X-Received: by 2002:a2e:9e4a:: with SMTP id g10-v6mr1402515ljk.26.1541254601754;
        Sat, 03 Nov 2018 07:16:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:41c9:: with SMTP id d9-v6ls1302350lfi.8.gmail; Sat, 03
 Nov 2018 07:16:40 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dDQvao269KYs2y4sXVLgWh0jjtEJP+YO4Jd6wUPNXpel09DEET4mHiaJ0nWwr8TiKCEReT
X-Received: by 2002:a19:2d47:: with SMTP id t7-v6mr331798lft.13.1541254600886;
        Sat, 03 Nov 2018 07:16:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541254600; cv=none;
        d=google.com; s=arc-20160816;
        b=BB26v5Ly2UhBJ2VxlvAJ+VQfG9WcAU6cPjZiqAsbq61D+QgzP7FZ/tQ4ZukmjrSirr
         HvvcRiuSNFTtSNiSM3sMky9vYR+l6BYQWeFUGOJUBmFOqY+Zq6e/ZU5ig9sPIVhZI09v
         qDM0FWQ0fJL1B/XoSos2R59oHzFBRuf7jtKYTXAQp2kiwOlGqlMhyFlMH81OXzv6u9z1
         73g/QZMXSHSHxQRbLD+Q7AWv4qVz0A599c3DpfA7pqK07SpNwi5QPpNeRWQOsRlslyzD
         bOxmPtEUyAalCnBWHirtr9VHuU0c9Musf4TaD77+KccfM5R56dnpINaOFM4B2i3vnuDC
         e93g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MWX6Bg3Hu1wAofGqR3KJTkzWGX1URfO1mXMLZLvx2f4=;
        b=cCO+MYqrE8/REfYlc9eF0SjYHnJCEaisSlYZn0qUcugVlPI6nR2FJkrxhb50jjiRje
         riipSWG2b3EST+ZeKDNlftsLnewvXPZT7YQLA3/86aIyDHb1ymS3ZQhC/PBULLxyFdtw
         y0/oydtKGD1fBrjXz28p9ggPI/Nu+8cEPv3SDGDf39veN3Qf7xTjaGVFmTsgXuzfUoTF
         efN8yicfsM66g+TPBIZR1Y0toZy6tGkw63hoEGBW4oW+xlV3Pd8LUJ+T/8HXEuHI8q8f
         Dw05KrjgrNbuXgVrY7to16ca8smVeJJ7zhm4igpcPrELauHlaMJFOKMQI+kGeyX61DP+
         UbeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w13-v6si1339029lfe.3.2018.11.03.07.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 07:16:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,460,1534802400"; 
   d="scan'208";a="353984884"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 15:16:39 +0100
Date: Sat, 3 Nov 2018 15:16:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, jules.octave@outlook.com
Subject: Re: [Outreachy kernel] [PATCH] staging:dm365_ipipe:Add SPDX License
 Identifier
In-Reply-To: <20181103120109.780-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1811031516160.2416@hadrien>
References: <20181103120109.780-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Nov 2018, Irenge Jules Bashizi wrote:

> Add SPDX license Identifier to fix checkpatch malformed license warning
>
> Remove old style text describing the License
>
> Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> ---
>  .../staging/media/davinci_vpfe/dm365_ipipe.c  | 31 ++++++-------------
>  1 file changed, 9 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index dcfeac818451..20bd6d652931 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -1,29 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
>  /*
> - * Copyright (C) 2012 Texas Instruments Inc

Is it correct to remove this?

> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation version 2.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
> - *
> - * Contributors:
> - *      Manjunath Hadli <manjunath.hadli@ti.com>
> - *      Prabhakar Lad <prabhakar.lad@ti.com>
>   *
>   *
> - * IPIPE allows fine tuning of the input image using different
> - * tuning modules in IPIPE. Some examples :- Noise filter, Defect
> - * pixel correction etc. It essentially operate on Bayer Raw data
> - * or YUV raw data. To do image tuning, application call,
> + *	IPIPE allows fine tuning of the input image using different
> + *	tuning modules in IPIPE. Some examples :- Noise filter, Defect
> + *	pixel correction etc. It essentially operate on Bayer Raw data
> + *	or YUV raw data. To do image tuning, application call,

Is there a reason to indent this text?

julia

>   *
> + *	Contributors:
> + *		Manjunath Hadli <manjunath.hadli@ti.com>
> + *		Prabhakar Lad <prabhakar.lad@ti.com>
>   */
>
>  #include <linux/slab.h>
> --
> 2.17.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181103120109.780-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

