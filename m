X-GM-THRID: 6390398326038069248
X-Received: by 10.129.196.9 with SMTP id j9mr1384205ywi.138.1487957208227;
        Fri, 24 Feb 2017 09:26:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.124 with SMTP id z57ls7824565otz.38.gmail; Fri, 24 Feb
 2017 09:26:47 -0800 (PST)
X-Received: by 10.129.169.10 with SMTP id g10mr1258072ywh.165.1487957207877;
        Fri, 24 Feb 2017 09:26:47 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d63si1554457pfe.2.2017.02.24.09.26.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:26:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 406A49FA;
	Fri, 24 Feb 2017 17:26:47 +0000 (UTC)
Date: Fri, 24 Feb 2017 18:26:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gargi Sharma <gs051095@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: replace explicit
 NULL comparison
Message-ID: <20170224172640.GA22600@kroah.com>
References: <1487880419-28962-1-git-send-email-gs051095@gmail.com>
 <alpine.DEB.2.20.1702232132020.2103@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1702232132020.2103@hadrien>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Thu, Feb 23, 2017 at 09:32:32PM +0100, Julia Lawall wrote:
> On Fri, 24 Feb 2017, Gargi Sharma wrote:
> 
> > Replace explicit NULL comparison with ! operator to
> > simplify code.
> 
> This change is already made in my kernel, suggesting that I already acked
> some other patch doing the same thing.

Really?  I don't see it in mine, so I'll go take it :)

thanks,

greg k-h

