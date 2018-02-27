X-GM-THRID: 6527315033715638272
X-Received: by 10.28.150.137 with SMTP id y131mr1498093wmd.6.1519762765102;
        Tue, 27 Feb 2018 12:19:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.217.137 with SMTP id q131ls511068wmg.0.gmail; Tue, 27 Feb
 2018 12:19:23 -0800 (PST)
X-Google-Smtp-Source: AG47ELv9OtNwZqH2nio+Y6lIZ3hJw6PNCr86ZHDxWD6K/d7yrE8BgiNUx7JXV6PbV+k9cSb3g+JZ
X-Received: by 10.28.105.80 with SMTP id e77mr1158647wmc.26.1519762763081;
        Tue, 27 Feb 2018 12:19:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519762763; cv=none;
        d=google.com; s=arc-20160816;
        b=GNl9draUtuDnO1cY37YuL30x6w6hVWK5avVO6CSoT39OnP6GOiTolbQCtkUIpR7zM3
         tNM+/flEfu5dTmUxIvaNFvjCfWf4LGys+bKh7XqtjtEVLW166ki+WNMFfod3ewwljste
         4X2xufTH0TEExRzlXjw5ZQYEVlHhKWsUFjbaCA7JpkZ5rTzVvNWTxzG8HuN8mF6vSoZ4
         1YdlhQXDUHpGY3cy2jH4hQydaXx60VnJpqg9dQV07LTr9VCnjKO1d5dgiPHmkQqhaSMc
         7R6Vhf6sIDW82lWPGv/+/O78JNTRZMpOAUhNKIQTAPU0pN0FVuSytlLr4bZhvXq8bkGP
         PSyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=fLs3fCrniB9vgbFTQrCM2ImjWtduqZT9+bvlbjK8onU=;
        b=HXdnw0w5ny6ZPmrBIVRci0AdUU8PV/CoNSb29urL1wM193q2CN2OKty3IW1s7ljTBZ
         teTBCZ6EqRgDk4/FfnOorfCTxvHQBRb5L2Isdem2OAIMDYHpFHqVoKWEn2NrQhcXOHi7
         ynBjAKTijGXh2gY9lrt9MrthA9Fkitx1KFgjL9Q3MmGmL2sI4RUjb5mQvTPLjcAn12nw
         i6TcEH9GU5cznQsffDjEC3fPyRdzDvnSUTLXtBCVsKbX531pkg06hqXTMXsWR8VDr28H
         ci5FBF75Mx2moyv6yJKohy+U8WaXBSxRvvctx6QNC3g86pY0eD5FHsuksbU1QOzNQc/Z
         vQww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 200si25372wml.2.2018.02.27.12.19.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 12:19:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,402,1515452400"; 
   d="scan'208";a="256312618"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2018 21:19:21 +0100
Date: Tue, 27 Feb 2018 21:19:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org, 
    f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging:vc04_services:bcm2835-camera
 Added blank line after declaration
In-Reply-To: <1519758941-25173-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1802272117260.2575@hadrien>
References: <1519758941-25173-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Please check the subject line.  The first part, indicating the part of the
kernel that is changed should not be something that you made up but should
rather be what has been used previously for this file.  You can find that
using git log --onefile filename.

On Wed, 28 Feb 2018, Nishka Dasgupta wrote:

> Added blank line after declaration (line 1273). Issue found with checkpatch.
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Put the subject line and the commit message in the imperative.  So for the
commit message, it should be Add, rather than Added.

Put a blank line before the signed off by.

julia

> ---
>  drivers/staging/vc04_services/bcm2835-camera/controls.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> index 0736214..cff7b1e 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
> @@ -1270,6 +1270,7 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
>  				 * mismatches.
>  				 */
>  				int i;
> +
>  				mask = 1 << V4L2_SCENE_MODE_NONE;
>  				for (i = 0;
>  				     i < ARRAY_SIZE(scene_configs);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519758941-25173-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

