X-GM-THRID: 6391853165907542016
X-Received: by 10.99.107.196 with SMTP id g187mr2030503pgc.48.1488361086925;
        Wed, 01 Mar 2017 01:38:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.74 with SMTP id b71ls1064043iod.32.gmail; Wed, 01 Mar
 2017 01:38:05 -0800 (PST)
X-Received: by 10.99.104.130 with SMTP id d124mr2319486pgc.13.1488361085930;
        Wed, 01 Mar 2017 01:38:05 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si577303pfd.3.2017.03.01.01.38.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 01:38:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 34644B59;
	Wed,  1 Mar 2017 09:38:05 +0000 (UTC)
Date: Wed, 1 Mar 2017 10:37:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: dgnc: replace usleep_range with udelay
Message-ID: <20170301093755.GA26138@kroah.com>
References: <20170301091716.GA3860@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170301091716.GA3860@aishwarya>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 01, 2017 at 02:47:16PM +0530, Aishwarya Pant wrote:
> udelay is impelmented using a busy-wait loop and consumes CPU cycles
> while usleep_range is implemented using interrupts. cls_flush_uart_write()
> is called after a channel lock is acquired i.e. an atomic context.
> Hence delay in this method should use udelay instead of usleep_range.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> 
> ---
> Change in v2:
> 	- Edit commit message to explain why udelay should be used

No, put a comment in the code above the line itself about this.

thanks,

greg k-h

