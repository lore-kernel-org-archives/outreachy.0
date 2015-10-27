X-GM-THRID: 6208838944103071744
X-Received: by 10.129.78.205 with SMTP id c196mr32506258ywb.21.1445923778715;
        Mon, 26 Oct 2015 22:29:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.32.35 with SMTP id f3ls1923819obi.94.gmail; Mon, 26 Oct
 2015 22:29:38 -0700 (PDT)
X-Received: by 10.182.73.228 with SMTP id o4mr32209685obv.48.1445923778209;
        Mon, 26 Oct 2015 22:29:38 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si3940119pac.2.2015.10.26.22.29.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 22:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 75863258;
	Tue, 27 Oct 2015 05:29:37 +0000 (UTC)
Date: Tue, 27 Oct 2015 14:28:15 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: wilc1000:
 coreconfigurator: Remove irrelevant wrapper function
Message-ID: <20151027052815.GA27052@kroah.com>
References: <cover.1445607754.git.shivanib134@gmail.com>
 <a636533cae194224d97d3ef1290fd299ae6bc8f8.1445607754.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a636533cae194224d97d3ef1290fd299ae6bc8f8.1445607754.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 26, 2015 at 08:21:05PM +0530, Shivani Bhardwaj wrote:
> Remove the function get_current_channel() and replace its calls by
> get_current_channel_802_11n() as the former function's definition
> involves only returning the value of latter function.
> Semantic patch used to find out the issue:
> 
> @@
> identifier f,g;
> @@
> 
> *f(...) {
>  return g(...); }
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 6dfe26d..1403a33 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -331,13 +331,6 @@ u8 get_current_channel_802_11n(u8 *pu8msa, u16 u16RxLen)
>  	return 0;  /* no MIB here */
>  }
>  
> -u8 get_current_channel(u8 *pu8msa, u16 u16RxLen)
> -{
> -	/* Extract current channel information from */
> -	/* the beacon/probe response frame          */
> -	return get_current_channel_802_11n(pu8msa, u16RxLen);
> -}
> -
>  /**
>   *  @brief                      parses the received 'N' message
>   *  @details
> @@ -425,8 +418,12 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
>  		/* Get BSSID */
>  		get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
>  
> -		/* Get the current channel */
> -		pstrNetworkInfo->u8channel = get_current_channel(pu8msa, (u16RxLen + FCS_LEN));
> +		/* 
> +		 * Extract current channel information from
> +		 * the beacon/probe response frame          
> +		 */

Trailing whitespace :(

Always check your patches with checkpatch.pl so you don't get grumpy
emails from maintainers telling you to run your patches through
checkpatch.pl before sending them out...

thanks,

greg k-h

