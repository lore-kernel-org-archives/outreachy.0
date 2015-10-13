X-GM-THRID: 6205270918308036608
X-Received: by 10.182.233.195 with SMTP id ty3mr18080obc.44.1444778062973;
        Tue, 13 Oct 2015 16:14:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.134 with SMTP id x6ls583671obk.40.gmail; Tue, 13 Oct
 2015 16:14:22 -0700 (PDT)
X-Received: by 10.182.72.166 with SMTP id e6mr31619285obv.47.1444778062563;
        Tue, 13 Oct 2015 16:14:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si537764pac.2.2015.10.13.16.14.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 16:14:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (50-76-40-150-ip-static.hfc.comcastbusiness.net [50.76.40.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 168A997;
	Tue, 13 Oct 2015 23:14:22 +0000 (UTC)
Date: Tue, 13 Oct 2015 16:14:21 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd: Remove
 redundant code
Message-ID: <20151013231421.GA8240@kroah.com>
References: <20151013230010.GA16506@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151013230010.GA16506@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 14, 2015 at 04:30:10AM +0530, Shivani Bhardwaj wrote:
> Change the order of statements and remove extra code.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/rts5208/sd.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
> index d6c4982..4269be9 100644
> --- a/drivers/staging/rts5208/sd.c
> +++ b/drivers/staging/rts5208/sd.c
> @@ -2707,17 +2707,14 @@ RTY_SD_RST:
>  		return STATUS_FAIL;
>  	}
>  
> +	CLR_SD_HCXC(sd_card);
> +
>  	if (hi_cap_flow) {
>  		if (rsp[1] & 0x40)
>  			SET_SD_HCXC(sd_card);
> -		else
> -			CLR_SD_HCXC(sd_card);
> -
> -		support_1v8 = false;
> -	} else {
> -		CLR_SD_HCXC(sd_card);
> -		support_1v8 = false;
>  	}
> +
> +	support_1v8 = false;
>  	dev_dbg(rtsx_dev(chip), "support_1v8 = %d\n", support_1v8);
>  
>  	if (support_1v8) {

Are you sure you didn't change the logic of what is happening here?

Why are you making this change?  What prompted it?

thanks,

greg k-h

