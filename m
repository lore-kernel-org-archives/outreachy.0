X-GM-THRID: 6666299764348289024
X-Received: by 2002:a17:906:1850:: with SMTP id w16mr2676919eje.7.1552122704463;
        Sat, 09 Mar 2019 01:11:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6a98:: with SMTP id p24ls2337135ejr.7.gmail; Sat, 09
 Mar 2019 01:11:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqy6hmhl0cmhIQkIUElsIlmP5XDdZN/PoXpbryVksye5au2BuydjbpK8k/DWG4beSZyJ4v+L
X-Received: by 2002:a17:906:9701:: with SMTP id k1mr2663513ejx.13.1552122703747;
        Sat, 09 Mar 2019 01:11:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552122703; cv=none;
        d=google.com; s=arc-20160816;
        b=mvNV/qyZKjTw1sFXjlAiV0KMyE7PmMmbgUHqyd3xwFgEN58BtLl6rwbxUZZsFeFfxB
         JiRFT/so5eoEb2ZfZ7W1q17b4J6+g9k0b7gCBukNgFRMlof+jz7MWl6AtX3gO/kaRRI0
         XTkM7Ek0FAtcf8MHctwUjobhR+hzs+S3L/ZhCk9IFqm9MGxhmCo1s/WjGzCpR2ZcXjLf
         85MkF9Y66f0guA/AIPP+uF6MJSIT2xNcrYQ7Vw4FWY/YqoDWD7r5GOpHoevjsIqRyzWt
         oqxFPh2wrKaVQNSRWwZpIk8uFRuiWM2Ud4ukgpIgx1k90rFmGJEpozWxg7hbR/pwbgCy
         9c+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=WthEzR7PIubCcx1BIMu8rQ9AKshJ0IYuQ6kT+b7zMFk=;
        b=BYVqgzaTieScqrP30K+CsgfpWrlUVJ/ZF7ncTOd/sHUC4kTYHNpQWOsTSG8x8Spp5d
         hZjP36ByycKECDdoYHq6+EQ2hW7TjzgHBwYMEvGaWzzsEij04+Eq1eyzkPiyPVzciFCV
         TPNr0e3VISXEOCaO1BjtnT5qVDzO7k9GkCRdQJkgZRRu8klekSzoPxpXRikDQcgua2UC
         YRJLAH8a1qhpvzfUd4Z/T1AsCRYqLm7iyCNgxmjVMlu6GFA6DacWUd0MUmGUbA3sxLTq
         OfAtJHCp7myspDgZMbaZdLb9/vZDzn45myIFZzQvWSde/4ovFPhbBJL4mkLYdcMbW71e
         2Bqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id h5si510694ejq.0.2019.03.09.01.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 01:11:43 -0800 (PST)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id A1536BDD4;
	Sat,  9 Mar 2019 10:11:40 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 581gfhWpkOEk; Sat,  9 Mar 2019 10:11:39 +0100 (CET)
Received: from function (dhcp-97-128.dsi-ext.ens-lyon.fr [140.77.97.128])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id A6843BDA9;
	Sat,  9 Mar 2019 10:11:39 +0100 (CET)
Received: from samy by function with local (Exim 4.92)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1h2Y0z-0000EJ-T9; Sat, 09 Mar 2019 10:11:33 +0100
Date: Sat, 9 Mar 2019 10:11:33 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: speakup: remove unnecessary assignment
 statement before return
Message-ID: <20190309091133.uyhjrmiipm2rahnu@function>
References: <20190309080721.26121-1-himadri18.07@gmail.com>
 <20190309090927.26925-1-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309090927.26925-1-himadri18.07@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Himadri Pandya, le sam. 09 mars 2019 14:39:27 +0530, a ecrit:
> Remove unnecessary assignment statement before return from function
> find_specifier_end. Issue found by Coccinelle.

Well, I have to say that for style I prefer the way it was: we apply
several functions to the input variable, before returning it.

> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
> 	- Remove "Coccinelle" from patch tag
> 
>  drivers/staging/speakup/i18n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ee240d36f947..a748eb8052d1 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);
>  }
>  
>  /*
> -- 
> 2.17.1
> 

