X-GM-THRID: 6257097986909667328
X-Received: by 10.129.156.8 with SMTP id t8mr7881360ywg.25.1457719281369;
        Fri, 11 Mar 2016 10:01:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.25 with SMTP id r25ls1254852ioe.88.gmail; Fri, 11 Mar
 2016 10:01:20 -0800 (PST)
X-Received: by 10.66.160.9 with SMTP id xg9mr7979289pab.38.1457719280796;
        Fri, 11 Mar 2016 10:01:20 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si1530460pab.0.2016.03.11.10.01.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:01:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6BE99CCD;
	Fri, 11 Mar 2016 18:01:20 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:01:20 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Use kzalloc
 instead of kmalloc and memset
Message-ID: <20160311180120.GA14824@kroah.com>
References: <1456844139-29008-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456844139-29008-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 01, 2016 at 08:25:39PM +0530, Bhumika Goyal wrote:
> The code in this patch allocates some memory and then clears it. The
> function kzalloc does the both so replace kmalloc and memset with
> kzalloc. Also sizeof(struct ieee80211_txb) can be written as
> sizeof(*txb) as txb is a pointer of type struct ieee80211_txb.
> Done using coccinelle:
> 
> @@
> expression e,e1,e2;
> @@
> - e=kmalloc(e1,e2);
> + e=kzalloc(e1,e2);
> if(!e)
>   return NULL;
> ...
> - memset(e,...);
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 1ab0aea..8662137 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -242,13 +242,11 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
>  {
>  	struct ieee80211_txb *txb;
>  	int i;
> -	txb = kmalloc(
> -		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
> -		gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags),
> +		      gfp_mask);

This no longer needs to be line-wrapped, right?

Please fix.

thanks,

greg k-h

