X-GM-THRID: 6669200248940789760
X-Received: by 2002:a24:3552:: with SMTP id k79mr3045401ita.18.1552823002863;
        Sun, 17 Mar 2019 04:43:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7dd3:: with SMTP id b202ls2679652itc.0.gmail; Sun, 17
 Mar 2019 04:43:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzX7XsQB3u8dKUFsGsD1KAmD3lx+NvxgYJHph8l+OE6xI/ziyAPha0DnMu/O/8gZv5XyCur
X-Received: by 2002:a05:660c:68d:: with SMTP id n13mr7068165itk.24.1552823002383;
        Sun, 17 Mar 2019 04:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552823002; cv=none;
        d=google.com; s=arc-20160816;
        b=TLYoE2aw5/TVaK4/+KRLBmWYvaI7ls4ig7Hgdkj9wtX5PiIFC7+CPuGVe/ipIy5sjr
         RNc4JRKOUMKr3UBHiH1LLYm3uxpOqtCZcP0g76URC8sC2iR8RQocs2egb7XjNXVcrP6n
         R7poWnfP9YxUS161qwEADuOht07Zdg8dId2kBfdjOKFsmGtf9KMmFPMIb7ckuBhftAEr
         r9FoymFye1z5PPubz+Oc+Na1m7Q10BB/YqcRivPYCrU74P3owRGqAf5Lk8ydHAT0Wy08
         XzV2DOnrQkY//TPPYA/fmnSUDCHy4LNbQj829T3Nnow2I+R3iwOthaPAJSgGXzHQ0GaF
         57Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Tt8A9Rzfr9ZJlkuvW5cRDBiRkmrzuK0/2z12yf6NJ5Q=;
        b=ZM9azZz3jSSg8AS3sesEeutuRWsW1Kw/C6JCphqtZxuEQl7tBDkxjYwADfjSWCNEZw
         hFxGb/7k/vQ+R40WM+wOI8E9AudzZ9QRQTmrWU2z9j6L+kbrE2LW+DcqeTVWc4IxmHoh
         cVj6VdazDcnyrIAhnG4T8BNis0PgkICtvEevdAsRbiYBbd7/kwD0IGxVIejjucPfQSMJ
         Wwz0tQEHV5IN3BHzmXDkUviXSh5L8kZ/0ay0XfPPAMAy5nG+AeGhatr3ATP76qjDz+my
         LX+pnCiOSlhjTIplCz3LS/PI4g/JMU1Gn77ndjKGn4OdZkOYJLU9HuUx9c5zSnk8xDLd
         hnPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pAkUwfwF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 65si722588itx.1.2019.03.17.04.43.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pAkUwfwF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 301D721019;
	Sun, 17 Mar 2019 11:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552823001;
	bh=ZgCu/hz7iINOlIQPiysvPCzQx9Nr8+0rd5EUJ3BaDkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pAkUwfwFK46RKj9uQ9JsBJs2tUWYx3FpYobp4VzQZruV2WbTWnhr396kWJgsAc2xr
	 W3+FWUgC9a90MwGsaNhAgOiu9nykCTP4Jw4b2UYNxucUkQ3y973UFq17p10u7f+3qy
	 G1xOP1PhYRZNUB+CwyAAu42qPZ/5cU42zPXs2AYc=
Date: Sun, 17 Mar 2019 12:43:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: speakup: fix line over 80 characters.
Message-ID: <20190317114319.GE3160@kroah.com>
References: <20190317112857.18220-1-jbi.octave@gmail.com>
 <20190317112857.18220-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317112857.18220-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 11:28:57AM +0000, Jules Irenge wrote:
> Fix coding style issues which solves checkpatch.pl warning:
>     "WARNING: line over 80 characters".
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 53c8793c382f..1c3b0a257fe5 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -788,7 +788,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  			continue;
>  		}
>  
> -		/* Do not replace with kstrtoul: here we need temp to be updated */
> +		/* Do not replace with kstrtoul: temp need to be updated */

You sent 2 patches that did different things, yet they had the same
subject line?

Also, again, the original is better.

thanks,

greg k-h

