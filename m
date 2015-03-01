X-GM-THRID: 5447739244544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3803f49973626918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.156.65 with SMTP id wc1mr557464lbb.7.1425227627865;
        Sun, 01 Mar 2015 08:33:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.36 with SMTP id b4ls255647lae.46.gmail; Sun, 01 Mar
 2015 08:33:47 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr3292072lbw.4.1425227627360;
        Sun, 01 Mar 2015 08:33:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew5si508860wid.1.2015.03.01.08.33.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 08:33:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,671,1418079600"; 
   d="scan'208";a="101703917"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 17:33:46 +0100
Date: Sun, 1 Mar 2015 10:33:43 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wlan-ng: Remove unused
 variable
In-Reply-To: <922d52e4f30f851b2c893faa720b87b57dc82812.1425223729.git.vatikaharlalka@gmail.com>
Message-ID: <alpine.DEB.2.10.1503011033230.2545@hadrien>
References: <cover.1425223729.git.vatikaharlalka@gmail.com> <922d52e4f30f851b2c893faa720b87b57dc82812.1425223729.git.vatikaharlalka@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Mar 2015, Vatika Harlalka wrote:

> The return value of the function need not be
> assigned to a variable.
>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2sta.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 10ad24a..2ebca7d 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -251,9 +251,7 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
>  		p80211_hdr->a3.fc |= cpu_to_le16(WLAN_SET_FC_ISWEP(1));
>  	}
>
> -	result = hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);
> -
> -	return result;
> +	return hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);

Now you can get rid of the result variable.

julia

>  }
>
>  /*----------------------------------------------------------------
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/922d52e4f30f851b2c893faa720b87b57dc82812.1425223729.git.vatikaharlalka%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

