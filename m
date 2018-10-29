X-GM-THRID: 6617780359505379328
X-Received: by 2002:a62:854b:: with SMTP id u72-v6mr46023pfd.16.1540848669107;
        Mon, 29 Oct 2018 14:31:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:568f:: with SMTP id h15-v6ls4052735pfj.3.gmail; Mon, 29
 Oct 2018 14:31:08 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cKO1nUScUfMqBAmnFxhNrXOCCBTGsLR/YcJmESwrzNGIX5AA6S04MG5s7qVu5d6E86uB0V
X-Received: by 2002:a63:28c1:: with SMTP id o184-v6mr255549pgo.84.1540848668290;
        Mon, 29 Oct 2018 14:31:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540848668; cv=none;
        d=google.com; s=arc-20160816;
        b=qpWPxdokPpSxyXQ6oi0VqQbT80n+d4FvPET4oOhKXEvx6NdydLh04wVmftAxheNmYT
         U80tKCjNz3exVIrK9dVbhnUNkr8UG/xCWacTtBtsgNnbP8TRNGNp4cGI9fMeH1+FPcY3
         38WtCOj6y0cy4YbnE2fPoLJZnYaTbePKadLfCTCNzsiPcEufohotRnzQEUu4W8AJonvS
         vPJ4QVkeLDkS7GBN4E1hu68TkdSYgUwreLzNZWNdFeWOTl/IAISxNPovTKsqf5xLzJIm
         8R55M8Zhg3vJxEdKE1o794DfsKy6He6x53hGAqAnlx81MMM+cRp0fYuS8kTJAGdt1u6r
         JiVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JZMJD+d2IND+wV7BOGPxhHB2GgUierWfFJWVjvCnk3Y=;
        b=hNnEQAplusmQscv+BwXbLJkHRsqwlP4hjvUYj6K2fSm6TyoZp6/twS2ymR4mDHGVH8
         A6J/vbbsX0l6NPlWD3yjgykwwE81pJoaP19oy7/kKvNIqftjBZmCr1iPKWloWBP8q7As
         LGnvqw+53cHB3sgRtXfLGB+D7C6TlFzxqwhmmNjke/R2kzkQYH/X8q8ZnMPOFLruyoUx
         MIIjtPlea54vL7SfXFiVHH+433JSz7YmN7BfwcB6ESyNWjqmOoTZ6i7oMyOUv3Tt4cyw
         oHfZDHMkXd/JQnFCEsegAgqLoEU76/ksixryTxzFNSdth8YpnvYYP9yMssiyVm/kAyjB
         /IMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M3LDoXjb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d13-v6si107426pfe.0.2018.10.29.14.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 14:31:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M3LDoXjb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B16A12082D;
	Mon, 29 Oct 2018 21:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540848668;
	bh=WimC4JBCOQ/q6NMyTiA8B2mihow9Z01z/SkHACZ94VE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M3LDoXjbLLpPjX0WzYA8baoM/h0PtmmP5iuZ+Udk5xtSYveAxRRlUKrLOn48EwBap
	 02RlhZl3qYF5neBGCJdRFd6ugM6rncPN7M8gev424xMh+mDFgvKrMowEVX9KkLD8x6
	 BrvjCJip3mHnadurIL6tAp+6RuYyBi+lXUquJ1Aw=
Date: Mon, 29 Oct 2018 17:31:06 -0400
From: Sasha Levin <sashal@kernel.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Ioannis Valasakis <code@wizofe.uk>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, rspringer@google.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket Create a memory
 allocation path
Message-ID: <20181029213106.GP2015@sasha-vm>
References: <20181029140731.GA18826@kvasir.local>
 <alpine.DEB.2.20.1810291512410.20217@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1810291512410.20217@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Oct 29, 2018 at 03:14:56PM +0100, Julia Lawall wrote:
>> +err_alloc:
>> +	kfree(interrupt_data);
>> +	kfree(interrupt_data->msix_entries);
>> +	kfree(interrupt_data->eventfd_ctxs);
>> +	return -ENOMEM;
>
>Besides Vaishali's suggestion, could you also make specific tags for
>specific cases?  Please first read this message from Dan Carpenter:
>
>https://plus.google.com/106378716002406849458/posts/dnanfhQ4mHQ

You'll also notice that you made the very same mistake Dan describes in
his post :)

You first freed interrupt_data, and proceeded to try and free
interrupt_data->msix_entries, which will attempt to dereference
interrupt_data which you freed the line before.

--
Thanks,
Sasha

