X-GM-THRID: 6662711106976350208
X-Received: by 2002:a24:7488:: with SMTP id o130mr45958itc.17.1551284918928;
        Wed, 27 Feb 2019 08:28:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b14:: with SMTP id c20ls739321jaa.1.gmail; Wed, 27 Feb
 2019 08:28:38 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZWM1m8nhdiYtSe3WxGO4tqa6AS/CE1VgJ2NSfsCgxzTGVh2IV3sn4btg54JXMt8pWPT294
X-Received: by 2002:a02:18c9:: with SMTP id 70mr1795821jar.20.1551284917974;
        Wed, 27 Feb 2019 08:28:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551284917; cv=none;
        d=google.com; s=arc-20160816;
        b=Wp7dbjBxzWZvywpcmQoNytTLfM9OKC1s+875RruxzSXJl7pq4hLEFXooGA1cxmmILs
         G4Z9CNQPstgVdD5mIr7BijFG31QSeDxqx4okV0oCn0gBDYHgiBowQMSpVuBLQ5l9oDV6
         0lU6LtyPIvYRYEuiItkJxs4YKJTz6vv+qCrqpkqJwh/pwDndS5MmOSP6+9dJOyRPlnBC
         PKFFayRfCyo/nC0LOWSt8MTQsqMKyeTDYWvoxw5xOYh6RjpW3ryerVUL+1ulD7O6ea7s
         JgsRWqGAqJhXs/MHG5wMLfa5sseu9UJ/zpduPXgVe8/z0ZcutELQypC4CNF2TK5JOBEq
         0Ohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5e+N5LKHE3NLPFsTGv/WKLGo0e0Oy2OAZ31ZmT13ygM=;
        b=Xi85gOHFoJOJEbU4gcd/QETRr5eROIVT+6JdTAh6Pu8Cn4aQGE+RUgFcC0nosbe7eP
         s3i7imqnFe7Hb1l7rhZ/1Vr09CwENAf8I72z4Rr73GRyfwgRQ+lXKUWl46LOewmdde63
         S88Y2/wEioVovROBijvKEo0wdGt/EfJ0A4gEJfkmu3jpPO+J9kHNTkdmhYppyj+fMCvw
         +wmfZd2+8OMCuZ8LJgzwF6amcEJs945g8wUZ52UHqt6iPMDqH5Fky2ubg5cmTO93n/FV
         zx3lE2uhCY2ahQtfhXXL8zo5kZt3xm4etbYsryMf+A7rVPfrmdXMLSu2kJ46IlArAWgZ
         UM8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bbMcv1G+;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x76si69383itb.1.2019.02.27.08.28.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 08:28:37 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bbMcv1G+;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9A84B2184A;
	Wed, 27 Feb 2019 16:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551284917;
	bh=HpR1Mmg/dA29YYzZ5VXFOQELzKhkCeIoEcYzWk/Osww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bbMcv1G+4wN83+WOJW14A2xM+9kr0WBdBMEQe0dFyrvyo2PGnK9FSvm1PvoEMFgxt
	 xj2ymeLhfBXoxDtOPVFxdz9TpK22ZZa5U/si79ps3Tev+sYRBmH3unBeI23C7O5Q2M
	 jLqmOdV2/xTZzROzjXTWeLnijy8Ll2TXSja1Rkm4=
Date: Wed, 27 Feb 2019 17:28:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Alignment of
 static function declaration
Message-ID: <20190227162834.GC23972@kroah.com>
References: <20190227160148.21914-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227160148.21914-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 27, 2019 at 10:01:48AM -0600, Madhumitha Prabakaran wrote:
> Align function arguments and function return type to improve
> readability.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes in v3
> - Included driver name in subject line.
> 
> Changes in v2
> - Improved alignment of function declaration
> - Modified subject line and commit log
> ---
>  drivers/staging/vt6655/card.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 229137f29690..8d0182f5725c 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -62,7 +62,7 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
>  
>  static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
>  				       unsigned char *pbyTxRate,
> -				       unsigned char *pbyRsvTime)
> +				       unsigned char *pbyRsvTime);

The patch does not do what your changelog text says it is doing :(

