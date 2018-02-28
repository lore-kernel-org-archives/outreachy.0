X-GM-THRID: 6527683536897441792
X-Received: by 10.80.141.16 with SMTP id s16mr5887767eds.7.1519848473155;
        Wed, 28 Feb 2018 12:07:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls2612796edc.3.gmail; Wed, 28 Feb
 2018 12:07:50 -0800 (PST)
X-Google-Smtp-Source: AH8x2263P9tbMDeBbiGffNf5LhaWcCGty7BjyJ6mzpQP6NvS5hcozWpKL1RIXknaVV2z1fKnmIhY
X-Received: by 10.80.149.230 with SMTP id x35mr5873198eda.3.1519848470955;
        Wed, 28 Feb 2018 12:07:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519848470; cv=none;
        d=google.com; s=arc-20160816;
        b=jffRqxcWDn4cYQ/2OzixklTD/gON76KTc6IxaV5D26Fyo+HmTnwr/WWa5vWVux+Q5h
         ijCMTrFmyK6MvCKpQ237a9NeVYMPz4+uF2YYsOP+AXoMjXdFcN4r9K9kb3mfPs9+tzGy
         OQ45adQb3IEraECBMg986Z3t6+pxdPWRZVWzdyP4A7kWI7tKeY8rV5FTM8U2EInI+bxX
         eg4Xy11IqvsGiwB005QN6Q7ygI8+nVsTJyA6adGpcFDIhqmx/JxwQebLN2CsvcuGHzq6
         EjtXw6z/YZ5yT5baPVRqL9KVmLKCAXP+OAwq+L5+yzMFeubBYk4+VoKsr26VqTo8kEHP
         wNrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=7ZAYkaTkbdIvUaBzkmq9XUdeeTSGHKHqULDD8Ni4DJ8=;
        b=KKxghc1Y0QMBJsjbUMiv7V+j5XfL7bEOsnRfax8sx/ajHOV9b0Y9SKhfBhKIL4uTwu
         oYe8fB5LyFTz9Si5OhNH+fM0zeFckRONxHSy4WQeOJrX7PTHsugm12j1RfiCLyqno8P+
         rP+1+np5+G7fJENTxeOrluS9b9QRDWYXoKaMtbuNPGV/kIfz/RPNaM+sI/q93h9t1Xi0
         UTCvCcXZXwt1LfOtSV9v5+/4FYCFfUegJtOvel/i4CCDqrxjS8GWzqjoUbPPTJ7yFRSl
         WWk4ygFKZJvnXU60NOpxBDHg9CWd5M4juFzpyMYXYiLpZNu7A0dIp1AtWkN0x3vl9FDY
         yeWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f24si154319edc.0.2018.02.28.12.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 12:07:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,406,1515452400"; 
   d="scan'208";a="315734478"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2018 21:07:50 +0100
Date: Wed, 28 Feb 2018 21:07:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: move logical
 continuation to previous line
In-Reply-To: <1519844728-18917-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802282106560.2582@hadrien>
References: <1519844728-18917-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 28 Feb 2018, Santha Meena Ramamoorthy wrote:

> Move logical continuation '&&' to the previous line to conform to the
> Linux kernel coding style. Issue found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_rx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
> index 30f72d2..22f7e7fd 100644
> --- a/drivers/staging/rtl8192e/rtllib_rx.c
> +++ b/drivers/staging/rtl8192e/rtllib_rx.c
> @@ -2644,8 +2644,8 @@ static inline void rtllib_process_probe_response(
>  	   (network->ssid_len ? 1 : 0))) {
>  		update_network(ieee, &ieee->current_network, network);
>  		if ((ieee->current_network.mode == IEEE_N_24G ||
> -		     ieee->current_network.mode == IEEE_G)
> -		     && ieee->current_network.berp_info_valid) {
> +		     ieee->current_network.mode == IEEE_G) &&
> +		     ieee->current_network.berp_info_valid) {

It would be nice to move the above line one space to the left, so that it
is just to the right of its associated (, which is the outermost one, not
the innermost one.

julia

>  			if (ieee->current_network.erp_value & ERP_UseProtection)
>  				ieee->current_network.buseprotection = true;
>  			else
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519844728-18917-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

