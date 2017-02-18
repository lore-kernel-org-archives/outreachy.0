X-GM-THRID: 6388489014907764736
X-Received: by 10.99.3.147 with SMTP id 141mr3930895pgd.86.1487437039826;
        Sat, 18 Feb 2017 08:57:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.202 with SMTP id g193ls1282333ita.15.gmail; Sat, 18 Feb
 2017 08:57:19 -0800 (PST)
X-Received: by 10.98.252.78 with SMTP id e75mr2096942pfh.38.1487437039064;
        Sat, 18 Feb 2017 08:57:19 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 23si1442692pfw.4.2017.02.18.08.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 08:57:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 14F3C258;
	Sat, 18 Feb 2017 16:57:17 +0000 (UTC)
Date: Sat, 18 Feb 2017 17:57:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Staging: ks7010: There should be no spaces at the start
 of a line
Message-ID: <20170218165714.GA24078@kroah.com>
References: <20170218164002.GA7269@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170218164002.GA7269@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Sat, Feb 18, 2017 at 10:10:02PM +0530, Arushi Singhal wrote:
> The following patch the checkpatch.pl warning:
> drivers/staging/ks7010/ks_hostif.c warning: please, no spaces at the
> start of a line
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 819e08b5fa91..3b2e28749b63 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -191,8 +191,8 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
>  	}
>  	DPRINTK(4, "\n    Link AP\n");
>  	DPRINTK(4, "    bssid=%02X:%02X:%02X:%02X:%02X:%02X\n \
> -   essid=%s\n    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n    channel=%d\n \
> -   rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0], ap->bssid[1], ap->bssid[2], ap->bssid[3], ap->bssid[4], ap->bssid[5], &(ap->ssid.body[0]), ap->rate_set.body[0], ap->rate_set.body[1], ap->rate_set.body[2], ap->rate_set.body[3], ap->rate_set.body[4], ap->rate_set.body[5], ap->rate_set.body[6], ap->rate_set.body[7], ap->channel, ap->rssi, ap->sq, ap->capability);
> +essid=%s\n    rate_set=%02X,%02X,%02X,%02X,%02X,%02X,%02X,%02X\n    channel=%d\n \
> +rssi=%d\n    sq=%d\n    capability=%04X\n", ap->bssid[0], ap->bssid[1], ap->bssid[2], ap->bssid[3], ap->bssid[4], ap->bssid[5], &(ap->ssid.body[0]), ap->rate_set.body[0], ap->rate_set.body[1], ap->rate_set.body[2], ap->rate_set.body[3], ap->rate_set.body[4], ap->rate_set.body[5], ap->rate_set.body[6], ap->rate_set.body[7], ap->channel, ap->rssi, ap->sq, ap->capability);

So don't just remove the spaces, fix it correctly with the proper
indentation please.

thanks,

greg k-h

