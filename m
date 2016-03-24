X-GM-THRID: 6262296437961261056
X-Received: by 10.176.1.141 with SMTP id 13mr6377181ual.9.1458848546666;
        Thu, 24 Mar 2016 12:42:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.33 with SMTP id a30ls1060287qge.72.gmail; Thu, 24 Mar
 2016 12:42:25 -0700 (PDT)
X-Received: by 10.140.96.100 with SMTP id j91mr6185328qge.6.1458848545974;
        Thu, 24 Mar 2016 12:42:25 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id w69si761910ywa.3.2016.03.24.12.42.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Mar 2016 12:42:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=htejun@gmail.com
Received: by mail-yw0-x243.google.com with SMTP id f6so6704277ywa.1
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Mar 2016 12:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mlPauygosqWtmrZhBy5P3vMQD2QKibbsCT8N6vY41TE=;
        b=JWk0EKJj3uZEertg2oEn1qryFlUbpv/ST4Y0gU5gBFSQJ1116XeHeN7PEEmwCMP95a
         30kX52intNa1x2HcfH+IF4yMm1d8GOJjYF3/peviJ8IseCiEC2sdXROnu2whGmjK2sEp
         32DB5DuCZGY9MQLow8KwSyI16QPrcyO3xGv2KZPYYKCCa77KkwRkWO2Xvovx+kAWbkzq
         h8V0nKKUZBhLUlYDGdIzkbUPtRDZEIbJnthUJbbZM/vxLsvJlU38oUsOz9vZIoiFfViS
         0wMo5hMSC8mEVBsSVUJ6zY+j5wF6pJsPmk+V/wqwH9sqaNokY3TrMIFbDXGKwNMtQDHB
         hg0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=mlPauygosqWtmrZhBy5P3vMQD2QKibbsCT8N6vY41TE=;
        b=m6fmqIK229g+CUFEkhDoG+w3VpxA2c3QAbAn0g02wIEVvgy2QsdMg2HCX6iIy6G58N
         vgYRg/tefR9MyC1HVj8bi5ok+D2ojcCExGVrQDRZcWIg1Wyhi+LnEHyeAScbsVVAV8h2
         EYvyAM0Ot4/ZJKXM/r5ZR74HvKWZDF6TMqTajtz9K9Jvb6HL9rJxUYXpIBtc6tETpshK
         nm0IW00iw+vGx0n4B8L439w/anpU7JpxB7yua+gxrVMo4ZLwuvTNfAqF65quvR/00+Js
         IwBuDBqwgQTh4AkyD3rRu0QHpRJsgi9Gef//07/YN/Rae4Cg9/ptlsWiUOp9LmtH7Ohy
         JKuw==
X-Gm-Message-State: AD7BkJKuc6BLK3PWDDKxl/x6Zoi0Y2HQfjBk5a7eCJC072nxXbD3NUE3iMfnoALh2Baysg==
X-Received: by 10.129.55.134 with SMTP id e128mr6007573ywa.277.1458848545835;
        Thu, 24 Mar 2016 12:42:25 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::7:1aee])
        by smtp.gmail.com with ESMTPSA id o85sm5389943ywd.37.2016.03.24.12.42.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Mar 2016 12:42:25 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 24 Mar 2016 15:42:24 -0400
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] can: mcp251x: Replace
 create_freezable_workqueue with alloc_workqueue
Message-ID: <20160324194224.GE7822@mtj.duckdns.org>
References: <20160317141641.GA5080@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160317141641.GA5080@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Mar 17, 2016 at 07:46:41PM +0530, Amitoj Kaur Chawla wrote:
> Replace scheduled to be removed create_freezable_workqueue with
> alloc_workqueue.
> 
> priv->wq should be explicitly set as freezable to ensure it is frozen
> in the suspend sequence and work items are drained so that no new work
> item starts execution until thawed. Thus, use of WQ_FREEZABLE flag
> here is required.
> 
> WQ_MEM_RECLAIM flag has not been set here since this driver doesn't
> seem to sit in the memory reclaim path.

Ditto with WQ_MEM_RECLAIM.

Thanks.

-- 
tejun

