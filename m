X-GM-THRID: 6388489014907764736
X-Received: by 10.25.151.69 with SMTP id z66mr1321182lfd.12.1487437247743;
        Sat, 18 Feb 2017 09:00:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.129 with SMTP id i123ls675459wmf.6.canary-gmail; Sat,
 18 Feb 2017 09:00:46 -0800 (PST)
X-Received: by 10.28.46.16 with SMTP id u16mr244023wmu.7.1487437246907;
        Sat, 18 Feb 2017 09:00:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si405878wmf.0.2017.02.18.09.00.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 09:00:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="261097265"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 18:00:46 +0100
Date: Sat, 18 Feb 2017 18:00:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: There should be no
 spaces at the start of a line
In-Reply-To: <20170218164002.GA7269@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702181758460.3112@hadrien>
References: <20170218164002.GA7269@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Arushi Singhal wrote:

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

The code looks like a mess.  How about breaking up the call at the
newlines, and then propagating the arguments to the appropriate calls.

There is also a checkpatch error about strings on more than one line, that
this also violates.

julia

>  	DPRINTK(4, "\n    Link AP\n    rsn.mode=%d\n    rsn.size=%d\n",
>  		ap_info->rsn_mode, ap_info->rsn.size);
>  	DPRINTK(4, "\n    ext_rate_set_size=%d\n    rate_set_size=%d\n",
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218164002.GA7269%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

