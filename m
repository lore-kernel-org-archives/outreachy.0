X-GM-THRID: 1810928500736
X-Received: by 10.236.223.166 with SMTP id v36mr9374345yhp.45.1424983105684;
        Thu, 26 Feb 2015 12:38:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.227 with SMTP id i3ls2020517igt.38.canary; Thu, 26 Feb
 2015 12:38:25 -0800 (PST)
X-Received: by 10.42.43.199 with SMTP id y7mr10378920ice.9.1424983105469;
        Thu, 26 Feb 2015 12:38:25 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bx1si230355pdb.2.2015.02.26.12.38.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:38:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2722198F;
	Thu, 26 Feb 2015 20:38:25 +0000 (UTC)
Date: Thu, 26 Feb 2015 12:38:24 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: deleted
 space
Message-ID: <20150226203824.GA23371@kroah.com>
References: <1424527195-15790-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1424527195-15790-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 03:59:55PM +0200, Hatice ERT�RK wrote:
> Deleted spaces before ','.Because it is prohibited by the kernel coding
> style.
> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index d61842e..da19145 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -509,7 +509,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
>  		tx_ra_bitmap |= ((raid<<28)&0xf0000000);
>  
>  		DBG_88E("%s => mac_id:%d , raid:%d , bitmap = 0x%x, arg = 0x%x\n",
> -			__func__ , psta->mac_id, raid , tx_ra_bitmap, arg);
> +			__func__, psta->mac_id, raid, tx_ra_bitmap, arg);
>  
>  		/* bitmap[0:27] = tx_rate_bitmap */
>  		/* bitmap[28:31]= Rate Adaptive id */

This was also made against an older kernel version.

Please rebase _all_ of your patches against the latest kernel release
from Linus, or even better, my staging-testing branch of staging.git on
git.kernel.org, and resend them.  I am going to drop all of your
submitted patches from my queue right now as it's obvious they can not
be applied.

thanks,

greg k-h

