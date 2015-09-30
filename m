X-GM-THRID: 6200095553040154624
X-Received: by 10.13.219.65 with SMTP id d62mr1075695ywe.49.1443579202328;
        Tue, 29 Sep 2015 19:13:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.6 with SMTP id b6ls153554qga.3.gmail; Tue, 29 Sep 2015
 19:13:21 -0700 (PDT)
X-Received: by 10.129.83.10 with SMTP id h10mr1179819ywb.6.1443579201965;
        Tue, 29 Sep 2015 19:13:21 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id o73si2283747ywd.6.2015.09.29.19.13.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 19:13:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.184])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BA74E129A;
	Wed, 30 Sep 2015 02:13:20 +0000 (UTC)
Date: Wed, 30 Sep 2015 04:00:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wil1000: fix misspelled words
Message-ID: <20150930020039.GA14724@kroah.com>
References: <1443572226-27318-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443572226-27318-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 30, 2015 at 03:17:06AM +0300, Ioana Ciornei wrote:
> Fix misspelled words throughout the entire subsystem
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c       |  2 +-
>  drivers/staging/wilc1000/host_interface.c         | 26 +++++++++++------------
>  drivers/staging/wilc1000/host_interface.h         |  8 +++----
>  drivers/staging/wilc1000/linux_mon.c              |  2 +-
>  drivers/staging/wilc1000/linux_wlan.c             | 18 ++++++++--------
>  drivers/staging/wilc1000/wilc_msgqueue.c          |  2 +-
>  drivers/staging/wilc1000/wilc_msgqueue.h          |  8 +++----
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 22 +++++++++----------
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h |  4 ++--
>  drivers/staging/wilc1000/wilc_wlan.c              |  4 ++--
>  10 files changed, 48 insertions(+), 48 deletions(-)

This patch doesn't apply to my staging-testing branch at all, due to
other changes that happened in the past few days with this driver.
Please refresh your tree and rebase your patch and resend it so that I
can apply it.

thanks,

greg k-h

