X-GM-THRID: 6522913785402884096
X-Received: by 10.46.112.8 with SMTP id l8mr22740ljc.15.1518762752619;
        Thu, 15 Feb 2018 22:32:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.225 with SMTP id h94ls147331lji.0.gmail; Thu, 15 Feb
 2018 22:32:30 -0800 (PST)
X-Google-Smtp-Source: AH8x227hqLYzRJkgdftJyn0Hoqy318CDit0Lk3oeyvPJX/S63uxXZwu5fRvMXP6gRJINpz0GzuZv
X-Received: by 10.46.85.25 with SMTP id j25mr305650ljb.43.1518762750784;
        Thu, 15 Feb 2018 22:32:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518762750; cv=none;
        d=google.com; s=arc-20160816;
        b=YdvvwX8DyIiMIW3KCTdSWvQCAEOIPSDDpzeoDteBm+qGYYw7cavImkyS+wsWQZLQqm
         3AOKPXqH6qo25z0OHwCrZS9brjVApOR6+DhMDFWGfyQTmE9ojBTJ1eLw3288bIvf5y+X
         coGBYokt4YuY5H+f0Njzbpz9BbiqfVVW0NoIuFhiInS5JEKr8Zc3YJNYvDOYcKnNQXC8
         NDlmmOB2eT+E9Wpve8ANWOtoa+9D2jPD+YOiLr2brHrkkoyVXVGvX2xFceLI/YrEXJr4
         1VPARAyfO4btY/SsjreyL/E/kr3nKEr9nsBdmMK0agzdNYxRSal/IR+Cg/d8uHTuu2A5
         27AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=FYc07VfiFZgl/1bVjtgZnS8/pa/9D+iLOzEPQCBOj6M=;
        b=dzTadIKMpep4gSlZijhXNUfbMeTx1g8wey+GfzQ2a5BNCSP9tswJ1bzavwBnSs8cqG
         paUSSjdo8wHKTJhVYy2KT2wzAxko1dzItuOZfMWeo76cDTNaVtaXdsaekOK27n8v/ZnE
         KIJrpESKzVIzFC28UjHv/dULP2KC9F3gdVbCj2G6DMCMEOqPAyGPeGat1BUD9OaLb7Kl
         Jmx2dVlB1diqyy8yfc/FN+XIEFpz4PkjIPHd3QXyxUlvy5roymbZjKPq+AfKyP2H87MW
         mifrPs7wcKbWQlCLEip+tAfWPQykY+GPd3vr6HE3noiv9MNBVuHUbZBtwef8DUbMNd95
         1PmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w20si878092ljd.2.2018.02.15.22.32.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 22:32:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,519,1511823600"; 
   d="scan'208";a="254991119"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2018 07:32:29 +0100
Date: Fri, 16 Feb 2018 07:32:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8188eu: Move a blank
 line
In-Reply-To: <20180215223652.GA6741@gmail.com>
Message-ID: <alpine.DEB.2.20.1802160731260.2344@hadrien>
References: <20180215223652.GA6741@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 16 Feb 2018, Dafna Hirschfeld wrote:

> Move a blank line from in the middle of a declaration list to
> after the declaration list, to improve readability.
>
> Issue found by checkpatch.
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
> Break commit body to two short lines.
> Make commit body and description clearer.

You could put v2: in front of this message.  But I think it is clear
enough as is.

julia

>
>  drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> index 17967c9..c3bb183 100644
> --- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
> +++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> @@ -1516,8 +1516,8 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
>  	case HW_VAR_CAM_WRITE:
>  		{
>  			u32 cmd;
> -
>  			u32 *cam_val = (u32 *)val;
> +
>  			usb_write32(Adapter, WCAMI, cam_val[0]);
>
>  			cmd = CAM_POLLINIG | CAM_WRITE | cam_val[1];
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180215223652.GA6741%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

