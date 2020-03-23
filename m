X-GM-THRID: 6807521221589073920
X-Received: by 2002:adf:b641:: with SMTP id i1mr32709109wre.18.1585001668538;
        Mon, 23 Mar 2020 15:14:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls719019wmb.1.canary-gmail; Mon,
 23 Mar 2020 15:14:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtJzRYPIN5fJYjSYAuz2UiibltyAAcz76OkCV7Cc41LNmZR3TkkThG/2DWMuU9vIcHdxDwz
X-Received: by 2002:a1c:6146:: with SMTP id v67mr1731467wmb.78.1585001667311;
        Mon, 23 Mar 2020 15:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585001667; cv=none;
        d=google.com; s=arc-20160816;
        b=eZnvQqpCpox443C9yCrmjPEwmwQfAaVzbTc/KGKJtNFnItCS1NErwsDOczPXVSviLv
         MiROtnthdvEFgd8NE+UqtRpMQYoTN6PWAe9eowyO05kgh2gdquTey3jekaGegdAy4aT3
         igLwpqZVIzpOXhEiefKW2tXRJY3Mevbw25f/BtrK22krMRyP/mXw4138wwnvFAbF2FDs
         suZrdQttlkc3ecNd/sEIuJC9kLBkoZ3tLh5zKjrKQmWAxKqEbemda2G7yDrc5+szzEdM
         u/YRHTOZfhaNIPwWpEelhDuAxkKlstniEzxplfZpChp0o7ykOzdoDdQ6aZ9hNxwdaY1g
         WDyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=kXMHZRu+LNxQZ7nzdorofOgYMhLgPuXQjkwK8C4aFnA=;
        b=kN+jEAApbxy53g4lju+Y1oK4tHn43tenrHzDNh0A5lvHbNgIQihJM4tnqYSL7PWh07
         24q5m4kzuDCsj63BV4IYlxtb9OxbIvN5Bwr7LiNwDBj7LxqEEVPEiDGNYnIRtUqWLU/s
         THxtFlwFYrmG9ZvXGEzXvFc6I4QVId2HydelIcj0NZtrr59KtXjK/CQhBdpxM4UP0N/A
         2CksDWBlBeFAGapmBJ0rXv+L7zy3JLASHayVZyhzaGGC233hZp7bSjvXvqb3M3qVw46H
         kDfbU4b3fg2BijKOmeKCRt/XqfhizcLOboS+FUEKiZcR+KCkkIFMl1j5pT2vhh53crBz
         VT8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id l8si139413wrr.1.2020.03.23.15.14.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 15:14:27 -0700 (PDT)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 0FD18E65C;
	Mon, 23 Mar 2020 23:14:27 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CfU6PAl5Z0ev; Mon, 23 Mar 2020 23:14:25 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id C46CCE65A;
	Mon, 23 Mar 2020 23:14:25 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1jGVKy-005wH6-Tm; Mon, 23 Mar 2020 23:14:24 +0100
Date: Mon, 23 Mar 2020 23:14:24 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/3] Staging: speakup: Use sizeof(*var) in kmalloc().
Message-ID: <20200323221424.lzgti7qf3j5tnzcm@function>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
 <19494bdab5709693126e0c0ee14b179a3b601207.1584997290.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19494bdab5709693126e0c0ee14b179a3b601207.1584997290.git.jane.pnx9@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Sam Muhammed, le lun. 23 mars 2020 17:38:44 -0400, a ecrit:
> Modifying struct allocation in kmalloc() to match the
> coding standards.
> 
> Checkpatch.pl CHECK: Prefer kmalloc(sizeof(*ldisc_data)...)
> over kmalloc(sizeof(struct spk_ldisc_data)...)
> 
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> ---
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

