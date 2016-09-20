X-GM-THRID: 6332135193668747264
X-Received: by 10.28.38.194 with SMTP id m185mr81861wmm.5.1474349425728;
        Mon, 19 Sep 2016 22:30:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.133 with SMTP id d127ls2170838wmd.27.canary; Mon, 19 Sep
 2016 22:30:25 -0700 (PDT)
X-Received: by 10.194.119.196 with SMTP id kw4mr3247798wjb.1.1474349425246;
        Mon, 19 Sep 2016 22:30:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si2361471wmd.1.2016.09.19.22.30.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 22:30:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,366,1470693600"; 
   d="scan'208";a="237458550"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Sep 2016 07:30:19 +0200
Date: Tue, 20 Sep 2016 07:30:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana R <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wlan-ng: fixed parenthesis
 alignment
In-Reply-To: <20160919211231.GA17131@spock>
Message-ID: <alpine.DEB.2.10.1609200728470.3346@hadrien>
References: <20160919211231.GA17131@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Juliana R wrote:

> This patch fixes a checkpatch warning
> by moving arguments to the right and
> aligning them to the open parenthesis above.
>
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>

Actually, the From name in your email has to be the same as the
Signed-off-by name.  You can correct this in your git configuration file.

julia

> ---
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
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919211231.GA17131%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

