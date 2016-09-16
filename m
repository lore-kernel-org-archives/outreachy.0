X-GM-THRID: 6330756111319171072
X-Received: by 10.46.0.83 with SMTP id 80mr2077906lja.4.1474004158065;
        Thu, 15 Sep 2016 22:35:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.130 with SMTP id r124ls586154wmb.1.gmail; Thu, 15 Sep
 2016 22:35:57 -0700 (PDT)
X-Received: by 10.28.152.87 with SMTP id a84mr1079403wme.7.1474004157468;
        Thu, 15 Sep 2016 22:35:57 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 185si560060wmr.2.2016.09.15.22.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 22:35:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,343,1470693600"; 
   d="scan'208";a="193614054"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 07:35:56 +0200
Date: Fri, 16 Sep 2016 07:35:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 7/8] staging: wlan-ng: add blank line
 after declaration
In-Reply-To: <6443337325af6b99b15ee79e394a8433b2707aea.1473993585.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609160734240.3122@hadrien>
References: <cover.1473993585.git.gs051095@gmail.com> <6443337325af6b99b15ee79e394a8433b2707aea.1473993585.git.gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 16 Sep 2016, Gargi Sharma wrote:

> add blank line after struct declaration to fix the checkpatch issue,

Sentences should start with a capital letter.

> Missing a blank line after declarations.
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 2ff3805..1fc34c7 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -1166,7 +1166,8 @@ typedef struct hfa384x_usbctlx {
>  	CTLX_STATE state;	/* Tracks running state */
>
>  	struct completion done;
> -	volatile int reapable;	/* Food for the reaper task */
> +
> +	volatile int reapable;/* Food for the reaper task */

Checkpatch is wrong, apparently.  volatile int reapable; is a variable
declaration too.  Also, it's not clear why you deleted the space before
the comment.

>
>  	ctlx_cmdcb_t cmdcb;	/* Async command callback */
>  	ctlx_usercb_t usercb;	/* Async user callback, */
> @@ -1378,7 +1379,7 @@ static inline int hfa384x_drvr_getconfig16(hfa384x_t *hw, u16 rid, void *val)
>
>  	result = hfa384x_drvr_getconfig(hw, rid, val, sizeof(u16));
>  	if (result == 0)
> -		*((u16 *)val) = le16_to_cpu(*((u16 *) val));
> +		*((u16 *)val) = le16_to_cpu(*((u16 *)val));

This is not covered by the commit message.

julia

>  	return result;
>  }
>
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6443337325af6b99b15ee79e394a8433b2707aea.1473993585.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

