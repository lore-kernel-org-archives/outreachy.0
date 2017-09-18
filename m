X-GM-THRID: 6466344790011150336
X-Received: by 10.223.182.165 with SMTP id j37mr1942796wre.16.1505729082340;
        Mon, 18 Sep 2017 03:04:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.16.8 with SMTP id j8ls800475lje.16.gmail; Mon, 18 Sep 2017
 03:04:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBCgsG3JLJCSVTXjIyL8S2gpjZKQGnB3AiRUQD/I9GOKTVypDKfAPrBym/V2BKfykMPiFvC
X-Received: by 10.25.169.1 with SMTP id s1mr811621lfe.29.1505729081013;
        Mon, 18 Sep 2017 03:04:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505729080; cv=none;
        d=google.com; s=arc-20160816;
        b=kvq4+pxLEOrA0WYQJhtRXi/ZRbUt0jUGPDgeBZTcSVCp3WrCblXfNn03IgQqtpZNBX
         VT13NWDaJmcS0UCt9SSvLgud4GIWL/FzwdGczA1PLUQ0ffSVZNjr9iLMKXHXPFyYJsvO
         2Oj24zzpQ0m6pUqNX0QD2RndjRQbC3xc8wf33Vzd6EljmxM1CILFQ1P6EGoE+UCfu8fq
         k1A1XreNRsqTyW4vacWEg1XHXNeA9Wqz2avU232i4qwmh/Scc9eKHGhpsmA1KkoKclXc
         9sTGzXKRJ2adwbSIuu7CbkWbs8iTKa0uUHMfSkSBkw3qHKTEZb0iOTQUgvHACzVZTBpx
         WHHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=/lFu8A4SPnIsA99BdB0ERJy9xCNZ7+abrASNOFj1QZ8=;
        b=OEh+2NBxw1v5JW+4Mik8r6wlv7t8rLyk0exsFNOibCTirWLh6AMLYZhy3jzZoGuS/A
         7U6hOhE59Ec8jEwzOKb0UYuDpso1SasUCwiMt7IEtNP/3A0YlSGgbWJplThL3Op9/3ns
         T2Pq1oYLYFW6jxrQ5rJuTM3ZyKo8h1Rpn/Cb62ZAyJ3mSMnA313U2esyf0OcWIwmriV6
         l/0u2nFVK1PSlBZAe3mScyXxJ7se8QvD1yHIVykbqkA4sT4QMhbfnjMpzrXwCKE+Up2+
         jl4hTAz3GlWzbKhuS7UGe/rB/c4y/+FbDC6li8FSS5ncTkSBAyJ3OoREVKMq95ziVBeK
         q1Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id b62si384740wmd.3.2017.09.18.03.04.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 03:04:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4D15EBDF;
	Mon, 18 Sep 2017 10:04:39 +0000 (UTC)
Date: Mon, 18 Sep 2017 12:04:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8191u: ieee80211: prefer pr_debug() to
 printk(KERN_DEBUG, ...)
Message-ID: <20170918100450.GB24451@kroah.com>
References: <1505563212-2690-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505563212-2690-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sat, Sep 16, 2017 at 05:30:12PM +0530, Aastha Gupta wrote:
> This patch replaces call to  printk with pr_debug function
> thus addressing the following checkpatch script warning:
> 
> WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(... to printk(KERN_DEBUG ...
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

As this is a network device, it should be using netdev_dbg() instead,
right?  Or, worse case, dev_dbg(), almost no driver should ever call a
"raw" pr_debug() call.

thanks,

greg k-h

