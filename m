X-GM-THRID: 6524253044666793984
X-Received: by 10.80.202.201 with SMTP id f9mr4332554edi.12.1519052129619;
        Mon, 19 Feb 2018 06:55:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.171.6 with SMTP id s6ls4235959edc.2.gmail; Mon, 19 Feb 2018
 06:55:28 -0800 (PST)
X-Google-Smtp-Source: AH8x224pbgDYsaWi4I+0EenOZ/qNfYsA1P4+HtuGtJQpUJUT0yjEOVAmSc2reYKd465niX1Quc8t
X-Received: by 10.80.134.135 with SMTP id r7mr4284930eda.1.1519052128000;
        Mon, 19 Feb 2018 06:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519052127; cv=none;
        d=google.com; s=arc-20160816;
        b=nD2M5ufNpZCBQnh5EJw5y0Lgz8BGYAYXjsTeGB51aTLJWR3qRq0M38gDTj8uvAIVwh
         qnjYLPo2vlBqhWkLDk8abD2jdyc9Hhk/zV3mv4upf61RPonVJP7ORq8wrExo/kJiyD6X
         pjXWR5nBbzbOyDRrcRScWENh44B8Jsyjh2yzivDac02RqHIVPFo+CsD8NqME9E1+l4qf
         iZeTOwoJBg0/nmMdM8ynXAynXcHbT+wq3prUdFckeJW0nLJ00ZXi6EsrG8vWP3EBI+cX
         dAPDtDj48KnPPDtZS3n1NCRtc2Z24g0rPFRI42f6NYKUR83VsF6PiYDzFqOdAmveP+Ec
         nR/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=ozdROVQdU8hvPLb7e16/Hl5jtvzMV++I7JVPnwPr2Rc=;
        b=o3wouWLoeRNOAmkPFwnq1ueBuvbJH1Pn6ROUC7P85sGaeAP6hAycjL34QVsb3mdyqT
         7xab2pVheBbnD+hGHmcRLJbrwrS2HIQ6EvhzoIYTyaYRxoIjeCI9TV94iJDsAiJe/3Dj
         50GtZwcqY+si9K8XnsWG1vL378C+11k9hPzjFN5eq/LCmgNPezC1MUnnqmbQwoN/mhZq
         hxFHN+fQZZb96cC/Ah6DnilYWHwwwpm9453A3Ub2EPJpgmhof4NoJrAIgWHUdy3xTIKt
         sJiENoTgl7JNLCnbzzINZ43K0xbhZ2PiQ1Qn2YoQbYmomqgpd03AX0Ni8rflL6xiCKBy
         AUqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id i30si197269edd.0.2018.02.19.06.55.27
        for <outreachy-kernel@googlegroups.com>;
        Mon, 19 Feb 2018 06:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id 1A3C420715; Mon, 19 Feb 2018 15:55:27 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (LStLambert-657-1-97-87.w90-63.abo.wanadoo.fr [90.63.216.87])
	by mail.free-electrons.com (Postfix) with ESMTPSA id A4C0820146;
	Mon, 19 Feb 2018 15:55:16 +0100 (CET)
Date: Mon, 19 Feb 2018 15:55:16 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v2] mtd: nand: Replace printk() with appropriate
 pr_*macro()
Message-ID: <20180219155516.7a67fade@bbrezillon>
In-Reply-To: <20180219155115.3d9d1bd5@bbrezillon>
References: <1519046025-9412-1-git-send-email-shreeya.patel23498@gmail.com>
	<20180219155115.3d9d1bd5@bbrezillon>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Oh, and in the subject 'pr_*macro()' -> 'pr_*() macro'

On Mon, 19 Feb 2018 15:51:15 +0100
Boris Brezillon <boris.brezillon@bootlin.com> wrote:

> Hi Shreeya,
> 
> On Mon, 19 Feb 2018 18:43:45 +0530
> Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> 
> > The log levels embedded with the name are more concise than
> > printk.
> > Replace printks having a log level with the appropriate
> > pr_*macro.
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> > 
> > Changes in v2:
> >   -Merge previous patches of the patchset regarding replacement
> > of printk with pr_*macro, into single patch.
> > 
> > 
> >  drivers/mtd/nand/cs553x_nand.c   |  9 ++---
> >  drivers/mtd/nand/diskonchip.c    | 76 +++++++++++++++++++++-------------------
> >  drivers/mtd/nand/fsl_elbc_nand.c |  2 +-
> >  drivers/mtd/nand/fsl_ifc_nand.c  |  2 +-
> >  drivers/mtd/nand/mxc_nand.c      |  2 +-
> >  drivers/mtd/nand/nand_bch.c      | 12 +++----
> >  drivers/mtd/nand/nandsim.c       | 10 +++---
> >  drivers/mtd/nand/r852.c          |  2 +-
> >  drivers/mtd/nand/r852.h          |  6 ++--
> >  drivers/mtd/nand/sm_common.c     |  5 ++-
> >  10 files changed, 65 insertions(+), 61 deletions(-)
> >   
> 
> [...]
> 
> >  
> > diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
> > index c3aa53c..b97d88c 100644
> > --- a/drivers/mtd/nand/diskonchip.c
> > +++ b/drivers/mtd/nand/diskonchip.c  
> 
> [...]
> 
> > @@ -438,7 +438,7 @@ static void __init doc2000_count_chips(struct mtd_info *mtd)
> >  			break;
> >  	}
> >  	doc->chips_per_floor = i;
> > -	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
> > +	pr_info("Detected %d chips per floor.\n", i);  
> 
> Should be pr_debug() here.
> 
> >  }
> >    
> 
> [...]
> 
> > diff --git a/drivers/mtd/nand/nandsim.c b/drivers/mtd/nand/nandsim.c
> > index 246b439..4e5f817 100644
> > --- a/drivers/mtd/nand/nandsim.c
> > +++ b/drivers/mtd/nand/nandsim.c
> > @@ -184,15 +184,15 @@ MODULE_PARM_DESC(bch,		 "Enable BCH ecc and set how many bits should "
> >  
> >  /* Simulator's output macros (logging, debugging, warning, error) */
> >  #define NS_LOG(args...) \
> > -	do { if (log) printk(KERN_DEBUG NS_OUTPUT_PREFIX " log: " args); } while(0)
> > +	do { if (log) pr_debug(NS_OUTPUT_PREFIX " log: " args); } while(0)  
> 
> You could define pr_fmt() to avoid passing NS_OUTPUT_PREFIX. Something
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
> >  #define NS_DBG(args...) \
> > -	do { if (dbg) printk(KERN_DEBUG NS_OUTPUT_PREFIX " debug: " args); } while(0)
> > +	do { if (dbg) pr_debug(NS_OUTPUT_PREFIX " debug: " args); } while(0)
> >  #define NS_WARN(args...) \
> > -	do { printk(KERN_WARNING NS_OUTPUT_PREFIX " warning: " args); } while(0)
> > +	do { pr_warn(NS_OUTPUT_PREFIX " warning: " args); } while(0)
> >  #define NS_ERR(args...) \
> > -	do { printk(KERN_ERR NS_OUTPUT_PREFIX " error: " args); } while(0)
> > +	do { pr_err(NS_OUTPUT_PREFIX " error: " args); } while(0)
> >  #define NS_INFO(args...) \
> > -	do { printk(KERN_INFO NS_OUTPUT_PREFIX " " args); } while(0)
> > +	do { pr_info(NS_OUTPUT_PREFIX " " args); } while(0)
> >  
> >  /* Busy-wait delay macros (microseconds, milliseconds) */
> >  #define NS_UDELAY(us) \
> > diff --git a/drivers/mtd/nand/r852.c b/drivers/mtd/nand/r852.c
> > index fc9287a..3d54c6a 100644
> > --- a/drivers/mtd/nand/r852.c
> > +++ b/drivers/mtd/nand/r852.c
> > @@ -935,7 +935,7 @@ static int  r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
> >  		&dev->card_detect_work, 0);
> >  
> >  
> > -	printk(KERN_NOTICE DRV_NAME ": driver loaded successfully\n");
> > +	pr_notice(DRV_NAME ": driver loaded successfully\n");  
> 
> Same here:
> 
> #define pr_fmt(fmt)	DRV_NAME fmt
> 
> >  	return 0;
> >  
> >  error10:
> > diff --git a/drivers/mtd/nand/r852.h b/drivers/mtd/nand/r852.h
> > index 8713c57..63de9b6 100644
> > --- a/drivers/mtd/nand/r852.h
> > +++ b/drivers/mtd/nand/r852.h
> > @@ -149,12 +149,12 @@ struct r852_device {
> >  
> >  #define dbg(format, ...) \
> >  	if (debug) \
> > -		printk(KERN_DEBUG DRV_NAME ": " format "\n", ## __VA_ARGS__)
> > +		pr_debug(DRV_NAME ": " format "\n", ## __VA_ARGS__)
> >  
> >  #define dbg_verbose(format, ...) \
> >  	if (debug > 1) \
> > -		printk(KERN_DEBUG DRV_NAME ": " format "\n", ## __VA_ARGS__)
> > +		pr_debug(DRV_NAME ": " format "\n", ## __VA_ARGS__)
> >    
> 
> And here as well.
> 
> Regards,
> 
> Boris
> 



-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
http://bootlin.com

