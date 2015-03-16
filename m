X-GM-THRID: 6740862042112
X-Received: by 10.236.222.103 with SMTP id s97mr64165768yhp.19.1426517413168;
        Mon, 16 Mar 2015 07:50:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.233.168 with SMTP id tx8ls1079654obc.30.gmail; Mon, 16 Mar
 2015 07:50:12 -0700 (PDT)
X-Received: by 10.182.18.102 with SMTP id v6mr67127402obd.11.1426517412918;
        Mon, 16 Mar 2015 07:50:12 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si1941134pac.2.2015.03.16.07.50.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:50:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0CD3AA79;
	Mon, 16 Mar 2015 14:50:11 +0000 (UTC)
Date: Mon, 16 Mar 2015 15:50:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: rtl8192u: ieee80211:
 pr_warn instead printk
Message-ID: <20150316145010.GA31699@kroah.com>
References: <1425651496-14666-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425651496-14666-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 06, 2015 at 04:18:16PM +0200, Hatice ERT�RK wrote:
> This patch fixes the following warning using checkpatch.pl
> WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
> dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
> v4:
>  Changed patch number.
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index ecd8542..8d4ade4 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -197,7 +197,7 @@ int ieee80211_encrypt_fragment(
>  			struct ieee80211_hdr_3addrqos *header;
>  
>  			header = (struct ieee80211_hdr_3addrqos *)frag->data;
> -			dev_debug(KERN_DEBUG "%s: TKIP countermeasures: dropped "
> +			dev_debug("%s: TKIP countermeasures: dropped "
>  			       "TX packet to %pM\n",
>  			       ieee->dev->name, header->addr1);

This doesn't even apply, let alone compile, what are you making it
against?

