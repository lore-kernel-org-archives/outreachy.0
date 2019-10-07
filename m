X-GM-THRID: 6744825053591896064
X-Received: by 2002:a2e:7a04:: with SMTP id v4mr470351ljc.237.1570427352065;
        Sun, 06 Oct 2019 22:49:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8803:: with SMTP id x3ls1961240ljh.10.gmail; Sun, 06 Oct
 2019 22:49:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzL5+15rD3HF5ezYI6h8QCTIHv2s8xm2HA1cbdXAel0fsWN36UYTb5TVfOzf2/9ZAqiCt42
X-Received: by 2002:a2e:5714:: with SMTP id l20mr17306032ljb.122.1570427350718;
        Sun, 06 Oct 2019 22:49:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570427350; cv=none;
        d=google.com; s=arc-20160816;
        b=IckG7zRWs0fSvuV+ex76WjHc/G+H4UdMptlIC7WBZKBBzwnV1n3V66LhjtQnd1SQBu
         7oNT2V/McEF0GpghXjnO6jlIlgvUyVcXvU7jLHoh1sVKcOIb+6hrjA0UvP74cn+Tq5iU
         hCFYE16mHiQWPy8w4k1otHnX/eOeViBYyRIt+qDidP5yy+aS2dVyq4ySXyWq8P++iyQi
         i+rbXQeQa+F8Rg3lVPA8qAsP3SeUQhRl+8HueUIETkrMSoTO1bz976D5TRt009Cmr/7w
         2FaAZ9WG9lbzK3mHL2VhJANmiVl0W9wRHxUadx/TTAB5gWI+mSBbHH1r+opiJBxpw52L
         eTSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=CUJyROeG9WlKCHjw3N6yrLEbMUIY4KIl43ussFDZEgg=;
        b=RHm+4bBLso03NZL73mLa9jJ39FQgCfI0ZRyEhYw5JSWXEJ/2ifNuwFSti1G/u02wJ8
         l9t7gA0+rH+SgOkTlg2m2f9BBAMHpNBWGfPVeLkHFPy7SReNEJ9HmSW+cktrwaSXuHg8
         riKa+E8DsSbqC4hPFfUW1KfdVsgpQ9KL8mMMbmtxcLkw9nBNiDpGct7NWberpfQpRGxN
         HSN9K/X005U6DxSbAQAghAju8fHe/0soAh+8hS+4hVqA1A/seIux0VdobpdHTKIZXwQQ
         wXQ+hSCNM7xRxlv7rS5hQincs6I1SUJ/l9xJrdA/tPtKgWyK5jP2wlsiQeGiqS3TVvUW
         3gBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a9si941483lfk.5.2019.10.06.22.49.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 22:49:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,265,1566856800"; 
   d="scan'208";a="404970365"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2019 07:48:46 +0200
Date: Mon, 7 Oct 2019 07:48:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove commented
 code
In-Reply-To: <20191006224551.GA3551@gmail.com>
Message-ID: <alpine.DEB.2.21.1910070747480.2753@hadrien>
References: <20191006224551.GA3551@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 6 Oct 2019, Javier F. Arias wrote:

> Remove commented code for a cleaner file. Issue found by checkpatch.

This also removes some blank lines.  It would be better to do only
onething at a time, and in any case to mention everything that is done in
the commit log.

julia

>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 11 -----------
>  1 file changed, 11 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 29acbb1ee869..3956c43a6468 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -2689,18 +2689,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
>  		}
>
>  		pxmitframe->attrib.triggered = 1;
> -
> -/*
> -		spin_unlock_bh(&psta->sleep_q.lock);
> -		if (rtw_hal_xmit(padapter, pxmitframe) == true)
> -		{
> -			rtw_os_xmit_complete(padapter, pxmitframe);
> -		}
> -		spin_lock_bh(&psta->sleep_q.lock);
> -*/
>  		rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
> -
> -
>  	}
>
>  	if (psta->sleepq_len == 0) {
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191006224551.GA3551%40gmail.com.
>

