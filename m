X-GM-THRID: 6255520875579179008
X-Received: by 10.140.108.182 with SMTP id j51mr22212031qgf.16.1456574265899;
        Sat, 27 Feb 2016 03:57:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.208 with SMTP id h16ls98748igt.36.canary; Sat, 27 Feb
 2016 03:57:45 -0800 (PST)
X-Received: by 10.50.57.17 with SMTP id e17mr2108042igq.11.1456574265423;
        Sat, 27 Feb 2016 03:57:45 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-ob0-x243.google.com (mail-ob0-x243.google.com. [2607:f8b0:4003:c01::243])
        by gmr-mx.google.com with ESMTPS id c15si498187igm.1.2016.02.27.03.57.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 03:57:45 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) client-ip=2607:f8b0:4003:c01::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ob0-x243.google.com with SMTP id wz1so7126742obc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 03:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6iOPxDkGgIMHlr0TE05K3ReS5f7t/TjSi0jXcoXkTIs=;
        b=FTOLCFQ0P9HcifCOldb4pa0NL9iMHGW6nEVGlIg4y0YhQGvfyDzjP8N3UH+y6KPdIx
         yKoPqUJJOe1TouVIyyEZVxWmLMf3D6HNYyApWZFq3YY2pc+i9pJZcuniLgshmCNwfMQs
         7fzfgWxgtzEI77Pfo7eAReCYgXEr4jIpfFbjj2rB6c9W0IL3NuMoLmMln1xVW2MHb+sV
         XcgpjF37lrhyBTovkGuC7enAywHBZ47KOI73gJ22P1fH0uSZCvu3TPrTIiBvKSm1bjdP
         12MuypHCQz/4BaI0AA1agNEyAZaTn4k4p1UCuLWOk8PzJZoteS5o8y2bmqpwkUIJSOSl
         kTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=6iOPxDkGgIMHlr0TE05K3ReS5f7t/TjSi0jXcoXkTIs=;
        b=T1rThB0t9EkOKdpE4m3V4xjVmXp9G//v04fYuI65bVBogiIWBUmrEEQuyudYq/9AlC
         aahB3Xzgx2m3HQPmUqXjJsIlP5tmXSgyZq251QzX+TyQMKMi0tnZH6luKHscKRb23BEw
         ocAbiDOdxoitAfJ9qSzxxWLqWKh1hf7RIplXI5gZpiaLa+qRaS3e9cSt/mQjas+4ZNTi
         VZ+OHDBfCRjSQs4MM9FEX03VxeT4S0ZCfBxJEMJri8mHVI0/RgFqGxq0o1h03vFD5iAq
         gsZEPn5EkzcAcFv53rSgXb3IL63iXKn0SdXyrNchvkiR2tb/6r/4DTjm3H2ol8QrK1lW
         sS5w==
X-Gm-Message-State: AD7BkJJdYidKcofyAxvbiII+SF1gf4nlf6UwbydjH4cvpqOHi9gWWWR5tsR+mytKL4kH9A==
X-Received: by 10.60.140.129 with SMTP id rg1mr4764295oeb.25.1456574265115;
        Sat, 27 Feb 2016 03:57:45 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost (107-140-218-13.lightspeed.rcsntx.sbcglobal.net. [107.140.218.13])
        by smtp.gmail.com with ESMTPSA id j126sm11410254oih.13.2016.02.27.03.57.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 03:57:44 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sat, 27 Feb 2016 06:57:44 -0500
From: Tejun Heo <tj@kernel.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: octeon: Convert
 create_singlethread_workqueue()
Message-ID: <20160227115744.GB3965@htj.duckdns.org>
References: <20160226085627.GA8858@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160226085627.GA8858@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 26, 2016 at 02:26:27PM +0530, Bhaktipriya Shridhar wrote:
> With conccurency managed workqueues, use of dedicated workqueues can
> be replaced by system_wq. Drop cvm_oct_poll_queue by using system_wq.
> 
> There are multiple work items per cvm_oct_poll_queue (viz.
> cvm_oct_rx_refill_work, port_periodic_work) and different
> cvm_oct_poll_queues need not be be ordered. Hence, concurrency
> can be increased by switching to system_wq.
> 
> All work items are sync canceled in cvm_oct_remove() so it
> is guaranteed that no work is in flight by the time exit path runs.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>

For the workqueue part,

Acked-by: Tejun Heo <tj@kernel.org>

Let's repost with the driver maintainers cc'd so that the patch can be
tested and applied.

Thanks.

-- 
tejun

