X-GM-THRID: 6669247411673628672
X-Received: by 2002:a2e:9002:: with SMTP id h2mr34103ljg.14.1552805361226;
        Sat, 16 Mar 2019 23:49:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:82c9:: with SMTP id n9ls631511ljh.1.gmail; Sat, 16 Mar
 2019 23:49:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyJfgKVr4V6LYPtkbUYJcbXteHUsTB0uhKEQAKYHoI8Si7T9YV3I75lJx0eVKfTXmbsh7fc
X-Received: by 2002:a2e:253:: with SMTP id 80mr599896ljc.27.1552805360376;
        Sat, 16 Mar 2019 23:49:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552805360; cv=none;
        d=google.com; s=arc-20160816;
        b=hkfej0p8eVFphmVW/vAnxOovVbSTCTXHYYeuYzV/r75LsNgGKTw8yABAmtwbOeAhsF
         l+gCtJD+W/wdB6WgdkP0gzbbIe2ybctRzaeJto/wB7GvDYRc5UEafyJd+xp1YkIGLIiG
         +2IDGRPi79dD7FoavxFsxvxC/WQ2uIcY2qARUKBpkauacEqZh9HATQvq1TjnmtqzsW15
         IgKDG5kZ2XE9LZpnSqATGI/O3PXinX2AaUHPnjRoFTLrNA34Clvp/CitZUDmpHwAnfHg
         GYJ0jHlTyoO965hDFjDXEr9DuTnrYJ08KvF3VhpwGci6v8hYhTFSSOOcYE1GFYp5Wy18
         lclA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8QyWRCXz1HSHpspgvdFjFDZ+xR9AMOzJhMJPXx2yhnc=;
        b=o13IMZSEc/lXEo4MDBPFxKCxKcZkl/IvcjunIMwBD7c4gMQe99DFfVbq6e170pphzN
         HjCdSKl5H88r2Rjq/Ms3627/EiE1qwHIbRh1j3coQTcnlZgWDOZVBqFl7kYui3W9XA6J
         qWoM8uCpSsWByjcYEB/ChsrvFMrV+2YHiaL/JLeOqlOSdgADDazrr2LRxnjE70tPGJnB
         vV4WtTkYMxAD0EINq4JbQ59mxgPQN71LY816NdKL9pTgmjXUoeKf5LCVZL2Nf9YL7NOa
         HFU69Jcn6hGcF/Mu695AbErPvYQfwLtuHtpSfIzko6Xo5IhhTQQnxR90V98mqpDcRP9B
         TkEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k13si267216lja.5.2019.03.16.23.49.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:49:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299666199"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 07:49:19 +0100
Date: Sun, 17 Mar 2019 07:49:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: ks-hostif.c: Lines
 should not end with a '('
In-Reply-To: <20190317064556.3603-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170748040.2588@hadrien>
References: <20190317064556.3603-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Sanjana Sanikommu wrote:

> Start function arguments after initial bracket so that the
> line does not end with a opening bracket.
> CHECK: Lines should not end with a '('
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 06ebea0be118..7f1b41658e25 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -75,8 +75,8 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
>
>  	if (ps_status == PS_SNOOZE) {
>  		ks_wlan_hw_wakeup_request(priv);
> -		time_left = wait_for_completion_interruptible_timeout(
> -				&priv->psstatus.wakeup_wait,
> +		time_left = wait_for_completion_interruptible_timeout
> +				(&priv->psstatus.wakeup_wait,

This is not a good solution.  It doesn't look like a function call if
there is not a ( after the function name.  Maybe there is no good solution
in this case, because the function name is very long.

julia

>  				msecs_to_jiffies(20));
>  		if (time_left <= 0) {
>  			netdev_dbg(priv->net_dev, "wake up timeout or interrupted !!!\n");
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317064556.3603-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

