X-GM-THRID: 6466839673682526208
X-Received: by 10.28.31.5 with SMTP id f5mr842111wmf.4.1505679278977;
        Sun, 17 Sep 2017 13:14:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.73 with SMTP id a70ls398747ljb.45.gmail; Sun, 17 Sep
 2017 13:14:37 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDuWCSz/pGrUqR9n4PIdDpQ/0OA+LX6O4mjASghMdGLFH5a0/EiT80SZ/SgYrLgWobQyWJ1
X-Received: by 10.25.83.131 with SMTP id h3mr663027lfl.30.1505679277484;
        Sun, 17 Sep 2017 13:14:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505679277; cv=none;
        d=google.com; s=arc-20160816;
        b=Pw6M78cJX9baLDeMQMsXHVybmAXHdSnFAIrSjmNAenj0qzOiKW6vnYrhEAUfMzuCsO
         W5MbCId8k0i7NjkoIAXgKNcjvPL/GjflUIXQWoxkkx6ejD28v8OnM2QIECbAQjDEk7Ej
         MVI2+ktkx0V76fVasa3BfdRldRQMAeZs1EZmuL1Q5yv6amQ0puQGNjdvrWvSoGGStVgr
         VrNDNJ5J6c3XSa9vipTjMIfx1195tbdGEPmk2IaX+oY+jSYxFcRtp62diq0b5ybfTu31
         V2GqU+Fmt2arM9JvmIYhXlx0o9Z5+E6UksS1NN/vW7uuVo464OpR+rzjdkfmsP364GIf
         ZTJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=eFpECl8nLIV/PZvLrfnBqJuconeoubk+/yGjkgKGJ9I=;
        b=mK3+byeFpgWms+smJWJg8I8LiTknBONNUuzKa8wXXobadrX3GpRGBa+KgsmHFTYJVl
         pmT8nOoEIskFTqXXF5m1UdATMEc0HtXJ4Dz1mOfiNR/iAls/MGIBXKViyjZUFs48xTb0
         6YMthObzXf2IbH6+pu0vVXrVacPKiDv2zTwjbFRPFdR+Ukd1y4+P/lFkMIz1O9TykhHi
         DbI5qLDs+AE43EIXk+ilb6Tc6mVFsx7o5RNwNuT+gTtZh01uXXojH26MdpqSsk2OlcVl
         CNP+6eFP2k5vBOlze4gt0MHXAvVWUAreIMTMkab3SjZClTrelZYUfeXm4y6JZHggzdvz
         hrag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [141.255.128.1])
        by gmr-mx.google.com with ESMTPS id c142si404894wmh.3.2017.09.17.13.14.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 13:14:37 -0700 (PDT)
Received-SPF: neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=141.255.128.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id B3CFEE685;
	Sun, 17 Sep 2017 22:14:37 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1MsYi45Hgwqp; Sun, 17 Sep 2017 22:14:33 +0200 (CEST)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id F3F9EE1AB;
	Sun, 17 Sep 2017 22:14:32 +0200 (CEST)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.89)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1dtfxX-0008Ph-N4; Sun, 17 Sep 2017 22:14:31 +0200
Date: Sun, 17 Sep 2017 22:14:31 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: speakup: remove NULL comparison
Message-ID: <20170917201431.gjx33qgjpr2mvqov@var.youpi.perso.aquilenet.fr>
References: <1505678435-30853-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505678435-30853-1-git-send-email-aastha.gupta4104@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Aastha Gupta, on lun. 18 sept. 2017 01:30:35 +0530, wrote:
> This was done using cocccinelle script:
> @@
> identifier arg;
> @@
> 
> -arg==NULL
> +!arg
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 938a0aed..e215d05 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -2096,7 +2096,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  	u_char shift_info, offset;
>  	int ret = 0;
>  
> -	if (synth == NULL)
> +	if (!synth)
>  		return 0;
>  
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
> -- 
> 2.7.4
> 

-- 
Samuel
"...Deep Hack Mode--that mysterious and frightening state of
consciousness where Mortal Users fear to tread."
(By Matt Welsh)

