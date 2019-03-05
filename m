X-GM-THRID: 6664664784241164288
X-Received: by 2002:a1c:a702:: with SMTP id q2mr199134wme.0.1551771523933;
        Mon, 04 Mar 2019 23:38:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b458:: with SMTP id v24ls3950664wrd.2.gmail; Mon, 04 Mar
 2019 23:38:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqxDKsMa0P+Db//Qn2wdQt5BRiKZHONzFnJETGCENcbQHk2LVgcE/7kJhABB7e/LJOhd69dV
X-Received: by 2002:adf:ee89:: with SMTP id b9mr1148488wro.23.1551771523279;
        Mon, 04 Mar 2019 23:38:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551771523; cv=none;
        d=google.com; s=arc-20160816;
        b=oo4ErwMGZc2sZN8zEAk/6hnSyvdfW3JY8QhxmXgWtAOFPerx0MG/feojrtF8ngmtJi
         ZzEd/cBHbOtTAT5eGo5kTN+/LSkdx+QfX5EdWeTNX2WtZDMyu1F2wTJrukGm9QAcayV1
         75Tck5tRLFSqm+WCz6sQsXaSP9kSqx7EeTh67aT/vnRDPIOtpkG0f72/iBHJ0lgw+qAZ
         armZTwNXx0c5mcrYTKfdGFto9I088dTuEdr9Fz77aNVrMHOfwtja/vlxS+lDVON10tZ+
         844thWJhCZ+yEgKFnnidONKe1mndMRmidZCUl/YJlYR4V/mgI8eCqZ2MysmPfPWBh9Ry
         OVsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=oacPYGVmx94D5L/vOAq7jbUwMBxD6oHczp7fHDpt5Fo=;
        b=V5oAGws+URa4A3FxF6fWqSkiw4gLqJFoLoeH/YtuR1wx3KYAD7+pen0PEP4LCn4Qq5
         u1b+Jxniv4dYVuR5ajWBzXgezPBtv+fTYE1csZQDx3mwrVgq+1aM9EX22vgrYDRcpNnY
         UaymLb+ztUbier6JctEA6Zw8IXE3Qr74iNavoXnEJeqqn1s0G9bDGyZ3k6McT6oNTf2K
         Z0nCZ1WpHoYkVStsPjkvp7h/qP09ebR8PpdcH89pLKxJEQP1o/mlfRFdRJqikM1UXxUh
         WTO/Z+QijE4mV0AIAOxKvwB7veEKtimv0036q8Ei/L6G8B1kyld5GwY0oO6c/Om05Q6s
         hG7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t22si485159wmj.2.2019.03.04.23.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:38:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,443,1544482800"; 
   d="scan'208";a="371925855"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 08:38:42 +0100
Date: Tue, 5 Mar 2019 08:38:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Fix line over 80
 characters
In-Reply-To: <20190304222308.GA9982@pthm>
Message-ID: <alpine.DEB.2.21.1903050838320.2551@hadrien>
References: <20190304222308.GA9982@pthm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Daniela Mormocea wrote:

> Fix line with over 80 characters to get rid of the warning
> given by checkpatch
>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
> -Correct a mistake I made in the previous patch regarding
> a multiline string
>
>  drivers/staging/fbtft/flexfb.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
> index c5fa591..b91b459 100644
> --- a/drivers/staging/fbtft/flexfb.c
> +++ b/drivers/staging/fbtft/flexfb.c
> @@ -718,7 +718,9 @@ static int flexfb_probe_common(struct spi_device *sdev,
>  			par->fbtftops.write_vmem = fbtft_write_vmem16_bus16;
>  			break;
>  		default:
> -			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n", buswidth);
> +			dev_err(dev,
> +				"argument 'buswidth': %d is not supported with parallel.\n",
> +				buswidth);
>  			return -EINVAL;
>  		}
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304222308.GA9982%40pthm.
> For more options, visit https://groups.google.com/d/optout.
>

