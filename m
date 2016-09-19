X-GM-THRID: 6332135193668747264
X-Received: by 10.28.158.65 with SMTP id h62mr631071wme.11.1474316137895;
        Mon, 19 Sep 2016 13:15:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.154.193 with SMTP id c184ls1230197wme.13.canary; Mon, 19
 Sep 2016 13:15:37 -0700 (PDT)
X-Received: by 10.28.169.81 with SMTP id s78mr614654wme.13.1474316137281;
        Mon, 19 Sep 2016 13:15:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si1885760wmc.2.2016.09.19.13.15.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 13:15:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,363,1470693600"; 
   d="scan'208";a="237436007"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 22:15:36 +0200
Date: Mon, 19 Sep 2016 22:15:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana R <juliana.orod@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: fixed parenthesis
 alignment
In-Reply-To: <20160919195828.GA32755@spock>
Message-ID: <alpine.DEB.2.10.1609192213050.3153@hadrien>
References: <20160919195828.GA32755@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Sep 2016, Juliana R wrote:

> This patch aims to fix a checkpatch warning
> caused by open parenthesis alignment.

"This patch aims to fix" is not useful.  We know it is a patch, and "aims
to fix" suggests that you have not succeeded in fixing the issue.  It
would be better to say what you did, eg Move arguments to the right to
align them with the open parenthesis, as suggested by checkpatch.

> Signed-off-by: Juliana R <juliana.orod@gmail.com>

I guess there is more to your last name than R?  You need to put your full
name.

Thanks for the patch :)

julia

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
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919195828.GA32755%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

