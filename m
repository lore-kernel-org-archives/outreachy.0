X-GM-THRID: 6395629856318554112
X-Received: by 10.129.112.73 with SMTP id l70mr13889045ywc.45.1489362676802;
        Sun, 12 Mar 2017 16:51:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.197 with SMTP id t63ls14218566otb.7.gmail; Sun, 12 Mar
 2017 16:51:16 -0700 (PDT)
X-Received: by 10.129.165.201 with SMTP id c192mr16197919ywh.74.1489362676492;
        Sun, 12 Mar 2017 16:51:16 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2903626pfx.8.2017.03.12.16.51.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 16:51:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so17157876pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 16:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VLiVSKXzJg5cCWPmia3UnglTIQLcSrBOEWXOaUUc0Cs=;
        b=HWhRXeWsdvyYKp4AEh5UwSusQbQ/Y/r+tP7q2GP6liUBQfi07zkCk4RJOWtId5OBh2
         HzQhQfgGvY9IRlFYRBVOcjMDbeRcXsYFGnoRUIzjvtM87Gs3s5r4I3eHNQiFWggUVXFj
         aPx1f16Qv5THLW+1YcYBIqjwgfw/3aHCXqsxsn7gigrfEDpZifC8c3vIOtGIDX5V3KBs
         3beKTSV20dvxeuDqGVnzKPmMzQzqDyA6VTdysx7loJWr/GvCugw4mdJObV2qAhkR2gg0
         3vdUqEHDLmHDY/CeUHe9LoTQbG0Upidn2CetzJCrssepjUOLaB2y2WfsnU4HX8BpgUMZ
         bYtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VLiVSKXzJg5cCWPmia3UnglTIQLcSrBOEWXOaUUc0Cs=;
        b=ZzP4Lu+LYREl1iKUH1O1814Sp1A3C9D9vCF3W0LhU/B9LQmUJfLtPBKBUDSM6cqPJi
         T9U/1vCuT3YJB+nKyz5tV1OnydYzOEG5tiQDZVM/5esmQ++DNJB0Qf0Djr8qWOPjdF5d
         zjYPnBYg454o8JttwRSUWslH7GXplu5uUXZ6S+capHgjYLvLRNtIvoeSdoRXneATDDPx
         PnRXF0+PVkooIvKile3/cNZhCCS9hj+y5ZDczeYuKru1/R9Crdv58FM2YU8hKMOGAeyS
         9NBptdkYrZ3BaR1nGJo5V6CbIzDqQlh2+KoYVeDFWhKdDiGmzNscW3qlYeLiHgdbKGFm
         gc6A==
X-Gm-Message-State: AMke39nE+iM/b/+WBP0Hv7vSgM8EFqfHD/1zOcRAFC8C6UTvuEhSgqqDEmxJm7A9hicPxg==
X-Received: by 10.98.72.88 with SMTP id v85mr33716952pfa.99.1489362676206;
        Sun, 12 Mar 2017 16:51:16 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id k184sm30259822pgc.23.2017.03.12.16.51.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 16:51:15 -0700 (PDT)
Date: Sun, 12 Mar 2017 16:51:14 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] staging: wilc1000: Remove
 unnecessary brackets
Message-ID: <20170312235113.GC14759@d830.WORKGROUP>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com>
 <20170312211518.3172-4-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312211518.3172-4-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 11:15:18PM +0200, Tamara Diaconita wrote:
> Improved code readability by removing unnecessary brackets and
> deleted tabs to indent.

Tamara, I'm not so sure about the 'deleted tabs to indent' phrase.

Remove unnecessary brackets to properly indent code.  The code
is now more readable.

> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_spi.c | 38 +++++++++++++++++--------------------
>  1 file changed, 17 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> index 9cde575..f63aaca 100644
> --- a/drivers/staging/wilc1000/wilc_spi.c
> +++ b/drivers/staging/wilc1000/wilc_spi.c
> @@ -956,31 +956,27 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
>  		}
>  		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
>  
> -		{
> -			j = 0;
> -			do {
> -				happened = 0;
> +		j = 0;
> +		do {
> +			happened = 0;
>  
> -				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
> -				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
> +			wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
> +			tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
>  
> -				if (g_spi.nint > 5) {
> -					wilc_spi_read_reg(wilc, 0x1a94,
> -							  &irq_flags);
> -					tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
> -				}
> +			if (g_spi.nint > 5) {
> +				wilc_spi_read_reg(wilc, 0x1a94,
> +						  &irq_flags);
> +				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
> +			}
>  
> -				{
> -					unknown_mask = ~((1ul << g_spi.nint) - 1);
> +			unknown_mask = ~((1ul << g_spi.nint) - 1);
>  
> -					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
> -						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
> -						happened = 1;
> -					}
> -				}
> -				j++;
> -			} while (happened);
> -		}
> +			if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
> +				dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
> +				happened = 1;
> +			}
> +			j++;
> +		} while (happened);
>  
>  		*int_status = tmp;
>  	}
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312211518.3172-4-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

