X-GM-THRID: 6949973907804782592
X-Received: by 2002:a17:906:729d:: with SMTP id b29mr19270418ejl.461.1618222357471;
        Mon, 12 Apr 2021 03:12:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:515:: with SMTP id m21ls565725edv.1.gmail; Mon, 12
 Apr 2021 03:12:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx6beA/rfK8+aHVwz9WdcrVOiubg26GT8gcTDcxRlfn3ByJgnEMvUL6DDldor7apHg2Ltkr
X-Received: by 2002:a05:6402:1350:: with SMTP id y16mr28415961edw.309.1618222356338;
        Mon, 12 Apr 2021 03:12:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618222356; cv=none;
        d=google.com; s=arc-20160816;
        b=fCy8v6t+5CzxL1EOBBTynO1kZi++KMh5rvyS8yfyyZgpLj+lxljzHEbML50RuNbRWu
         g3Fznxmk+a8OHgPO8IleDTzUOi8ILzi7BoN+xo5Vf2uVoPdbE1wGWWxqbGBe15CsPUn/
         bkiE/gUYJKaxboco2WiafvHgRtjGVHFYSAiMeC2bO0PowTznSxSPG0iAWDtxNHbICvqN
         Ep0nwYTCU7Xii8yNHXYhqHrNyGMt5amXWnQUhZI6heQtvsXaxlTPQhgpBtIsfUMS0yL7
         0oN9O8TP4rj4SF07a9JQtU0HQYA+c8CTE7QdNrkg2j3gPnUnzS3aEVhKnSkArfg7smgy
         7N4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mF+6SGO1JLL8M4234s6vYG5jQ2k4t0YfQWKHCjz7COY=;
        b=lWt6sQoLmZgZvN9xjtDGv+TQGszu3j1aMTsJZaJpRkB6IBofhcLlfWoFKe+2ObH4fW
         p69lPMUmSVpKYaQ7AKRknoIt/gyOdF3x1rb3al0V7s6rZUy+i/yDiBr9cEhU08Ai2n3t
         9k9OC+0b4fLi+YPRguu9jdfHikyKZPExG+aIWnQ2I6ZVeg7NZL0dzOeYgZL7MFAVaEpI
         UHqa8MMXjYz1M3CLpJ3Bg6LqHzfI1+NdC6JTIMXyf+JDVC5+g4ljv1yET9fE5RKYnJOi
         kiGl57dZix1uXtdl8PfrOOA99rx9dWm4WFgN31bYKVDNnkg3qIKYt9USsLkUQ6VuB/IE
         bMfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dPe43xTp;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id ck26si926272edb.1.2021.04.12.03.12.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:12:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dPe43xTp;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id r22so14336577edq.9
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 03:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mF+6SGO1JLL8M4234s6vYG5jQ2k4t0YfQWKHCjz7COY=;
        b=dPe43xTptCxH/ooeJ+PlNENISk5DTUt4gdP5FIiRkXxTA/CRz+ITFNzkn33yehExKV
         jo+VCt8J+OxFPF/6YWy1ZXa+vjNM5S4ZtVpueShKdagx9ZIB/p0o8JvygqK0OZDLnMcT
         QGST+WaZdtAMZsKLC9SVfkx9GDhTudQ8I9qjVbgyoX4vnvvSDikoig1VgqleyaGVbeWt
         253u+b3ivBDVQBtptksigzV5YE7swNAheTq8RKGowWW9DnSSRxDK9EijJS2HAcZDZo4b
         PQHHKzj8M8G8NYKYP/9EypOoajqSIolCkAuDmUt5PBOLSr8b+ciHev20/o17ZcWiN8Q9
         MSjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mF+6SGO1JLL8M4234s6vYG5jQ2k4t0YfQWKHCjz7COY=;
        b=XP8g7kIO0NTIq11ANw9Ub8/rx+X/qtPfXxBxi6IAlmBSjp5kEEHprmVaQrkoQLQrUJ
         akEmOOc1OwqqQt2/xQpIMYecouFWSf1XixWX8+9iNnwS084HTbjfu76S/zxoKKLkRP2L
         mzkuew9zPYDUC3pYotNusajFnURDwn0Rs4oJtisG4o3m6hMbkndnwfAW10QdljHkzuC6
         Amq64laKXBjsodNoj0RwdLouK4gP+59X0vG3lKOFmdW9+HgPDIOzFEuILHY8Bzfoty1J
         EqxhkVeKSSZAgiiPHhiB1FjgdFLnLEuApnXuXnQqaHaDvwZSLY8dG5k8+r+9B5DNZpMZ
         0NJQ==
X-Gm-Message-State: AOAM5303jKK2WBSL71p2l2CULfOSn6xEgVi1ScXh19304z9/2KAwwff5
	5b7srbvPzPBbJfCQ2pn3EVM=
X-Received: by 2002:aa7:d843:: with SMTP id f3mr22951918eds.52.1618222356109;
        Mon, 12 Apr 2021 03:12:36 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id i16sm4948733ejc.106.2021.04.12.03.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 03:12:35 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove function
Date: Mon, 12 Apr 2021 12:12:34 +0200
Message-ID: <4388012.RVq5xMhMDq@linux.local>
In-Reply-To: <YHQWG2f34jhA41lK@kroah.com>
References: <20210411184813.22836-1-fmdefrancesco@gmail.com> <YHQWG2f34jhA41lK@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, April 12, 2021 11:42:51 AM CEST Greg KH wrote:
> On Sun, Apr 11, 2021 at 08:48:13PM +0200, Fabio M. De Francesco wrote:
> > Remove cmpk_handle_query_config_rx() because it just initializes a
> > local
> > variable and then returns "void".
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 40 ------------------------
> >  1 file changed, 40 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > b/drivers/staging/rtl8192u/r819xU_cmdpkt.c index
> > 4cece40a92f6..d5a54c2d3086 100644
> > --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > @@ -249,46 +249,6 @@ static void cmpk_handle_interrupt_status(struct
> > net_device *dev, u8 *pmsg)> 
> >  	DMESG("<---- cmpk_handle_interrupt_status()\n");
> >  
> >  }
> > 
> > -/*--------------------------------------------------------------------
> > --------- - * Function:    cmpk_handle_query_config_rx()
> > - *
> > - * Overview:    The function is responsible for extract the message
> > from - *		firmware. It will contain dedicated info in
> > - *		ws-06-0063-rtl8190-command-packet-specification. 
Please
> > - *		refer to chapter "Beacon State Element".
> > - *
> > - * Input:       u8    *pmsg	-	Message Pointer of the 
command packet.
> > - *
> > - * Output:      NONE
> > - *
> > - * Return:      NONE
> > - *
> > - * Revised History:
> > - *  When		Who	Remark
> > - *  05/12/2008		amy	Create Version 0 porting from 
windows code.
> > - *
> > -
> > *---------------------------------------------------------------------
> > ------ - */
> > -static void cmpk_handle_query_config_rx(struct net_device *dev, u8
> > *pmsg) -{
> > -	struct cmpk_query_cfg	rx_query_cfg;
> > -
> > -	/* 1. Extract TX feedback info from RFD to temp structure 
buffer. */
> > -	/* It seems that FW use big endian(MIPS) and DRV use little 
endian in
> > -	 * windows OS. So we have to read the content byte by byte or
> > transfer
> > -	 * endian type before copy the message copy.
> > -	 */
> > -	rx_query_cfg.cfg_action		= (pmsg[4] & 0x80) >> 7;
> > -	rx_query_cfg.cfg_type		= (pmsg[4] & 0x60) >> 5;
> > -	rx_query_cfg.cfg_size		= (pmsg[4] & 0x18) >> 3;
> > -	rx_query_cfg.cfg_page		= (pmsg[6] & 0x0F) >> 0;
> > -	rx_query_cfg.cfg_offset		= pmsg[7];
> > -	rx_query_cfg.value		= (pmsg[8]  << 24) | 
(pmsg[9]  << 16) |
> > -					  (pmsg[10] <<  8) 
| (pmsg[11] <<  0);
> > -	rx_query_cfg.mask		= (pmsg[12] << 24) | 
(pmsg[13] << 16) |
> > -					  (pmsg[14] <<  8) 
| (pmsg[15] <<  0);
> > -}
> > -
> > 
> >  /*--------------------------------------------------------------------
> >  --------->  
> >   * Function:	cmpk_count_tx_status()
> >   *
> 
> Always test-build your patches as they can not break the build.  You
> obviously did not do that here, why not?
>
I can't see that where the build of rtl8192u is broken. 
The following lines are from the compilation log:

git/kernels/staging> make -j8 drivers/staging/rtl8192u/
 [...]
 CC [M]  drivers/staging/rtl8192u/r819xU_cmdpkt.o
 CC [M]  drivers/staging/rtl8192u/r819xU_cmdpkt.o
 [...]
 LD [M]  drivers/staging/rtl8192u/r8192u_usb.o

No errors are reported.

What am I missing?

Thanks,

Fabio
> 
> thanks,
> 
> greg k-h





