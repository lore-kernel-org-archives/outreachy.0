X-GM-THRID: 6252531554516467712
X-Received: by 10.66.218.8 with SMTP id pc8mr8824203pac.45.1456666130446;
        Sun, 28 Feb 2016 05:28:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.71 with SMTP id sw7ls399083obc.82.gmail; Sun, 28 Feb
 2016 05:28:50 -0800 (PST)
X-Received: by 10.182.33.42 with SMTP id o10mr8851910obi.12.1456666129988;
        Sun, 28 Feb 2016 05:28:49 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-ob0-x243.google.com (mail-ob0-x243.google.com. [2607:f8b0:4003:c01::243])
        by gmr-mx.google.com with ESMTPS id im4si278458igb.2.2016.02.28.05.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:28:49 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) client-ip=2607:f8b0:4003:c01::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ob0-x243.google.com with SMTP id u2so8503388obz.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2a6BDs3ZuOqTmDRSo1hZaw4k+AogvTRlh+Lkc2aNgns=;
        b=Wybts8+9PYBlS4rQBo0QHeIeFq/z7zgAa9SFZbte+7/hxpjo6igO7qTO7FlmTOOMD0
         MgHIMDiiTXRSy/cC1h+5H6YST9aoHkM0KrdMPnrPIs+bobpd+7l4c3epixCU6rCVkY8E
         qqLChqa91q10CKugh/MyR+6zWD6Jj9IfChe0os5V6QWUJ3IgPS1aCrLhmo2ozBDHLYaO
         SYtstPFd8GuY9bLaOjKpltHg7T1eSHwEMtfd+S3h3iQYkyvg2RmUyH29ykxfk2Vztgap
         /1SztOt2oU2i2Mjrv4fAMq2H7GQ0zlB7N+s7UgaiND7yE7pfsK5vEhl1Ktoi3VWG5ODP
         3Nxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=2a6BDs3ZuOqTmDRSo1hZaw4k+AogvTRlh+Lkc2aNgns=;
        b=OXGjdG5Uy8PswVHaPIrIHJbj383osc73B2OWJXykYFsHKPmfDGa4t+/yAKYaTQl9Cp
         5LUcNb9LvggWPoSXmnPOzkKYc8rGHy9y7YH3moQEcKedSFVb+lzeXFZEwNKQ0vEDvNSf
         l7U931NVmXUvRY6D8yMjEDGEPhqfhCbvgXfCE/ILKlHgOC0EVhvaaqA70MMQNWZG4lLD
         tZOX55xeBjvSRepQL9TylkH5VmutfCXvo5LMlXNOKna0THfO8wgP6QLV91q41pIPYI1A
         e0EyB0akkbrQ30EC45ImeNw5uFO3xjZak845UDcWkBxOQSpsxJA85KyEIXxC1fT5RhSn
         sqig==
X-Gm-Message-State: AD7BkJJuwuFAPB52ZZ0KMOuVGqNbzQ5rQ6AGtg8dvUtfD+LC3+wfl4JA2skUUUc3lxxesw==
X-Received: by 10.60.246.37 with SMTP id xt5mr8396693oec.72.1456666129313;
        Sun, 28 Feb 2016 05:28:49 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2602:306:b8cd:a0d0::2f])
        by smtp.gmail.com with ESMTPSA id n5sm14687705obi.20.2016.02.28.05.28.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:28:48 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sun, 28 Feb 2016 08:28:48 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: iio: light: indent to
 match open parenthesis
Message-ID: <20160228132848.GL3965@htj.duckdns.org>
References: <cover.1455730714.git.eraretuya@gmail.com>
 <98af43c029099a96af80a43c6df176547c5bb53d.1455730714.git.eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <98af43c029099a96af80a43c6df176547c5bb53d.1455730714.git.eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Feb 18, 2016 at 03:35:36PM +0800, Eva Rachel Retuya wrote:
> Indent the parameters to match open parenthesis as suggested by checkpatch.
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

