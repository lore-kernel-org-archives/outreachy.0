X-GM-THRID: 6470837981099851776
X-Received: by 10.28.131.14 with SMTP id f14mr380060wmd.25.1506640991659;
        Thu, 28 Sep 2017 16:23:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.144.209 with SMTP id i75ls1458170wri.12.gmail; Thu, 28 Sep
 2017 16:23:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDHgbKjF3K5PKeMxhCtRCIaTSNZjVDBHPyG3E9wh6Sfbp9qPuTuimZVB63vwV73a7La02Lm
X-Received: by 10.28.215.195 with SMTP id o186mr395766wmg.9.1506640991042;
        Thu, 28 Sep 2017 16:23:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506640991; cv=none;
        d=google.com; s=arc-20160816;
        b=ae0MmoIQnIRleghfGCS6f+zAT9+Q6LU9X7SkVYJ3FmooBFxklAQ8q9BWY3PkEZgyx/
         TRSo8qO8uz3QGOKu9kVwHreHWqx812sI1GcU0knJBgQidXGhADXn9i9FwWDlVWYezk5F
         xGR36MqTaPLgKCrAzk0UdwCd1DdWMQ+hq0qALMzli+7senp5fKZ9xxXfBeoAmoDzkO6j
         YN0H2vL95VRX+KTtxue7Xj6SkbUU8+jOO8a1nbY/sPQaCtMLzd+lCrBadMiKESCyPLBz
         eFx1beLPkAcSSOmxMn26E4nh/6cW+AaeRc7dLsWqj3hsCZ2RiR8jMmhq4guTK4d564Mz
         fIog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=GGQs6Tz3LemvLhgINRmgM+S63XzHHElf4IuAUOiqgBs=;
        b=z18fnmt0YVDvMvviRYsbRrnZ7nTGgGwjig2LsSb4qOAJeKkA6SGANddBh1daZfEw3E
         n6BohjTrdpsdFmEUxgsAXpPrT5feDshWjIhpH7Yb/88nU0JcSIkdeju1zq5tiAWi5uXL
         oghFNkd6P+dLA8CNgCJQQS4tq4deUm2jmpJ40Zqi65SCDzh3UcOJrmNLA5VC+7JYvpBP
         u7ZR2Hq8KYioFyv6egOnLO8wVgIX+HukIo6Pfji7v9VEetS7RN78GMlog0xuiXBfZ1IS
         ONE1XpBP4FLiD202uCgetZjjDuF0fU5+i/pi8m83pDYCYptlgpmJ4tb1JW+kwycZNQKz
         pWjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [141.255.128.1])
        by gmr-mx.google.com with ESMTPS id p200si330510wmg.4.2017.09.28.16.23.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 16:23:11 -0700 (PDT)
Received-SPF: neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=141.255.128.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 90717ECB7;
	Fri, 29 Sep 2017 01:23:11 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSLVXAY0StML; Fri, 29 Sep 2017 01:23:11 +0200 (CEST)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 04AA5ECB5;
	Fri, 29 Sep 2017 01:23:10 +0200 (CEST)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.89)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1dxi97-0003GI-Hx; Fri, 29 Sep 2017 01:23:09 +0200
Date: Fri, 29 Sep 2017 01:23:09 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: outreachy-kernel@googlegroups.com, speakup@linux-speakup.org,
	chris@the-brannons.com, w.d.hubbs@gmail.com, kirk@reisers.ca
Subject: Re: [PATCH] Staging: speakup: Add comment for spinlock definition
Message-ID: <20170928232309.m2p5x57awue4ipdt@var.youpi.perso.aquilenet.fr>
References: <20170928143602.GA15962@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170928143602.GA15962@manoharreddy>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Hello,

Keerthi Reddy, on jeu. 28 sept. 2017 20:06:02 +0530, wrote:
> Its good practice to comment the usage of spinlock variable.

Yes, but

> @@ -246,7 +246,7 @@ static u_long last_spk_jiffy;
>  
>  struct st_spk_t *speakup_console[MAX_NR_CONSOLES];
>  
> -DEFINE_MUTEX(spk_mutex);
> +DEFINE_MUTEX(spk_mutex); /* Spinlock for synth_release() */

This is far from properly describing its role :)

See the use in all other files, this mutex is meant to lock the whole
speakup screen reader.

Samuel

