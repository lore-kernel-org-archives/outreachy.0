X-GM-THRID: 6259194073994756096
X-Received: by 10.182.245.131 with SMTP id xo3mr8796981obc.49.1457725255338;
        Fri, 11 Mar 2016 11:40:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.52 with SMTP id v49ls2985073qge.71.gmail; Fri, 11 Mar
 2016 11:40:54 -0800 (PST)
X-Received: by 10.129.82.14 with SMTP id g14mr8345270ywb.13.1457725254421;
        Fri, 11 Mar 2016 11:40:54 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id w126si643565ywe.6.2016.03.11.11.40.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 11:40:54 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id u110so106848275qge.3
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 11:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QP9gFEn2MfaoTkqFs0ZKtb2ApRIoat+4quNRSBqZ1vQ=;
        b=OaFePvPM/tFpqJxB7jsiWyN/FnWqDdBsKXpovvvaWhkOOv9Mr4Sq7vvf27nDRYAFfj
         Xfxg0IHPTaFE0/jcCXbgA+05REU/y+tkS/K1Yfip76GzPrwsTVKa4jSIlJ9fTuiE4Oqv
         GrFNfNxNjYMGQMQcJweGNbSeGUuiuqrmeeJNL5r8KeoRa/12D5H5KqElP7yVe8VhESbX
         SAH2miGWac/bwqhiNYxqLFeTGaOXxyjGDLYIlAiOB7eZcK5A2wPPrw52XmWGIeIeuSwM
         pjtWXXbLe9/ZQj+b/luSHe8a7gYw2uAYxKLsta/eo698+48AoENu4QcE6eVVIAWd7Pkq
         alRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=QP9gFEn2MfaoTkqFs0ZKtb2ApRIoat+4quNRSBqZ1vQ=;
        b=O7RY7grdhXarHP2YJbOTEDNkOGDjWGAkdrmPaQ7/LW9pfLPX3CQSj0hvXWyBWsuov/
         Aw5UB4teRjqXGG6n7zPjrhOpWYsu0xbBmT+IIZAdWgyugJ4TVKVBD7bXUILzPSSUG6Jc
         ZyoUDBo5tc/Tp9fsbS9Rzef1fdIyylU46dUvb9Yp4UkD8bXiBGjaCI/I3uAwamcWbUrr
         OIn6L+oLn4EDu+2iPlJJhy+78wYPKw1xCmvMm74BxSBBUHtw6NuL3b+ZzIpK8Wu4UYlS
         g4rEkildZmCH2uFeY/zE6fLm/tDfHZ9mg8pPDic3UVm748EKGYskmxUHRUUKQaxcKss9
         Mb0w==
X-Gm-Message-State: AD7BkJJ6Y+ckVfSCItwW6EvGFAonFAbi3p1XnuB43DShGH634T1ZRYAgh7tlD8bX4X9uiQ==
X-Received: by 10.140.165.205 with SMTP id l196mr15220715qhl.58.1457725254213;
        Fri, 11 Mar 2016 11:40:54 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost (pool-100-8-33-164.nwrknj.fios.verizon.net. [100.8.33.164])
        by smtp.gmail.com with ESMTPSA id t10sm4599671qhc.13.2016.03.11.11.40.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 11:40:53 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 11 Mar 2016 14:40:52 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_usb: Replace
 delayed_work with work_struct
Message-ID: <20160311194052.GO24046@htj.duckdns.org>
References: <20160307062937.GA12815@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307062937.GA12815@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 07, 2016 at 11:59:37AM +0530, Amitoj Kaur Chawla wrote:
> Replace uses of delayed_work with work_struct as the work is not required 
> to be timed and is only used to indicate whether a packet has been sent 
> in case of do_tx() or received in case of do_rx(). 
> Instead of accessing the delayed_work's inner work_struct each time, 
> remove use of delayed_work, corresponding delayed_work.work and 
> INIT_DELAYED_WORK by replacing with work_struct counteparts.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Acked-by: Tejun Heo <tj@kernel.org>

Thanks!

-- 
tejun

