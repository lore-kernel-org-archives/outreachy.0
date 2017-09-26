X-GM-THRID: 6469960425637150720
X-Received: by 10.28.184.81 with SMTP id i78mr258025wmf.2.1506405529259;
        Mon, 25 Sep 2017 22:58:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.138 with SMTP id y132ls270898wmy.9.gmail; Mon, 25 Sep
 2017 22:58:48 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCwZKCfoUIasjsocnrNmaLv7dTUtvRUgYH6QGV5JHpWmAjh9KZIPtJUcKE0bd+MI7qyIy6s
X-Received: by 10.223.185.55 with SMTP id k52mr496752wrf.23.1506405528651;
        Mon, 25 Sep 2017 22:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506405528; cv=none;
        d=google.com; s=arc-20160816;
        b=Aq1L7aN3JCVWfoUKIehMxUrQY11rXZd+rNKUCuOLDg15AlPMKUyDYH4528iEQFGF/H
         2xP3LjDzKkjWek7jsfRXpvFftw0YrcqxZI1+9SQOTAgmNkDq6O1AInttlTgMkFqEdphy
         oyqQoO54RHaT9YFHCDPxbgzzIuV2HlvBRrSvOhF/OPpbX8SZHA+ZXQLzILvRD94cd0Ki
         KfTIyE6ot0A7N2rx7KZ5T5kuJBwTbaTbVBSx7S3PS2a2Cq5ikaFdcYhaBzh4um4u97eV
         F4tgB1Gq84ASlVLAL0BfvO208dHkBTGkI6JwWiA/xR3RUzmVuSpX8HBvqk7K4wZ1QkFw
         VkAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=YBkbUV8CQBwUTXKqDoG5X3VBpOJLBtc2dwqVR67OaLw=;
        b=fVjaM4TMP3ydiHuCFgzMTf4LWztNgnTCZSdhDrE9OJBLa4ROkDyaDm7ucFWSagr5HF
         BtEXvGWCLIHviNwG5AehlfQCnD200MJolZaeBgnp/nmDPaWVE0rGnHnPG/ioWNlzm0t3
         m6JyJgzkuWSdsBeWpxUFRPZiS6dLk5Ic3/f5KlIC+ufCd4gQRSyvehsc9h02qwrOt6OA
         QN7BuwzdgMnXul+BjTPVaOTygjJUzR020x9qjcDk6RCswiL+1aEW6eIxxj2JxX9FZtKs
         BCnw4RAtzzVFlBhFWHPUy/fUXsOsc53qwrIijrIWAri1WUf3g/nHftyLxvPhXsyzMbus
         vcJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si79913wmb.3.2017.09.25.22.58.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 22:58:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,439,1500933600"; 
   d="scan'208";a="238702324"
Received: from unknown (HELO hadrien.local) ([93.83.33.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 07:58:47 +0200
Date: Tue, 26 Sep 2017 07:58:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Fix suspect code
 indent for conditional statements
In-Reply-To: <20170926055046.GA9014@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1709260757170.2905@hadrien>
References: <20170926055046.GA9014@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Mihaela Muraru wrote:

> This patch fixes the checkpatch.pl warning:
>
> WARNING: suspect code indent for conditional statements (16, 32)
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

Acked-by Julia Lawall <julia.lawall@lip6.fr>

Try to be a bit more descriptive in your commit messages about what you
are doing and why.  Fix doesn't say what you have decided to do.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926055046.GA9014%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

