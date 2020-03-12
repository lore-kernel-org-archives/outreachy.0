X-GM-THRID: 6802954785072873472
X-Received: by 2002:aca:a9d4:: with SMTP id s203mr1803254oie.106.1584000928804;
        Thu, 12 Mar 2020 01:15:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls1103354oib.5.gmail; Thu, 12
 Mar 2020 01:15:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv50/j0NOCCDR3UauB0Dzro4Z5ULUs0kNeaLMJjytJE6yYtqiPcID1kWZxj99oSTleR7zGz
X-Received: by 2002:aca:5155:: with SMTP id f82mr1737722oib.103.1584000927700;
        Thu, 12 Mar 2020 01:15:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584000927; cv=none;
        d=google.com; s=arc-20160816;
        b=EHH5i1CviuGwWPPINBhlp0QpxmO2b8MYw31xAtNQTLxO2g9DT9zY/9wWQY6O7KBHAE
         BqyssyvKmBhG0E6Sd/+uQGaig6s191dXB34S/St/Z617MXqH9MAOyIraFflwBMN4MgTO
         lfo9Ld+qSqZftzvd4Jfw3HzCFU4ojTvf+cIsXpu9gFTHBFWFpBRMVEcYbnm4NXzBr4ou
         LekI/1a9RnFpkk1YbI//Eju2nWze1AbI5Tge+/jhpuX1JXpcTeBlLx3/xCWqgHCwcBY/
         YT7coLUR8gxFu5XG6OwOqgA5xRpBboLCEnKVu1Ho1htfLbYIf/b9R1dkzp0gpPpfdFP7
         oOvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n80i8UcUJSvsiffklUTDKSGGgZQoPRvPva80MndYcqU=;
        b=P6lNosS55lRq7R6F995y9ZVGQZQYPHZ2Ew4cI3xbiiOnYdcEkoTU6lNEiLg2IdXz0h
         lTPU/Ixp/9ND4sGd92HaEE1DGVZL0wvlAUkIaPs7oilGgAhrNNHyaqropSS3VpWbP9ht
         dow+8YM2f9ufIT1TXxXfe/SDfmXf1lLBOMHTueHx4kVDh8Q0tFWMkcarWjJMXT1X2KLw
         hkfRsyGWUFtfoI5l+ouroZsV2Lw9cP/KUkjIFACQjVbJ7N+5UykhehX9H1Tkw5G07E10
         5h1CyCIAiorIRJaxzWtqIk59t7PH2ZAYg9VGZRtBnxaFRuAO9ysOUrQzRrwneN4220tN
         jTjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EK45duwQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y5si87892oou.0.2020.03.12.01.15.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:15:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EK45duwQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 294CC206EB;
	Thu, 12 Mar 2020 08:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584000926;
	bh=gPHy71qNMPASegrre7bl6QUYX9jKTL+gYKUg5nbAw+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EK45duwQZhornza+Kmq5U3rxEmML+Pffkr6Hw0jgeryiqwqaxCfhNtVEHjFvn4xr3
	 KRRE+aMeo5Mj1sWUC29OtPwen1+7SZYNMmvf5XkBAFgvfdp/CCWNv41nkFVWRbZljr
	 hMV8ZxBZiYklMpqd/6CQ+62W6JAZn0eK90MCLuGc=
Date: Thu, 12 Mar 2020 09:15:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Enrique Vargas <jevargas@seas.upenn.edu>
Cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: qlge: include newline after declarations
Message-ID: <20200312081524.GA11746@kroah.com>
References: <20200311142836.GA17614@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311142836.GA17614@evX1>

On Wed, Mar 11, 2020 at 08:28:36AM -0600, Enrique Vargas wrote:
> Add newline following coding conventions, to eliminate WARNING found
> using checkpath.
> 
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 1 +
>  1 file changed, 1 insertion(+)

As this is a "version 2" of the patch, you need to tell me that
somehow.  Please read the submitting patches document in the kernel
Documentation directory for how to do that properly.

Please fix up and send a v3.

thanks,

greg k-h

