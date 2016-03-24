X-GM-THRID: 6262288829369024512
X-Received: by 10.66.181.7 with SMTP id ds7mr6391841pac.35.1458848498865;
        Thu, 24 Mar 2016 12:41:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.84 with SMTP id n20ls342317otd.10.gmail; Thu, 24 Mar
 2016 12:41:38 -0700 (PDT)
X-Received: by 10.182.28.41 with SMTP id y9mr6489142obg.14.1458848498312;
        Thu, 24 Mar 2016 12:41:38 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id s129si840922ywb.5.2016.03.24.12.41.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Mar 2016 12:41:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=htejun@gmail.com
Received: by mail-yw0-x242.google.com with SMTP id f6so6701407ywa.1
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Mar 2016 12:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sv7CVfK4QsxOfgrUxxaZ2T5sf/Xe+prC8UBfPhCVjnM=;
        b=D5bL9vAgBn8m7zcJFrJOUPTWBl2IXmGdixFUpbWBRhiLj22IaQ0gclVzu5NKyLoCWt
         i7tKX62Jnh1kxG4tcIsiacLsyYvtXli2eXmr9krkLeQj0+G56YftzldqBeGap8SI7lN8
         3XMTMGDkKgauDm6TMoj3rGSU9pjRLuQ8E0ulYdP/Na3Yae6jotPubCBSvvuSYfBZIBbe
         eQpjY2zb6VQkovqedtihBjA4ppNqw0uM0jRnuUiXLBbD7yeGfHO5IW5eYZL083qdhSGx
         CtX+I8uIzbPW/MAi9bZVATvdlDNWETlPQ6Xm4Xv7LmB0EXzpfr0+Kax9MhJZ0reLUxtH
         zj0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=sv7CVfK4QsxOfgrUxxaZ2T5sf/Xe+prC8UBfPhCVjnM=;
        b=h8g4woAIMvJ7l7zOZ5HiinQ3JqpsQszM7YDUt/AJGYGIBtxJ7ulonaYNEPWIvpj9k4
         GoCmNs5w2UTwnsl9bjJeF98OngAbE479c98N+QZ5+GbKxLf3k/9JRajD/w3YAn/0l62n
         zDQNEIwENcJoGdp6ZPO58WWmwG03uD12iFPUMlYOpVsnKpvKtRDGE5GuXf6D2SbK1rrl
         P5+GOtMUDlzdWbLxxEEtoQBDJ95yDsQajk9lMXpu7zCE08Y7ygcMuCysMRIEzOVI/O3z
         /kNmAseZcvHPNeSs5iw4sL7oZfhCsU64fGRGH9TU00X/QLVGoRYfJb8LhfS8NZXD1X3D
         dG2Q==
X-Gm-Message-State: AD7BkJKXek5kgDSi7uph+CrtZxVZjW1qYJWGIRKvoHaLUHPeJwEQxhrVcYmLJOprI79IZA==
X-Received: by 10.129.39.216 with SMTP id n207mr5336013ywn.260.1458848498181;
        Thu, 24 Mar 2016 12:41:38 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::7:1aee])
        by smtp.gmail.com with ESMTPSA id e62sm5393412ywb.26.2016.03.24.12.41.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Mar 2016 12:41:37 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 24 Mar 2016 15:41:36 -0400
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] qlge: Replace
 create_singlethread_workqueue with alloc_ordered_workqueue
Message-ID: <20160324194136.GD7822@mtj.duckdns.org>
References: <20160317150417.GA8085@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160317150417.GA8085@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Mar 17, 2016 at 08:34:17PM +0530, Amitoj Kaur Chawla wrote:
> Replace deprecated create_singlethread_workqueue with
> alloc_ordered_workqueue.
> 
> Work items include getting tx/rx frame sizes, resetting MPI processor,
> setting asic recovery bit so ordering seems necessary as only one work
> item should be in queue/executing at any given time, hence the use of
> alloc_ordered_workqueue.
> 
> WQ_MEM_RECLAIM flag has not been set since this driver doesn't seem to
> sit in memory reclaim path.

So, apparently, people do put ethernet devices on memory reclaim path,
so let's add back WQ_MEM_RECLAIM.

Thanks!

-- 
tejun

