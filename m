X-GM-THRID: 6669200248940789760
X-Received: by 2002:a25:1282:: with SMTP id 124mr6375496ybs.40.1552817680728;
        Sun, 17 Mar 2019 03:14:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls2942064ybb.4.gmail; Sun, 17 Mar
 2019 03:14:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw4xClmHy3GvvnsyXD/N99K0FOOSJTefyj9p/CI4gvTuKXyBUCrhKeX+RZQ8fry0RJfgMfg
X-Received: by 2002:a25:4042:: with SMTP id n63mr6778190yba.101.1552817679786;
        Sun, 17 Mar 2019 03:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552817679; cv=none;
        d=google.com; s=arc-20160816;
        b=Zr1BCoLGOBO2cWzrEuYYwKKG4KuT9ZSDaBXi3IoaNjDRkXt+NK9SeFzN18SIpsKJKo
         2PqfyfTMYxqifeawf3Lw19k+wpNU7/J9LBbHEPioB/nfsN7QSlGjyrb75RiFdTZlY0e2
         O6ASNm8Vcp90U2IzC4RKam10xlsq9h2Wu8ts4XHkoeos7+a5AlnQLe4uivaYJJwLurne
         Gbt23Ic4CKmyEjbgPvL4pKMQphs9Zz6MAgmLSs9r6roqM7rmQD1mnXagsIE0vp7rbUyh
         x0MLOUbBDb51+gQrBLrRa+icwDerTWCnC1ydxxQK8T9lxq++NTLok+cq5ZsR4g2afxv2
         ZaSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=baIGvfcRp6jOE+B3T5GshDmaqERK/OibeqVoVshID4Y=;
        b=bXEUEESRoNzBoLEwckhR/oRW/W5ltKMR+XzSHKzoZGsH/maSBtl9WtvQUanWmbnWFI
         t4PFDJqNvQSTscfkeUinOQXq4IMZQ6UoEUA/iX1YJotO205025UkFKFzJJvBvEf/2t/m
         PvvQjRjmo7Ezq4eYuKtpE80L60gzsH4mrKpPN5plzYjak9tFH2CLvslhO+x5oJcgyysQ
         TrfqrNHYH5x46jOxvO2ABQKWaXzVbu01nn53kdmaIRSAaZ2COo0LChciXXmKFC6chdVN
         2vUifkVezBC5eGRgeDhxel3L6Sis62W2eCRDSlwRq8/Pna4caWh+8gvVrwrq2XM1qj8Y
         grxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wcAblW4L;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k15si313965ybk.0.2019.03.17.03.14.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wcAblW4L;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 617B521019;
	Sun, 17 Mar 2019 10:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552817678;
	bh=j/CVYloCWztagwFFR3aAr4bU2twa07TPsKT/AmYkjHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wcAblW4L2aeI9fIfvYEJYV4E5jPfaxTNrSvwEA35GHjcskF9PRjxToDFIKK/rW0Jt
	 dDiXesQoT4SfL1bWkDq2L5vWu4/1nEufLc3kA1xSFTeAcvPwr6U65N2YUgasqpCW+r
	 d8jtCVu4N5bxwgwUqlLUtN5Q/VSnUttBZ3lh4IS8=
Date: Sun, 17 Mar 2019 11:14:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: fix line over 80 characters.
Message-ID: <20190317101435.GA20773@kroah.com>
References: <20190317033946.12585-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317033946.12585-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 03:39:46AM +0000, Jules Irenge wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
>     "WARNING: line over 80 characters".
> ---
>  drivers/staging/speakup/kobjects.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 2eb5af3debb3..abeab64899db 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>  
> -		/* Do not replace with kstrtoul: here we need temp to be updated */
> +/* Do not replace with kstrtoul: here we need temp to be updated */

No, never put code or comments this far to the left.  Instead, properly
line-wrap them.

thanks,

greg k-h

