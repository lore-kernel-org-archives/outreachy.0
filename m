X-GM-THRID: 3565286326272
X-Received: by 10.50.55.102 with SMTP id r6mr145491igp.1.1424987247580;
        Thu, 26 Feb 2015 13:47:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.51.15.129 with SMTP id fo1ls2042822igd.21.canary; Thu, 26 Feb
 2015 13:47:27 -0800 (PST)
X-Received: by 10.42.53.80 with SMTP id m16mr10181052icg.26.1424987247368;
        Thu, 26 Feb 2015 13:47:27 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si285050pdc.0.2015.02.26.13.47.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:47:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1B1E3B1B;
	Thu, 26 Feb 2015 21:47:27 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:47:26 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 1/4] staging: rtl8192u: Convert
 from printk into netdev_dbg or pr_debug
Message-ID: <20150226214726.GA28846@kroah.com>
References: <cover.1424934230.git.navyasri.tech@gmail.com>
 <98deaa0c6c3f0623fa6a0c1479d3d3f69ff4884c.1424934230.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <98deaa0c6c3f0623fa6a0c1479d3d3f69ff4884c.1424934230.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 12:43:43PM +0530, Navya Sri Nizamkari wrote:
> As this is a network driver file, convert printk(KERN_DEBUG.. ) to
> netdev_dbg if the calling function has arguments to support it else
> to pr_debug , to fix the checkpatch.pl warning:
> 
> WARNING: Prefer netdev_dbg(netdev, ... then dev_dbg(dev, ... then
> pr_debug(...  to printk(KERN_DEBUG ...
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v4:
>     - Changed code indentation.
> 
> Changes in v3:
>     - Change pr_dbg to pr_debug as it gives the following warning:
>       implicit declaration of function ‘pr_dbg’and change 
>       subject name to reflect the change.
> 
> Changes in v2:
>     - Correct the commit message to be clearer.
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 5533221..eb89321 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -66,8 +66,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
>  	spin_lock_irqsave(&ieee->lock, flags);
>  	ieee80211_crypt_deinit_entries(ieee, 0);
>  	if (!list_empty(&ieee->crypt_deinit_list)) {
> -		printk(KERN_DEBUG "%s: entries remaining in delayed crypt "
> -		       "deletion list\n", ieee->dev->name);
> +		netdev_dbg(ieee->dev, "entries remaining in delayed crypt "
> +		       "deletion list\n");

This patch doesn't apply anymore to my tree :(

