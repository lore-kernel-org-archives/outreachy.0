X-GM-THRID: 6330639307056873472
X-Received: by 10.129.4.147 with SMTP id 141mr9356691ywe.22.1474012483750;
        Fri, 16 Sep 2016 00:54:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls3120299oth.38.gmail; Fri, 16 Sep
 2016 00:54:43 -0700 (PDT)
X-Received: by 10.157.62.230 with SMTP id b93mr9617341otc.14.1474012483394;
        Fri, 16 Sep 2016 00:54:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si2189123pab.2.2016.09.16.00.54.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 00:54:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AE05071;
	Fri, 16 Sep 2016 07:54:42 +0000 (UTC)
Date: Fri, 16 Sep 2016 09:54:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: slicoss: Add {} to an
 arm of if-else
Message-ID: <20160916075448.GC1858@kroah.com>
References: <cover.1473966683.git.aquannie@gmail.com>
 <5259aeed6321af3f2c7c1f3d1c2f7458deb1e944.1473966683.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5259aeed6321af3f2c7c1f3d1c2f7458deb1e944.1473966683.git.aquannie@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 12:45:05AM +0530, Rehas Sachdeva wrote:
> Adds braces {} to the if arm of an if-else statement which has braces {} on
> its else arm. This improves uniformity and readability. Issue detected by
> checkpatch.
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/slicoss/slicoss.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
> index f2c751c..8182e58 100644
> --- a/drivers/staging/slicoss/slicoss.c
> +++ b/drivers/staging/slicoss/slicoss.c
> @@ -784,8 +784,9 @@ static void slic_timer_load_check(ulong cardaddr)
>  	if ((adapter) && (adapter->state == ADAPT_UP) &&
>  	    (card->state == CARD_UP) && (slic_global.dynamic_intagg)) {
>  		if (adapter->devid == SLIC_1GB_DEVICE_ID) {
> -			if (adapter->linkspeed == LINK_1000MB)
> +			if (adapter->linkspeed == LINK_1000MB) {
>  				level = 100;
> +			}
>  			else {

This line should be:
			} else {

thanks,

greg k-h

