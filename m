X-GM-THRID: 2380327288832
X-Received: by 10.50.154.41 with SMTP id vl9mr469459igb.6.1424992082384;
        Thu, 26 Feb 2015 15:08:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.223 with SMTP id c92ls359900ioj.104.gmail; Thu, 26 Feb
 2015 15:08:02 -0800 (PST)
X-Received: by 10.68.132.99 with SMTP id ot3mr10246239pbb.6.1424992082199;
        Thu, 26 Feb 2015 15:08:02 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si305144pbc.0.2015.02.26.15.08.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 15:08:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E9F99B1B;
	Thu, 26 Feb 2015 23:08:01 +0000 (UTC)
Date: Thu, 26 Feb 2015 15:08:01 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Gamze POLAT <gamzepolat94@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: WARNING prefer
 ether_addr_copy() over memcpy()
Message-ID: <20150226230801.GB11094@kroah.com>
References: <1424602839-4395-1-git-send-email-gamzepolat94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424602839-4395-1-git-send-email-gamzepolat94@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 01:00:39PM +0200, Gamze POLAT wrote:
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2)
> Pahole showed that the addresses are aligned.
> 
> Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
> ---
>  drivers/staging/rtl8712/os_intfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index 13debb5..6d03f8d 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -181,7 +181,7 @@ static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
>  	struct sockaddr *addr = p;
>  
>  	if (padapter->bup == false)
> -		memcpy(pnetdev->dev_addr, addr->sa_data, ETH_ALEN);
> +		ether_addr_copy(pnetdev->dev_addr, addr->sa_data);
>  	return 0;
>  }

Again, we need a bit more "proof".

thanks,

greg k-h

