X-GM-THRID: 6526266190940078080
X-Received: by 10.46.67.147 with SMTP id z19mr375357lje.24.1519514835585;
        Sat, 24 Feb 2018 15:27:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.85 with SMTP id x21ls962619ljd.2.gmail; Sat, 24 Feb 2018
 15:27:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELvpOhwYuow7CWUzEygbyp3gLziwfItVgX8PAGtX+M4ZrHYq4m1E4G6nOsaPIAqsceNRw5t6
X-Received: by 10.46.17.17 with SMTP id f17mr380127lje.29.1519514834365;
        Sat, 24 Feb 2018 15:27:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519514834; cv=none;
        d=google.com; s=arc-20160816;
        b=t7r0cea7afnfewtOJxytBWVJUB61q/tlFfCQ3IVYdRlG104wQoFOL0KdH3ZnCLgpcV
         O9BrQUW7KwuviavIJNEZDw/tIgr/XPIuFB3GyNchZUfrp4jNDmsoYSq1A9VBchylIJ0R
         mQ+4Em0pd4Bimcb3hL5PozEfTzZoL3kAIe1w24k/YEjHWClK9NgjYv732ryT8lNIZV4y
         kEi1dFDaBDLFtbS9cc2brXqADivulVrtGgRmxAPsIwa2ydaoK0pjpSl8Xi7LpBpdM2xT
         chGdXzv+sc1lrw665WmVrisY52XMLoPheibrts7VQ2X25BuoeVxLMKGavNoy3ETZPrWH
         WXTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=fkW8sK6U9p8/l6Ssl+DfEnijutfAUELiyj6nbUJaQYE=;
        b=iOJ59HReBctPzIyZMUGu3qfaYvmCSqtnumdw+WejGYFeHHeunJ4t7DVqUtwqkszm58
         fVHwVR4UelkFfbEmkBcqPoJgcZlfrwfsDyLmwn+H4oYmmOPt97318xnlsVKp7QH1UjTZ
         nO7BzXdkyG4qkkKMYkpzGGP2MekAM8JUgR4ocUI73kyqSHkiTPU6PDgC8YA3+n9PsYIm
         i5bnTbOpqlihLWZLp7kV+J8JBQymGrs0U2H3xoXBcE0JV6uYetPXQvjW0KzS+1ze7q5j
         +HFrljVtVAVJbq4AWJIRLVmKxpAs5hxfsLJUgESjlfK57RSr3LbPTKnPJOrbUeRbjRDy
         ikEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id u16si238787lfc.3.2018.02.24.15.27.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 15:27:13 -0800 (PST)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id B881A10C92;
	Sun, 25 Feb 2018 00:27:12 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nDGPG9qPFeaC; Sun, 25 Feb 2018 00:26:49 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (dhcp-97-217.dsi-ext.ens-lyon.fr [140.77.97.217])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 3778210800;
	Sun, 25 Feb 2018 00:26:49 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1epjDM-0003Dq-V2; Sun, 25 Feb 2018 00:26:48 +0100
Date: Sun, 25 Feb 2018 00:26:48 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
Cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: add braces around else statement
Message-ID: <20180224232648.x75wtvvpja77n3d5@var.youpi.perso.aquilenet.fr>
References: <1519514749-12702-1-git-send-email-santhameena13@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1519514749-12702-1-git-send-email-santhameena13@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Santha Meena Ramamoorthy, on sam. 24 févr. 2018 15:25:49 -0800, wrote:
> Add braces {} around else statement to conform to the Linux kernel
> coding style. Issue found using checkpatch.
> 
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

Acked-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index cf12590..d7cdec3 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -449,8 +449,9 @@ static void speak_char(u16 ch)
>  		if (*cp == '^') {
>  			cp++;
>  			synth_printf(" %s%s ", spk_msg_get(MSG_CTRL), cp);
> -		} else
> +		} else {
>  			synth_printf(" %s ", cp);
> +		}
>  	}
>  }
>  
> @@ -561,7 +562,7 @@ static u_long get_word(struct vc_data *vc)
>  		   get_char(vc, (u_short *)&tmp_pos + 1, &temp) > SPACE) {
>  		tmp_pos += 2;
>  		tmpx++;
> -	} else
> +	} else {
>  		while (tmpx > 0) {
>  			ch = get_char(vc, (u_short *)tmp_pos - 1, &temp);
>  			if ((ch == SPACE || ch == 0 ||
> @@ -571,6 +572,7 @@ static u_long get_word(struct vc_data *vc)
>  			tmp_pos -= 2;
>  			tmpx--;
>  		}
> +	}
>  	attr_ch = get_char(vc, (u_short *)tmp_pos, &spk_attr);
>  	buf[cnt++] = attr_ch;
>  	while (tmpx < vc->vc_cols - 1) {
> -- 
> 2.7.4
> 

-- 
Samuel
<L> pour moi le seul qui est autorisé à fasciser, c moi :-)

