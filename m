X-GM-THRID: 6522852497616273408
X-Received: by 10.28.247.5 with SMTP id v5mr1082759wmh.12.1518725305507;
        Thu, 15 Feb 2018 12:08:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.187.9 with SMTP id r9ls189793wrg.4.gmail; Thu, 15 Feb 2018
 12:08:24 -0800 (PST)
X-Google-Smtp-Source: AH8x226mFYdz8h3RJOJqOjTenGBlfF4iy8rX883mzgLR4cdO360kSkD0iU27i0E/7FaBNP/1GZTy
X-Received: by 10.223.184.60 with SMTP id h57mr704905wrf.0.1518725304762;
        Thu, 15 Feb 2018 12:08:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518725304; cv=none;
        d=google.com; s=arc-20160816;
        b=aYpi8HAx5JE4rpfzlJx9ThbpVVK/3wXiMdPh+L1Lm+gJxcObeE+oxCggk9aWNiBKvx
         RZnuL58d+l7s0P9ZQ+AyWcbjOQ5EVT8RmU0iK4qsh2t1wt0gaW7lEPMfuqEbmCaa67JP
         0TKTZGjW2KXsx5bYecny8dlysulE/56DKkSHUuXp21bN2pKLmfAHI++eJc+Ek0KO3D+L
         8akC0zP8A4XE8ktB1nKt1Y26UeoDyob9wv+Xdd4n1H3fIMGwUk8koa/T/TS9yAbTZs3x
         HM/SkoPehZbu9TnFvlJYb/BQcaq2Dpo40exGfcG3lD8FHQ80qJPsh6euBggyHyiW7LHH
         cRNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=BZxK1MZ3/sBvO2auBLvR9w1y06O9otk1RL+7vJz3QXU=;
        b=a2HWDLNXyPvv3mfEoQGTKxJKUdPV/nNg3Ka28eZoyKrWK0SUWBozUNeSwJLAEv6wad
         b+0Xc5SDhRSDlSI8S7WswQSTf6kdRQagTAqyVArmEbp6AbLKONNxQZ8zSvMiSBDvcYWJ
         612lzVSCEJ5/ztpEIapckWt5IvdQpjwhoRjbYud9BZxSzNj4rkdNnjRboEkFIDL9lKzs
         Y+fuZBXGDx9aW8wjGxDqtOXFYdFSThGOtfQVd5jrCaOY0Tth5KiZkJ6swRjU9xN8IY1a
         Wkf4PStUcA+Yyf/OwGQoKb1E3vgvWuuh2EV8+vSs2X0kgkDjqhJ0YOuN0kiDMp5faeTO
         wNZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e14si59546wmg.0.2018.02.15.12.08.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 12:08:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,517,1511823600"; 
   d="scan'208";a="254968003"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Feb 2018 21:08:24 +0100
Date: Thu, 15 Feb 2018 21:08:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: Fix "Missing a
 blank line after declaration".
In-Reply-To: <20180215183900.GA12122@gmail.com>
Message-ID: <alpine.DEB.2.20.1802152105040.2187@hadrien>
References: <20180215183900.GA12122@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Thanks for your patch, the first one submitted in this round :)

On Thu, 15 Feb 2018, Dafna Hirschfeld wrote:

> Fix checkpatch.pl "missing a blank line after declaration" warning message from rtl8188eu module.

Your commit log message needs to stay within around 70 characters, so that
it is within 80 when it gets slightly indented by git.

The subject line and the commit message should say what you have done and
why, rather than just saying what you fixed, which could be done in many
ways.  A subject line could be "Move a blank line" and the commit log
message could be

Move a blank line from in the middle of a declaration list to after the
declaration list, to improve readability.

Problem detected using checkpatch.

Please send a v2.

julia

>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>
> text here is ignored by git tools.
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180215183900.GA12122%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

