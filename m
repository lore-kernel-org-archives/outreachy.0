X-GM-THRID: 6262296437961261056
X-Received: by 10.66.244.171 with SMTP id xh11mr3171334pac.32.1458139856220;
        Wed, 16 Mar 2016 07:50:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.69 with SMTP id m66ls493916iom.89.gmail; Wed, 16 Mar
 2016 07:50:55 -0700 (PDT)
X-Received: by 10.107.166.7 with SMTP id p7mr3100456ioe.0.1458139855427;
        Wed, 16 Mar 2016 07:50:55 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id y20si552857pfa.2.2016.03.16.07.50.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 07:50:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pf0-x236.google.com with SMTP id u190so77923848pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 07:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=27gBvBqeIgFZNP3HC8sWfSsYi3Ywc1ewbgoKoLJr8/s=;
        b=izo9pTcl913jIGJP4DFYnrLdz0xPx7dBYrdeq+s8zEvxk5Th6i8Af7bAJMadUKJSpg
         KrC0g1G2JdD9NliTF1izmYphZp/dcsodXbOFpea1dobtrL4SkAa4UeCnnIhn5LzIyGw/
         yOn/8DpyI9MApbbpOZPFOvMzMStS5ZX788c0nLOkGJQhE8JDQrmAQC08hlW0fpYUeWmX
         5HsyryUuvVr/0hNzLCNfHEJ/OWavoCkwz9SEYQ/+xsofU+F49rr0FdJalCHO+5ZoPRKc
         upYk4jqAIR8Nt+yzs2qqXeISMSn5Ql0gVvr4fhOLJDAF4J2KdydPpymWCyXLSsRng52Z
         mPtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=27gBvBqeIgFZNP3HC8sWfSsYi3Ywc1ewbgoKoLJr8/s=;
        b=QE2ugdYv5AJknROZdXBxPO/7PBnwqSMMyprOXzGEkbOcd1hZIfU133DPq4xb2XIzMV
         SrE/Mf0trEO8RsHS98hmEq89UgS1WcVdTzWEVHz7ovsomUj2s0/wR9UIorYHWGB9Qt+h
         EBoek3CJF6T7Pd9Yzm3Ce/FmfQ/HlIkPwe3Hxb1ZPYosyGQkplnuQuLO46HUPK1v8ykp
         7ncWWmINGxQ/asQSiU6b0ZRTKxpFXuEk1cc60UiHRfd+zMqoLS+1AkONmDyZ6I9J6R9u
         Fx0va3QqixdHCXK5881cm4lAvXVHcU7vvuffuo7bDriSYvRBRHJGXsqTqBBQQ05IvJa5
         1PVg==
X-Gm-Message-State: AD7BkJIfX/7tQV4Dex+xSz50TSrIvRRHZ8l5kEgd5NjxlHFHtD1QBeKeVM+QW2KcyRXNlA==
X-Received: by 10.66.244.233 with SMTP id xj9mr6654809pac.19.1458139855279;
        Wed, 16 Mar 2016 07:50:55 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([166.170.37.216])
        by smtp.gmail.com with ESMTPSA id ml5sm6355554pab.2.2016.03.16.07.50.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 07:50:54 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Wed, 16 Mar 2016 07:50:53 -0700
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] can: mcp251x: Replace
 create_freezable_workqueue with alloc_workqueue
Message-ID: <20160316145053.GE6980@mtj.duckdns.org>
References: <20160315150824.GA2858@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160315150824.GA2858@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Amitoj.

On Tue, Mar 15, 2016 at 08:38:24PM +0530, Amitoj Kaur Chawla wrote:
> Replace scheduled to be removed create_freezable_workqueue with
> alloc_workqueue.
> 
> priv->wq should be explicitly set as freezable to ensure it is frozen
> in the suspend sequence and work items are drained so that no new work
> item starts execution until thawed. Thus, use of WQ_FREEZABLE flag here 
> is required.
> 
> The order of execution is not important so set @max_active as 0.

Can you please mention why it's okay to drop the WQ_MEM_RECLAIM part?
Otherwise, it looks good to me.

Thanks!

-- 
tejun

