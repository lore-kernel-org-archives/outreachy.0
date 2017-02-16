X-GM-THRID: 6387819516202582016
X-Received: by 10.25.17.87 with SMTP id g84mr480548lfi.20.1487280954096;
        Thu, 16 Feb 2017 13:35:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.12 with SMTP id a12ls92505ljb.5.gmail; Thu, 16 Feb 2017
 13:35:53 -0800 (PST)
X-Received: by 10.25.233.82 with SMTP id g79mr437441lfh.5.1487280953360;
        Thu, 16 Feb 2017 13:35:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si98945wmd.0.2017.02.16.13.35.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 13:35:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,169,1484002800"; 
   d="scan'208";a="213503571"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 22:35:52 +0100
Date: Thu, 16 Feb 2017 22:35:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] staging: rtl8192u: Fixed
 'tabstop' coding style warning
In-Reply-To: <20170216212204.GA12996@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702162235240.2121@hadrien>
References: <20170216212204.GA12996@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, simran singhal wrote:

> Replace a mix of tabs and spaces indentation by tabs only.
>
> Fixed checkpatch warning "Statements should start on a tabstop" in
> rtl8192u module.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>
>  v2:
>    -Modified "warnings" to "warning" in the patch Subject.
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> index 563d7fe..814ab5a 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> @@ -666,7 +666,7 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
>  	if (ieee->set_security)
>  		ieee->set_security(ieee->dev, &sec);
>
> -	 if (ieee->reset_on_keychange &&
> +	if (ieee->reset_on_keychange &&
>  	    ieee->iw_mode != IW_MODE_INFRA &&
>  	    ieee->reset_port && ieee->reset_port(dev)) {
>  		IEEE80211_DEBUG_WX("%s: reset_port failed\n", dev->name);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170216212204.GA12996%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

