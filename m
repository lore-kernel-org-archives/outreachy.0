X-GM-THRID: 6252907967708921856
X-Received: by 10.107.134.68 with SMTP id i65mr14313941iod.33.1455897884320;
        Fri, 19 Feb 2016 08:04:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.195 with SMTP id k64ls179374ioi.66.gmail; Fri, 19 Feb
 2016 08:04:43 -0800 (PST)
X-Received: by 10.50.25.133 with SMTP id c5mr9085676igg.4.1455897883669;
        Fri, 19 Feb 2016 08:04:43 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x234.google.com (mail-yk0-x234.google.com. [2607:f8b0:4002:c07::234])
        by gmr-mx.google.com with ESMTPS id y131si759364ywc.0.2016.02.19.08.04.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 08:04:43 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::234 as permitted sender) client-ip=2607:f8b0:4002:c07::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::234 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x234.google.com with SMTP id u9so36644077ykd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 08:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=EvbiJpIjh1hDx+/w8aJp9i2eBwMUC25/aDDqomaY27w=;
        b=1GXlCqlrBrWp29MclCJ9OSvADl4UbqZFcItm2vw1++NEIyV+cdHZh9T9XbBDDyPu0p
         yCpsSt7tvGMW8rswUrxjGRI8JDbtcTC3ITV3kX/Qc0VpDf+gXM22MJ1Omjf6W+l2M1cb
         TNhlLn6YaIlB96SdNg6MGGLQFzuO4mrrWUTm7dSYWR29G4vn2ZT2rpfXXPXBiaFh5Bu6
         PmIvp98njGOTf5j1MWYVo2NYEt2xsUIoIQynujVlo+eqV/ogu+Q3KD+zRwThmEq24Oqr
         /Pek0mHdqdFJJjWodspnBiuZscNKKPaQCunu3+fmBpMDlYaITR8l+rZtD0yED/xiAMSx
         YvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=EvbiJpIjh1hDx+/w8aJp9i2eBwMUC25/aDDqomaY27w=;
        b=UoTrLDvFqX4OUV5kFeuIkkhXx+SOPikyq8Pfji/VPXy3OMJlFjWULD5+u7ljG6RTuh
         ZAlLF/2JljuZK9rQ5VLjRd8q5/o9qJ/x2/j3ufF6HBTblkNsYbU1oz+Nqskm/xu8ElfM
         T39fF3Mo7uV16uSXEqoT0rKohPPkyiA8/+bap5no1JaoJy6O4qvTwc8jOwA2U98hHSZE
         Xyy0WAAp5SgKdyIyp/ML4Ec+CdMlI7/gxhl3aSRJ40ArKkSUMtHgtZ2YYYCLUcISpllK
         Fn5kx5TXDNENwUpxhkWz6nt+/2QZSzvQLosP4JBS2SDGrqqovXbAPlqvK5MHn+piiv3b
         48dA==
X-Gm-Message-State: AG10YORfTJzEBHh11Xmec8PYwEpbI4HFn4LLscj+R14DY4/bP5H2/u+aIn2VwUTpXXqoxg==
X-Received: by 10.37.64.79 with SMTP id n76mr8386211yba.12.1455897883458;
        Fri, 19 Feb 2016 08:04:43 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::d:4229])
        by smtp.gmail.com with ESMTPSA id t64sm8946564ywa.45.2016.02.19.08.04.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 08:04:42 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 19 Feb 2016 11:04:42 -0500
From: Tejun Heo <tj@kernel.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Use
 alloc_ordered_workqueue
Message-ID: <20160219160442.GK13177@mtj.duckdns.org>
References: <20160219075654.GA12205@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160219075654.GA12205@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Bhaktipriya.

On Fri, Feb 19, 2016 at 01:26:54PM +0530, Bhaktipriya Shridhar wrote:
> Replaced create_singlethread_workqueue() with alloc_ordered_workqueue() with
> WQ_MEM_RECLAIM set, so it creates a workqueue which executes work items
> one at a time in the queueing order and is guaranteed to make forward
> progress under memory pressure.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 8d239e2..6ee7fce 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -677,7 +677,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
> 
> -	cvm_oct_poll_queue = create_singlethread_workqueue("octeon-ethernet");
> +	cvm_oct_poll_queue = alloc_ordered_workqueue("octeon-ethernet",WQ_MEM_RECLAIM);

So, this is the mechanical conversion from
create_singlethread_workqueue() to the new interface; however, that's
not what we want to do.  Does it *need* to be ordered?  Does it *need*
to be guaranteed to make forward progress because it's depended upon
during memory reclaim?  Does it even *need* to be a separate
workqueue?  You need to actually examine the specific use case and
answer those questions before converting it and explain and justify
the decision in the changelog.

Thanks.

-- 
tejun

