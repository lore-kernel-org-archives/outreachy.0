X-GM-THRID: 6469984660854145024
X-Received: by 10.25.150.66 with SMTP id y63mr749070lfd.23.1506411545110;
        Tue, 26 Sep 2017 00:39:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls3177322wrn.6.gmail; Tue, 26 Sep
 2017 00:39:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCWQHiTs+uxhRLKI/HX+3JDsD1mtjEVOCF8cvCfOFr7Sut3NZKAj3+bHdsRcLkGiKbqiI6q
X-Received: by 10.28.230.79 with SMTP id d76mr260666wmh.12.1506411544318;
        Tue, 26 Sep 2017 00:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506411544; cv=none;
        d=google.com; s=arc-20160816;
        b=OV1x1uZDm3kBhiN3GwnBBHJeRbcAyDFd6LqIndehIg1OkqQOxq8euAebueouXt4FI1
         9oBtzNtkcQlrqAV+Fn5Z1PZh4mlkgU8cOs4JqLfNQe2PiXf9xdUF77+JusBrM7laqTRM
         smXY2+tHdijpSMHxDxiOmQIC/bNjgMxPJEUXE9ooL3pHdpd6T4Wq7WXOIOMc8twY21OJ
         fDWukzcRsDocj45quw2t6nuQU09dR1c888xIMs19gy3Mp0C/tiEdTeHLv+bY8jME+yVK
         lbOHKJV2jdyirNTv9/x99/gTwvxzp73i+KKm8DmTnSIkPA1FAWTVD3j2hGnfDAgjAoGs
         zbag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=wctboXoxKBDuAjELuWWG2bI9eLHgzIVlR2SUp4JYMwg=;
        b=1HoTfZ9hQS17TCYKw94v9KioxvuP2dx2Ryjv2u2rqmTliadLAQtrixdKUV74RWxFtt
         rDPgyDuCnK89A2dZBDd1K0H16IUv+AbNrUirhSbnDxzm398JMl5Cz8XjY8NmJJAn8Rqc
         chQTXmqWzJTwdIo7DJ3ccKZdFEDkL7/2BKa3Zq0Anj3Dngchy0N9OAqR+vx5gx1u5SFM
         bA74ZLKbae0y3eWG6EXxc4n1xWO8tW2y/W3OA1vHuxI08KIAfhMOEeE0/8aweE0LPneb
         4zZz+T687mcXLwqKlcv0IWX3piBg7QXQofs2TCO7tMK6bdtLKp/wVP34N46BWITQvhTI
         aq3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si104006wmg.4.2017.09.26.00.39.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 00:39:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,440,1500933600"; 
   d="scan'208";a="292715150"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 09:39:03 +0200
Date: Tue, 26 Sep 2017 09:39:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Fix indent coding
 style issue
In-Reply-To: <20170926072450.GA10682@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1709260938450.7823@hadrien>
References: <20170926072450.GA10682@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Mihaela Muraru wrote:

> This patch fixes an indentation coding style issue found by
> checkpatch.pl:
>
> WARNING: suspect code indent for conditional statements (16, 32)
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>
> ---
> Changes in v2:
>    - rewrite the commint message.

You should preserve my ack.

julia

> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index 0978727..8f555e6 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -149,7 +149,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
>  	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
>  	if (padapter != NULL) {
>  		if (pfree_recv_queue == &precvpriv->free_recv_queue)
> -				precvpriv->free_recvframe_cnt++;
> +			precvpriv->free_recvframe_cnt++;
>  	}
>  	spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
>  	return _SUCCESS;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926072450.GA10682%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

