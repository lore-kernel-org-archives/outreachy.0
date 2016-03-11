X-GM-THRID: 6255259573485043712
X-Received: by 10.182.233.170 with SMTP id tx10mr9135028obc.18.1457732960015;
        Fri, 11 Mar 2016 13:49:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.113 with SMTP id w104ls1963704qgw.66.gmail; Fri, 11 Mar
 2016 13:49:19 -0800 (PST)
X-Received: by 10.140.42.43 with SMTP id b40mr8999409qga.9.1457732959299;
        Fri, 11 Mar 2016 13:49:19 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1600150pfb.1.2016.03.11.13.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:49:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EA4F6CA3;
	Fri, 11 Mar 2016 21:49:18 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:49:18 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: G Pooja Shamili <poojashamili@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: gdm72x: Add spaces before
 and after '*'
Message-ID: <20160311214918.GA24083@kroah.com>
References: <20160306090926.GA29834@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306090926.GA29834@localhost>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 02:39:27PM +0530, G Pooja Shamili wrote:
> This patch fixes the checkpatch.pl error:
> CHECK: spaces preferred around that '*'
> 
> Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
> ---
> Changes from Version 1:
> 	* Changed the name in the From: and Signed-off-by: to full name.
> 	
>  drivers/staging/gdm724x/gdm_mux.h | 4 ++--
>  drivers/staging/gdm724x/gdm_usb.h | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)

This driver was just deleted from the tree, so this doesn't apply
anymore, sorry.

greg k-h

