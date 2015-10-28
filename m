X-GM-THRID: 6210549354962354176
X-Received: by 10.107.136.19 with SMTP id k19mr15006738iod.5.1446007589059;
        Tue, 27 Oct 2015 21:46:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.73.198 with SMTP id n6ls2098218obv.16.gmail; Tue, 27 Oct
 2015 21:46:28 -0700 (PDT)
X-Received: by 10.182.236.4 with SMTP id uq4mr16045306obc.3.1446007588592;
        Tue, 27 Oct 2015 21:46:28 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id fa8si4639632pab.1.2015.10.27.21.46.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 21:46:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.250])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6A8E489F;
	Wed, 28 Oct 2015 04:46:27 +0000 (UTC)
Date: Wed, 28 Oct 2015 13:46:25 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use rwsemaphore
Message-ID: <20151028044625.GA6015@kroah.com>
References: <1446006196-6294-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446006196-6294-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 27, 2015 at 09:23:16PM -0700, Ksenija Stanojevic wrote:
> Functions that use semaphore for locking are divided into read/write
> functions, so use locking mechanism that provides similar semantics.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

Unless you can measure the speed differences by switching to such a
lock, never switch to such a lock as they are much more complex and can
actually cause things to go _slower_.

So I can't take this patch unless you have measureable benchmark
numbers.

thanks,

greg k-h

