X-GM-THRID: 6262288829369024512
X-Received: by 10.50.85.37 with SMTP id e5mr3671772igz.12.1458140061913;
        Wed, 16 Mar 2016 07:54:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.227 with SMTP id z3ls602576igl.9.gmail; Wed, 16 Mar 2016
 07:54:21 -0700 (PDT)
X-Received: by 10.66.142.230 with SMTP id rz6mr3039311pab.31.1458140061452;
        Wed, 16 Mar 2016 07:54:21 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id y20si552857pfa.2.2016.03.16.07.54.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 07:54:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pf0-x236.google.com with SMTP id u190so77923848pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 07:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=24phxAj29V9CXp0LbJ07Lo+phTAaUROpz3CQXZJthZg=;
        b=NetvLimrdJrsggSS5ebR3H94Y382F0RDvp6PfvihVtsnPmTOp5Pbvbv9Qzx2bLAgiP
         AeHt6yYhHr5iP+YqDqaznvf5SY4j1p4n/e1GEzJbxrFbH4248tJqGm8g4oHVANlEAtQ1
         L6UzCms0gZUZp89/dH8Wf9Tge/Oob857Zzmw+wCEtafch4NZ5x7iUt2huRM48uto6XXG
         EqilavHrevMNRiiYPHnh3WUExGSwzN5atMjRuvxK6tHYNCYTI0nKrd2kzALqYPs65RpN
         s5l+U8o7U3XbP+mS0b45x0RM5Fh93wdV21Sx/Qx5aJtsa2xZbGj7ZzEk8uFapU5FZQqZ
         do8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=24phxAj29V9CXp0LbJ07Lo+phTAaUROpz3CQXZJthZg=;
        b=IpNYdkKNGEFH74B7mT72uSJBRwI/gC4776vetfNpWf4AQFM1EdfTMXt5ebzFz+VCs9
         BWZXnO6wuq5vQCqGe6ZSLASrAtjvxRkv3aRi8cT/vtliqsEv+xXjhQt7f+z2mhQrQvyZ
         O85ORNF9u+ZtJ0YBWsQ/EkoVwM/y4VKBB3Nb/Aomdfpjpx2vPbp47KBGF9rdeXGPep2z
         KUh2k09RhJ9NOqPaeof2jKKaI3ARxVbOslHYBE0lj/kaGrAMG802WGc7wKWEuTcHX7MK
         aNzgWQazl5FVfKwJNigSwBC1YILVxCo8X1y+TTu3jQv9XAj+9Booe5z1oMOE18uE7/mq
         4vGQ==
X-Gm-Message-State: AD7BkJL2TbMiZX/GdHXL5zPFzW2Lu8uk4B++u3XeG8tsPpOpCQA5y8vwJRaD1wpE/rDV4Q==
X-Received: by 10.98.1.74 with SMTP id 71mr6804938pfb.10.1458140061279;
        Wed, 16 Mar 2016 07:54:21 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([166.170.37.216])
        by smtp.gmail.com with ESMTPSA id o71sm6333487pfj.68.2016.03.16.07.54.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 07:54:20 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Wed, 16 Mar 2016 07:54:19 -0700
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] qlge: Replace
 create_singlethread_workqueue with alloc_ordered_workqueue
Message-ID: <20160316145419.GF6980@mtj.duckdns.org>
References: <20160315143852.GA381@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160315143852.GA381@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Tue, Mar 15, 2016 at 08:08:52PM +0530, Amitoj Kaur Chawla wrote:
> Replace deprecated create_singlethread_workqueue with
> alloc_ordered_workqueue.
> 
> Use alloc_ordered_workqueue for work like getting tx/rx frame sizes,
> resetting MPI processor,setting asic recovery bit as only one work
> item should be in queue/executing at any given time.

It'd be nice to explain why that is the case.  It's okay to be
speculative and ask the maintainers - e.g. say "Because of XXX and
YYY, the ordering seems necessary" and then in the section below "---"
ask the maintainer whether the assumption is correct.

> WQ_MEM_RECLAIM flag has been set to ensure execution context
> regardless of memory pressure since qdev->workqueue might be used in
> memory reclaim path.

Hmmm... why?  Network devices don't usually sit in the memory reclaim
path although there are nfs and storage-over-net cases.  I don't think
we have a clear rule here.  I'll ask around, but for now, I think it'd
be better to default to not set it.

Thanks.

-- 
tejun

