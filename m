X-GM-THRID: 6388328536690655232
X-Received: by 10.157.15.4 with SMTP id 4mr1212432ott.12.1487956996445;
        Fri, 24 Feb 2017 09:23:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.33 with SMTP id z30ls7937640otb.29.gmail; Fri, 24 Feb
 2017 09:23:16 -0800 (PST)
X-Received: by 10.157.21.117 with SMTP id z50mr1299914otz.111.1487956996140;
        Fri, 24 Feb 2017 09:23:16 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si1770163pfd.3.2017.02.24.09.23.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:23:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6DDEC4A4;
	Fri, 24 Feb 2017 17:23:15 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:23:09 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8192u: ieee80211: Remove typedef to
 structure _bandwidth_autoswitch
Message-ID: <20170224172309.GA11385@kroah.com>
References: <20170218065444.GA26078@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170218065444.GA26078@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Sat, Feb 18, 2017 at 12:24:44PM +0530, sayli karnik wrote:
> Using typedef for a structure type is not suggested in Linux kernel coding
> style guidelines. So remove typedef from the _bandwidth_autoswitch structure.
> The typedef pointer pbandwidth_autoswitch is not used anywhere, so omit
> it. Also rename the structure to bandwidth_autoswitch since an underscore
> is normally prepended to indicate a hidden name, which is not the case
> here.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
> Changes in v2:
> Renamed the structure from _bandwidth_autoswitch to bandwidth_autoswitch
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
> +	long threshold_40Mhzto20Mhz;

Why did you change the whitespace here?  Please don't do that.  Only do
what you said you were going to do in your changelog text.

thanks,

greg k-h

