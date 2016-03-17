X-GM-THRID: 6261572642217656320
X-Received: by 10.13.213.7 with SMTP id x7mr5134781ywd.55.1458220694451;
        Thu, 17 Mar 2016 06:18:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.134 with SMTP id 6ls1634165qgz.70.gmail; Thu, 17 Mar
 2016 06:18:13 -0700 (PDT)
X-Received: by 10.129.157.71 with SMTP id u68mr6944588ywg.47.1458220693495;
        Thu, 17 Mar 2016 06:18:13 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id 12si1142123pfb.1.2016.03.17.06.18.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 06:18:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pf0-x232.google.com with SMTP id u190so120849656pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 06:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=McPtiuHdH8B6slE2XEv3o4d8mZPHcMr0s8fGtGwQ7mk=;
        b=dLM/dpYZl1p90rNAsT10bBp+UnqYQQUvns6lcwdfrEF2ZVla4UDlRS7kKQM018Am/0
         8s+Mak3r3gIPp3mzUmm+e3hdWZSrKzf1UdJgpVnXQC+xogmzZfA8l/06YVOTpucR6Znt
         XmdNmjDSrztqM0jekXFqvxNrtwoAF1Dja8TuTzZB1KTI3o3iuoBoM0sD1v7vI4cgpVWy
         d8Zl6FkcH1/7xBp0W7cundPdJIxanfsqXeXjI2ydXRA8EidxGGup7eQDIbHZQoYnHibx
         VMF66MrX5e4qr+/wcQYlCFvT10TGQAhW/ysDfOVHSwIjAsSrSpgbwBPnqMWZONe/6aiU
         ywOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=McPtiuHdH8B6slE2XEv3o4d8mZPHcMr0s8fGtGwQ7mk=;
        b=ZLbFPh0RM0IJO1aZ2/tpsmq/0mIQcmwY5oChjwRnXtT5PI1D8jxhE+1p60sS3qt4L/
         DAeULrbd5BeOyQW2WvRUO0D1GLEURk2dxcWYf8bFHnrOdSdXGxr6iWO43/dJzE5HviBY
         z7DP8MzhIgXqaYLpWu2Wza6OeuwgnWDTR7E7xRpW6op9CJxwvvdLaUhAKGchG3ft/Z7k
         Afshz/ut6kLJS9dRelRXd30VuLU7Nu2CL+NRPtFPBG8OfBKNbwAG5bUEikGGzNChcymq
         bAiD1w1rzk8f/HJJQ3yWZw0vzl1U3pKjK+iqxPWJDuM6+/3UpLI/qlcOAqWW4fWQ3EcF
         YS9g==
X-Gm-Message-State: AD7BkJJtYoGq19yByXJMO38G8csprnFKUi/NLf8Ym5aLNTU+hP6FZrL4ioFK0UfY7FCX7A==
X-Received: by 10.98.15.142 with SMTP id 14mr14860786pfp.6.1458220693290;
        Thu, 17 Mar 2016 06:18:13 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c090:200::befb])
        by smtp.gmail.com with ESMTPSA id h85sm13485711pfj.52.2016.03.17.06.18.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 06:18:12 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 17 Mar 2016 06:18:11 -0700
From: "tj@kernel.org" <tj@kernel.org>
To: "Grumbach, Emmanuel" <emmanuel.grumbach@intel.com>
Cc: Eva Rachel Retuya <eraretuya@gmail.com>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Berg, Johannes" <johannes.berg@intel.com>,
	linuxwifi <linuxwifi@intel.com>,
	"kvalo@codeaurora.org" <kvalo@codeaurora.org>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] iwlwifi: dvm: convert create_singlethread_workqueue() to
 alloc_workqueue()
Message-ID: <20160317131811.GO21104@mtj.duckdns.org>
References: <1458218246-18807-1-git-send-email-eraretuya@gmail.com>
 <0BA3FCBA62E2DC44AF3030971E174FB32EA7C435@hasmsx107.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0BA3FCBA62E2DC44AF3030971E174FB32EA7C435@hasmsx107.ger.corp.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Mar 17, 2016 at 12:43:35PM +0000, Grumbach, Emmanuel wrote:
> > 
> > Use alloc_workqueue() to allocate the workqueue instead of
> > create_singlethread_workqueue() since the latter is deprecated and is
> > scheduled
> > for removal.
> 
> I can't see any indication of that in the code of workqueue.
> Can you share details about that?

create*_workqueue()'s have been deprecated and replaced by
alloc*_workqueue()'s for some years now.  I probably should note that
in the header file.

Thanks.

-- 
tejun

