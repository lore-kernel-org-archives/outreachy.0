X-GM-THRID: 6392397624378392576
X-Received: by 10.237.35.74 with SMTP id i10mr1900554qtc.10.1488347648203;
        Tue, 28 Feb 2017 21:54:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.146 with SMTP id 18ls934059iom.11.gmail; Tue, 28 Feb
 2017 21:54:07 -0800 (PST)
X-Received: by 10.36.40.144 with SMTP id h138mr601701ith.19.1488347647476;
        Tue, 28 Feb 2017 21:54:07 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si472391pfa.4.2017.02.28.21.54.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 21:54:07 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id b5so162332pfa.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 21:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V9smxiY+B5WKuMQFq6yTIUaPdwDcbUCfqdJzYjq5kgo=;
        b=PzhInWOnLDDakFM6FJXLidWedIXPc9CMktq/WwtwvNjJ4mAi/h4FS611xsmQR2KwQh
         zRf5He65PY76x+Kkqtz3Cvb90v62HW3BsMoJuI6WGjWB/xzCcM1M9e2x8JJDrzPndZLR
         wuJLPOE3ZQAaF+fY2fYYmzSpFUmmi3n3Glw/DVE3ocvyVKRsMhrhHkTQZrP9JD3Z3J+Z
         o92B8cniyhiKn2fWDNdwNWonGVxoQXRURNjDLjf9PFoApxYWogLGzW8bpSO7xoJiwuTl
         VPi965Rmf5AyM1LFZU9ixP86ptikMYiLy/jcrODgD23YVyW6jlH4YotwpG2Nwr59Eb4j
         zjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V9smxiY+B5WKuMQFq6yTIUaPdwDcbUCfqdJzYjq5kgo=;
        b=bspUAh/6AsDbdOE/7ZB5KN5CJiQncqSstomN6ieTJeZGvgz6/rVKSo4++9rfi9cfYz
         +xObynOZ0fjcSB0w2/H6Gy0Q8j0Vui6mAGoPILNoj+1HAiRKTu2VHEm2PQGv+n6GEPrq
         ahTZ37oH96sWwoVlNKRV5milzcmMCrbbKvKaKGw3frL/5NIhTPevXYXSR7fhElBD6H90
         oeOF6hJE8JcPQRX0fm7qaKbBF2JXLxqk1PLp5diaT0LmMuNmSU27sVJB+twC8rA+EMMu
         ZslOOT0/My2g3YazZh1gPcnI3asGoCtwtEugYI90/MY1Y94Pt7yTnrHHyEqY7g8fB6cD
         eu2g==
X-Gm-Message-State: AMke39kQ6xl1ljmSorMNfvhHFObdnOQGMrcnUPTRykWbIRxRvfzJMgA0SGV16kHDGKJOnQ==
X-Received: by 10.84.168.69 with SMTP id e63mr8027368plb.124.1488347647215;
        Tue, 28 Feb 2017 21:54:07 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id p4sm7562158pgd.50.2017.02.28.21.54.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 21:54:06 -0800 (PST)
Date: Tue, 28 Feb 2017 21:54:04 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad7280a: Group similar
 macros into enums
Message-ID: <20170301055403.GB22700@d830.WORKGROUP>
References: <20170301052712.GA19851@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170301052712.GA19851@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 01, 2017 at 10:57:12AM +0530, sayli karnik wrote:
> The patch groups similar macros into enum data types.

Hi Sayli,
Thanks for the patch.  It looks like what Lars was requesting.
It tax'ed my brain a tiny bit ;), because the order of the enums
was different than the original order of the #define's.  I don't
know if you should rev for this.  Let's see what reviewers say.
Keep this in mind for future editing though.
alisons

> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7280a.h | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7280a.h b/drivers/staging/iio/adc/ad7280a.h
> index ccfb90d..08e97d4 100644
> --- a/drivers/staging/iio/adc/ad7280a.h
> +++ b/drivers/staging/iio/adc/ad7280a.h
> @@ -13,15 +13,19 @@
>   * TODO: struct ad7280_platform_data needs to go into include/linux/iio
>   */
>  
> -#define AD7280A_ACQ_TIME_400ns			0
> -#define AD7280A_ACQ_TIME_800ns			1
> -#define AD7280A_ACQ_TIME_1200ns			2
> -#define AD7280A_ACQ_TIME_1600ns			3
> +enum {
> +	AD7280A_CONV_AVG_DIS = 0,
> +	AD7280A_CONV_AVG_2,
> +	AD7280A_CONV_AVG_4,
> +	AD7280A_CONV_AVG_8,
> +};
>  
> -#define AD7280A_CONV_AVG_DIS			0
> -#define AD7280A_CONV_AVG_2			1
> -#define AD7280A_CONV_AVG_4			2
> -#define AD7280A_CONV_AVG_8			3
> +enum {
> +	AD7280A_ACQ_TIME_400ns = 0,
> +	AD7280A_ACQ_TIME_800ns,
> +	AD7280A_ACQ_TIME_1200ns,
> +	AD7280A_ACQ_TIME_1600ns,
> +};
>  
>  #define AD7280A_ALERT_REMOVE_VIN5		BIT(2)
>  #define AD7280A_ALERT_REMOVE_VIN4_VIN5		BIT(3)
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170301052712.GA19851%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.

