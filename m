X-GM-THRID: 6803023005726277632
X-Received: by 2002:a63:617:: with SMTP id 23mr6720213pgg.208.1584001108569;
        Thu, 12 Mar 2020 01:18:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:cf08:: with SMTP id h8ls2553290pju.2.gmail; Thu, 12
 Mar 2020 01:18:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtc+Ksh6RKsCnI7OrJbinyBLEbyTvlFq8W0ln6eY6T0XdH87FxyGPa6Hc4ZGCXlMkH3IJWF
X-Received: by 2002:a17:90a:cf96:: with SMTP id i22mr1055607pju.66.1584001107175;
        Thu, 12 Mar 2020 01:18:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584001107; cv=none;
        d=google.com; s=arc-20160816;
        b=kvqQX1Z47p0RXSIV62eJdHHb/LHrmGsjRD5AA7j4YOAS9HTHW0GC+vaHtRzgBbxo0O
         8xiGOeUz/uaftJKBP6kaCMsE+PRcpeCgZclFu7XALq78WE6T+oERaTHTSmwvI6Ar3a+m
         HJ54Qf1fTNFExU171MLHLzaAw4IxmtfOdJ9w6/JjxIk5b5l8fpifEYeA2qibGC0jGa+G
         nGA+evto3rt3cYs8RlTxvJt/MVrCQmemUhlIZlIgBuo6Hj/P7VO6mYdCCbvvZ9vsR/g5
         1h40InDiKuk3MluuMtyVFSgv++aCtFey8v92d9pxeCvEPubK3SS06dRVAfBM9fidXqbV
         oQGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w5MJuw12k2x6qNxwDHD/bw6/fEGdRPwscd0LAI4L8+w=;
        b=rdYGw05iCRN1BNoa2kgyc+xu5Wwim+3CcYFII7lhN61MHYC7yQK26LsMt07jN5AUTr
         UIUtV/kkCYS95Sqf4Ipn9OQTRXmIGLzCUaWsqJeL3N59JWCXb7y73C/hNXpa9qGDiABM
         DaOBa2RNy/4mJj00+FKpeUmCYUshWHK+61CbPXWxhgH00SUZytzjn2+R38wg+YgcR5Uw
         /k8MitjIsVHEBInv/fE7+zCs2i0EnZvSl2mkvu91MxQQXSnZyEfjEVK6fblXoHVFiOsf
         RZwV1JgBa1gSzoV6yXhlo1mZ5bjJw0fL1OBYP84qJYoj/NlykaqZcjQpM9y0y02XCSKx
         KRPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ITfl9wGZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y13si170011plp.0.2020.03.12.01.18.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:18:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ITfl9wGZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6C4FA206EB;
	Thu, 12 Mar 2020 08:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584001106;
	bh=CrY/4boubL+08fNihey8NnI7kzuLGHURczu8j9dhgHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ITfl9wGZetz9lSWU4j87RRWC61aMx6LO+Txdy5RFmhqrmJipiXAq8CQms/tyOSLBA
	 5vrUV9G02ODOWJvrD4nXjRTUijUY41MygQicVQg4rIR3M4638Z6uHJ1jEBhho7bcdc
	 p6WJd8EmREuk8TcZ397j8dNWjTmJD8S/2DabpueI=
Date: Thu, 12 Mar 2020 09:18:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/5] staging: comedi: add braces to prevent precedence
Message-ID: <20200312081824.GE11746@kroah.com>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-5-kgupta@es.iitr.ac.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311184327.25338-5-kgupta@es.iitr.ac.in>

On Thu, Mar 12, 2020 at 12:13:26AM +0530, Kaaira Gupta wrote:
> Add braces around 'a' in comedi/drivers/das1800.c to prevent precedence
> isuues.
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/das1800.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
> index f16aa7e9f4f3..be4b33c8e93d 100644
> --- a/drivers/staging/comedi/drivers/das1800.c
> +++ b/drivers/staging/comedi/drivers/das1800.c
> @@ -91,7 +91,7 @@
>  #define DAS1800_SELECT          0x2
>  #define   ADC                     0x0
>  #define   QRAM                    0x1
> -#define   DAC(a)                  (0x2 + a)
> +#define   DAC(a)                  (0x2 + (a))

There are no precedence issues with the use of this macro.

But, to be "safe" it is fine to do, just use a better reason in the
changelog comments please.

thanks,

greg k-h

