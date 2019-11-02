X-GM-THRID: 6754510207440650240
X-Received: by 2002:adf:d18b:: with SMTP id v11mr15479197wrc.308.1572688867503;
        Sat, 02 Nov 2019 03:01:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:387:: with SMTP id 129ls11150058wmd.3.canary-gmail; Sat,
 02 Nov 2019 03:01:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPD3bNKDgn0R71yQ8yjgyywl3QcVFTAvtResQfYCAfYEFUYDg3dhdDY2aMuY9DvM91n14C
X-Received: by 2002:a05:600c:2054:: with SMTP id p20mr1588516wmg.177.1572688866416;
        Sat, 02 Nov 2019 03:01:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572688866; cv=none;
        d=google.com; s=arc-20160816;
        b=pl84StM+j5nY340GMGNDwtn1YPYAagcUScu2OFgosL6I+sCTayTa/yDhB7bBbrqnmE
         SmAVHASyJiTJ/UQU4pzb4OS6tFDY+sCDaCZgiJHFB+73ubzEYBG658w7NgaCJ+qmiMdB
         wn9hrZ24fbGfVGoB3rq2ZPaDVadmrvglleiRgXdJeZwn1O96GUMejedjwA7QMew0Wu4L
         lcK1T3ipAsgHq56pYnnB/62ernfAlXCbt9J3RJi52JbEfOK501Pa5keF+aZcsmM3IN+B
         oZ6ll9V71Od6c04O2FFhU15zf/8OKM/fJk+HR0VXNdUfikReJqwEECgKrXSPsNhDMUUo
         FHvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=U9S9/gzmi0qJAg2QeXOvw5/pQ+sfgXI6bQUIa9hKFqY=;
        b=LAytyTwOL5v1bRdZebVdMd0Fp1Qh33oz84ZAxWWbNLCPAjaXvGHz6bRwt8AcC/kAHf
         y+GhEyu+jzpqOop8VupSqM5U8R1ACAsVC0vleON6JTInwY4H7l1GdUk827OAA8thvkKW
         m0Q1uYk6/sJxgvfnBEaPIpF18tPcG+V41sEmQaD6yABULw6g5bW0unLwFuC5tJW1xlyW
         6SHeEw8zqNsbbk2ePMgkpWC7S3Qf44HG/vAAg4osGE9W9Bp/WsaAr9McAtf0kYu5A4Gm
         C1r4ABngv8QIBW5bqIo5e6K++lozNfnCr0zmAr4DikW+4YHJqZ3OrVHsYhIJluS6x0BO
         XCxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s15si528819wme.2.2019.11.02.03.01.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:01:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,259,1569276000"; 
   d="scan'208";a="409979784"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 11:01:06 +0100
Date: Sat, 2 Nov 2019 11:01:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wfx: fix warning of assignment
 of 0/1 to bool variable
In-Reply-To: <20191102011144.30586-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911021059590.8826@hadrien>
References: <20191102011144.30586-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Jules Irenge wrote:

> Fix warning of assignment of 0/1 to bool variable.

Please rewrite the log message to start with something other than fix.
Explain what you did and why.

The subject line could also be more concise.

julia

> Issue reported by coccinelle tool.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/queue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index 5d29bce65f71..71e92744fed0 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -550,7 +550,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
>  			spin_unlock_bh(&wvif->ps_state_lock);
>
>  			if (vif_more) {
> -				more = 1;
> +				more = true;
>  				tx_allowed_mask = vif_tx_allowed_mask;
>  				queue = vif_queue;
>  				ret = 0;
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191102011144.30586-1-jbi.octave%40gmail.com.
>

