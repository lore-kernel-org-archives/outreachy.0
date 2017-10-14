X-GM-THRID: 6474128496939499520
X-Received: by 10.28.230.79 with SMTP id d76mr413418wmh.12.1507967955637;
        Sat, 14 Oct 2017 00:59:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.14 with SMTP id t14ls594700wmd.4.canary-gmail; Sat, 14
 Oct 2017 00:59:15 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBlcunbmMJVOM4dwwQqy+Pl7mk9wxMlEWbB6T4x2vxxtYMnzh+131mh+Nhq+us1PXiP+zXX
X-Received: by 10.28.111.213 with SMTP id c82mr397671wmi.25.1507967955029;
        Sat, 14 Oct 2017 00:59:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507967955; cv=none;
        d=google.com; s=arc-20160816;
        b=FwKsw3IhQGmEjGBFRBlGyxAHwXyneYh819aACrwn+U2n0B77iAYrFr47EwGYBc+VWd
         46Ln7vC4c/8ngkABmvfSmZOJkgzhZM0tO78TVcrOk8eM0ejR+smb3O2XGxvWUlI3uC92
         emZZDKZVuHKKNN3O0cF0PyuTwHsmEtGLYvuDG+Wssl2xgXlSxY2XuCQwoDro4qD9/+ms
         KLhvgsJOTIjRVns1YzuT/aYk5FaZp5nz6pJZsAtzCmSNdr4JPuVXgEhpjfKEjiO2Cz70
         httqk70hdiyB6eWgORMB9VcMdS44l6V2x2b4yKl7JCBuIO6nA+9h245S8iOvDA6Eb9fL
         rBuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=HOH905xams+dWiAXb+YXneNzqjxEiOV3sv1ZvvBJQcI=;
        b=PKNUIUu7/uRPgf+ccUoVogv+Cs5ps7CSb3OS+gwdLhsbwh1HnsJSsEvJ4m7Uoi9Szd
         dQqqIXBukmD4HUOx7yYpGwHm+HNzMCgQ51XNkLa70y1DNW1xj/W5QgDEN1PFPhnptoQj
         c8it0zdJDtJdIQMb9Ivif76lIea43V9CfJr6rMIpdDK9MLYwFzZtWbmRq94nEaWiQMjJ
         th74H+hEX1cUc8broboa5FdkQ57wct6f+osprbDAJnHF2S+d/ch6JkZLa15GHh91Sf/U
         EWRX+6lYiGB+u3dW/uJUkQMSMnx/gu/FIF2pOtnbA57E1pEocmUI7vQFX4TCN8wgdE+c
         iiFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d6si89698wre.3.2017.10.14.00.59.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 00:59:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,375,1503352800"; 
   d="scan'208";a="240969348"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2017 09:59:14 +0200
Date: Sat, 14 Oct 2017 09:59:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192e: Use __func__
 instead of function name
In-Reply-To: <20171014075657.GA2475@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710140958270.19037@hadrien>
References: <20171014075657.GA2475@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Oct 2017, Mihaela Muraru wrote:

> Use identifier __func__ instead of the name of the function.
>
> Issue found by checkpatch.pl.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
> Changes in v3:
>         -breaking the modified lines and remove five point from the
> 	string to meet the condition no more than 80 characters per
> 	line.
>
> drivers/staging/rtl8192e/dot11d.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> index 017fe04..55c699f 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -128,12 +128,16 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
>  	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
>  	for (i = 0; i < NumTriples; i++) {
>  		if (MaxChnlNum >= pTriple->FirstChnl) {
> -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
> +			netdev_info(dev->dev,
> +					"%s: Invalid country IE, skip it...1\n"
> +					, __func__);

You can't move these arguments back a few characters?  The comma at the
beginning of the line with __func__ is not nice.

julia

>  			return;
>  		}
>  		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
>  		    pTriple->NumChnls)) {
> -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
> +			netdev_info(dev->dev,
> +					"%s: Invalid country IE, skip it...2\n"
> +					, __func__);
>  			return;
>  		}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014075657.GA2475%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

