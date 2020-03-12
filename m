X-GM-THRID: 6803023005726277632
X-Received: by 2002:a17:902:b710:: with SMTP id d16mr5434433pls.293.1584001131014;
        Thu, 12 Mar 2020 01:18:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls2099449pfg.9.gmail; Thu, 12 Mar
 2020 01:18:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsrNZD98JQxi1lLt6vsIZlgxFLSvBEbWn8GOsQ9sxeYw9iJJdGaW0X9Fw9bENvOc4hZ0RKe
X-Received: by 2002:aa7:94a5:: with SMTP id a5mr7013022pfl.67.1584001129517;
        Thu, 12 Mar 2020 01:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584001129; cv=none;
        d=google.com; s=arc-20160816;
        b=fNdUcy/b275vf6DTHFSjqRWlHs0dqGr6zNCN01z3bgwmEz1BWFtSIWWYUXRZjh02Hq
         r27gN6YYXjlXty9KSoqO+URazFpiRKXAp9nyv6wbKKEdCdc+GwYojynfJtFp2tatpFDf
         3HWYzCGils1gFWj2SWT9wETyqeoBcrboBRfFmiz0TsQWfV7q5yOTSLMU3Ua0mvTJnOcR
         MXfRuKLQPI1/JM62V6AtoQGjmWtjBiOFVuTHSR95hqysS4/Wnss3KSp3cWCCOwwGAt01
         ckXShc5H6oUbzREcz7zNGdbUu0r2NqcVFqSEYrGWC2m/xYJF7E1HK2DulFNnjXgzcGpU
         wrmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mAIBehcE6lLl2HCq4Gs2wGW8gxkApbTjDSTa2W8+8Ck=;
        b=c7FheyKpdEdYhLB3JwUywzP0T0NUmnIjJOxqORmlbKweL4hKR3cBpVvz665Aazok/S
         GwMOkeVodygnS/YKTk6WpnVCiiqebls+hlAufpRI/71y7bW/QVCyRe5xEZnnl6iGj/Tx
         xzOgY0q+O1bU0nd0iE5V5MT8YmTgSuAo2gNNu8CS0gyTjC8mUpT2VNK8GFlEZPqzE9k4
         6Pvu/P1leFC2QMi9yRPdamZs1Qpp+WxTn6JHLgbstCNZc3f0xU2AvMTlNA9dClgIFARo
         n7YRoNet7hI3QWjHXM44LtvEC+B/+TO6mTdZdPr40UK0idyps812Agt0HxqdE2S+/mda
         WoaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p6e09yz2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 83si169995pge.4.2020.03.12.01.18.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p6e09yz2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CB83C206EB;
	Thu, 12 Mar 2020 08:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584001129;
	bh=3htY0bNQH+cnDTXKbD5gk2oK2ocTegLFmgwkNNtZcEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p6e09yz2ZZlmu1V3/cDphjdk/spBZF0swBE1HAuBhZTgsKStWcFXJ8UE1j2UxlZ0R
	 cW3TY7GjUXmFeHzCWJ0t6q9dEQ54rgRjvlNm4hF2wwXAMCg3DdWgtYjWKytkTW6rAl
	 9IlIKR/Y2RkAg4GlN3m532pkTWICCPcmgLidp2Co=
Date: Thu, 12 Mar 2020 09:18:46 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/5] staging: comedi: drivers: add line after struct
Message-ID: <20200312081846.GF11746@kroah.com>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-4-kgupta@es.iitr.ac.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311184327.25338-4-kgupta@es.iitr.ac.in>

On Thu, Mar 12, 2020 at 12:13:25AM +0530, Kaaira Gupta wrote:
> Add a blank line after struct declaration
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/das08.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/comedi/drivers/das08.c b/drivers/staging/comedi/drivers/das08.c
> index 65e5f2e6c122..e6c1ff0e5beb 100644
> --- a/drivers/staging/comedi/drivers/das08.c
> +++ b/drivers/staging/comedi/drivers/das08.c
> @@ -141,6 +141,7 @@ static const struct comedi_lrange *const das08_ai_lranges[] = {
>  static const int das08_pgh_ai_gainlist[] = {
>  	8, 0, 10, 2, 12, 4, 14, 6, 1, 3, 5, 7
>  };
> +

You said _what_ you did in the changelog (and subject), but not _WHY_
you did it.

thanks,

greg k-h

