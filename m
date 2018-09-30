X-GM-THRID: 6607095314902941696
X-Received: by 2002:a50:b602:: with SMTP id b2-v6mr2592834ede.6.1538338741589;
        Sun, 30 Sep 2018 13:19:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:d716:: with SMTP id t22-v6ls10151418edi.4.gmail; Sun, 30
 Sep 2018 13:19:00 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61dpcXofQGXFv6Xkx2G3xc39tVAGNyqERjfgDGJGu5FZ7t8ymjmQ6o6AToFzFsdQ+tKD8y0
X-Received: by 2002:aa7:c592:: with SMTP id g18-v6mr2593802edq.10.1538338740743;
        Sun, 30 Sep 2018 13:19:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538338740; cv=none;
        d=google.com; s=arc-20160816;
        b=rGgMFG7lrzHzY3jHTY1/YGi9GPx1SzYcG967JJv2yyV8HyiHc+VU8eJjC1tzgQqVQ9
         wPeqg0SZkm5L6AIAlm9XZghYOyRKmucoJOXCQHe+xFhZF/Iw42H94+cZ4pgfsSNnqE2d
         2rjEPgMXvL+XaAu2HgOhZRq5mISeK1fhQfVIAERLfA4LrVW+L/Fjkr1WAOnv4C/tZD6+
         rz4LTXb8KvWSRwpJ3GJ4k+83EkNYKtJQDY9AIY24qI6z41BVzxpI9HMWJGSU1FcetBdh
         1YGc+4HmQmWGucZPz4KWApaX2gLr7asnC95Utl24oe1ZMw0RZuibvXHI+YY9Wzi8wPQ8
         oOlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=sXozhfKUAwuoH/NBvRPbY3EYVDV7s/4R3CeDJe0Tk7c=;
        b=NRsHpj9U3+64XdU6mB2gtHxegsQlGCavvdNYU/qmfiM2SHUdtbFnTIupI6YHzrLBNh
         lKqcUlmiaBXuxg53WwakM9u1OdBAqTYyqxMPEZA7ua0KT19d1hfYhDLd9DJdGwQyCHqi
         Nfk2WZOUxn2C7+QoJfJTnX2+nBpplCTzKAu+5TJYuPT11rhjeJJrXCoRMQbuE/g/Tvdj
         Emkdhgnt2/5bdDwbig2KKJ5aWJayhZpx5SAmOEyA+putDcYN/4Z5aI5ceuMrCfssaQZB
         5AK+BXjgxtiPUO9Tgv9DCAxaMOBn4ZaTXlwtivjVwEbuBdC6PXpg4V3Chxl3PdhIXtoZ
         Dlbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b23-v6si521096edn.1.2018.09.30.13.19.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 13:19:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,325,1534802400"; 
   d="scan'208";a="348703867"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2018 22:18:42 +0200
Date: Sun, 30 Sep 2018 22:18:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
In-Reply-To: <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
Message-ID: <alpine.DEB.2.21.1809302217480.2863@hadrien>
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 30 Sep 2018, Dafna Hirschfeld wrote:

> Remove unnecessary braces from one line 'if' statements.
> Issues found with checkpatch.pl
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/staging/mt7621-mmc/sd.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
> index e3c1546373ba..8c32cec5950a 100644
> --- a/drivers/staging/mt7621-mmc/sd.c
> +++ b/drivers/staging/mt7621-mmc/sd.c
> @@ -520,9 +520,8 @@ static void msdc_pm(pm_message_t state, void *data)
>  		host->pm_state = state;  /* default PMSG_RESUME */
>
>  	} else if (evt == PM_EVENT_RESUME || evt == PM_EVENT_USER_RESUME) {
> -		if (!host->suspend) {
> +		if (!host->suspend)
>  			return;
> -		}
>
>  		/* No PM resume when USR suspend */
>  		if (evt == PM_EVENT_RESUME && host->pm_state.event == PM_EVENT_USER_SUSPEND) {
> @@ -967,16 +966,14 @@ static int msdc_do_request(struct mmc_host *mmc, struct mmc_request *mrq)
>  	//if(host->id==1) {
>  	if (send_type == SND_CMD) {
>  		if (cmd->opcode == MMC_SEND_STATUS) {
> -			if ((cmd->resp[0] & CARD_READY_FOR_DATA) || (CARD_CURRENT_STATE(cmd->resp[0]) != 7)) {
> +			if ((cmd->resp[0] & CARD_READY_FOR_DATA) || (CARD_CURRENT_STATE(cmd->resp[0]) != 7))

This line is really long.  Since you have sent a series on this code,
maybe you can add in another patch to clean this up.

julia

>  				msdc_gate_clock(host->id);
> -			}
>  		} else {
>  			msdc_gate_clock(host->id);
>  		}
>  	} else {
> -		if (read) {
> +		if (read)
>  			msdc_gate_clock(host->id);
> -		}
>  	}
>  	//}
>  #else
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

