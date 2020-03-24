X-GM-THRID: 6807521221589073920
X-Received: by 2002:a19:5e06:: with SMTP id s6mr15152911lfb.154.1585009558130;
        Mon, 23 Mar 2020 17:25:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:484d:: with SMTP id v74ls563282lfa.7.gmail; Mon, 23 Mar
 2020 17:25:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtBZtvLtmikhgUsZqlU1t2rmJtsZFTorgefhQBFWCbrXijlWDSaBcMSoWeQqEgK+TjtN+4W
X-Received: by 2002:a19:f015:: with SMTP id p21mr15052670lfc.10.1585009556663;
        Mon, 23 Mar 2020 17:25:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585009556; cv=none;
        d=google.com; s=arc-20160816;
        b=bCjLYsVEpGj51/RuEDEd1iRce2KfZ87aL2TIIRskZMqsHCzrrcW4p3nShQ1k1Ut/Mv
         5JNrdUPxfbsopsV0DlelnqhKWszop5a5k6OrGJM/g1BDrDTlgfAwezm7D3qwJmESGFc+
         B7Jz1987oqBCuRJ8BqiicGlSP2OYu7RTAcaAB9lhCFCod4910rZX49nbQn057HApxo6R
         xrVJnRDbLSa901bepQAAAeORWOh0dyyw+Rj5S0ZU57cOxjpjaZXbi8b8mljVVQscEFsn
         Av4JR/w79wH8lA46ncmYb1RxxE6amoYZjtU+FOrjFUyoVVdAhDDt1AHPu87YkdooiZ40
         3+wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=fFXl8CKEB51X/YMqfu1zIJHPoOki1rRo5YKoNTROqwk=;
        b=XfaPGjpV9f1dbkU/WHXsyEETeInkVYFtBR0r75wmEfsFekhArOfuKH5R/8LRGo2w2h
         AmveTlb2ZyijwiulwpX0NTUC/SV8/1ZIj5IdjGPqldO0Z9FrHhzyaJsJUpj/+hbPSFXX
         Zl56/wP/f8Zk1So8Fjyn0j6jmEyIoKf5OX+/fgK0rF2W/1kFLBqEizINbvinCAs/4kKY
         4EHg+6k7C484nDl/rLDMRN30yfwUmWAYF39Cl5L8ProjRXWhjEspVMlnB3dIW9xGOuVt
         rpGFan3g0hSHDtUN06IU3+8G9SmkY8sPemRjMjoeLMARENCGuj831/wvhBZBsunuWCAO
         8foQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id e4si649128ljn.1.2020.03.23.17.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:25:56 -0700 (PDT)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id A3190E689;
	Tue, 24 Mar 2020 01:25:55 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K1rC_orcxlPt; Tue, 24 Mar 2020 01:25:54 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 60F19CD02;
	Tue, 24 Mar 2020 01:25:54 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1jGXOC-006RfQ-RA; Tue, 24 Mar 2020 01:25:52 +0100
Date: Tue, 24 Mar 2020 01:25:52 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] Staging: speakup: Use sizeof(*var) in kmalloc().
Message-ID: <20200324002552.sq2zitqg7l65alz5@function>
References: <cover.1585006374.git.jane.pnx9@gmail.com>
 <19494bdab5709693126e0c0ee14b179a3b601207.1585006374.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <19494bdab5709693126e0c0ee14b179a3b601207.1585006374.git.jane.pnx9@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Sam Muhammed, le lun. 23 mars 2020 19:50:51 -0400, a ecrit:
> Modifying struct allocation in kmalloc() to match the
> coding standards.
> 
> Checkpatch.pl CHECK: Prefer kmalloc(sizeof(*ldisc_data)...)
> over kmalloc(sizeof(struct spk_ldisc_data)...)
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>

Since there was no change since last version in both patches, you can
already put my previous Reviewed-by tag for both.

> ---
> Changes in v2:
> - None.
> 
>  drivers/staging/speakup/spk_ttyio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
> index 5a9eff08cb96..9b95f77f9265 100644
> --- a/drivers/staging/speakup/spk_ttyio.c
> +++ b/drivers/staging/speakup/spk_ttyio.c
> @@ -51,7 +51,7 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
>  		return -EOPNOTSUPP;
>  	speakup_tty = tty;
> 
> -	ldisc_data = kmalloc(sizeof(struct spk_ldisc_data), GFP_KERNEL);
> +	ldisc_data = kmalloc(sizeof(*ldisc_data), GFP_KERNEL);
>  	if (!ldisc_data)
>  		return -ENOMEM;
> 
> ---
> 2.20.1
> 

-- 
Samuel
 > Voici mon problème, j'ai deux PCs relies par des cartes ethernet, 
 > configures avec le protocole PPP.
 -+- Romain in Guide du linuxien pervers - "Ils sont fous ces romains !" -+-

