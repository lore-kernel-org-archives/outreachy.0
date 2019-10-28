X-GM-THRID: 6752344874745331712
X-Received: by 2002:a05:6830:1e74:: with SMTP id m20mr2510453otr.333.1572228665715;
        Sun, 27 Oct 2019 19:11:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls129409otf.14.gmail; Sun, 27 Oct
 2019 19:11:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxiWEShXcDrjENDZklhHBKpDQYv+8eYD2J8/dRotvXpi2uByc2ESKh7+BFdlTqzXNy5tB4v
X-Received: by 2002:a9d:6a50:: with SMTP id h16mr11946881otn.370.1572228664137;
        Sun, 27 Oct 2019 19:11:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572228664; cv=none;
        d=google.com; s=arc-20160816;
        b=klBJrhYzsfcftFeNvhzsM8hLK07gyaUR73tzazhcV8OKy8APsk1F1vhvix6gbhzWXd
         g5K7qDmK/ejf3v3a24fRTFFyfPgiLdzVrJKzbbaA3HF1rMQDlb5cNTHNsTrxyu44bRtV
         3L5fBsNLaXUcL6AZFmMTwHT8KL4wNSAD5VuIjIBYqlv0mB+6QgwEuNCOzakINl53w0jF
         SVggMyIDaz4F1Iss0IjX7mm+c4aLBfvXEmwLoLmsrlauQ0wg1GiDdkRcnfwVJwGPT+Cl
         sil47AFr5qkhmpNA2ETAPW4fUbXdXlzF7DRfkra1nFywrCAN7WfLA2PWQnnxtY2B+jRh
         G6Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=n0gcK0EmWf5CKMw4PJFUxcvA9wNqKOPZcoIBIFbe9/w=;
        b=K3ozgNidIRr+CvjbRYLTMVZZfZmXrbN4QLb21scuezdk4SkS546hKU2h4BYyjXmV5X
         iKavJ2m19KoX1YmPPGAmRu0Lfdq1LhGWRLiea6nmlrC8oK9MfzWQbg7aH2DOw3YQiODN
         rDmx59Hp2I/SPRdJ4wBact6VdSP91cSbFW4+iBMtyn02G3ESbwu8qzdy2OZFIVh4Ncho
         CWz3lZne8rON8rHAHFXo6M9ZzImFRHPCR1zHgf9kwNOUBx/32ZPDtgnNSdiMR/Fqa77i
         uy2tXNSE8oat8jkf110NfUVkrhN0coNfbVNH2ALjEsFM39I47xqGN44iqVJ9yqolWq9W
         FgTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Z2mlvqSo;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id v3si410033oth.4.2019.10.27.19.11.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 19:11:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Z2mlvqSo;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe44.google.com with SMTP id s130so1470787vsc.10
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 19:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=n0gcK0EmWf5CKMw4PJFUxcvA9wNqKOPZcoIBIFbe9/w=;
        b=Z2mlvqSoz9cUtEH3fZUFTN73upobnk49r2SSqYzNq8uogCY+xyqNA3+aCiEjoIVAdd
         /j65ZsBtXuJhtjNnFztRauSR5TBr4oyD5bgvNmm3gE9goTzXi5hHa3DW8nLQeEZIOiCk
         INTaHC9G43uB7Mt95LJdcz0NIG3QIzBiqrfOBko/O5RhPjqf7eKjoo8pOkA7XNH8/tTq
         7/Vh4XERh7p9Xaf02s+V0kmuTLZDmi+2M4go17gMt6nSkJe0VYewm/gPDtpwyi9Py1ud
         CFv90L0LdHFGjhe6CSE/Mu+J+Gi5A38L2O0bqEGwdb5fTfbt7pXupa8KLKvS65U9FyCo
         5gQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=n0gcK0EmWf5CKMw4PJFUxcvA9wNqKOPZcoIBIFbe9/w=;
        b=YBfqm7DLQGq9xIgXCbAudyWHuFFcQ7aQcZvG8Kw75T0mPzPIc4EVOOzqzOIZdJ10L5
         MD07cXZ7l/Z9KmMAVn8HUhOnS7GNiHb+/huaFlmZTyL9ubwc3k0o+T6e3IHWZdzqqJjK
         HMP0TrN5NA47uBKbPfb6/lB6hJItKz+aiqfjRUcP8SBJNHO2auN6cIo/5muFGF4gJs+/
         u6vwLLAXdNHa3KpwU5NN/31u4Jo8NOqsmVt8sHpTzDO/Jrx0fyJCsMxED0tgMvR2WO1B
         3Fi6g5ZoD6046f317g7QgJLUlRNu6Qlaq9P2gJri+wRBuVQo+SOOO0axl77o3aEA9/zQ
         k72A==
X-Gm-Message-State: APjAAAVqj86WE1OxQJMDxlCdRgTFB9RGgzEie8z3Vkbd/WenG1GncNIs
	p8e7y6GaWVkJ/sLINN8rfXGISA==
X-Received: by 2002:a67:f401:: with SMTP id p1mr8078448vsn.178.1572228663245;
        Sun, 27 Oct 2019 19:11:03 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id b8sm3112258uae.17.2019.10.27.19.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 19:11:02 -0700 (PDT)
Date: Mon, 28 Oct 2019 02:11:01 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, outreachy-kernel@googlegroups.com,
	saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Fix multiple
 assignments on a single line
Message-ID: <20191028021101.mdjnsyz4ejb6e4hw@linux-kernel-dev>
References: <20191027050640.GA24283@linux-kernel-dev>
 <20191027071310.GC1704509@kroah.com>
 <20191027111053.kjts2jybqtr376qa@function>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191027111053.kjts2jybqtr376qa@function>
User-Agent: NeoMutt/20171215

On Sun, Oct 27, 2019 at 12:10:53PM +0100, Samuel Thibault wrote:
> Greg KH, le dim. 27 oct. 2019 08:13:10 +0100, a ecrit:
> > As Julia said, the original is better here.
> 
> Confirmed, we have already had this patch suggestion in the past, but we
> prefer the original version.
> 
> Thanks for your contribution anyway!
> 

Thank you all for your quick response and advice.

frank a.

> Samuel

