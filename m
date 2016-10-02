X-GM-THRID: 6336543746979528704
X-Received: by 10.159.48.84 with SMTP id i20mr4531069uab.6.1475404092281;
        Sun, 02 Oct 2016 03:28:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls2898634ota.25.gmail; Sun, 02 Oct
 2016 03:28:11 -0700 (PDT)
X-Received: by 10.157.34.133 with SMTP id y5mr937895ota.28.1475404091748;
        Sun, 02 Oct 2016 03:28:11 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ua1si1792199pac.1.2016.10.02.03.28.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 03:28:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (smb-adpcdg2-02.hotspot.hub-one.net [213.174.99.136])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 14AB471;
	Sun,  2 Oct 2016 10:28:10 +0000 (UTC)
Date: Sun, 2 Oct 2016 12:28:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Rehas Sachdeva <aquannie@gmail.com>, outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Constify
 kernel_param_ops structures
Message-ID: <20161002102817.GA18602@kroah.com>
References: <20161001170549.GA2965@toblerone>
 <alpine.DEB.2.10.1610011911530.3445@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610011911530.3445@hadrien>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 01, 2016 at 07:13:16PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 1 Oct 2016, Rehas Sachdeva wrote:
> 
> > Check for structs which can are not modified and hence can be declared as
> > const. Done using Coccinelle:
> 
> "can are" -> "are"
> 
> This merits a little more discussion, though.  I have the impression that
> these structures are used via the module_param macro.  It would be useful
> to look at the expansion of the macros and see what exactly is going on.

Based on other uses of this structure in the kernel, I think this is
safe.  But verification would be good...

thanks,

greg k-h

