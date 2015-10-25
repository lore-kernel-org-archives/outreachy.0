X-GM-THRID: 6207045610887970816
X-Received: by 10.129.80.132 with SMTP id e126mr15786218ywb.44.1445761624561;
        Sun, 25 Oct 2015 01:27:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.4.66 with SMTP id i2ls568638igi.12.canary; Sun, 25 Oct 2015
 01:27:04 -0700 (PDT)
X-Received: by 10.107.12.88 with SMTP id w85mr9072715ioi.32.1445761624259;
        Sun, 25 Oct 2015 01:27:04 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si3068863pbb.2.2015.10.25.01.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:27:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 73AD690;
	Sun, 25 Oct 2015 08:27:03 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:39:37 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lcommon_misc:
 Correct block comment style
Message-ID: <20151025013937.GC8425@kroah.com>
References: <20151018174645.GA33087@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151018174645.GA33087@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 18, 2015 at 11:16:45PM +0530, Shivani Bhardwaj wrote:
> Alignment of block comments should be correct.
> Fix checkpatch WARNING: Block comments use a trailing */ on a separate
> line
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lclient/lcommon_misc.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)

What happened in v2?

