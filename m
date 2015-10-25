X-GM-THRID: 6208412714735239168
X-Received: by 10.50.78.226 with SMTP id e2mr8083475igx.3.1445761582889;
        Sun, 25 Oct 2015 01:26:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.7 with SMTP id b7ls1201681ioe.48.gmail; Sun, 25 Oct
 2015 01:26:22 -0700 (PDT)
X-Received: by 10.50.110.6 with SMTP id hw6mr10891603igb.7.1445761582669;
        Sun, 25 Oct 2015 01:26:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si3039973pbb.0.2015.10.25.01.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BBB2E90;
	Sun, 25 Oct 2015 08:26:21 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:23:57 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: wilc1000:
 coreconfigurator: Drop unneeded wrapper functions
Message-ID: <20151025012357.GB7654@kroah.com>
References: <20151022130751.GA21370@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151022130751.GA21370@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 22, 2015 at 06:37:51PM +0530, Shivani Bhardwaj wrote:
> Replace the wrapper functions get_address1(), get_address2() and get_address3()
> with the standard kernel function ether_addr_copy().
> Semantic patch used to identify the issue:
> 
> @@
> identifier f,g;
> @@
> 
> *f(...) {
>  g(...); }
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 48 ++++++++++++++---------------
>  1 file changed, 23 insertions(+), 25 deletions(-)

What changed from v2?  Please be specific here to give maintainers a
chance to understand what is happening.

thanks,

greg k-h

