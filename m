X-GM-THRID: 6662466650239926272
X-Received: by 2002:a1c:200e:: with SMTP id g14mr153124wmg.13.1551255175572;
        Wed, 27 Feb 2019 00:12:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3d6:: with SMTP id 205ls84695wmd.1.gmail; Wed, 27 Feb
 2019 00:12:54 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYmG7p2TI9VbS5MNINNASdv2M3Hsf6+MYL3kpT3kG2sB5rePCyjRssvHhvIOXVuPB8yPMiL
X-Received: by 2002:a1c:e3d6:: with SMTP id a205mr143600wmh.19.1551255174757;
        Wed, 27 Feb 2019 00:12:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551255174; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8XYZib21WjhX7iPKflUm2TEaArB9ISFwjjJI8Tj2+zGjYVe0bUlb3p5EAe3oov3p9
         +gkUjHav329MRN403P94qn173cD7IEA691sVJuQV1/VtDWjf2kNzJOSaaaHcCWjOaHoC
         iQQdOrDdJvqFlfwuXEQl0VrqlKvVyNz+Ri9iXvhnUsZhHfV6n/njwVmpiRN9YOkR+AtG
         oPMVreWX/L66Hod2XXH83hx+xzuQ0jxZKapV5mq7gcuzFVpseofmZyRkF748QBDnUU3f
         Ju0JYgbAVmCn+QQ1SsvtoH7H2EO0mYT4kG+EtXvKQwTrJt228/GFQF+pHokkuVMI6Hcv
         hrvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XBJhD9VNIKzDmKd7cA1JNCMo+7Yjti+yS/Sg8vlxCaE=;
        b=ocZ39VtH6o8gL0ddT7os184bB8J3teroiOvB+a8Ms41ER9gxbAj61g3xHNUsq0/4MC
         6qH4Rs8E6PnLxV4oNRyWc3wHZygpIZr9+KaWmnEC9/GJZSKNZeHOluEWDVeHMv53VsGi
         ALCNVh0FjzMXJ71Dbru0jyMHIW9mZv2+dVwkDn3m3i0iNbla0YaUBEvoeEYNwFy99j7r
         Npw6pUM6ze9F5xx/L6ZiPgUmo6NF/a5SA3Qg0WVE0nHl93vNLdPsY3CzqriaTwyq7FrR
         3FvDqpK7rwmXcIxdZUWjWwGpZtA8ugmM530G4Fs7JUNFtsrMPhKpRBf+q75nlLLKtT+U
         V7NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g10si55995wmk.1.2019.02.27.00.12.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 00:12:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,418,1544482800"; 
   d="scan'208";a="371071952"
Received: from think-julia.rsr.lip6.fr ([132.227.76.14])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2019 09:12:54 +0100
Date: Wed, 27 Feb 2019 09:12:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: mt7621-eth: add SPDX
 identifier
In-Reply-To: <20190227001047.6298-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1902270912240.2671@hadrien>
References: <20190227001047.6298-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Feb 2019, Jules Irenge wrote:

> Add required SPDX license identifier to fix missing SPDX warning
>  reported by checkpatch.pl.

I thought that Greg wanted the existing license comment to go away.  If
you think it is still needed, you could explain why.

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
> Changes since v3:
>  * Made commit message clearer
>  * Added punctuation
>
>
>  drivers/staging/mt7621-eth/ethtool.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
> index 40b4cf011660..d0e97ae0d82e 100644
> --- a/drivers/staging/mt7621-eth/ethtool.h
> +++ b/drivers/staging/mt7621-eth/ethtool.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*   This program is free software; you can redistribute it and/or modify
>   *   it under the terms of the GNU General Public License as published by
>   *   the Free Software Foundation; version 2 of the License
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190227001047.6298-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

