X-GM-THRID: 6263057020003287040
X-Received: by 10.13.194.67 with SMTP id e64mr12874942ywd.17.1458334067638;
        Fri, 18 Mar 2016 13:47:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.226.170 with SMTP id rt10ls982210obc.57.gmail; Fri, 18 Mar
 2016 13:47:47 -0700 (PDT)
X-Received: by 10.182.196.101 with SMTP id il5mr12922311obc.26.1458334067133;
        Fri, 18 Mar 2016 13:47:47 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id q187si976608ywf.4.2016.03.18.13.47.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 13:47:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x241.google.com with SMTP id u128so4139521qkh.1
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 13:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TGvvomfAEWCtPkPbAfVzKI7lxw5fhGEeJBqdgaPN7PQ=;
        b=m45/3iSsfGVG5A+vNE1wv6TLr6pAInhqhlzuH6PMMmJlTFO8Ra2Al7zS57s1mx2jnN
         mhSmzUUUs/pzO83x01OtySE62QPeRJHCty50mtAGdxaK1vt87dpa2MNA7XyIO4lFs4BQ
         Lf3K+RTi4NxZXr9PZ8rri6aRBg3QGHwEEnzlsNkPQBGhsYRjcjt9C6tFwnJK4nt7sIuh
         Z95Qpb4/RD3AAahuxhf+r9yNYhVtQ7SpC2twR8krMTxfutvDPKhsTIZzmA2LT5s1EzqH
         lQXG0wWoPyPWy5ebobXnsuKGf0u0c5E0Ggw9JQC3yX9J/tSkFvrQmKRid2Orrt53M2Pn
         rmWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=TGvvomfAEWCtPkPbAfVzKI7lxw5fhGEeJBqdgaPN7PQ=;
        b=m0pPlNdhUOiPIyd65I8xft6omXpoPEjqfircdiHHphYJuVSFFuVS66II5zQDH2G2g7
         vZYCO1ovQNe3QhRtFGh32HcUT5RgBeYeQQiGCep0Ow8CEoBtEBW6N78hPtBoKWQ8i519
         ipxf6mexKzh4eTsuSAYsiLewg1aT2lY0dKkLwSjtoA78ne80o1BFjLAQ1Me7CSXqi1r0
         7mRBQ/mM8U0zA29JVH4Mu4I7XeWxZ7U2+KUUroFMZAEvj6M46JgEFeRs5gP5ZtdrnzQ9
         uYnDTwQWOUV7unm6T28cPLSF05c3u+PnDIf35NgyTHqSuMspBEjs1cRxZeHywzlPUhKD
         7BWg==
X-Gm-Message-State: AD7BkJLWnswN49q/674Yfpf982QxXhFlCmNYkx3SzTMzUZnbW26Z9gBS6s/k4Lzy4qF5LQ==
X-Received: by 10.55.21.85 with SMTP id f82mr24857326qkh.40.1458334066823;
        Fri, 18 Mar 2016 13:47:46 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost (mobile-166-172-061-006.mycingular.net. [166.172.61.6])
        by smtp.gmail.com with ESMTPSA id 107sm6768421qge.16.2016.03.18.13.47.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 13:47:46 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 18 Mar 2016 16:47:44 -0400
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com, johannes.berg@intel.com,
	emmanuel.grumbach@intel.com, linuxwifi@intel.com,
	kvalo@codeaurora.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] iwlwifi: dvm: use
 alloc_ordered_workqueue()
Message-ID: <20160318204744.GN20028@mtj.duckdns.org>
References: <1458231561-13184-1-git-send-email-eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1458231561-13184-1-git-send-email-eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Mar 18, 2016 at 12:19:21AM +0800, Eva Rachel Retuya wrote:
> Use alloc_ordered_workqueue() to allocate the workqueue instead of
> create_singlethread_workqueue() since the latter is deprecated and is scheduled
> for removal.
> 
> There are work items doing related operations that shouldn't be swapped when
> queued in a certain order hence preserve the strict execution ordering of a
> single threaded (ST) workqueue by switching to alloc_ordered_workqueue().
> 
> WQ_MEM_RECLAIM flag is not needed since the worker is not supposed to free
> memory.

I think "not depended during memory reclaim" probalby is a better way
to describe it.

> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>

But other than that,

 Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

