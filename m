X-GM-THRID: 6619603219062456320
X-Received: by 2002:a19:519a:: with SMTP id g26-v6mr1223225lfl.2.1541254342707;
        Sat, 03 Nov 2018 07:12:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:47c9:: with SMTP id u192-v6ls198164lja.12.gmail; Sat, 03
 Nov 2018 07:12:21 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cq9+Hn61oudcqJWBcSZSzcxTDxuoif6nnKm5ObOnnQ8i0cSZg8pcXQ/5E1uY2xYCFfKHZx
X-Received: by 2002:a2e:854e:: with SMTP id u14-v6mr1431919ljj.0.1541254341866;
        Sat, 03 Nov 2018 07:12:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541254341; cv=none;
        d=google.com; s=arc-20160816;
        b=EN7gbDfcdWt+8Du+YNwrGovRVT+MQXOfwzn2+ZDjzD2JrM9xgYN5jQEpTyguPCs2mZ
         x1z/SZpcEI7pxlp90jTucCz6OIzYSyGgCUEINewGjINTogQSP6GSE2Pd3QG7uu/Nwxqj
         +ShEJXh8XE71C+gbox/lUmjYTvwU6Nl1aCmdhN1NrEEoez1L1YS/cMTxfWwQ6wssO+LD
         1numMskqtf9Xj5nmZdpQ/zlRBOG9jDUcnA0sYbcitIWz5FRio5W5HObl2K8G8brpHQip
         R/tHYVW6GU0RmpG1C18GuN7ZK7efayF5FH6Jl6h+/VHQwLBpuFANFCPRJrKu+SjTNmPk
         n02w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=VYKGJTt9OMZ7gDC/n7WVfj/Fpw0sfr+CfonVkGnE23o=;
        b=Qo6tRf8FcRAhMweBTGJ2KWYEzCduk/vPEI2x3T4OzOLALL05gsgLVh9kJ9nXhD26+F
         VyBoTc+mvLT0ZYr+CZj+HAeUYQjRWzFk5tU78IEChNtTzE4Nmf6OXFCjoqEnDi6DkoWI
         mVYNi0jMiWqUQbsx8/rMqpXW53zYSJyhu/kISiUEdinNxG+7JGY5FrjPfwlld/UrCT1f
         KKA2EdXLz+miMXV7EzHn29jLdCqlWAfVRALaEPn0n+SgJ04tdEzgB7TbbwUIOG2uEZPC
         jO4sqSXuGjjh8ezb2iSK6Dw6G+oHZCLf/yRn0OV9wo6UzSidHJMaYbChqz2AwvGXTA2M
         0Sfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 73-v6si967489ljc.5.2018.11.03.07.12.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 07:12:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,460,1534802400"; 
   d="scan'208";a="353984685"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 15:12:20 +0100
Date: Sat, 3 Nov 2018 15:12:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, jules.octave@outlook.com
Subject: Re: [Outreachy kernel] [PATCH] staging:dm365_ipipe:Add SPDX License
 Identifier
In-Reply-To: <20181103120109.780-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1811031510290.2416@hadrien>
References: <20181103120109.780-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line is still nto good.  If you look at git log --oneline on
this file, you will see eg:

106eb4d5f5be staging: media: davinci_vpfe: Use __func__ instead of function name

Actually, there are a lot of different examples for this file, but they
all have in common that there is a space are the :, which is not found in
your subject line.  As you can see in the example, it is also not necssary
to capitalize everything.

julia

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

