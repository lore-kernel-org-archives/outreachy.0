X-GM-THRID: 6253307267835232256
X-Received: by 10.66.148.4 with SMTP id to4mr5159502pab.8.1456581926539;
        Sat, 27 Feb 2016 06:05:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls1563128qgm.97.gmail; Sat, 27 Feb
 2016 06:05:25 -0800 (PST)
X-Received: by 10.129.88.135 with SMTP id m129mr5212208ywb.47.1456581925892;
        Sat, 27 Feb 2016 06:05:25 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-oi0-x22b.google.com (mail-oi0-x22b.google.com. [2607:f8b0:4003:c06::22b])
        by gmr-mx.google.com with ESMTPS id ug8si479648igb.3.2016.02.27.06.05.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 06:05:25 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) client-ip=2607:f8b0:4003:c06::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-oi0-x22b.google.com with SMTP id j125so79993063oih.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 06:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pjZ8bLYCPavyQghuH5XdTprHF0FVErNx93/DKjOS0sU=;
        b=AO4h/2IfIrn1BjikZNUoyATjbcw68pcyKVmdzE7EP+dL9QSTSXBDMrwjGB2Hiha83K
         fcnEVuG6B1VwxRu8XmY3xXwvs4JgLePfMukOREX05qkh/+g9Cq1CWoh0vo2g4aSwXiVU
         r4i4scOUxPgzAIgTjUt4Tcyv6DJA0mSQKtpdAOryVRBM3qgZzQ3ufhBkYDwaikBPKEzO
         UvPG0Lz8QKdv76CTNJEMGbTbg6o1zYl15mvGGaeyQnwCUovohKgW8bldx06hXQ7rclPD
         k72ezAFfiYSCQqz749Rfryn42R7v865JbOIlYNbHd7rARpJeGh++ykhzrsJMaHU8xXK2
         E8+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=pjZ8bLYCPavyQghuH5XdTprHF0FVErNx93/DKjOS0sU=;
        b=KfgKS9xkwHcg7YBHeGHixWQooMAmcd9wQb43WQig54JjNbGsOoIaKEDfh+tl8VWpt3
         fH0ZJhSRccBaQHBztuBj0vsx/CsuH0lTFowSgQZbzN+MH/8cqtIm+OMIovTzRPyBpFtP
         JXYj6ARSIfixY/x2dlkxS7lBYMrHX0GOk3sChYpaYE0071SKAZUll1V4Wt3WSgfWMtxj
         Ms1qqbkMlI8hYewhOBRHCv4Da0ZJWIc2gfucbhd6btOed4uKO53XNqgtvEF/oHM62Co6
         Ug6QtW182xq0dsLhxUTR6ApGK6Yz4P2/SvhngjYz0XFcwThpU6tiaQlxjKgkvuRzT47N
         iGjQ==
X-Gm-Message-State: AD7BkJLyjm5OQSJHdw5nyUA6jE6Es6Stqub8gnLRoiYgH73sGJpXMQvsZhpR9M39yAmZcg==
X-Received: by 10.202.81.138 with SMTP id f132mr4797437oib.84.1456581925700;
        Sat, 27 Feb 2016 06:05:25 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2602:306:b8cd:a0d0::2f])
        by smtp.gmail.com with ESMTPSA id kg5sm3926879oeb.12.2016.02.27.06.05.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 06:05:25 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sat, 27 Feb 2016 09:05:24 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: most: hdm-usb: Remove create_workqueue()
Message-ID: <20160227140524.GI3965@htj.duckdns.org>
References: <20160220094538.GA15446@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160220094538.GA15446@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 20, 2016 at 03:15:38PM +0530, Amitoj Kaur Chawla wrote:
> With concurrency managed workqueues, use of dedicated workqueues can
> be replaced by using system_wq. Drop schedule_usb_work by using
> system_wq.
> 
> Since there is only one work item per buf_anchor and most_dev and they
> do not need to be ordered, increase of concurrency by switching to
> system_wq should not break anything.
> 
> Both work items are sync canceled before the driver can be
> unregistered, to ensure no work item is pending or executing on any 
> CPU by the time exit path is in flight.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

For workqueue part,

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

