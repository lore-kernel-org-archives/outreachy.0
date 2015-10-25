X-GM-THRID: 6207040745324412928
X-Received: by 10.129.4.203 with SMTP id 194mr24599326ywe.33.1445761620244;
        Sun, 25 Oct 2015 01:27:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.37 with SMTP id rt5ls638243igb.24.gmail; Sun, 25 Oct
 2015 01:27:00 -0700 (PDT)
X-Received: by 10.67.7.35 with SMTP id cz3mr24239417pad.40.1445761619947;
        Sun, 25 Oct 2015 01:26:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si3068846pbb.2.2015.10.25.01.26.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D376390;
	Sun, 25 Oct 2015 08:26:58 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:39:20 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: glimpse: Fix
 block comment style
Message-ID: <20151025013920.GB8425@kroah.com>
References: <20151018172757.GA32840@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151018172757.GA32840@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 18, 2015 at 10:57:57PM +0530, Shivani Bhardwaj wrote:
> Block comments should be aligned correctly.
> 
> Fix checkpatch WARNING: Block comments use a trailing */ on a separate
> line
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lclient/glimpse.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

What changed in v2?  Please always let me know...

