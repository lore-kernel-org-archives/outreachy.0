X-GM-THRID: 7019786631527792640
X-Received: by 2002:a19:c34d:: with SMTP id t74mr21436665lff.452.1634451469151;
        Sat, 16 Oct 2021 23:17:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:1a4:: with SMTP id c4ls527347ljn.1.gmail; Sat, 16
 Oct 2021 23:17:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzOa/JMVqwLiUjY8Al6wuGcd8zMylDCaxEz47ghCUFDxj5hLjW9oNVaFnf00GJfkVsB13rE
X-Received: by 2002:a05:651c:b08:: with SMTP id b8mr17574394ljr.515.1634451467216;
        Sat, 16 Oct 2021 23:17:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634451467; cv=none;
        d=google.com; s=arc-20160816;
        b=OGarDumgV8HfkoabeTq8ygIZQiH7+Wu/01Ww3FTRQz9247L863UzmzPx6gg9En1X66
         l5b09BqWOIFxEDd2PCrY3AG78NTDwtvh/co5UHApiyuSsNgalV91YXw5OSg576eLXsVd
         F7aXA5Bjn9TUBHdGoqf6F4JQTXx3RGQNQrU3EmHVDhy0GApMnMvemprbaCbiyHCAvggh
         4Y9rO5YV8c+d8CcFCyolE/wHK9k1xM9trVCyX7g55N0SfGcIj1OKA0YwVr/H8aUOaHjQ
         GzbL7cQZgwbM/yiUqGEagyVKkqlM3U1CbIVuhUTl9POrVZhs8FbaOHOSjPofICPW7fp0
         iU3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=D7YvTJ/PDl+8lfxzsPQ+XLCtH05HpMXU5LCslrqnPSk=;
        b=Sb/ebfG3SzXCqsSiTcQKRv7nGbyUe3zK+seh+bRhA+XPXS4i78p2D+e/RLYOovlWdC
         3T4wH9oYdmkYnQqsoRcH3Y4wqwVQJ0FnVfk5kQLlZ686z1B7s5T5OVOHGWhXpX+Joteg
         za7BsPj4oRF4ApRJhTYJn4uNigYblGmeBv6a0GK4D2qmIpn4waE+BM/m9iU0jghXGFus
         DFvolXEfvqcIxGBQyvGyKV6vWn9yvJGMlXS+ldPysePAX/uMx/feYNvMsbxs/GdJ+Dfm
         D3qp6DJuWME71tEeIY2FAfDbtfupatLDa8XfN8BJHGxDGLr6GMZxYOx4dPPYyOQ2FTF5
         Yqgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bn2si59847ljb.5.2021.10.16.23.17.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Oct 2021 23:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AFoPTaaEH1yAEJnI+pLqE78eALOsnbusQ8zAX?=
 =?us-ascii?q?PiFKOHhom6Oj/PxG8M5w6fawslcssRIb6LW90cu7IU80nKQdibX5f43SPzUO01?=
 =?us-ascii?q?HHEGgN1+ffKnHbak/D398Y5ONbf69yBMaYNzVHpMzxiTPWL+od?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="396145444"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2021 08:17:45 +0200
Date: Sun, 17 Oct 2021 08:17:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kushal-kothari <kushalkothari285@gmail.com>
cc: linux-arm-kernel@lists.infradead.org, mike.rapoport@gmail.com, 
    kushalkothari2850@gmail.com, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
    linux-staging@lists.linux.dev, nsaenz@kernel.org, 
    bcm-kernel-feedback-list@broadcom.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Fixed checkpatch
 warning: MSLEEP: msleep < 20ms can sleep for up to 20ms.
In-Reply-To: <20211016215527.119189-1-kushalkothari285@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110170813570.3026@hadrien>
References: <20211016215527.119189-1-kushalkothari285@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Oct 2021, Kushal-kothari wrote:

> Signed-off-by: Kushal-kothari <kushalkothari285@gmail.com>

You need a log message.  The whole thing should not be in the subject
line.  The description of the change should be written in the imperative,
that is Fix instead of Fixed.  But in any case Fix is not a good word to
use because it does not explain what you have done.  What fix have you
implemented.  The log message should explain what you have done and why.

Please carefully read the entire page:

https://kernelnewbies.org/PatchPhilosophy

Please check your patch against what is suggested.

julia


> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 6fbafdfe340f..80a7898c5331 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -857,7 +857,7 @@ vchiq_bulk_transmit(unsigned int handle, const void *data, unsigned int size,
>  		if (status != VCHIQ_RETRY)
>  			break;
>
> -		msleep(1);
> +		usleep_range(1000, 2000);
>  	}
>
>  	return status;
> @@ -894,7 +894,7 @@ enum vchiq_status vchiq_bulk_receive(unsigned int handle, void *data,
>  		if (status != VCHIQ_RETRY)
>  			break;
>
> -		msleep(1);
> +		usleep_range(1000, 2000);
>  	}
>
>  	return status;
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20211016215527.119189-1-kushalkothari285%40gmail.com.
>

