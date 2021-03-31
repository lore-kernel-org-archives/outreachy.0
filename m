X-GM-THRID: 6945672657015668736
X-Received: by 2002:a1c:9d8b:: with SMTP id g133mr1197480wme.161.1617166143177;
        Tue, 30 Mar 2021 21:49:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls982726wru.2.gmail; Tue, 30 Mar
 2021 21:49:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyK6PvsDOUQaPf/eMjgTtfq3GMbH04CG6dvi9TjuTKycGVdmPUy9UUwTBCLO2wIEkR7umFT
X-Received: by 2002:a5d:570c:: with SMTP id a12mr1319448wrv.209.1617166141759;
        Tue, 30 Mar 2021 21:49:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617166141; cv=none;
        d=google.com; s=arc-20160816;
        b=r/qQCWmYx9NuMVsgVoXSdfl0+vt994+HkToox59/1K8v+45E3kunIdFdZPXuxw2DZa
         uH+eQjubgWbThvQVD+GK2CLMndPl33+rqjOOrFGWXcv+RlrxZAGNQCva+g7hXO+SRyE5
         GeGnDZ/0RKsXFHu6oajOSFT0hSBxiiWfSpBQDVU6FwTaCcnGtzgMc01CUReCYYFagLAW
         eI3HCbjmrF+1FJeJRw/a1YUTc7j3brYRbACmlXWYmPml02aI+lRYSX2TLt+1BpmPnQGJ
         /WcxZ16/Uc0nV7+dmfdzGwGJ+7F1qFtLUD9T9o/cLKLAPMKaKQ8KXaWPQ1S27uai3SOS
         5EeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x7vMSY6RbN8UDTxCDzPs6S8JJITIjJb7RknGe/MZu6k=;
        b=Up9hP9Whvc5UW7B4AOQsOAbYudbMKzLvPpJ5aShH0fORApkKSRe64a6aBEO4rnZaNi
         SltjL7S2C8FCUn19RUSsCJAaaETAg67aHaMlJjuMkuHyZWyo5Ik6wKw9pvKRBwprY59t
         Qrv52lUOhjHRzEWH8RUkzh7d1XdHT3X/yHeqlINooRDQsAtv+x2LKmR34Fm/bnMAy2Cs
         4uguoHhGwaHzUGHKIeeXlvqOnXPp80p4YFODcuu//DnoXkTDy/BMMnZtgEKRv4EuxBqO
         RHFM3DPTckjJ+g0731l1Km4+8ypOtP4t/zFCS/bGfIEPA0z71vl75scp/r96++G1JxZ0
         WrEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=kUyzH5qS;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b5si127662wmc.2.2021.03.30.21.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 21:49:01 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=kUyzH5qS;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=x7vMSY6RbN8UDTxCDzPs6S8JJITIjJb7RknGe/MZu6k=; b=kUyzH5qSfgSsIu5eFjHBepjRX5
	WHNXZmROBllBfViGmPV4qUYbRdJypcbgI4wTjl2Fg4nOG0hbhIxPaRQR+Ak76sPEygJkr7EVcV3ft
	j8oukU9sQKFdfECGbCjsEANEwA3WHTqpdRLBn/3OGx4SXM1NCH1k3R+0tJUdrkT63mySUA11vF7s4
	0GojM+rbw2Awzspms3ZLo4ljFwiQe7bwP9j6RW9ViSfEwxTEfvhdHA849AapaBs3KySz8smbznfGs
	mJq253iXXISO+srC9wmncI4jUtD6t09URrq+y0Q9BD9wk13gqTl5T+ZUr8RROTcA8pIp/i36F9VIx
	riwP0ZaQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lRSmj-0042GN-PY; Wed, 31 Mar 2021 04:48:57 +0000
Date: Wed, 31 Mar 2021 05:48:53 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Edith Puclla <edithpuclla20@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Modifying a driver on native Linux - which
 file should I modify?
Message-ID: <20210331044853.GU351017@casper.infradead.org>
References: <7735e765-8b0e-415b-9630-ffa2b4f74a91n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7735e765-8b0e-415b-9630-ffa2b4f74a91n@googlegroups.com>

On Tue, Mar 30, 2021 at 09:37:15PM -0700, Edith Puclla wrote:
> Hello Everyone,  I am Edith from Peru, and I started to compile the Linux 
> kernel.
> 
> I am following this 
> guide: https://kernelnewbies.org/Outreachyfirstpatch?action=show&redirect=OPWfirstpatch#kernel-setup-done
> *Section*: Modifying a driver on native Linux
> 
> I chose to modify this driver: *xhci-hcd* but I can't find the file to add 
> a print printk(KERN_DEBUG "I can modify the Linux kernel!\n").
> 
> I look at all the files located in the same path of the Makefile after 
> executing:  git grep xhci-hcd -- '*Makefile'
> 
> Could you please tell me which file could I modify for that driver?

The Linux Makefiles are written in a rather terse way that isn't
necessarily the easiest to understand for someone who's not familiar
with them.

$ git grep xhci-hcd -- '*Makefile'
drivers/usb/host/Makefile:xhci-hcd-y := xhci.o xhci-mem.o xhci-ext-caps.o
drivers/usb/host/Makefile:xhci-hcd-y += xhci-ring.o xhci-hub.o xhci-dbg.o
drivers/usb/host/Makefile:xhci-hcd-y += xhci-trace.o
drivers/usb/host/Makefile:      xhci-hcd-y += xhci-dbgcap.o xhci-dbgtty.o
drivers/usb/host/Makefile:      xhci-hcd-y              += xhci-debugfs.o
drivers/usb/host/Makefile:obj-$(CONFIG_USB_XHCI_HCD)    += xhci-hcd.o

'xhci-hcd-y' is the list of .o files which make up the final link step
to make xhci-hcd.o.  Is that enough information for you to figure out
which file to modify?

(I'm trying to get you past the immediate problem you're hitting, which
isn't terribly important, without just giving you the answer)

The other thing you can do is build the kernel with 'make V=1', which tells
you what the build system is doing instead of the shortened output.

