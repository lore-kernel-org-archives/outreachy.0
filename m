X-GM-THRID: 6665628449675149312
X-Received: by 2002:a5b:d46:: with SMTP id f6mr7262371ybr.0.1551987969329;
        Thu, 07 Mar 2019 11:46:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cd0a:: with SMTP id d10ls2259880ybf.8.gmail; Thu, 07 Mar
 2019 11:46:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqyw91IGyrVrpKfeesJNaK+5iOKJd0doDIC97LUOHE/Jq1zFmKlSroYC1s7oW89lgZOMCZEm
X-Received: by 2002:a25:c681:: with SMTP id k123mr6032613ybf.44.1551987968485;
        Thu, 07 Mar 2019 11:46:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551987968; cv=none;
        d=google.com; s=arc-20160816;
        b=R3xE1lTXudONS3upDRiX/JWO0oMubdLHlTHJzm9Y+pTB1zoRYr6VVAKDbk3/oLYAib
         oramtw+JuiJ1JwjcfVcpzewatWaPEQTj4AqJaPjfcGsQ8PO1PcWQsXrFWQSDbowHLZLy
         bfb0uSlWXPdUOoh4rHFPcaPWwLMQhgm6zxQK0+mVn/GOB73Ih4ULXfUDWvyX/89TvHUe
         SzYonFXCUZq+2u6e0j+3eHl+H6giOXYPDNOxiz4pL5TOOV8ME+8ef6Oaf2YT161Y/WEt
         VGRPcxLmM3MjxQLpjyQ9F2D5GD+uwxAS6fMy9sKtAFgf5c+3k19NC/1GSfHsFivvIbxe
         Aj8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=1csHrA4XN/OjcyOWQihUHidYfetsnXQW+sv6jhgWvWE=;
        b=LY3XJplPtqCTW6lyT4A2YJpM1KUksPYWmAxjVrCc8OZNMAcx2ZhH5ihjbY12P/Rnpr
         NGF0E7nHc7pEU9fcjCfZVYUsuzChFblkJ29QKDvgUkOQCrL3HKzK7wIPoahT9IQizFH2
         JlzsH9APibzeMGr0nvBW2m8k/c5rH0J5bMQRTT3GcDQYfupIZ9yAyB6zvH8+TQFomP1F
         tEcAxqAPjblaHzqYmrBrkvU5Wf46kkdztDv8xEeKgGqKTZww3E/GdGWRrBXovzXkAvq7
         jmelS6FP9lnVXKYQBSip9dY4jC3yQKLiK2M+D7d9DRAl1Hy+KnD0n3Xhcc2i3Va5DdGY
         S7Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OfFXIg5w;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id j16si216364ywa.2.2019.03.07.11.46.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 11:46:08 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OfFXIg5w;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id z19so15237146otm.2
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 11:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1csHrA4XN/OjcyOWQihUHidYfetsnXQW+sv6jhgWvWE=;
        b=OfFXIg5ws1zdbhuwmKbmwbp4ecK0jqr581Dxl4H3GI44rSg/4Ux6A+dBGIVl0D9LHX
         l3BEkjwbt4SF7l5y0WA9951KZy+lILzeG92MB7OQ/+TPqybMzVel6wfjqENtD91morMo
         CLOg+1lgzPagbT0Ke7B1tABS7dz23tfGyV4GGd2E52M6W5S+f2eU/zF7KhkgZqqn3jVl
         1chBam57Yxb6NyEP6XhuFBCd15OCK2cahQBJiNdxFaRuDXQTFYPHiE5TC61h4rHsnbTN
         mJcHt6cw+hNZ6yXfDG0EwCQPwoh0rQe+Tw7LMrVwzuGf+NvdgLTF8vAeqFM0x8UHkhWE
         c1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1csHrA4XN/OjcyOWQihUHidYfetsnXQW+sv6jhgWvWE=;
        b=rFqmbceKAwOFKIbCI+fZ2QUi20RY30C+EhJ7BswnRNoZQb2/66GlL7BzNn2UVE7MUZ
         DH9FUcaByeH856GafBrtSAcMGdCDqpd7vCWLWAOQubYtdOs9r7TnAe2rbLsHLUWGx5Dx
         XpqU2czrXyp+X/Go3rkCLZHVBwXlWHFC1rHt97Qql6zokPf4S4maGvY1y0TotFded780
         IqqRoigcOotIh2vqbUVxl4iFwbyPOwwjrVE9/thYf9JtOl99G7PbnQOtyl9s6DT9mOvG
         dKRGyyAE7k8ZWotlA8FnmokjB4vL3XUfLldxUs4JCzmJez34FoQzKrWZBbo8UHgjlpO9
         Vmzg==
X-Gm-Message-State: APjAAAWslSj2EgH3SFnzDRKVZTRqhi3zAgmmO/7GK4v27JzajW0rxlUg
	PqqVGt5mFSPSflBO/W4ja9Ynr2KYCig=
X-Received: by 2002:a9d:e92:: with SMTP id 18mr9557251otj.134.1551987968061;
        Thu, 07 Mar 2019 11:46:08 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n5sm2168103oih.19.2019.03.07.11.46.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 11:46:07 -0800 (PST)
Date: Thu, 7 Mar 2019 13:46:04 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Remove an unused function
Message-ID: <20190307194603.GA22566@madhuleo>
References: <20190307124236.20430-1-madhumithabiw@gmail.com>
 <20190307192838.GA8259@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190307192838.GA8259@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 07, 2019 at 08:28:38PM +0100, Greg KH wrote:
> On Thu, Mar 07, 2019 at 06:42:36AM -0600, Madhumitha Prabakaran wrote:
> > Remove an unused function to improve codebase.
> 
> This should probably say something like:
> 	Remove an unused function prototype as there is no such function
> 	in the kernel tree.
> 
> That's a better description of what this patch is doing, don't you
> agree?
> 
> thanks,
> 
> greg k-h

Yes. Will update and resend it.
Thanks.

