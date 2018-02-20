X-GM-THRID: 6524253044666793984
X-Received: by 10.129.111.68 with SMTP id k65mr185035ywc.125.1519148247845;
        Tue, 20 Feb 2018 09:37:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.215.79 with SMTP id z76ls560610ywd.18.gmail; Tue, 20 Feb
 2018 09:37:26 -0800 (PST)
X-Google-Smtp-Source: AH8x224gbXArndMkqFAUM+qirNJTf+7dPirnJKTl2L4uf4/hoWq1FWWQCy8RucrXNHpCc9z/gmyI
X-Received: by 10.129.155.20 with SMTP id s20mr213622ywg.4.1519148246661;
        Tue, 20 Feb 2018 09:37:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519148246; cv=none;
        d=google.com; s=arc-20160816;
        b=sicjbXLAxPTvu84JYdcBnCkaaP3L1ZRF9ekq+Za/LvWVm0GZcTfqXP/SgLUKu/nIW7
         /FS3S4Vlco5QL6/A6grMmW8kqBbuNrc5I7ktk8QsIc6rhNgK87UDngdh2duI64QtskB/
         aEN0KUb28bLU4cGryMJ5U+dNHAR2GPq0Hj7V1EEDQ1V7Ax7t1R3EP/LP4Rfanmz5tpq5
         P+8W7rUCKza/BAQV6zCF0rutpXCOvNdE0AlLoW4yE6AkZxa+uz62l+Qvsiut4Dq8M0EB
         vGslb/UZBgBjEJ1F+Af+qTJ8Q1VidR9YRy+lxNGRLWCg2hf+RK9Wvp720uiwthCPSP6j
         hIjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=FMUWuQD9csgV7Orm8TT9VSY74QSo3DuvYN28HbWPuhw=;
        b=Yz1/L9Zhdp1MvLKCJ9bJe5fORm3792KSoaNVQkg9VjBwjvio0MMoPJbU0sJBLVGsaj
         XX7AoqGqhxgWgukZ8fxhSREBAHZdfIY7OMjUhVN3/0d8M2QyvXvbh5VZMhdWE55//l5E
         JEQ2GDQwPA942nbWhRf6/eoqwpOaNVC5UsA6bbwQvky1OH0zSaYyk7u0Uzl7AohQuiOH
         INwo00tBpO3FyOd43LSPbXhcrtmcF229Q5T4tJareskCyDcPsy9pRSeGNQHmu3yzsKdz
         W9G3dOLx9y5U98zfVYMjaCK5Gs/trPIOI0+LJ59cMhBzSVAJaK1luclmXZJvAh7/bUtJ
         2MDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dp/VB9d8;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id s19si696442ybc.5.2018.02.20.09.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 09:37:26 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dp/VB9d8;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id z24so3714042pfh.13
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Feb 2018 09:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FMUWuQD9csgV7Orm8TT9VSY74QSo3DuvYN28HbWPuhw=;
        b=Dp/VB9d88gNl7HjT9FZVbdny4rcJ53YjWMCGW01riI+TV6D1sAb3/aF9cMXaCUd3Cc
         +FjbY6gluXgqlfU5oV6sLBeDbidBPqYL8BZk0UYBYXVzQUGh08BK9OnfPFkxRe1KOrcN
         2N89TxIvyD7WGrSsmq+EhQjzJMcTj6Ja9ADlUPPZ3nESS0unyfyrY0MiKMUZ17JxhR+u
         wanwFF6W5w8Ps3wWp12nRQ7EL6z3N+DrQ+10REMIxiRkwQn0JsDljLNOwje0QM+MSekf
         zzeClGgLYFcx29Inhz0aaTniprKAqPdFFESGGhwvlX494nF/ZHG081GoISS+U6cD+Dgj
         Svow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FMUWuQD9csgV7Orm8TT9VSY74QSo3DuvYN28HbWPuhw=;
        b=t78E47WLy9zCwrX+U/FX16TN+3FO4oJz/U7euUz/yGOGW+g8Lix+ZHsUcra9mdSGf7
         qJMNbTkAVObGr3b9JnGB9Xnmoy6NSpgZ+oqVuaUjs+t/3EjUpLvH5iDd3oDPhIaAqzrM
         yRSqnTB1Uzlf9HbHoTs6hDDfa21UD6G++aUm9PE5a7rS9DzTGXgN9zTqmodeFdah7b1r
         4dRFRxX+wqvfdldsIKfyLc0Qwpf47HMJipNjf1IAX9JkMrAmD88FcKyP3U/YHJLKTDdJ
         /qe0HpoOmz/4ET2ZuBN5rqYaSBadgj9NRTOck2Hco9IWCvgeL/LdMk30UUXxG8YF0rk2
         32jw==
X-Gm-Message-State: APf1xPChiXIEHnDrOnx9SknWebalGNdZIQGAeAzxdpQ38ekDi7tT+VQy
	b1bwIo7tRgBYGRrg0esisdk=
X-Received: by 10.98.150.82 with SMTP id c79mr399123pfe.88.1519148246029;
        Tue, 20 Feb 2018 09:37:26 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.130])
        by smtp.googlemail.com with ESMTPSA id f3sm57416704pgn.9.2018.02.20.09.37.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 09:37:25 -0800 (PST)
Message-ID: <1519148238.14621.3.camel@gmail.com>
Subject: Re: [PATCH NAND v2] mtd: nand: Replace printk() with appropriate
 pr_*macro()
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Boris Brezillon <boris.brezillon@bootlin.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
  computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr,  maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org,  linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar,  outreachy-kernel@googlegroups.com
Date: Tue, 20 Feb 2018 23:07:18 +0530
In-Reply-To: <20180220181647.6f2367b6@bbrezillon>
References: <1519046025-9412-1-git-send-email-shreeya.patel23498@gmail.com>
	 <20180219155115.3d9d1bd5@bbrezillon> <1519146401.12276.4.camel@gmail.com>
	 <20180220181647.6f2367b6@bbrezillon>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 2018-02-20 at 18:16 +0100, Boris Brezillon wrote:
> On Tue, 20 Feb 2018 22:36:41 +0530
> Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> 
> > 
> > On Mon, 2018-02-19 at 15:51 +0100, Boris Brezillon wrote:
> > > 
> > > Hi Shreeya,
> > > 
> > > On Mon, 19 Feb 2018 18:43:45 +0530
> > > Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> > >   
> > > > 
> > > > 
> > > > The log levels embedded with the name are more concise than
> > > > printk.
> > > > Replace printks having a log level with the appropriate
> > > > pr_*macro.
> > > > 
> > > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > > > ---
> > > > 
> > > > Changes in v2:
> > > >   -Merge previous patches of the patchset regarding replacement
> > > > of printk with pr_*macro, into single patch.
> > > > 
> > > > 
> > > >  drivers/mtd/nand/cs553x_nand.c   |  9 ++---
> > > >  drivers/mtd/nand/diskonchip.c    | 76 +++++++++++++++++++++---
> > > > ----
> > > > ------------
> > > >  drivers/mtd/nand/fsl_elbc_nand.c |  2 +-
> > > >  drivers/mtd/nand/fsl_ifc_nand.c  |  2 +-
> > > >  drivers/mtd/nand/mxc_nand.c      |  2 +-
> > > >  drivers/mtd/nand/nand_bch.c      | 12 +++----
> > > >  drivers/mtd/nand/nandsim.c       | 10 +++---
> > > >  drivers/mtd/nand/r852.c          |  2 +-
> > > >  drivers/mtd/nand/r852.h          |  6 ++--
> > > >  drivers/mtd/nand/sm_common.c     |  5 ++-
> > > >  10 files changed, 65 insertions(+), 61 deletions(-)
> > > >   
> > > [...]
> > >   
> > > > 
> > > > 
> > > >  
> > > > diff --git a/drivers/mtd/nand/diskonchip.c
> > > > b/drivers/mtd/nand/diskonchip.c
> > > > index c3aa53c..b97d88c 100644
> > > > --- a/drivers/mtd/nand/diskonchip.c
> > > > +++ b/drivers/mtd/nand/diskonchip.c  
> > > [...]
> > >   
> > > > 
> > > > 
> > > > @@ -438,7 +438,7 @@ static void __init
> > > > doc2000_count_chips(struct
> > > > mtd_info *mtd)
> > > >  			break;
> > > >  	}
> > > >  	doc->chips_per_floor = i;
> > > > -	printk(KERN_DEBUG "Detected %d chips per floor.\n",
> > > > i);
> > > > +	pr_info("Detected %d chips per floor.\n", i);  
> > > Should be pr_debug() here.
> > >   
> > > > 
> > > > 
> > > >  }
> > > >    
> > > [...]
> > >   
> > > > 
> > > > 
> > > > diff --git a/drivers/mtd/nand/nandsim.c
> > > > b/drivers/mtd/nand/nandsim.c
> > > > index 246b439..4e5f817 100644
> > > > --- a/drivers/mtd/nand/nandsim.c
> > > > +++ b/drivers/mtd/nand/nandsim.c
> > > > @@ -184,15 +184,15 @@ MODULE_PARM_DESC(bch,		 "En
> > > > able
> > > > BCH ecc and set how many bits should "
> > > >  
> > > >  /* Simulator's output macros (logging, debugging, warning,
> > > > error)
> > > > */
> > > >  #define NS_LOG(args...) \
> > > > -	do { if (log) printk(KERN_DEBUG NS_OUTPUT_PREFIX "
> > > > log: "
> > > > args); } while(0)
> > > > +	do { if (log) pr_debug(NS_OUTPUT_PREFIX " log: "
> > > > args); }
> > > > while(0)  
> > > You could define pr_fmt() to avoid passing NS_OUTPUT_PREFIX.
> > > Something
> > > like:
> > > 
> > > #define pr_fmt(fmt)	"[nandsim]" fmt
> > > 
> > > (remember to put this definition before include directives).
> > > 
> > > Then, all you have to do is
> > > 
> > > do { if (log) pr_debug(" log: " args); } while(0)
> > >   
> > > > 
> > > > 
> > > >  #define NS_DBG(args...) \
> > > > -	do { if (dbg) printk(KERN_DEBUG NS_OUTPUT_PREFIX "
> > > > debug:
> > > > " args); } while(0)
> > > > +	do { if (dbg) pr_debug(NS_OUTPUT_PREFIX " debug: "
> > > > args);
> > > > } while(0)
> > > >  #define NS_WARN(args...) \
> > > > -	do { printk(KERN_WARNING NS_OUTPUT_PREFIX " warning: "
> > > > args); } while(0)
> > > > +	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); }
> > > > while(0)
> > > >  #define NS_ERR(args...) \
> > > > -	do { printk(KERN_ERR NS_OUTPUT_PREFIX " error: "
> > > > args); }
> > > > while(0)
> > > > +	do { pr_err(NS_OUTPUT_PREFIX " error: " args); }
> > > > while(0)
> > > >  #define NS_INFO(args...) \
> > > > -	do { printk(KERN_INFO NS_OUTPUT_PREFIX " " args); }
> > > > while(0)
> > > > +	do { pr_info(NS_OUTPUT_PREFIX " " args); } while(0)
> > > >  
> > > >  /* Busy-wait delay macros (microseconds, milliseconds) */
> > > >  #define NS_UDELAY(us) \
> > > > diff --git a/drivers/mtd/nand/r852.c b/drivers/mtd/nand/r852.c
> > > > index fc9287a..3d54c6a 100644
> > > > --- a/drivers/mtd/nand/r852.c
> > > > +++ b/drivers/mtd/nand/r852.c
> > > > @@ -935,7 +935,7 @@ static int  r852_probe(struct pci_dev
> > > > *pci_dev,
> > > > const struct pci_device_id *id)
> > > >  		&dev->card_detect_work, 0);
> > > >  
> > > >  
> > > > -	printk(KERN_NOTICE DRV_NAME ": driver loaded
> > > > successfully\n");
> > > > +	pr_notice(DRV_NAME ": driver loaded
> > > > successfully\n");  
> > > Same here:
> > > 
> > > #define pr_fmt(fmt)	DRV_NAME fmt  
> > I am facing the following errors here.
> > 
> > 
> > 
> > In file included from drivers/mtd/nand/r852.c:22:0:
> > drivers/mtd/nand/r852.h:148:0: warning: "pr_fmt" redefined
> >  #define pr_fmt(fmt)  (DRV_NAME fmt)
> >  ^
> > In file included from ./include/linux/kernel.h:14:0,
> >                  from drivers/mtd/nand/r852.c:10:
> > ./include/linux/printk.h:287:0: note: this is the location of the
> > previous definition
> >  #define pr_fmt(fmt) fmt
> That's because you didn't define pr_fmt() before all the #include
> directives in this driver. See the '#indef pr_fmt' statement in
> printk.h
> which is preventing redefinition of this symbol if the file including
> printk.h (either directly or indirectly) already defines it.

Yes, and that is why I did undef before defining it again in the r852.c
file.
Shouldn't it work in this manner?

> 

