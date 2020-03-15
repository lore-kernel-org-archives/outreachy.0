X-GM-THRID: 6804290192961175552
X-Received: by 2002:a5d:5488:: with SMTP id h8mr29350731wrv.387.1584289492441;
        Sun, 15 Mar 2020 09:24:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5233:: with SMTP id i19ls7879033wra.6.gmail; Sun, 15 Mar
 2020 09:24:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt5uHf/rXzLn/amM/VOY6a2cKC2n/7b+L3zfd9O7LirhyrBEzDv2LyJkVrrqQ6Sl0tvT1od
X-Received: by 2002:a5d:6a03:: with SMTP id m3mr31216196wru.275.1584289491084;
        Sun, 15 Mar 2020 09:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584289491; cv=none;
        d=google.com; s=arc-20160816;
        b=gtfjskITSRAdJ4J7ZxobEYC8evg2u7vexCNqYMrVaBQpNR00h9RBhHXlZAZRJJ4NJv
         2NcFxB4Pm9u3uC/nWMJDaATKx5/4/gdo2mK4rl0QTjNrKp+wNnaT3TigwUapkuda6uY/
         s1Jv5i6DX0UQd2rvp1LCWJ0ijM+MTaIMfWwAUd/Twx+tlcyebuvPLMe8F41JEONcQdVP
         E5eMhGAEOZMIFeq6FpLBNt2jWDX74ZjyYk7go6IY9dfLVW7+rAQeDtbQhMUeAzHfiPJX
         MIMAv5q4T3mhbDNWEIjd14zTW49z/xGWoUowAyvA5iEQarLTR2gHCd9SEYsxyy1RzDKG
         L4bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=5ZP9MKkzVMVHs2aqry/3TIgfYKz+3VHPWEmAfX51PiI=;
        b=MeSSIv/nswsYijUgWzuaNRojKIKRXrdTbm5x0z/HncXpUrP1zEru5cY/utV5OyWEkJ
         QVp5QeDLGOtvuifxrTh0V5kjiu7PlgnwjxHv+a1wht5z4ckGbtn2fkBhyb+Th7eB0+1c
         mAl6+xagLgnd4BkDlSqKk8CN8WduRVR0jUX1gfmkalD0AewSWybXSDLq5KQ0cwoDeJni
         TuFhP3Sf72wAbqYp3LoSqlhxAhdo5PZHjM9On3PyiDoVoLQEI44Oe9lPBJTVpVyi4Pqp
         +qCESBsXW1CEMyrkXLgSVckT8TPHFwVDuxwgn2CNmAJy6sW+zIIpXowHKutr9MHHAn36
         dPEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id i16si137355wmd.4.2020.03.15.09.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 09:24:50 -0700 (PDT)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 5B22EDEF3;
	Sun, 15 Mar 2020 17:24:50 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E95q7nyjkrvJ; Sun, 15 Mar 2020 17:24:47 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id D7B4ADEF2;
	Sun, 15 Mar 2020 17:24:47 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1jDW4E-000R8b-KV; Sun, 15 Mar 2020 17:24:46 +0100
Date: Sun, 15 Mar 2020 17:24:46 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: speakup: main: switch multiple assignment for
 one assignment per line
Message-ID: <20200315162446.evxlgilfye35eosq@function>
References: <20200315044051.13921-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200315044051.13921-1-lu@pplo.net>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Hello,

Lourdes Pedrajas, le dim. 15 mars 2020 05:40:51 +0100, a ecrit:
> One assignment per line is preferred, instead of multiple assignments.
> To prevent possible undefined behavior.

Here the behavior is completely defined, but one assignment per line
makes it more readable.

> Issue found with checkpath.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/speakup/main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 488f2539aa9a..d363009863e3 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -2117,7 +2117,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  			spk_keydown = 0;
>  			goto out;
>  		}
> -		value = spk_lastkey = pad_chars[value];
> +		spk_lastkey = pad_chars[value];
> +		value = pad_chars[value];

Please rather use

		value = pad_chars[value];
		spk_lastkey = value

To make it clear that it's the same value which is used, and to have the
spk_something assignment next to the other spk_something assignments.

>  		spk_keydown++;
>  		spk_parked &= 0xfe;
>  		goto no_map;
> -- 
> 2.17.1
> 

