X-GM-THRID: 6205612297408217088
X-Received: by 10.129.134.129 with SMTP id w123mr15694741ywf.17.1445059710329;
        Fri, 16 Oct 2015 22:28:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.172 with SMTP id 41ls1554116qgf.79.gmail; Fri, 16 Oct
 2015 22:28:29 -0700 (PDT)
X-Received: by 10.13.202.13 with SMTP id m13mr7056209ywd.57.1445059709598;
        Fri, 16 Oct 2015 22:28:29 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ce6si1845435pad.0.2015.10.16.22.28.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 22:28:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 42F8767;
	Sat, 17 Oct 2015 05:28:29 +0000 (UTC)
Date: Fri, 16 Oct 2015 22:28:29 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/4] Staging: lustre: include: Convert
 macro class_export_lock_get into static inline function
Message-ID: <20151017052829.GA30655@kroah.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
 <177dcb20f3ef1cbdc03ebee64223bb7e69811313.1444856328.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177dcb20f3ef1cbdc03ebee64223bb7e69811313.1444856328.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 14, 2015 at 11:07:20PM +0200, Ksenija Stanojevic wrote:
> Static inline functions are preferred over macros. This change is safe
> because the types of arguments at all the call sites are same.
> 
> Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/obd_class.h | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)

This, and patch 3/4, break the build very badly, did you test these
patches?

greg k-h

