X-GM-THRID: 6807521221589073920
X-Received: by 2002:adf:dd01:: with SMTP id a1mr23839945wrm.153.1585001625997;
        Mon, 23 Mar 2020 15:13:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls721727wmc.0.gmail; Mon, 23 Mar
 2020 15:13:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsZIeoJU7Spzi5diuSH7diU76OYhc1Wa/hZLj3eDm7g2W0vg6kMuF3gzqy399YCfmHgvFGh
X-Received: by 2002:a1c:8097:: with SMTP id b145mr1675920wmd.159.1585001624653;
        Mon, 23 Mar 2020 15:13:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585001624; cv=none;
        d=google.com; s=arc-20160816;
        b=tILP5+YlteQ86h/GIr+KojdBlsa1bInnD7cugziFBTvM4o0JiCq0R248DaovH7OmXa
         VwUZCdsBhlDXrotlYZBqN7qE3wtACVLV4JDEBXR0lJKrDZ0EkfZYh4UNGGIoguZaLI+c
         V/Ehfo62kkMMDvVTsNSh9PdUG+GkPWYq4LUc5IIawEAaDrISxZmDj+SJM2c/GJsXWrnW
         EcRCA5i3Fg1i7UI/btg/YwwVzpciaxK4bofL9fU+qBUu6WSq6cAxSUzZu1SegwzHVsVx
         Qo/3zIzeOPxZFRah/Tc7moYvdrZcysl9En2Y9+kv57kD9M8bjgTS1D+AUkGsnCzYirta
         Okkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=yxDRMMBmP2L4I23/DbUZsK2vvgf2sMX86zT5xZn5/Gw=;
        b=zsQ0Tokn1OCwxosOSobiyXpqvCRt4IzT9BnrdnDWfiGpYwg0OIfxzzVy3l+J+R7FHE
         5vFFEq1ody+TOE9Vjwm0aIlpbtjehgvDnXYk7dRaL6EKHSEmrw41eEEN1qB42DvrctCb
         Eh5ssvhgBhMXFBqYLUNMGVUodzNf7FVfYpg/6QyBZinr1AXqR7HklydNhH6DI8XP/khN
         gEj5HvhVgu3dxBJVp415CF2UyBTB2CaUq7f+fQAEAbSYKf3mZUTSybOPIc2vFNxA1RTM
         mqo+1RnZLMifmj4sQCeWsyHKdfuLneh177+nIM9YZXYo2FpXCRL0CqsfcaTXUymsthyV
         Dwxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id l16si55178wmg.1.2020.03.23.15.13.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 15:13:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id CB9A3E659;
	Mon, 23 Mar 2020 23:13:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QffHzt29how8; Mon, 23 Mar 2020 23:13:42 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id C5D9CE63A;
	Mon, 23 Mar 2020 23:13:42 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1jGVKI-005wF1-2Q; Mon, 23 Mar 2020 23:13:42 +0100
Date: Mon, 23 Mar 2020 23:13:42 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/3] Staging: speakup: Avoid multiple assignments.
Message-ID: <20200323221342.pdwwo55nu73kgcpl@function>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
 <b92dd931a07afcd2bcac397387130ffdc3c46223.1584997290.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b92dd931a07afcd2bcac397387130ffdc3c46223.1584997290.git.jane.pnx9@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Hello,

Sam Muhammed, le lun. 23 mars 2020 17:38:43 -0400, a ecrit:
> Modify the code to avoid multiple assignments by just
> doing the assignment in two steps.

The original version of the code is considered easier to read.
Yes, the tools say multiple assignments should be avoided, but that's
not a strict rule :)

> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 02471d932d71..6efa0b245bef 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -263,9 +263,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
> 
>  static void speakup_date(struct vc_data *vc)
>  {
> -	spk_x = spk_cx = vc->vc_x;
> -	spk_y = spk_cy = vc->vc_y;
> -	spk_pos = spk_cp = vc->vc_pos;
> +	spk_cx = vc->vc_x;
> +	spk_x = spk_cx;
> +	spk_cy = vc->vc_y;
> +	spk_y = spk_cy;
> +	spk_cp = vc->vc_pos;
> +	spk_pos = spk_cp;
>  	spk_old_attr = spk_attr;
>  	spk_attr = get_attributes(vc, (u_short *)spk_pos);
>  }
> @@ -1672,9 +1675,12 @@ static int speak_highlight(struct vc_data *vc)
>  		spk_do_flush();
>  		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
>  			    speakup_console[vc_num]->ht.highsize[hc]);
> -		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> -		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
> -		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
> +		spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> +		spk_pos = spk_cp;
> +		spk_cx = speakup_console[vc_num]->ht.rx[hc];
> +		spk_x = spk_cx;
> +		spk_cy = speakup_console[vc_num]->ht.ry[hc];
> +		spk_y = spk_cy;
>  		return 1;
>  	}
>  	return 0;
> ---
> 2.20.1
> 

