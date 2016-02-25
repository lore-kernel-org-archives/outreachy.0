X-GM-THRID: 6253249019883028480
X-Received: by 10.182.112.193 with SMTP id is1mr43487580obb.38.1456435492618;
        Thu, 25 Feb 2016 13:24:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.69 with SMTP id d5ls366516igt.12.canary; Thu, 25 Feb
 2016 13:24:52 -0800 (PST)
X-Received: by 10.50.142.72 with SMTP id ru8mr777674igb.10.1456435492324;
        Thu, 25 Feb 2016 13:24:52 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id q187si627414ywf.4.2016.02.25.13.24.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 13:24:52 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yw0-x243.google.com with SMTP id h80so3111839ywc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 13:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=l5liV0saHZMaSMWJZWzPtN0DoMlQmwqi6L5ks/RDxME=;
        b=vPuOB9CK/NPU822eI/V5Yk1YR/EyQjx4/aRvjVtqhRNVth7QWYM8iUd0bXam+/IVuf
         OJa7nIm/oXoni66FKnARmjnXI5KvuaXBWTyatfRqYui0WYQBJDJ9PaliOQGqRnT+Wp02
         rlluXHnSagX7P3twbnH54fSdHUGmSjQrGojxLB89j13tALoer5fQ5GUoIeXkG/94OO8G
         ANXgEmN2UejTdxlXnDG399gdGn95Nl2913H+RD3kPk3iRhzWVlYCy19WwBYCKH/Q6s93
         d5PX8bVzkl+uXmBzO9QqLMGHBnX601lFpECysO0RnNGt1gBvqje0tPrMRcvnY4cdStut
         HKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=l5liV0saHZMaSMWJZWzPtN0DoMlQmwqi6L5ks/RDxME=;
        b=Mefb2Z0oleEPgfoNaNga8/1uz0Xh0dXS3uRdabvAEq0tTZEnFBPF7qa6nzkdoRXmiZ
         tRK6L3RrVFPF7k47OFbE2aAWcHWpz+7g0gAZ3tS/Oi2vDETnPJhEVsPt6onvP/Tx+tPR
         /cnYrYxdG0GurrJlEIJULK25my6i4ONQHwzux+gvDwL1GbtmksJZZyFeqdtqAvk3X1+E
         bzxNFOKryAmmT3nwCbE3/e+JnILzwvSbF86FZ02KoHF3tYwjcjNH8VR0hEfaR3GaDz9M
         2gf4ULpI+aaRhPo5bl+pei3pWOu5Y9aGrnVvJsRAUAcVwHRewtgu5fV4H4GboEaYk51O
         piIw==
X-Gm-Message-State: AG10YOTYuGzjp0pjbhU7TqAjokLc+tYnUpUuVsTiAiCFxCeSZQL+tplv08vcVeAcwFyaOw==
X-Received: by 10.129.20.212 with SMTP id 203mr24921510ywu.68.1456435492187;
        Thu, 25 Feb 2016 13:24:52 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::1:aef7])
        by smtp.gmail.com with ESMTPSA id h200sm7397558ywc.44.2016.02.25.13.24.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 13:24:51 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 25 Feb 2016 16:24:50 -0500
From: Tejun Heo <tj@kernel.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: octeon: Use system_wq
 instead of dedicated workqueue
Message-ID: <20160225212450.GE6092@mtj.duckdns.org>
References: <20160220060022.GA28788@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160220060022.GA28788@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Bhaktipriya.

Sorry about the delay.  Was buried past several days.

On Sat, Feb 20, 2016 at 11:30:22AM +0530, Bhaktipriya Shridhar wrote:
> With cmwq, there's no need for octeon/ethernet driver to use a separate
> workqueue. Removed the dedicated workqueue from ethernet and
> used system_wq instead.
> 
> Here, creating a whole set of worker threads in order to run a function is an
> overkill. The workqueue in octeon/ethernet is a singlethread_workqueue and is
> not cpu-intensive or high-priority. Hence system_wq is preferred.

So, while the patch looks good to me, I think the description still
needs to be more detailed.

* Why don't we need WQ_RESCUER?

* What about ordering requirements?

* Do the work items need flushing?  If so, how are they handled?  If
  not, why?

Thanks.

-- 
tejun

