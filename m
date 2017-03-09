X-GM-THRID: 6395378707824902144
X-Received: by 10.13.234.5 with SMTP id t5mr4764658ywe.166.1489041264347;
        Wed, 08 Mar 2017 22:34:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls5160374otx.21.gmail; Wed, 08 Mar
 2017 22:34:24 -0800 (PST)
X-Received: by 10.157.8.97 with SMTP id 88mr4225077oty.143.1489041263989;
        Wed, 08 Mar 2017 22:34:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u12si1056060pfd.3.2017.03.08.22.34.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:34:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3A22795E;
	Thu,  9 Mar 2017 06:34:23 +0000 (UTC)
Date: Thu, 9 Mar 2017 07:34:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [Outreachy kernel] [PATCH 1/3] Documentation: phy: Fix
 repetition of word 'the'
Message-ID: <20170309063409.GA8177@kroah.com>
References: <cover.1489039271.git.karniksayli1995@gmail.com>
 <3559f33444fbae6fda8e11ea00c0dfe3b7dc46b2.1489039271.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3559f33444fbae6fda8e11ea00c0dfe3b7dc46b2.1489039271.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 09, 2017 at 11:46:22AM +0530, sayli karnik wrote:
> The patch replaces 'the the' with 'the' in the documantation.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  Documentation/phy.txt | 2 +-

I can't take any outreachy application patches outside of
drivers/staging/ sorry.

thanks,

greg k-h

