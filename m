X-GM-THRID: 6261572642217656320
X-Received: by 10.98.12.66 with SMTP id u63mr7066967pfi.12.1458220872893;
        Thu, 17 Mar 2016 06:21:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.208 with SMTP id n74ls1733188qgn.63.gmail; Thu, 17 Mar
 2016 06:21:12 -0700 (PDT)
X-Received: by 10.140.167.7 with SMTP id n7mr7089847qhn.19.1458220872225;
        Thu, 17 Mar 2016 06:21:12 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id ui7si1339661pab.0.2016.03.17.06.21.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 06:21:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id 124so121503889pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 06:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=ujAVwCcGMea2GPgZB+BE5/gaHvDy91t1RMo7F3Ml9Kc=;
        b=Rn52oLyYLa4OjU/NNHH9tw0gsW21Gwe6LQG3gUnvM+xvh4jql2uCCelMDzXPvLefFd
         lE/vEO4SowFpPgVQk16YaIuam7DFXMCmkTVJa7pNhdqkItEAk24/IGOr7P5hbi9pewCE
         Z3hF567+yMrFOjzeY3RDleW1QqZsjhgMVpsHHGbZuBdEERkAx/VNt4rSu8HFZpIjDwqE
         K7Xi7EsW+M5ZxGTs+u0rtfS45hOfWBpYHM0/FDdXfDCjEalYqNx3YnaFa+nbYDWQNr2e
         f3Jt/GT4yfSI5SYJUSiuZTMV4etSB2ZiFcFu2dyxnRR7hQAbTrRbC0LYQLC7vUWKFQyp
         29Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=ujAVwCcGMea2GPgZB+BE5/gaHvDy91t1RMo7F3Ml9Kc=;
        b=i7yV2+oKgais4APY7iN0EpzOnbRDFPaZeLX6fLR37XvbRazd8eUaf5rLuPgExSWEA5
         SL+O6HjoOpImZ+8J4tKrdHRU2i/SczojGpVNB9kcua7LeiPT30M7AmLAa89tIbdFsAP4
         SJzqPqhNfW2/qCkQgd1aWlsfcV7n2Yv0WkL90NPnXINXwvtkDafK4gnJCNvyRVRFSc3s
         MHE+4WbbSvEXrIQ7dad0QaEEHPR+Qih+e4prr16CrG259fABe6e3t79QpuyhdlGefMY4
         jNgsT/9UVT7rEf3U11CZrnG5YjoPYtc5NeRQ1VUu1V2kRz/v4ITfhb+i6hmw+pRW3UVF
         pNSA==
X-Gm-Message-State: AD7BkJJkGHFzG6Wq2BB+r9nOzlY+JmBo4icBaqNig92H0J+Of7Vsq4ABUXcfcVGlv45lng==
X-Received: by 10.98.71.203 with SMTP id p72mr14889414pfi.165.1458220872072;
        Thu, 17 Mar 2016 06:21:12 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c090:200::befb])
        by smtp.gmail.com with ESMTPSA id se8sm13492841pac.44.2016.03.17.06.21.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 06:21:11 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 17 Mar 2016 06:21:10 -0700
From: Tejun Heo <tj@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Eva Rachel Retuya <eraretuya@gmail.com>,
	outreachy-kernel@googlegroups.com, emmanuel.grumbach@intel.com,
	linuxwifi@intel.com, kvalo@codeaurora.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iwlwifi: dvm: convert create_singlethread_workqueue() to
 alloc_workqueue()
Message-ID: <20160317132110.GP21104@mtj.duckdns.org>
References: <1458218246-18807-1-git-send-email-eraretuya@gmail.com>
 <1458218602.2158.17.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1458218602.2158.17.camel@sipsolutions.net>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Mar 17, 2016 at 01:43:22PM +0100, Johannes Berg wrote:
> On Thu, 2016-03-17 at 20:37 +0800, Eva Rachel Retuya wrote:
> > Use alloc_workqueue() to allocate the workqueue instead of
> > create_singlethread_workqueue() since the latter is deprecated and is
> > scheduled for removal.
> 
> Scheduled where?

They've been deprecated for years now.  I should note that in the
header.

> > �static void iwl_setup_deferred_work(struct iwl_priv *priv)
> > �{
> > -	priv->workqueue = create_singlethread_workqueue(DRV_NAME);
> > +	priv->workqueue = alloc_workqueue(DRV_NAME, WQ_HIGHPRI |
> > WQ_UNBOUND |
> > +					��WQ_MEM_RECLAIM, 1);
> 
> Seems like you should use�alloc_ordered_workqueue() though? That also
> gets you UNBOUND immediately, and the "1".

Right, this one should have been alloc_ordered_workqueue().

> I'm not really sure HIGHPRI is needed either.

So, no WQ_MEM_RECLAIM either then, I suppose?  What are the latency
requirements here - what happens if a thermal management work gets
delayed?

Thanks.

-- 
tejun

