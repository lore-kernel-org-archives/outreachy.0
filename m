X-GM-THRID: 6672387662802845696
X-Received: by 2002:a63:4612:: with SMTP id t18mr25192643pga.56.1553544756111;
        Mon, 25 Mar 2019 13:12:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6948:: with SMTP id k8ls9110392plt.7.gmail; Mon, 25
 Mar 2019 13:12:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwW7yowU50cv26wIUlU05+Ivzr/NmONac14P40VLSq4iS6CncwDnh2uaSVF/uDNZbmos853
X-Received: by 2002:a17:902:2bab:: with SMTP id l40mr27121865plb.273.1553544755322;
        Mon, 25 Mar 2019 13:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553544755; cv=none;
        d=google.com; s=arc-20160816;
        b=r93OPHNQ9fvy5hfBWIpB6HO947iTmZaD/EeECnP8FmumPlGD0j1HKyvhrt95NKWjVP
         h9V0FOf9sIbvU49IP5S98joGpz2gq5skj3C8Vni+4/1rjU6yODm+rLWrQtGKd2lCn4/s
         W9GoTLiZ+5uvjBB6fIl4TVE1LiHuaZXcqket+ljxnJm+XDX7l6IgX12ZtwURRNjGFTrP
         muobU3xSR5f1EcTGDcXMQ1yCHOL35CmExottMDZDactKD0GJnBKbopghw05rBcCrgN9A
         bwJ3tfQ4OyJCPE324SYvoe0FHb4niE3JC/xufIR5jjZZz4xVpDT7qTPtf4U+xcZ0T5Jl
         3L8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=88WsHDwhPQbpJACm7tWoVSisnnv5WazsRqJIV5K8wjM=;
        b=mnk+TpQnXLatIXl4tk0dWeJrOOlNOLw2N3CH7YKPGmX/itoo/3k5ZPdmTjAhNjG+ZC
         Yezqomt/Q++UeQvlLHvgkIskdNc3WZXFv84WezyE1Wvro8AXdnMRvYAuQOLG4o1Gv+3B
         5Am916UHU392CZ+jpQFdE0WtvfhBw16du6NbilKQ0mjQ1j6NfutlqV7jopfzw2LlUiz5
         VwPzO3g6et/bbtNSbbg4AyNGKanQO2Fp3t+mGU8FNJqrPKPQhHSioaTVf4QYo2ZG3GUd
         RFTJ9bm4EcxiydV2TNbEa+OLsK9a2WNpB/knHwVZZMLS46hYvSvKRNXYn6uGX7jEkVfG
         ZwPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TtIwJlWD;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r133si1069941pgr.4.2019.03.25.13.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 13:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TtIwJlWD;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [218.237.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A83E32087E;
	Mon, 25 Mar 2019 20:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553544755;
	bh=LztKvxmQtOPcYRmtlM4yPlCj36E+UPqjoAUiRR1Bi5E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TtIwJlWD1/ZNROnx+sXECWVldAj80zlLFLgq6DmtbzsXjG2IjCDFrzgfO9HgdhN7u
	 5c1CMpmA1emTwNEh3r0N+tLUk45VHF8QdhQFWEUcP3UGCVy6KdhaWGqQpYBFV/oNcK
	 qdltaPHML1jxT/fN8c3Mj/0iubdeSh1JyceVU7gM=
Date: Tue, 26 Mar 2019 04:27:30 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: sudipm.mukherjee@gmail.com, outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: Re: [PATCH resend] staging: sm750fb: lower case to fix camelcase
 checkpatch warning
Message-ID: <20190325192730.GD14506@kroah.com>
References: <20190325175907.17740-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190325175907.17740-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 25, 2019 at 05:59:07PM +0000, Jules Irenge wrote:
> Lower case to fix CamelCase checkpatch.pl warning
> "CHECK: Avoid CamelCase: <ulActualMxClk>".
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 6bdf643707c2..3fe4479401e5 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
>  static void set_chip_clock(unsigned int frequency)
>  {
>  	struct pll_value pll;
> -	unsigned int ulActualMxClk;
> +	unsigned int ul_actual_mx_clk;

There is no need for the "ul" right?


