X-GM-THRID: 6811287541311864832
X-Received: by 2002:a17:90a:36c7:: with SMTP id t65mr7871736pjb.182.1585898362474;
        Fri, 03 Apr 2020 00:19:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6456:: with SMTP id y83ls4810971pfb.7.gmail; Fri, 03 Apr
 2020 00:19:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypIwLinp4Gvt5g/np4rOBefisnyRBQTsxSAYK0uXPzkii0CPmmmlDPNhQDq69rcGCccJ16Uy
X-Received: by 2002:a63:4766:: with SMTP id w38mr7307459pgk.364.1585898361005;
        Fri, 03 Apr 2020 00:19:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585898361; cv=none;
        d=google.com; s=arc-20160816;
        b=jVMxMbewOHSKdGhFbMNsBuD94rlWJOT28/B1cDVICL0P5PfVIa4FtkrkUzklrIGDp+
         x4jED+73fOATCa7dXyJAZjIH7Fu4LDGGPncix0VXw4iNtRPG8FpcjZ4d1WDNDPvOlhbG
         qZsXRuWObgZySz1rICUv9BscptDc2DFkkW9GejP0wCT4+AIICgbczYNDDLeIoURfiyey
         R1VNYQoIKDkzxC77zP+g07OoftoDDG+24RW6t0joxQlDa1vnn0mS2k51/KrbS3sLPFvB
         UUmN+vWwSu4n6CiuI5QXoPzDgNpobriavFpil9HSIgf1oAlulQqGK4hrckzVs0A0HdLn
         hUFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jovKqYXnW2GzVTHwhQZi+i4JoqWmtX0G+5IY9NH4eGA=;
        b=zntIn/pq9MogytM7iYaCFbl3tdYNdqJo1wzs1v+kCgLL531+wwUtz+3Vw7EPWmmKFv
         dc8uqonPaw+VqQb9p+XhkmJp/gs+r+Y6qzmOcz5rH58HaJHHZEZa++8sM2g02KVQr4Qu
         8iqZsQNKnIS1wmCWml4F2qEa/8RzQiMyc0uYiQgrIejg9/5kaJO6iFxlizD2Ikw6OQxx
         0mQo/MG3NtrPDzTypbUq8R369uq9XK4CDkJfOvrObyMJQSNl8h+ag2U4hsmtMVgO3wgM
         +5IoFnykn4T6lLKg1rwosYazftvkE59ZRejDpG7O9jmeUFHyvRQZQ1qiSy30mQzdg6kK
         D47Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eyx4UNku;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ng2si424384pjb.0.2020.04.03.00.19.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 00:19:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eyx4UNku;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6184F206F8;
	Fri,  3 Apr 2020 07:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585898360;
	bh=mgAiU+YnC1+kQFFZWQSF/kQMsCcOFwWhCJGgCwf7ZFc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eyx4UNkuERme1CKA9zFA2aniGX+72pe7H82j0G0FOh5VSJwxZHw629LxfnkUwwK+b
	 JH/PnollyWF50Bv8Ll9gw8GU1mjJt/vVoO5BXoPpT2ieXmKjAi33jlHa4fQ7BkMNJN
	 Ar9UL9ZysW7c7kcrmwpoDX6E9aJqVQCUIYKu/EMc=
Date: Fri, 3 Apr 2020 09:19:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Harold =?iso-8859-1?Q?Andr=E9?= <harold.andre@gmx.fr>,
	YueHaibing <yuehaibing@huawei.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [PATCH v2] staging: ralink-gdma: Remove blank line
Message-ID: <20200403071916.GA3405737@kroah.com>
References: <20200403011408.860465-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200403011408.860465-1-jbwyatt4@gmail.com>

On Thu, Apr 02, 2020 at 06:14:08PM -0700, John B. Wyatt IV wrote:
> There was an unneeded and inconsistent blank line. Likely
> added because checkpatch got confused and was reporting a
> wrong style issue. The blank line was likely added to
> silence this warning.
> 
> Does not fix report. Still reports:
> 'Missing a blank line after declarations'
> '+       struct tasklet_struct task;'
> '+       volatile unsigned long chan_issued;'
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> v2: Change 'Move' to 'Remove' blank line
>     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
>     Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> Note:
> ralink-gdma does not build; even with make allyesconfig.
> I did not find a menu option with make menuconfig.
> 
>  drivers/staging/ralink-gdma/ralink-gdma.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index eabf1093328e..0418af133b13 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -124,7 +124,6 @@ struct gdma_dma_dev {
>  	struct tasklet_struct task;
>  	volatile unsigned long chan_issued;
>  	atomic_t cnt;
> -
>  	struct gdma_dmaengine_chan chan[];
>  };

There is nothing wrong with the blank line in this structure that
checkpatch, so it can be left alone.

thanks,

greg k-h

