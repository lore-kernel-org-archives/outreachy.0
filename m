X-GM-THRID: 6252641236847427584
X-Received: by 10.182.240.137 with SMTP id wa9mr9118145obc.16.1456667078375;
        Sun, 28 Feb 2016 05:44:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.133 with SMTP id b5ls290100igx.5.canary; Sun, 28 Feb
 2016 05:44:38 -0800 (PST)
X-Received: by 10.107.169.88 with SMTP id s85mr14721166ioe.30.1456667078078;
        Sun, 28 Feb 2016 05:44:38 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-ob0-x241.google.com (mail-ob0-x241.google.com. [2607:f8b0:4003:c01::241])
        by gmr-mx.google.com with ESMTPS id nt4si753440igb.2.2016.02.28.05.44.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:44:37 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) client-ip=2607:f8b0:4003:c01::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::241 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ob0-x241.google.com with SMTP id hc1so848283obb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jpwquoZg5S9oNCac6/Isw9eMlO/j50bN5XJJbw4BeA0=;
        b=aRGMyOa6cMv+okj/dZd5GteW563AdvBA73FL4WME5SCKTYTL+i9NFl4AKo95g1VZfW
         QQA6x8+1AX2NRqOP8YChup+JL9Fwa2mF74DMdN5eKAlvZzGIzS97pdp2otnLNHQuEgDy
         AXNZ11dud8iAb79exuukCWnnPp9ARMVYSnJoJ8jboMriykoMlV6JSC51hcOyk0tfXMF3
         cR4QHBA9SUfOOCiHiTWa1XPqKyM+snUd1YFZlJc2t8lixxV45R38V7ycwx5zdp61jIfR
         0JiajEh5dYf8EEHngiz6rWBeCiv2gcue3/nV7SA/eo3FZxrqeBv42yri+EPm2U3XuJ/P
         pVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=jpwquoZg5S9oNCac6/Isw9eMlO/j50bN5XJJbw4BeA0=;
        b=QLuVGFDzKTgnzxX5YwUKKNOCxQ0H5wtOJnI7EjEy6gb2dgCl0vnLqGdxWLd3TFpYKK
         EDYQqtoo8Rxp2FCf8PjydNiPXNSEP6Rru3Foc49dlqy3AsY31Hc0G/XbwjmVfpWl27vo
         dAerV91q1II+umohEMgxD3aeydXfWRmfeuMR97nAhqQ6y2g35R3jn1BkOy5GgsE6WlH9
         XazegdM7PiUP7jZ77/pH8y/IdcXKnYoBrBBx6fAAcr5SvyicxF0JG7SXc9j/Eql6eDa7
         +ErF2HF6Diegwo19dAWNO+YEx9ryu7Pf8ha6ot8kBNqQ7TeNufOTK4++W7lpmMN0Okfv
         W05g==
X-Gm-Message-State: AD7BkJLJbEwlpIwgm9KpQ/P4q+LnMNBnEOIqf4+EcUURoBAY1SVRCjlNyP4En+bHZNf39w==
X-Received: by 10.182.126.198 with SMTP id na6mr7997723obb.3.1456667077754;
        Sun, 28 Feb 2016 05:44:37 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2602:306:b8cd:a0d0::2f])
        by smtp.gmail.com with ESMTPSA id u193sm14684905oie.25.2016.02.28.05.44.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:44:37 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sun, 28 Feb 2016 08:44:36 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/4] staging: most: hdm-dim2: Use
 devm_* functions
Message-ID: <20160228134436.GS3965@htj.duckdns.org>
References: <cover.1455803765.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455803765.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 08:11:16PM +0530, Amitoj Kaur Chawla wrote:
> Devm_ functions allocate memory that is released when a driver
> detaches. Replace kzalloc, ioremap and request_irq with their devm_*
> counterparts in the probe function of a platform device which were
> originally freed in the remove function.
> 
> Also, unnecessary labels have been removed, an unnecessary
> platform_set_drvdata has been removed as well as switching from pr_err
> to dev_err.
> 
> Amitoj Kaur Chawla (4):
>   staging: most: hdm-dim2: Replace kzalloc with devm_kzalloc
>   staging: most: hdm-dim2: Switch to devm_ioremap_resource()
>   staging: most: hdm-dim2: Replace request_irq with devm_request_irq
>   staging: most: hdm-dim2: Replace pr_err with dev_err

For the patchset,

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

