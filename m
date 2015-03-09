X-GM-THRID: 7174525812736
X-Received: by 10.236.31.97 with SMTP id l61mr26586789yha.10.1425904491301;
        Mon, 09 Mar 2015 05:34:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.206 with SMTP id s14ls1662901igr.37.canary; Mon, 09 Mar
 2015 05:34:51 -0700 (PDT)
X-Received: by 10.42.249.147 with SMTP id mk19mr18687073icb.27.1425904491103;
        Mon, 09 Mar 2015 05:34:51 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ni4si1772402pdb.2.2015.03.09.05.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 05:34:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (li684-192.members.linode.com [23.239.3.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 33E6B981;
	Mon,  9 Mar 2015 12:34:50 +0000 (UTC)
Date: Mon, 9 Mar 2015 13:34:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rts5208: Use
 module_pci_driver
Message-ID: <20150309123430.GA31892@kroah.com>
References: <20150309051708.GA4116@vaishali-Ideapad-Z570>
 <CAK-LDb+mtA=+bMhacGuyjhCeNa3ZJX9X+ZH_iRsYDumouSWivQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDb+mtA=+bMhacGuyjhCeNa3ZJX9X+ZH_iRsYDumouSWivQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 09, 2015 at 11:31:00AM +0530, Vaishali Thakkar wrote:
> On Mon, Mar 9, 2015 at 10:47 AM, Vaishali Thakkar
> <vthakkar1994@gmail.com> wrote:
> > Macro module_pci_driver is used for drivers whose init
> > and exit paths does only register and unregister to pci
> > API. So, here remove some boilerplate code by using
> > module_pci_driver.
> >
> > Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> > ---
> >  drivers/staging/rts5208/rtsx.c | 19 +------------------
> >  1 file changed, 1 insertion(+), 18 deletions(-)
> >
> > diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> > index c74f1b8..7f3f16a 100644
> > --- a/drivers/staging/rts5208/rtsx.c
> > +++ b/drivers/staging/rts5208/rtsx.c
> > @@ -1048,21 +1048,4 @@ static struct pci_driver driver = {
> >         .shutdown = rtsx_shutdown,
> >  };
> >
> > -static int __init rtsx_init(void)
> > -{
> > -       pr_info("Initializing Realtek PCIE storage driver...\n");
> > -
> > -       return pci_register_driver(&driver);
> > -}
> > -
> > -static void __exit rtsx_exit(void)
> > -{
> > -       pr_info("rtsx_exit() called\n");
> > -
> > -       pci_unregister_driver(&driver);
> > -
> > -       pr_info("%s module exit\n", CR_DRIVER_NAME);
> > -}
> > -
> > -module_init(rtsx_init)
> > -module_exit(rtsx_exit)
> > +module_pci_driver(driver);
> > --
> 
> I am sorry for this patch. It has some issues.

What "issues"?  It looks correct to me.

Yes, you delete the unneeded messages to the kernel log, which is a good
thing, and one reason why I want to see drivers move to these macros.

Am I missing something more obvious here?

thanks,

greg k-h

