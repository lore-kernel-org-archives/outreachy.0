X-GM-THRID: 6330674938515554304
X-Received: by 10.66.148.202 with SMTP id tu10mr9182296pab.8.1474012134653;
        Fri, 16 Sep 2016 00:48:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.18 with SMTP id h18ls5021030ote.41.gmail; Fri, 16 Sep
 2016 00:48:54 -0700 (PDT)
X-Received: by 10.31.124.7 with SMTP id x7mr1578997vkc.10.1474012134270;
        Fri, 16 Sep 2016 00:48:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si2182779pab.2.2016.09.16.00.48.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 00:48:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 66F7A71;
	Fri, 16 Sep 2016 07:48:53 +0000 (UTC)
Date: Fri, 16 Sep 2016 09:48:59 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>
Subject: Re: [PATCH 3/5] staging: sm750fb: Remove multiple assignments
Message-ID: <20160916074859.GB20608@kroah.com>
References: <cover.1473975000.git.aquannie@gmail.com>
 <c17c465dbd39a511c51f53c7752b2ca87cab4da5.1473975000.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c17c465dbd39a511c51f53c7752b2ca87cab4da5.1473975000.git.aquannie@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 03:03:02AM +0530, Rehas Sachdeva wrote:
> Fixes multiple assignments of the form 'x = y = k' to 'x = k; y = k;'. Issue
> detected by checkpatch.
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 7d90e25..9f1b591 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -365,7 +365,8 @@ static int lynxfb_ops_set_par(struct fb_info *info)
>  		ret = -EINVAL;
>  		break;
>  	}
> -	var->height = var->width = -1;
> +	var->height = -1;
> +	var->width = -1;

that's an odd change, isn't the first version of all of these more
readable?

thanks,

greg k-h

