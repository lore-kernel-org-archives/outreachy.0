X-GM-THRID: 6388328536690655232
X-Received: by 10.36.55.136 with SMTP id r130mr4027485itr.29.1488208152039;
        Mon, 27 Feb 2017 07:09:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.230 with SMTP id z93ls11731695ota.44.gmail; Mon, 27 Feb
 2017 07:09:11 -0800 (PST)
X-Received: by 10.176.91.134 with SMTP id y6mr4328760uae.10.1488208151599;
        Mon, 27 Feb 2017 07:09:11 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h79si481109pfh.2.2017.02.27.07.09.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:09:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B126E480;
	Mon, 27 Feb 2017 15:09:10 +0000 (UTC)
Date: Mon, 27 Feb 2017 16:09:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192u: ieee80211:
 Remove typedef to structure _bandwidth_autoswitch
Message-ID: <20170227150902.GA10302@kroah.com>
References: <20170225160441.GA11349@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170225160441.GA11349@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Feb 25, 2017 at 09:34:41PM +0530, sayli karnik wrote:
> Using typedef for a structure type is not suggested in Linux kernel coding
> style guidelines. So remove typedef from the _bandwidth_autoswitch structure.
> The typedef pointer pbandwidth_autoswitch is not used anywhere, so omit
> it. Also rename the structure to bandwidth_autoswitch since an underscore
> is normally prepended to indicate a hidden name, which is not the case
> here.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> Changes in v2:
> Renamed the structure from _bandwidth_autoswitch to bandwidth_autoswitch
> Changes in v3:
> Changed spacing after 'long' to as it was before
> 
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 176083e..c1fa229 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1461,13 +1461,12 @@ struct tx_pending {
>  	struct ieee80211_txb *txb;
>  };
>  
> -typedef struct _bandwidth_autoswitch {
> +struct bandwidth_autoswitch {
>  	long threshold_20Mhzto40Mhz;
> -	long	threshold_40Mhzto20Mhz;
> +	long	threshold_40Mhzto20Mhz;

Why are you still changing this line?

Please do not do that.

thanks,

greg k-h

