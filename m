X-GM-THRID: 6524253044666793984
X-Received: by 10.101.87.201 with SMTP id q9mr52548pgr.147.1519146409836;
        Tue, 20 Feb 2018 09:06:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b101:: with SMTP id q1-v6ls4160746plr.11.gmail; Tue,
 20 Feb 2018 09:06:48 -0800 (PST)
X-Google-Smtp-Source: AH8x225Pd3xgZdgOt2IoDmuCG1BJ+19bPCuw7tcjsL/1QN/yEjAG93wwqlEvDhaUYPijoL75UaYK
X-Received: by 2002:a17:902:8548:: with SMTP id d8-v6mr62913plo.30.1519146408529;
        Tue, 20 Feb 2018 09:06:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519146408; cv=none;
        d=google.com; s=arc-20160816;
        b=a16uOJkM7WmJUhf6rU+vm2FCObCCDuRcIFAuorizBPpSNb9VuZnGHHBPn+7s5ejbmb
         6PynPoeiio8poZf0f8fM3rEUEITHu2ASMytLJJkaPmiUpgItw/3D/TSXTK1aVcjAS+Lo
         g53uqxRbqc25AiGIiuMG87ARZnvDBnK/uc37UFXGr8qOzfVnstL0gVaSnwpamcd56MhV
         MgdmEK/4IoGRepMHYWPk5yatUpbnzd5x8qX5BQzpZP8udh+jNgDbFC4295UDiGzR0hpD
         zdichIcabhSpOTnzktra8x1IinbE+1ULrB14hWSfkOrgGPy40Gxf72DaXJYkA8TUB7/L
         NHdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=W/bzgEnN3D/AkN8lzxeYXCqhvBS3EmIrzdMG0wnyppQ=;
        b=AP5GZKajI5V8wslb0tEncg3SbY4BQ/ZwCuJKr13Ja+/5ZUGPr1mAuz+TierKl61EY+
         PCXgy1DqWEb3sfzDhpz8RpTVHyWcO5XbmSuALnhCp/sIX3mksim7Ct5FTyhve4EVGFdN
         Am/7e3sj5vJGGInzQkuwCn13kvMWSnJstyne8zNBKjoXaV4EqZcW4eqFCBAZ3NBhpU4N
         Uav2zQGC4H02AYyTdIJgXsVOweUNGs9HxQ8Z1x2UYvUkyGkK+7IcN6gWPN/QTVE4T818
         04fLRGrgKz4Q2XWJKFEgRUeV4TrN/4mv+DaZnO4pGX9nGH6kI78Nrl77hRdgkayvbxbc
         Q2Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlyeEs6t;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id t16si75006pgu.0.2018.02.20.09.06.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 09:06:48 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlyeEs6t;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x242.google.com with SMTP id ay8so7745699plb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Feb 2018 09:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W/bzgEnN3D/AkN8lzxeYXCqhvBS3EmIrzdMG0wnyppQ=;
        b=nlyeEs6t/OktE+/blrJRCaW0GLRcQ84ZBBBR7Ipj6rDbFlMrhaSaeWfSIjS0f8atDD
         Um8+4C1w2nD132zluzHbRzxku52VFMnN5bKQkOqJx3yZWH+U6TEZgM2/jUNe5QaY/TFO
         +RjUAdBfqiZ/PNHIkSppGbTGRm5cvxZjfVBaprmTGsyIqQfp5R/ulVcSp5IQc8fTc6ws
         wW3oG7sFlj7tnesyfDuqeGO2dYG3uQlHCcZoawDtZtDaRrQPiTgMQvqqeeyDr33dyMJ9
         jVGayx4DpPlwUnv/lrpBvC2LviZdOUvZpR88da/9PsgHfEgrnOFzxEToXBQsPdMahAeo
         Nrag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W/bzgEnN3D/AkN8lzxeYXCqhvBS3EmIrzdMG0wnyppQ=;
        b=SXHfbCGVj5e1JxbNU2oalyakyP2aR6smv5bplptLP0YKk7DgOJnymFeBVuosZ8DWv1
         BG7I1pw1ABljYzkAm3bDYeMiENW4qPc8rgtKTQCKl7PNlmz6HaIm5YT3uR/cjh+6aONB
         zixfNM7uJpgticilMqxSR5uuBl8hEahBHbjC/pX63F2N+oJ1CbjeSXzwP5ArDsijVp/4
         7gXDvtCie8FcpfCsePv4hg0hm3G1idNSewNEeDNZr0xwvZWd4VSNlAhThClQCFbwB1/n
         5o1Zal6vws2tQMoIKfpfa9Ch0Fga1CUU+PeLn9I896QTx0/FD8REMgaqw4EPC39ALgo5
         zlSA==
X-Gm-Message-State: APf1xPCA0FvOra8sEHP4bNcIiohEWI9I2RPBNs1YsDYGHgsBMqAc4aaZ
	UHGXlxiX+qRypKC55hGpsW0=
X-Received: by 2002:a17:902:bc02:: with SMTP id n2-v6mr292290pls.52.1519146407987;
        Tue, 20 Feb 2018 09:06:47 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.130])
        by smtp.googlemail.com with ESMTPSA id z79sm16883348pfa.139.2018.02.20.09.06.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 09:06:46 -0800 (PST)
Message-ID: <1519146401.12276.4.camel@gmail.com>
Subject: Re: [PATCH NAND v2] mtd: nand: Replace printk() with appropriate
 pr_*macro()
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Boris Brezillon <boris.brezillon@bootlin.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
  computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr,  maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org,  linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar,  outreachy-kernel@googlegroups.com
Date: Tue, 20 Feb 2018 22:36:41 +0530
In-Reply-To: <20180219155115.3d9d1bd5@bbrezillon>
References: <1519046025-9412-1-git-send-email-shreeya.patel23498@gmail.com>
	 <20180219155115.3d9d1bd5@bbrezillon>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Mon, 2018-02-19 at 15:51 +0100, Boris Brezillon wrote:
> Hi Shreeya,
> 
> On Mon, 19 Feb 2018 18:43:45 +0530
> Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> 
> > 
> > The log levels embedded with the name are more concise than
> > printk.
> > Replace printks having a log level with the appropriate
> > pr_*macro.
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> > 
> > Changes in v2:
> >   -Merge previous patches of the patchset regarding replacement
> > of printk with pr_*macro, into single patch.
> > 
> > 
> >  drivers/mtd/nand/cs553x_nand.c   |  9 ++---
> >  drivers/mtd/nand/diskonchip.c    | 76 +++++++++++++++++++++-------
> > ------------
> >  drivers/mtd/nand/fsl_elbc_nand.c |  2 +-
> >  drivers/mtd/nand/fsl_ifc_nand.c  |  2 +-
> >  drivers/mtd/nand/mxc_nand.c      |  2 +-
> >  drivers/mtd/nand/nand_bch.c      | 12 +++----
> >  drivers/mtd/nand/nandsim.c       | 10 +++---
> >  drivers/mtd/nand/r852.c          |  2 +-
> >  drivers/mtd/nand/r852.h          |  6 ++--
> >  drivers/mtd/nand/sm_common.c     |  5 ++-
> >  10 files changed, 65 insertions(+), 61 deletions(-)
> > 
> [...]
> 
> > 
> >  
> > diff --git a/drivers/mtd/nand/diskonchip.c
> > b/drivers/mtd/nand/diskonchip.c
> > index c3aa53c..b97d88c 100644
> > --- a/drivers/mtd/nand/diskonchip.c
> > +++ b/drivers/mtd/nand/diskonchip.c
> [...]
> 
> > 
> > @@ -438,7 +438,7 @@ static void __init doc2000_count_chips(struct
> > mtd_info *mtd)
> >  			break;
> >  	}
> >  	doc->chips_per_floor = i;
> > -	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
> > +	pr_info("Detected %d chips per floor.\n", i);
> Should be pr_debug() here.
> 
> > 
> >  }
> >  
> [...]
> 
> > 
> > diff --git a/drivers/mtd/nand/nandsim.c
> > b/drivers/mtd/nand/nandsim.c
> > index 246b439..4e5f817 100644
> > --- a/drivers/mtd/nand/nandsim.c
> > +++ b/drivers/mtd/nand/nandsim.c
> > @@ -184,15 +184,15 @@ MODULE_PARM_DESC(bch,		 "Enable
> > BCH ecc and set how many bits should "
> >  
> >  /* Simulator's output macros (logging, debugging, warning, error)
> > */
> >  #define NS_LOG(args...) \
> > -	do { if (log) printk(KERN_DEBUG NS_OUTPUT_PREFIX " log: "
> > args); } while(0)
> > +	do { if (log) pr_debug(NS_OUTPUT_PREFIX " log: " args); }
> > while(0)
> You could define pr_fmt() to avoid passing NS_OUTPUT_PREFIX.
> Something
> like:
> 
> #define pr_fmt(fmt)	"[nandsim]" fmt
> 
> (remember to put this definition before include directives).
> 
> Then, all you have to do is
> 
> do { if (log) pr_debug(" log: " args); } while(0)
> 
> > 
> >  #define NS_DBG(args...) \
> > -	do { if (dbg) printk(KERN_DEBUG NS_OUTPUT_PREFIX " debug:
> > " args); } while(0)
> > +	do { if (dbg) pr_debug(NS_OUTPUT_PREFIX " debug: " args);
> > } while(0)
> >  #define NS_WARN(args...) \
> > -	do { printk(KERN_WARNING NS_OUTPUT_PREFIX " warning: "
> > args); } while(0)
> > +	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); }
> > while(0)
> >  #define NS_ERR(args...) \
> > -	do { printk(KERN_ERR NS_OUTPUT_PREFIX " error: " args); }
> > while(0)
> > +	do { pr_err(NS_OUTPUT_PREFIX " error: " args); } while(0)
> >  #define NS_INFO(args...) \
> > -	do { printk(KERN_INFO NS_OUTPUT_PREFIX " " args); }
> > while(0)
> > +	do { pr_info(NS_OUTPUT_PREFIX " " args); } while(0)
> >  
> >  /* Busy-wait delay macros (microseconds, milliseconds) */
> >  #define NS_UDELAY(us) \
> > diff --git a/drivers/mtd/nand/r852.c b/drivers/mtd/nand/r852.c
> > index fc9287a..3d54c6a 100644
> > --- a/drivers/mtd/nand/r852.c
> > +++ b/drivers/mtd/nand/r852.c
> > @@ -935,7 +935,7 @@ static int  r852_probe(struct pci_dev *pci_dev,
> > const struct pci_device_id *id)
> >  		&dev->card_detect_work, 0);
> >  
> >  
> > -	printk(KERN_NOTICE DRV_NAME ": driver loaded
> > successfully\n");
> > +	pr_notice(DRV_NAME ": driver loaded successfully\n");
> Same here:
> 
> #define pr_fmt(fmt)	DRV_NAME fmt

I am facing the following errors here.



In file included from drivers/mtd/nand/r852.c:22:0:
drivers/mtd/nand/r852.h:148:0: warning: "pr_fmt" redefined
 #define pr_fmt(fmt)  (DRV_NAME fmt)
 ^
In file included from ./include/linux/kernel.h:14:0,
                 from drivers/mtd/nand/r852.c:10:
./include/linux/printk.h:287:0: note: this is the location of the
previous definition
 #define pr_fmt(fmt) fmt


I tried doing undef and then define, but it didn't work.

> 
> > 
> >  	return 0;
> >  
> >  error10:
> > diff --git a/drivers/mtd/nand/r852.h b/drivers/mtd/nand/r852.h
> > index 8713c57..63de9b6 100644
> > --- a/drivers/mtd/nand/r852.h
> > +++ b/drivers/mtd/nand/r852.h
> > @@ -149,12 +149,12 @@ struct r852_device {
> >  
> >  #define dbg(format, ...) \
> >  	if (debug) \
> > -		printk(KERN_DEBUG DRV_NAME ": " format "\n", ##
> > __VA_ARGS__)
> > +		pr_debug(DRV_NAME ": " format "\n", ##
> > __VA_ARGS__)
> >  
> >  #define dbg_verbose(format, ...) \
> >  	if (debug > 1) \
> > -		printk(KERN_DEBUG DRV_NAME ": " format "\n", ##
> > __VA_ARGS__)
> > +		pr_debug(DRV_NAME ": " format "\n", ##
> > __VA_ARGS__)
> >  
> And here as well.
> 
> Regards,
> 
> Boris
> 

