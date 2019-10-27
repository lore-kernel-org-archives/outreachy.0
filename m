X-GM-THRID: 6752359295964151808
X-Received: by 2002:a17:906:c836:: with SMTP id dd22mr11252140ejb.178.1572161303421;
        Sun, 27 Oct 2019 00:28:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:2d3:: with SMTP id b19ls3294150edx.0.gmail; Sun, 27
 Oct 2019 00:28:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIeUzInj3mH4ykmytzf4TwdWhXyxCsy1yeQ0yFAAbumiDeR5RksOE3Q4r4KB5CRc+9KPMT
X-Received: by 2002:a50:eb42:: with SMTP id z2mr13004452edp.291.1572161302649;
        Sun, 27 Oct 2019 00:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572161302; cv=none;
        d=google.com; s=arc-20160816;
        b=zmcyznDvXIj8rgIOz+GVvA8gKHJj3lFGndL0SaouLosfPtWL9MPwrHzqN0GvpHFGbr
         FL6DJDhSeZmSrOnvEhOQjZtT6iSAiUOx6hRowou1GBml94KXDd7VjgYcsEwfZbJB++SR
         IrlZ8CtXVSuQVE5N+USvZ3SODU0IgIsmGhvV6mqAAvFLe48KcruWpl7CiC7LHGCEoMzm
         tY4ZMmN2LaS+zO6qh3XXv/lpF0ROFBNLyPuAr0i1f+kiAbHraE1/Dq6w/rExZ7bHYfvy
         LVxzRKV7/dAx2WnxANII3uuZahXgVF3UBH+PKw0l1YAHiOc7ikI7Bqf/HMuRjzH4I34R
         Ytmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=D2EieGiaO/vLi+jhW0WjAlMO5c1Iu9DsPk8mPoKsCUI=;
        b=vVHy16n2lL4VZBAY/O/vLV2ctbZKPhZbhtkgcARS3vLMXGQXzRg27TyM9h0CwIRi6e
         Ayw4JmU7xzdMSidMpQ6d+gPSxvNJliwJo0LAmT0eDow0wleC4KTeikgMHPCD6I/Svp9M
         kMEK05w/1v2inH8Ak4+5foqdll0Vyx2cvLZ1tp13Wtq1cEcO2NDfqpylPWEXopbkRoO/
         jGr0b6Vw7XmolfWXp//8d7lCtHEhZGoFqz/lMJ/difEQhlWWq0vy06kFxECOnoxeykYf
         Q7YfxdFJi4FfUThB5G0F79jeRnat5uSajrxGVKArfTFNXqAWXZgvEv0lxfejtUUxx9Fk
         pllA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a15si296591ejj.0.2019.10.27.00.28.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 00:28:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,235,1569276000"; 
   d="scan'208";a="408563153"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Oct 2019 08:28:14 +0100
Date: Sun, 27 Oct 2019 08:28:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Fix line ending with
 a '('
In-Reply-To: <20191027060237.GA26854@linux-kernel-dev>
Message-ID: <alpine.DEB.2.21.1910270827210.3186@hadrien>
References: <20191027060237.GA26854@linux-kernel-dev>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 27 Oct 2019, Frank A. Cancio Bello wrote:

> checkpatch.pl message:
> "CHECK:OPEN_ENDED_LINE: Lines should not end with a '('"
>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 2666f9e30c15..ab731a2f7bb3 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -75,9 +75,8 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
>
>  	if (ps_status == PS_SNOOZE) {
>  		ks_wlan_hw_wakeup_request(priv);
> -		time_left = wait_for_completion_interruptible_timeout(
> -				&priv->psstatus.wakeup_wait,
> -				msecs_to_jiffies(20));
> +		time_left = wait_for_completion_interruptible_timeout(&priv->psstatus.wakeup_wait,
> +								      msecs_to_jiffies(20));

This doesn't seem like a good solution, since it massively violates the 80
character boundary.  I don't think there is a good solution in this case.

julia

>  		if (time_left <= 0) {
>  			netdev_dbg(priv->net_dev, "wake up timeout or interrupted !!!\n");
>  			schedule_work(&priv->wakeup_work);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191027060237.GA26854%40linux-kernel-dev.
>

