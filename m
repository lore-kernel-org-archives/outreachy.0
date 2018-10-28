X-GM-THRID: 6617471709084647424
X-Received: by 2002:a50:cb48:: with SMTP id h8-v6mr1778129edi.3.1540751692326;
        Sun, 28 Oct 2018 11:34:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b60c:: with SMTP id b12-v6ls1497043ede.13.gmail; Sun, 28
 Oct 2018 11:34:51 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fOQ1IS/cdY4q/4mGREEkYq06UxL6diWtXZMkZEDJZcmoHq9WoC+sTD5DfOCmKBJqz0HpAF
X-Received: by 2002:aa7:da54:: with SMTP id w20-v6mr770725eds.7.1540751691294;
        Sun, 28 Oct 2018 11:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540751691; cv=none;
        d=google.com; s=arc-20160816;
        b=ShGCdULzhIt9+OB/G5wv4zBOkvVu7+c/5jxVN29fZSr037+IQ7+uGFfZki6VBSMNCk
         Ztw/excZfQ5IJfJNFzDezG9FWr4ec4sWxp1ZK4DYc/fCze9GkrqF6c+D9oU7NI5yabsh
         BrA0tofjyR2Tl4zt+pe1j1LZJxy6VGKbLZzUCW9na/hOGDtM3iLjU77bPw3yWPq/n8po
         qAP1C2nL/DgeLfNHcjNvEHWMb/2W+jKz8UeTAvTrK+mP4nHh8OObvwkefH6Vy1K5psBV
         G/EFVRjr7SmMO6+SpmPhkDbXiarWCxKM/f1SrZt8FWm05xTmvUUAjBqfL4x7ETrNf86J
         qR9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=yKM8/hwH82rY8Iwx4E8nSMuHg7iVQ3rgP+72OFRCnXY=;
        b=fVngCgscYBq5iKTQ9m2dV5a4rR+qUH/kLr+3Mvib8SLXt7gVXBPMdfh9ak3ZYOXsLd
         VL0wca39GDuMIw1Rd93qWveNu00PyqqdCEPF9ESbrjTtFG7J4D5uhhZA5NzLDgECkbJM
         3EninEDT06pzb+ZMSD04aOzhp2HCPWZTesMGcTYGw0+qpEwYkZTZsjZ7aEB0a4bm3bLR
         a4W89PfoGrIbGjOL5FMkOgyCV2Bdb+ZopVIiVd1u5BH7FlVgblCmmD7zkH2j8xnDYcSR
         bWk+GDEeKwBLOpBMxiB+2GhCeFYw8AIF3F+BT2APSzsUdOrp7XMFyzJxjwq17OMPTO8y
         43xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m25-v6si498090ejb.1.2018.10.28.11.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 11:34:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,437,1534802400"; 
   d="scan'208";a="353155373"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2018 19:34:50 +0100
Date: Sun, 28 Oct 2018 19:34:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kimberly Brown <kimbrownkd@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Arnaud Patard <arnaud.patard@rtp-net.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: xgifb: vb_setmode: adjust
 descendant indentation to right
In-Reply-To: <a85f97b40dabc0f2a978d0928af6bba05b9724e5.1540749179.git.kimbrownkd@gmail.com>
Message-ID: <alpine.DEB.2.21.1810281933180.2433@hadrien>
References: <cover.1540749179.git.kimbrownkd@gmail.com> <a85f97b40dabc0f2a978d0928af6bba05b9724e5.1540749179.git.kimbrownkd@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 28 Oct 2018, Kimberly Brown wrote:

> Adjust descendant indentation so that it is placed substantially to the
> right. This change improves code readability and complies with the
> Linux kernel coding style.
>
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 62b45a30e0f1..3782f8641bf2 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -654,7 +654,7 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
>  	xgifb_reg_and(pVBInfo->P3d4, 0x11, 0x7F); /* Unlock CR0~7 */
>  	if (ModeNo == 0x2E &&
>  	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
> -						      RES640x480x60))
> +								RES640x480x60))

The variable RefreshRateTableIndex is really long,and uses camel case,
which is also not the kernel style.  If there is a shorter version that
would be acceptable, then perhaps the value to the right of the == could
be on the same line, thus solving two problems at once.

julia

>  		index = 12;
>  	else if (ModeNo == 0x2E &&
>  		 (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a85f97b40dabc0f2a978d0928af6bba05b9724e5.1540749179.git.kimbrownkd%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

