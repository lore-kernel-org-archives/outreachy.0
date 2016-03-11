X-GM-THRID: 6260883531997642752
X-Received: by 10.129.92.65 with SMTP id q62mr8706422ywb.19.1457731842463;
        Fri, 11 Mar 2016 13:30:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.28.200 with SMTP id c191ls1335880ioc.36.gmail; Fri, 11 Mar
 2016 13:30:42 -0800 (PST)
X-Received: by 10.107.135.101 with SMTP id j98mr8922681iod.2.1457731842120;
        Fri, 11 Mar 2016 13:30:42 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id i133si584227ywe.7.2016.03.11.13.30.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:30:42 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id u110so109374912qge.3
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 13:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MO/t17cHvj0b+rRnxAmQyZ6YBGoR/8eNJXH/05Kc6FE=;
        b=gFvNmBL4DPy51eCCTVa5NEYqXag7XZ2Rk9bHLSyMxmKfbvbY8ps6Dd7hHwMvFMstwD
         3nXr/jksBnESu/QMc4KEQys6hqaNs0qg7BIebWMLUoX0Yt+eHaSE7eBqs/CP2qVRV8UO
         EejeTdbmdeDTYB37Az9OACf4KixC/jlPv3Jr/uZccF48CWSgTn7gjN4pijvuIawql1/k
         WbMbDOUJ1CNFYPUdn8La5yBe+rk1uCl7w4Y9SmMgdHo3QgtLsToddVMXh0GRrq+MFaiK
         t/E1atQPtcyL1222zXP6gj12RMQfBC+BHyTFVz+Hq0D5Omqdl7N8KxnleyhfmSQoOCv4
         sF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=MO/t17cHvj0b+rRnxAmQyZ6YBGoR/8eNJXH/05Kc6FE=;
        b=PECxBYDJPAweKs0vyvoyqBAmMo1l7m3LPnJFl0IjhT+agC8w+jLquwFuL3bVviN7MS
         RsjuCuAm6vsv1XOSdyAJHNh7m4GUe5RlKXk1ECDyLGbFRUHLj0tMMGCBF8k3h4XlcWx3
         Ur9l2cnddN989fmuRQ+39z0YKE052xLYmuPGwRfBjkM22+1+4NZwpNkwAV/z+/gREnEU
         tuigqQTq8vfESrpuJVfXQoQgsblyqGT/e0cDGRYVrDBryeWZ1aMoMwe7eCnmZExmeyvq
         Jzge7fwGPK2/FoPlMjuqVOracwdQuOuYgRuSfZ2P4S2XYNaOrNlldoNKFYJ4OUXCJion
         WbqQ==
X-Gm-Message-State: AD7BkJJSpAcLgJ/YBFC3k/8192G4SuCFybHAhYf5kSLLMxF2sbVImWNgkoisdX+ZE7ybvg==
X-Received: by 10.140.145.151 with SMTP id 145mr15503538qhr.95.1457731841891;
        Fri, 11 Mar 2016 13:30:41 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost (pool-100-8-33-164.nwrknj.fios.verizon.net. [100.8.33.164])
        by smtp.gmail.com with ESMTPSA id b103sm4820018qge.2.2016.03.11.13.30.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:30:41 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 11 Mar 2016 16:30:40 -0500
From: Tejun Heo <tj@kernel.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Workqueue tasks
Message-ID: <20160311213040.GR24046@htj.duckdns.org>
References: <CAFNHFT83c__ZmX+3tt7ioh9q8i+OB4zkAcCp2gH3yobb4Ui9TA@mail.gmail.com>
 <20160311194540.GP24046@htj.duckdns.org>
 <CAFNHFT91oA0UvUMZK+xLsOmOoxprp4_VHJ6Hhd5mfYu=5DqLVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFNHFT91oA0UvUMZK+xLsOmOoxprp4_VHJ6Hhd5mfYu=5DqLVw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Sat, Mar 12, 2016 at 02:30:31AM +0530, Bhaktipriya Shridhar wrote:
> Thank you for your reply.
> I'm working on the file staging/rtl8712/usb_intf.c. I have found 3
> workitems sharing system_wq (viz
> pwrpriv->SetPSModeWorkItem,pwrpriv->SetPSModeWorkItem,pLed->BlinkWorkItem)
> I'm  planning to use cancel_delayed_work() for each of these workitems to
> flush them individually and make these calls in their corresponding
> unregister functions .
> I'm unsure about the placement of the calls to cancel_delayed_work(). Can
> you please guide me.

Where flush_scheduled_work() used to be the perfect spot for those.

Thanks.

-- 
tejun

