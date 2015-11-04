X-GM-THRID: 6211822819926343680
X-Received: by 10.50.17.106 with SMTP id n10mr22549859igd.6.1446668894439;
        Wed, 04 Nov 2015 12:28:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.20 with SMTP id u20ls539591igr.25.gmail; Wed, 04 Nov
 2015 12:28:14 -0800 (PST)
X-Received: by 10.68.117.231 with SMTP id kh7mr2932880pbb.9.1446668894125;
        Wed, 04 Nov 2015 12:28:14 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si324138pab.0.2015.11.04.12.28.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 12:28:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C19338A8;
	Wed,  4 Nov 2015 20:28:13 +0000 (UTC)
Date: Wed, 4 Nov 2015 12:28:13 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8712:
 rtl871x_sta_mgt: Remove wrapper function
Message-ID: <20151104202813.GA31382@kroah.com>
References: <cover.1446302505.git.amitoj1606@gmail.com>
 <50a3d739a35e00dc6c2b737b9fdc382aaa094ec8.1446302505.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50a3d739a35e00dc6c2b737b9fdc382aaa094ec8.1446302505.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 31, 2015 at 08:16:27PM +0530, Amitoj Kaur Chawla wrote:
> Remove wrapper function that can be replaced by a single line of code.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_sta_mgt.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> index 6ae8cdc..a379b84 100644
> --- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> +++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
> @@ -89,16 +89,11 @@ static void mfree_all_stainfo(struct sta_priv *pstapriv)
>  	spin_unlock_irqrestore(&pstapriv->sta_hash_lock, irqL);
>  }
>  
> -
> -static void mfree_sta_priv_lock(struct	sta_priv *pstapriv)
> -{
> -	 mfree_all_stainfo(pstapriv); /* be done before free sta_hash_lock */
> -}
> -
>  u32 _r8712_free_sta_priv(struct sta_priv *pstapriv)
>  {
>  	if (pstapriv) {
> -		mfree_sta_priv_lock(pstapriv);
> +		/* be done before free sta_hash_lock */
> +		mfree_all_stainfo(pstapriv); 

You add trailing whitespace :(

Always check your patches with checkpatch before sending them out.

thanks,

greg k-h

