X-GM-THRID: 6210989178229882880
X-Received: by 10.31.159.209 with SMTP id i200mr2919672vke.14.1446667820161;
        Wed, 04 Nov 2015 12:10:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.165 with SMTP id h34ls944093qgh.60.gmail; Wed, 04 Nov
 2015 12:10:18 -0800 (PST)
X-Received: by 10.31.54.198 with SMTP id d189mr2939767vka.6.1446667818547;
        Wed, 04 Nov 2015 12:10:18 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si316209pab.0.2015.11.04.12.10.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 12:10:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2D82A8A7;
	Wed,  4 Nov 2015 20:10:18 +0000 (UTC)
Date: Wed, 4 Nov 2015 12:10:17 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Remove wrapper
 function
Message-ID: <20151104201017.GA15429@kroah.com>
References: <20151029085003.GA13195@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151029085003.GA13195@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 29, 2015 at 02:20:03PM +0530, Amitoj Kaur Chawla wrote:
> Drop wrapper function that can be replaced by a single line of code.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_chip.c | 9 ++-------
>  drivers/staging/rts5208/rtsx_chip.h | 1 -
>  drivers/staging/rts5208/rtsx_scsi.c | 2 +-
>  3 files changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> index c0ce659..ca9f021 100644
> --- a/drivers/staging/rts5208/rtsx_chip.c
> +++ b/drivers/staging/rts5208/rtsx_chip.c
> @@ -109,11 +109,6 @@ void rtsx_enable_bus_int(struct rtsx_chip *chip)
>  	dev_dbg(rtsx_dev(chip), "RTSX_BIER: 0x%08x\n", reg);
>  }
>  
> -void rtsx_disable_bus_int(struct rtsx_chip *chip)
> -{
> -	rtsx_writel(chip, RTSX_BIER, 0);
> -}

This is a "useful" function in that it does a specific thing, and makes
the code easier to read, so please don't remove it.

thanks,

greg k-h

