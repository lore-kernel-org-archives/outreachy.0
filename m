X-GM-THRID: 6334891749875384320
X-Received: by 10.107.176.80 with SMTP id z77mr7988000ioe.52.1475055224977;
        Wed, 28 Sep 2016 02:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.151 with SMTP id q23ls115662otd.18.gmail; Wed, 28 Sep
 2016 02:33:44 -0700 (PDT)
X-Received: by 10.237.32.228 with SMTP id 91mr8616179qtb.22.1475055224575;
        Wed, 28 Sep 2016 02:33:44 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id f12si1860883pfk.0.2016.09.28.02.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 02:33:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DB2163EE;
	Wed, 28 Sep 2016 09:33:43 +0000 (UTC)
Date: Wed, 28 Sep 2016 11:33:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] Staging: ks7010 : Fix block comments warning
Message-ID: <20160928093347.GA30719@kroah.com>
References: <20160927201031.GA8014@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927201031.GA8014@domino-MS-16Y1>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 27, 2016 at 11:10:31PM +0300, Muraru Mihaela wrote:
> Move final */ to a new line, to conform to
> the kernel coding style for block comments.
> 
> Issue found by checkpatch.
> 
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> ---
> Chnages in v3:
> 	- adding a * to respect the coding style rule for multi-line
> 	  comments
> ---
>  drivers/staging/ks7010/eap_packet.h | 24 ++++++++++++++++--------
>  1 file changed, 16 insertions(+), 8 deletions(-)

This doesn't apply to my tree at all.  Can you update your local tree
and rebase it and resend?

thanks,

greg k-h

