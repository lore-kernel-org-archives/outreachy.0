X-GM-THRID: 6200494472986361856
X-Received: by 10.129.72.205 with SMTP id v196mr5987234ywa.11.1443667380088;
        Wed, 30 Sep 2015 19:43:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.54 with SMTP id e51ls633476qge.6.gmail; Wed, 30 Sep
 2015 19:42:59 -0700 (PDT)
X-Received: by 10.129.128.70 with SMTP id q67mr6119766ywf.43.1443667379623;
        Wed, 30 Sep 2015 19:42:59 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q133si460427ywb.1.2015.09.30.19.42.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 19:42:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.161])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 45838F3B;
	Thu,  1 Oct 2015 02:42:58 +0000 (UTC)
Date: Thu, 1 Oct 2015 04:42:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: defxx: Fix warning of
 uninitialized variable
Message-ID: <20151001024256.GA11506@kroah.com>
References: <20151001020508.GA14693@deepa-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151001020508.GA14693@deepa-ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 30, 2015 at 07:05:13PM -0700, Deepa Dinamani wrote:
> This adds explicit initialization of bar_start and bar_len
> resource arrays in accordance with the compiler warning.
> 
> Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> ---
>  drivers/net/fddi/defxx.c | 3 +++

Note, we can't do anything with patches outside of drivers/staging/ in
the kernel tree for the Outreachy application process, sorry.  I'd
recommend staying away from other parts of the kernel right now, unless
the mentor you have contacted tells you otherwise.

thanks,

greg k-h

