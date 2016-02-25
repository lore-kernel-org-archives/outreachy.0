X-GM-THRID: 6255063011291037696
X-Received: by 10.182.28.41 with SMTP id y9mr43196396obg.14.1456435276969;
        Thu, 25 Feb 2016 13:21:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.71 with SMTP id q65ls650460qgq.92.gmail; Thu, 25 Feb
 2016 13:21:16 -0800 (PST)
X-Received: by 10.140.155.14 with SMTP id b14mr15410131qhb.5.1456435276264;
        Thu, 25 Feb 2016 13:21:16 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yw0-x231.google.com (mail-yw0-x231.google.com. [2607:f8b0:4002:c05::231])
        by gmr-mx.google.com with ESMTPS id g136si598611ywb.5.2016.02.25.13.21.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 13:21:16 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::231 as permitted sender) client-ip=2607:f8b0:4002:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::231 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yw0-x231.google.com with SMTP id u200so53826559ywf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 13:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=BDEuY0puWLMQqem+owUwqjdQ3WtP8Q5FwAQJg6bvRT4=;
        b=OGD+ylubYH3Q/EDC32qWgzuVU7C1ah/VmzxCb6YVEjOnmq5bl7gnuB9z8C04BdyyKw
         Kyaln9y8E9/LsPOLrDtJMwYIWLSMOOOjcfrDt4q9eHKD+ywelMz+aykD6xn6M4It4MGW
         vXFiSSoV+zdxjh1jaRkkZWf7laQ8QC+w+KVxU3ZZzZB6O9BuYB8eF5FM9SxGObc58nhj
         WF8jU+8frHOGwLwZTisTwXPSXMFqZZi/GrTiSg5Sk4FtheOh5z5XPMTmkr/vOaXrUh5Z
         8JikUM+KwvcmMlcaERAa7mUzrzBltTrDOJBJjZOiNbUL+tQAo6mLiVey4rrhegGHeYPV
         97ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=BDEuY0puWLMQqem+owUwqjdQ3WtP8Q5FwAQJg6bvRT4=;
        b=ALlF3hZ28nrATwSRIvoaaz2D9S5zsl9DcECePP5rH+tXYbuAatArDT6chXfaJ/aMim
         QkGm7tpHW25/dfAM0Pr2aIA9xNtAbfWUHV1f4hNvqYNFzAhkUowofqYCEJOZYU+NDGca
         yva7jdwN6VXstKUrm5dxvbJoG6pmZCbfkhWhYUp7K0iZ1k7RT/8Y8eX4LsOXlzqYetk2
         DWT2jdU6h6GgrpeXGC//YXgP2lOthfa9XIvRlJGyx+Tg34aKPc/pL0hJLOeaMW3egHZt
         RsjU30y8pUULQ+mojy91YKcGVTL2v4sKbePgoXzwQAe3y9F+br8FZo+kxbgcFcqROVdF
         W+dQ==
X-Gm-Message-State: AG10YOS7MZirotJx6M6EU2LfV4GtlWtfH0TxmuHOvxcd6NVhY4hp84cx3MAShVZbv3rcWw==
X-Received: by 10.129.75.197 with SMTP id y188mr26601614ywa.291.1456435276140;
        Thu, 25 Feb 2016 13:21:16 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::1:aef7])
        by smtp.gmail.com with ESMTPSA id x7sm7413275ywf.35.2016.02.25.13.21.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 13:21:15 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 25 Feb 2016 16:21:14 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_usb: Remove
 create_workqueue()
Message-ID: <20160225212114.GD6092@mtj.duckdns.org>
References: <20160225031900.GA23782@amitoj-Inspiron-3542>
 <20160225155402.GP13177@mtj.duckdns.org>
 <CA+5yK5H2T4=sO50YgsV2G9zLgbpK4364VyObK=JmGUFJLgkqsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5yK5H2T4=sO50YgsV2G9zLgbpK4364VyObK=JmGUFJLgkqsg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Feb 25, 2016 at 11:40:17PM +0530, Amitoj Kaur Chawla wrote:
> > Excellent work.  It'd be great if the somebody can test the changes on
> > the actual hardware but for the workqueue part.
> >
> > Acked-by: Tejun Heo <tj@kernel.org>
> >
> > Thank a lot!
> >
> > --
> > tejun
> 
> Thanks Tejun :)
> 
> Not sure how to go about testing on hardware. I guess the maintainers
> should be cced?

Yeah, reposting the patch w/ maintainers cc'd should work, I suppose.

Thanks.

-- 
tejun

