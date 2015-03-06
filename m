X-GM-THRID: 6740862042112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bed5f46716a629a3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.24.108 with SMTP id t12mr4303963vdf.6.1425725808480;
        Sat, 07 Mar 2015 02:56:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.169 with SMTP id v38ls760774qgv.22.gmail; Sat, 07 Mar
 2015 02:56:48 -0800 (PST)
X-Received: by 10.52.62.68 with SMTP id w4mr17786954vdr.1.1425725808307;
        Sat, 07 Mar 2015 02:56:48 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1714016pac.0.2015.03.07.02.56.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:56:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 34D5B990;
	Sat,  7 Mar 2015 10:56:46 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:51:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: pr_warn
 instead printk
Message-ID: <20150306235105.GA26968@kroah.com>
References: <1425578480-7151-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425578480-7151-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 05, 2015 at 08:01:20PM +0200, Hatice ERT�RK wrote:
> This patch fixes the following warning using checkpatch.pl
> WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
> dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index ff6b212..ecd8542 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -197,7 +197,7 @@ int ieee80211_encrypt_fragment(
>  			struct ieee80211_hdr_3addrqos *header;
>  
>  			header = (struct ieee80211_hdr_3addrqos *)frag->data;
> -			pr_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
> +			dev_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "

This obviously will not even build.

Please test all of your patches, to not do so can cause a lot of time
being wasted by others.

thanks,

greg k-h

