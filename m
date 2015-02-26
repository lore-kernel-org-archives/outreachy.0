X-GM-THRID: 1779965100032
X-Received: by 10.140.235.83 with SMTP id g80mr9853705qhc.5.1424986018574;
        Thu, 26 Feb 2015 13:26:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.1 with SMTP id w1ls355994ioi.13.gmail; Thu, 26 Feb 2015
 13:26:58 -0800 (PST)
X-Received: by 10.66.235.162 with SMTP id un2mr2703648pac.43.1424986018384;
        Thu, 26 Feb 2015 13:26:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si266729pdb.1.2015.02.26.13.26.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:26:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 23431B88;
	Thu, 26 Feb 2015 21:26:58 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:26:57 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fix do not use //
 c99 comments.
Message-ID: <20150226212657.GA10249@kroah.com>
References: <1424524247-27869-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424524247-27869-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 03:10:47PM +0200, Dilek Uzulmez wrote:
> This patch fixes "do not use // C99 comments" errors in ieee80211_crypt.c
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 5533221..7435126 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -11,7 +11,7 @@
>   *
>   */
>  
> -//#include <linux/config.h>
> +/*#include <linux/config.h> */

Please just delete this line, no need to keep it commented out.

