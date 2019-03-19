X-GM-THRID: 6670188410102087680
X-Received: by 2002:a50:a499:: with SMTP id w25mr3016381edb.3.1553033121025;
        Tue, 19 Mar 2019 15:05:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:355a:: with SMTP id s26ls60520eja.0.gmail; Tue, 19
 Mar 2019 15:05:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzwm172uhi5R03OLTk2prwn2PVBmT3QbXddCBs4SJGkNqtL9HwFEiUWYmzreSZZ+q6AyM+M
X-Received: by 2002:a17:906:d541:: with SMTP id gk1mr2711021ejb.0.1553033120167;
        Tue, 19 Mar 2019 15:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553033120; cv=none;
        d=google.com; s=arc-20160816;
        b=um9BV+rtkDbmcI25tkqJM1/fLQ3u6AqPTMcgPI1WkAMj4oZJlr+OOpR4/nirqNZO+y
         BfkGcMQkzDQJPg6d46UvtTKV5PvR4l2+coYsqteTw5jDy5R12fVyV4V4lWwyVGySlKEl
         +V50mNgeF0XnvfUN38kSmkBL4KtHU+LzGYucAGQeSO2rbfJTYEV+XGh/KrTCv47PvGIv
         GfRzX6oSUmv4Lc/ysf8Xrv7NoWscdsuQnTZlWEf4xPT7lOzSybQ4efgCBW1qulYMOf4L
         FVek/Rcf/puKZrHdYLyUQBKQDSMx7zYqh7oS1+cQ+ElLI0A3AC6C9ts3oNMCArmDTGsG
         9/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=rbxkCURZ7pWbFUyG1Emv/ScecdcJdw14MrBLK3JGj0Y=;
        b=PxK/xiWUsN4b/Rj0SaOrEgKCryYUwbNtrGlypOP/rymSUuxprW2sR+vAXmbMhv1q7Q
         qcZ8ZT9bLoSS84hfOfP049Q5xnHHJrUyDAvgAqnq3S+6OPRGvSnVZGTK+TRqtrMVIJIL
         xWMgzk5YLujtlByVCR1Kgt4vGkZTgaswIpPBFq0rsM+ZKSsH/y4E/wfdZDtQ791B6TDs
         ksofzp5hQTVXsVNJDc/JVoFhc/bNltkQzptGJv0x/1PLm+tsPlcG8x1bTqPQRCpKahZe
         cyXAiLuBUBOoxWGWveyCLkd40KOtM2XFB97O/UXjLuXTtlOV4fcGia1Z8BQkJQ0/2ErO
         cJLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id p25si12530eju.1.2019.03.19.15.05.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 15:05:20 -0700 (PDT)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id E5FC5F4B9;
	Tue, 19 Mar 2019 23:05:18 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d5jiwC-CFfCc; Tue, 19 Mar 2019 23:05:18 +0100 (CET)
Received: from function (105.251.129.77.rev.sfr.net [77.129.251.105])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 3F6D8712;
	Tue, 19 Mar 2019 23:05:18 +0100 (CET)
Received: from samy by function with local (Exim 4.92)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1h6MrF-0001Ln-1t; Tue, 19 Mar 2019 23:05:17 +0100
Date: Tue, 19 Mar 2019 23:05:17 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: Remove return variable
Message-ID: <20190319220517.zgmdsz6z6objtd6c@function>
References: <20190319193722.9561-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190319193722.9561-1-nishka.dasgupta@yahoo.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Nishka Dasgupta, le mer. 20 mars 2019 01:07:22 +0530, a ecrit:
> Remove return variable and return the required value directly. Issue
> suggested by Coccinelle using ret.cocci.

Well, I have to say that for style I prefer the way it was: we apply
several functions to the input variable, before returning it.

> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
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
> 2.19.1
> 

-- 
Samuel
<s> je la connaissais pas celle la : "make: Entering an unknown directory"
 -+- #ens-mim -+-

