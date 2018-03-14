X-GM-THRID: 6532867526079021056
X-Received: by 10.80.202.69 with SMTP id e5mr1756949edi.9.1521051951308;
        Wed, 14 Mar 2018 11:25:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.153.129 with SMTP id m1ls1275519edb.8.gmail; Wed, 14 Mar
 2018 11:25:49 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsd3HPOPr5WOVhB7RbyzduMXGJ/7sHIA4o/0VA4x9UA5epChbvlo7oqOtQWHM93i8q28vR/
X-Received: by 10.80.202.69 with SMTP id e5mr1756933edi.9.1521051949853;
        Wed, 14 Mar 2018 11:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521051949; cv=none;
        d=google.com; s=arc-20160816;
        b=bhbC5JG11W2GPKJ8GCGXq15FZjl8hmk+J0A7dK26D/99Iro08fihhcjqzZiyBfKNs2
         aEAQZ0EZaVoiIdI9KIjhnKYF75X3zSCVYCmtj1kejfr2Us8jwYCljJndGCLsbrvi/2rI
         YoMWTJz6zjNiwERp57oLLvQzqE1PC82rqqqsgJPYuQBIBGhzhtPFAoi2BXaSbmUQJPZj
         hqlgWbwCbK72jhdiOFLlrVF5kt0fSf6ouFp2gPayHJ0+w3dXnYX5lMRufgbIqEfzPzum
         FmmiIKxhG3LZrf/egNLuk6Qu99r26ZwLnDLw9MC8c7Mnr5UrIESWyhY90Fefba5+zudn
         gcfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=K+d2nOkfihLzcKsfnV/6Fvr0yO4X0sXB1JAdDLZ5buY=;
        b=PQE7ZGTHmYIHGCGkO+9tV7V7AtyDye9C5/CsewKN4QwBcwckIu4tgqG0ulhqrDdTBj
         SChEPn+SlJ5gPymOWdU4keea+e/JrTUNosZcZKrzJWunkpb4S0vcX2a84ZyVpKFSI3MJ
         gZYoj2NtBvD0w7iZRI+3/h3rRxDOIK5iXuktltBnxPTRyO+3j/9tMRWEFjBcHXl8H18B
         tzisiNVer3WZPmSSWwPyl5gVoIXKXg1k0EykOxH9ESVH/s2TdzT6xJGeI0+V4MDaNqN5
         0sOww0OSoI6r968B7N942/BwCLue3u9YWHmzsSwiqX3DaE0f+GzqPsw9+EHWIYJN2z6P
         ChxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id a33si39860ede.3.2018.03.14.11.25.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Mar 2018 11:25:49 -0700 (PDT)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id D493911A69;
	Wed, 14 Mar 2018 19:25:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7kray1NRWc7; Wed, 14 Mar 2018 19:25:47 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (static-176-158-111-12.ftth.abo.bbox.fr [176.158.111.12])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 7B31E113CC;
	Wed, 14 Mar 2018 19:25:47 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ewB5u-0001xT-AI; Wed, 14 Mar 2018 19:25:46 +0100
Date: Wed, 14 Mar 2018 19:25:46 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: Add blank line after declaration
Message-ID: <20180314182546.kzxnjtigszolbiwp@var.youpi.perso.aquilenet.fr>
References: <1521051730-25736-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1521051730-25736-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Nishka Dasgupta, on mer. 14 mars 2018 18:22:10 +0000, wrote:
> Add blank line after declaration. Issue found with checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

So hard a review :)

> ---
>  drivers/staging/speakup/spk_ttyio.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
> index ade03b0..eac63aa 100644
> --- a/drivers/staging/speakup/spk_ttyio.c
> +++ b/drivers/staging/speakup/spk_ttyio.c
> @@ -226,6 +226,7 @@ static int spk_ttyio_out(struct spk_synth *in_synth, const char ch)
>  static int spk_ttyio_out_unicode(struct spk_synth *in_synth, u16 ch)
>  {
>  	int ret;
> +
>  	if (ch < 0x80)
>  		ret = spk_ttyio_out(in_synth, ch);
>  	else if (ch < 0x800) {
> -- 
> 2.7.4
> 

-- 
Samuel
«Tiens, quand j'aurai un peu de temps et une partition libre, je crois
 que je vais essayer de remplacer mes scripts de démarrage par des
 programmes Windows lancés via Wine et binfmt_misc :-)»
-+- AGV in Guide du linuxien pervers - "J'sais pas quoi faire... (air connu)"

