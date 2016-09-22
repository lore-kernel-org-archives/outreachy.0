X-GM-THRID: 6332135193668747264
X-Received: by 10.25.201.198 with SMTP id z189mr9478lff.13.1474522519423;
        Wed, 21 Sep 2016 22:35:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.147 with SMTP id g19ls1486540lji.38.gmail; Wed, 21 Sep
 2016 22:35:18 -0700 (PDT)
X-Received: by 10.25.66.198 with SMTP id p189mr10683lfa.12.1474522518625;
        Wed, 21 Sep 2016 22:35:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y6si2354686wmg.0.2016.09.21.22.35.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 22:35:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,377,1470693600"; 
   d="scan'208";a="194242685"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Sep 2016 07:35:17 +0200
Date: Thu, 22 Sep 2016 07:35:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wlan-ng: fixed parenthesis
 alignment
In-Reply-To: <20160922031541.GA9130@spock>
Message-ID: <alpine.DEB.2.10.1609220734410.3472@hadrien>
References: <20160922031541.GA9130@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 22 Sep 2016, Juliana Rodrigues wrote:

> This patch fixes a checkpatch warning
> by moving arguments to the right and
> aligning them to the open parenthesis above.

You should use more horizontal space, up to 75 characters or so.

julia

>
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
> Changes in v3:
>    - Fixed patch author's name
>
> Changes in v2:
>    - Make the commit message clearer.
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index bed4672..f1d93b7 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -661,7 +661,7 @@ void prism2_connect_result(struct wlandevice *wlandev, u8 failed)
>  void prism2_disconnected(struct wlandevice *wlandev)
>  {
>  	cfg80211_disconnected(wlandev->netdev, 0, NULL,
> -		0, false, GFP_KERNEL);
> +			      0, false, GFP_KERNEL);
>  }
>
>  void prism2_roamed(struct wlandevice *wlandev)
> --
> 2.10.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922031541.GA9130%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

