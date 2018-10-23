X-GM-THRID: 6615312602732953600
X-Received: by 2002:a1c:188:: with SMTP id 130-v6mr1984339wmb.6.1540273404135;
        Mon, 22 Oct 2018 22:43:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8d95:: with SMTP id p143-v6ls438551wmd.3.canary-gmail;
 Mon, 22 Oct 2018 22:43:23 -0700 (PDT)
X-Google-Smtp-Source: ACcGV609sQEm1+YZvXVATJpH2oP/ux5pzoruwSthGnGi81AK0X8Si+AZYS8u0ySoNfF6I1zLBh0P
X-Received: by 2002:a1c:9655:: with SMTP id y82-v6mr2038921wmd.3.1540273403299;
        Mon, 22 Oct 2018 22:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540273403; cv=none;
        d=google.com; s=arc-20160816;
        b=UYpizj+XF2CJCkpkrT3FzzaLp4RMctBErEo+qd8Yx73yi+//RIgUGlKVNZ7ENcWD5b
         wQZf5DqFoVkJRJjLk7JXXeCRPodfA/DSsKHC2eGu7vl2wvneK9O67yn3QolFHbDweFdn
         Vk8WvkjA6aDt+HrFU3ljtzeUZiPWA2jui1cPD3NrEANp7A/rUujKOmVilRqaHPLmnF56
         +RpL+8iJwO7ShgRS+8s3iFanHY+k5/9Va2PuJZYbU6Dfe1GsOcwv4sE2NbNT0nAWhmnn
         V7Zt+E+kgzpPLh/IopHpjZb04XlzNQdFPB8EYiMU4V7CUtdx2mCeIAMKEy2PxS9+gFvC
         Dj/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9Bbw95HrQOTw2bONQmqz6P6tOaZ1A/CgHVcIe4nAo4s=;
        b=vwWoLkv4UY3UTFPiM6Ls4bmjhLDhsvoQPw/dC7Tu3c7ozN5bf8lXHtvxjbUrVdXrhf
         6lDtVoR74AwY0OsIWQBrTkdepqr5zBWsBbaTyfaY7CnfF6/THGMEUbPStlhy3IBVKf3I
         Yb5NNl7GEOEyIZ4KFIZCiPvKA2NwJInhddsbkx5WlHRmS+dg0bhVi9wrFUTaHbl7dLrR
         L5FgAIW4Hy3CZp1FuQ7T1YepJzf2k/etsIMwkPDL02lkMNNTUhxVCglG6NMzG9tXZnS6
         3QtxnTGs/8r6H/incJbgWz+g/RthHs373zVZvkbtauFiPu4yKsCz5yxRwvLsMgqM0KIs
         ghDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h188-v6si14268wmg.2.2018.10.22.22.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 22:43:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,414,1534802400"; 
   d="scan'208";a="283000269"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Oct 2018 07:43:22 +0200
Date: Tue, 23 Oct 2018 06:43:21 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Hans de Goede <hdegoede@redhat.com>, 
    Michael Thayer <michael.thayer@oracle.com>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vboxvideo: Removed unnecessary
 parentheses
In-Reply-To: <20181022223126.smnsopiu4cavq6zh@smtp.gmail.com>
Message-ID: <alpine.DEB.2.21.1810230640320.2343@hadrien>
References: <20181022223126.smnsopiu4cavq6zh@smtp.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 22 Oct 2018, Shayenne da Luz Moura wrote:

> This patch fixes the checkpatch.pl check:
>
> vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
> crtc->x'
> vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].y2 <
> crtc->y'

Please use the imperative, in the subject line and in the patch.  Also,
try to say something other than "fixes" about what you do, which is not
very descriptive.  Say what you actually did and why, eg remove unneeded
parentheses around the arguments of || to reduce clutter.

It is useful to mention that the change was suggested by checkpatch.  It
is not essential to copy the whole checkpatch message, or at least not all
of them.

thanks,
julia

>
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> ---
>  drivers/staging/vboxvideo/vbox_main.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vboxvideo/vbox_main.c b/drivers/staging/vboxvideo/vbox_main.c
> index 429f6a453619..10a862674789 100644
> --- a/drivers/staging/vboxvideo/vbox_main.c
> +++ b/drivers/staging/vboxvideo/vbox_main.c
> @@ -116,10 +116,10 @@ void vbox_framebuffer_dirty_rectangles(struct drm_framebuffer *fb,
>  			struct vbva_cmd_hdr cmd_hdr;
>  			unsigned int crtc_id = to_vbox_crtc(crtc)->crtc_id;
>
> -			if ((rects[i].x1 > crtc->x + crtc->hwmode.hdisplay) ||
> -			    (rects[i].y1 > crtc->y + crtc->hwmode.vdisplay) ||
> -			    (rects[i].x2 < crtc->x) ||
> -			    (rects[i].y2 < crtc->y))
> +			if (rects[i].x1 > crtc->x + crtc->hwmode.hdisplay ||
> +			    rects[i].y1 > crtc->y + crtc->hwmode.vdisplay ||
> +			    rects[i].x2 < crtc->x ||
> +			    rects[i].y2 < crtc->y)
>  				continue;
>
>  			cmd_hdr.x = (s16)rects[i].x1;
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181022223126.smnsopiu4cavq6zh%40smtp.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

