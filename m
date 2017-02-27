X-GM-THRID: 6391488130164195328
X-Received: by 10.107.36.199 with SMTP id k190mr5977042iok.37.1488213870292;
        Mon, 27 Feb 2017 08:44:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.11 with SMTP id m11ls2765162otc.18.gmail; Mon, 27 Feb
 2017 08:44:29 -0800 (PST)
X-Received: by 10.157.17.117 with SMTP id p50mr6463855otp.4.1488213869848;
        Mon, 27 Feb 2017 08:44:29 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s64si3285478pfk.0.2017.02.27.08.44.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:44:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 00587B79;
	Mon, 27 Feb 2017 16:44:28 +0000 (UTC)
Date: Mon, 27 Feb 2017 17:44:20 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Aishwarya Pant <aishpant@gmail.com>,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: dgnc: replace udelay with
 usleep_range
Message-ID: <20170227164420.GA19150@kroah.com>
References: <20170227155229.GA4214@aishwarya>
 <alpine.DEB.2.20.1702271706050.3032@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1702271706050.3032@hadrien>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Feb 27, 2017 at 05:07:05PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 27 Feb 2017, Aishwarya Pant wrote:
> 
> > Fix checkpatch warning on dgnc_cls.c : CHECK usleep_range
> > is preferred over udelay. There is one ocurrence of udelay in
> > function cls_uart_init with non-atomic context that can be safely
> > replaced by usleep_range(t, t + delta) where delta is t (as t is
> > between 10 and 20 microseconds). Also replace usleep_range by udelay in
> > function cls_flush_uart_write as it is called under a channel lock.
> 
> I have the impression that these are two separate issues that should be
> treated in two separate patches.

I agree, this needs to be two different patches.

thanks,

greg k-h

