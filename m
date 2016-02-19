X-GM-THRID: 6252907967708921856
X-Received: by 10.13.221.75 with SMTP id g72mr14451003ywe.34.1455911151532;
        Fri, 19 Feb 2016 11:45:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls346440qgd.27.gmail; Fri, 19 Feb
 2016 11:45:50 -0800 (PST)
X-Received: by 10.13.202.79 with SMTP id m76mr14022054ywd.10.1455911150939;
        Fri, 19 Feb 2016 11:45:50 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x236.google.com (mail-yk0-x236.google.com. [2607:f8b0:4002:c07::236])
        by gmr-mx.google.com with ESMTPS id t198si720070ywe.3.2016.02.19.11.45.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 11:45:50 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::236 as permitted sender) client-ip=2607:f8b0:4002:c07::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::236 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x236.google.com with SMTP id u9so39200040ykd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 11:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=sXmrSgqlfn2uLKbVmrSpyTH9tvkCAjqAFb/59uQYD1M=;
        b=HM9VbEx4kH2y8c50/f9HQkRltQHz5qbs9lmsfnZngncvbjxaeXZLpQvKwUkGB/BurL
         8AEpjtlmObWI/2ib8O/XUvuXD91XYLxTVzw5FaKNAi+IBL3IMrV/HyPc7lV3jrAYR7W9
         EJpk4ezWpwkIjI8KNKmL7iuQXe6B+0WKXulk80vuxZQIPRs6YGqV2XHIN1KVWdSnwg+m
         Qz6huBIQsZkJdUHOxCJGCPM99rO9pOm39cyLj7/mKgPEFVBf+2coUswbddIhfokDc3/H
         GzMDwi2A6NPVio16Mk9mBoZmF0tD3/fIpSZbk4QfXjOIy38L/MqkDJG40whYf6KVhMDZ
         CtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=sXmrSgqlfn2uLKbVmrSpyTH9tvkCAjqAFb/59uQYD1M=;
        b=WZRLMqS6kdLYT9REraK2mXXNrovwT3VdQnslAh7m8Pf0cwwyESm/G7TjdzkgjhM9HY
         n4oR9LiaHu3s6myWuKZc77TOW8FnO2wRjNDihMoVvzuqdX2qpaCjssr7+AsD5j6REGyq
         3SkFGIHwaph6Z1zT3MLDcVKuHdGRz3+Lj1Eo3BJeuCw8SKSAQq5Ya1pOrqn6TmXFlgGm
         p2QGnvIiAFZt3Sf7/X7N+ZHPymRALkmkRIRcJYQpMdHh3Re/QVNM3Eqs83WBWQ2CqqiX
         s+Ak12EPMJVA/3c2lE3bTpjdPUSn2gvgIG1ig24HpXqog9A9UXmopTOGBU5meIrPX9WR
         EnTg==
X-Gm-Message-State: AG10YOR12jpm17w1hsY5W0SwS0imVqJCugOrK5b1qtVIDiP8l7RcOBb04K4u+OhRJ8eECg==
X-Received: by 10.37.37.144 with SMTP id l138mr457090ybl.94.1455911150642;
        Fri, 19 Feb 2016 11:45:50 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::d:4229])
        by smtp.gmail.com with ESMTPSA id l202sm9681407ywb.4.2016.02.19.11.45.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 11:45:49 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 19 Feb 2016 14:45:48 -0500
From: Tejun Heo <tj@kernel.org>
To: Bhakti Priya <bhaktipriya96@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Use
 alloc_ordered_workqueue
Message-ID: <20160219194548.GM13177@mtj.duckdns.org>
References: <20160219075654.GA12205@Karyakshetra>
 <20160219160442.GK13177@mtj.duckdns.org>
 <CAFNHFT96V4Pt==M0ZRup-iZDn3FE1SZ8T_m_sxqsg6gqQ=7K1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFNHFT96V4Pt==M0ZRup-iZDn3FE1SZ8T_m_sxqsg6gqQ=7K1Q@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Bhakti.

On Sat, Feb 20, 2016 at 01:05:39AM +0530, Bhakti Priya wrote:
> On Fri, Feb 19, 2016 at 9:34 PM, Tejun Heo <tj@kernel.org> wrote:
> > So, this is the mechanical conversion from
> > create_singlethread_workqueue() to the new interface; however, that's
> > not what we want to do.  Does it *need* to be ordered?  Does it *need*
> > to be guaranteed to make forward progress because it's depended upon
> > during memory reclaim?  Does it even *need* to be a separate
> > workqueue?  You need to actually examine the specific use case and
> > answer those questions before converting it and explain and justify
> > the decision in the changelog.
> >
> According to my understanding, with cmwq, there's no need for
> octeon/ethernet driver to use separate
> a workqueue.  I have removed the dedicated workqueues from ethernet
> and have used
> system_wq instead. Please correct me I am wrong.

I think that'd be the case but can you please explain how you reached
that conclusion?  Explaining the process or justifications is often as
or even more important as reaching the right conclusion as that allows
other people to verify its correctness and helps correcting it if it
turns out to be wrong.

Thanks!

-- 
tejun

