X-GM-THRID: 6949973907804782592
X-Received: by 2002:a05:651c:211e:: with SMTP id a30mr18815596ljq.18.1618224174074;
        Mon, 12 Apr 2021 03:42:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls841519lfa.0.gmail; Mon, 12 Apr
 2021 03:42:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzxeU6Nzs0MSdrNP2hIbO+dvrGqzLjrkYGxJhr16De6WjLNPlLniTbd3nrJa3ltuULURlYt
X-Received: by 2002:a05:6512:208d:: with SMTP id t13mr15335372lfr.417.1618224172397;
        Mon, 12 Apr 2021 03:42:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618224172; cv=none;
        d=google.com; s=arc-20160816;
        b=iNMsJJCa/3mycaDPohtn/84r9mDAu3Af9c1PVfcLALkxi5g2oAY6n2hHgb6ANYYAan
         7dfINwABz3pwkNwDEmcwuIgLtAh08C9bJAU9GC3L0R9Y5AMEJnhM3dIoub/kyfMakNJc
         RVLYR7z3WzC8rl+rSteGBqfUlFvTXXSJzCpy56T5wk0G8cqNmMCVe2Bdu16NWSkoqRXB
         aqV64rjUSQCaq+eNOTZWtc9N+pk1ACisgBRZrhEHcZBQEWZq6YaNLltkZkG1KsMlB4HP
         0yu5JAHabwKp+f61w/woBj4mGgXd1hWu5gXjKxgyN3hEh4VaULl+QGG9JIKawpVCAM6w
         81ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0jL6kS6yKwLQwJYSHVW/F2daax6+6XOr6VTQzmb6EBo=;
        b=JonV6Lte7pPykauBRZl6t9XFXJUlc8o1Os/fRFHyuRNPKYnpm1ZMNGA8Y/v2rIt/NG
         9YnWOonkGMaR9p0CWOb51VIqumYfVII82a10BxM53RfI1zmecSqma6oGnZvHYvDwXlMF
         IPLB8lRcPIbvCdv2hCzsCc2TsrSugl9Apl+4vu0e9K4TNBxoUou4xG5YVnF9w2Lo4Oay
         Mfk9s/dKClzSJzKpZc6lojptKkHNangVAMtGtCIHIj/Qfzlp3luSXPOoo3+iogih8TQq
         IUuARn80xvUYvjf/5bnyFU2wCOZKcvb5yD+I4cNxGd2dYcT1UNPpmyhVIbp5BNIyFNbc
         QtpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=grQwB2So;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id 63si716700lfd.1.2021.04.12.03.42.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:42:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=grQwB2So;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52f.google.com with SMTP id x4so14499509edd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 03:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0jL6kS6yKwLQwJYSHVW/F2daax6+6XOr6VTQzmb6EBo=;
        b=grQwB2SoiIeDwtYG2crFnvYSGLpshKob/rVzA9X42caOcKViYGNiv/RZqYiTcEMWRj
         XHE7Qx9ehqe/M3XyJSS4ZsNt5Vp7kxFhUlfScBvgAUQA4vZL6UwfVxNZwQLssswxDIwy
         3/yZhymlZAFmuflzJ3YisVUe2FwLy0QO9NvPBR+iMLe255CV3olS8XxLXMnLKbMPPdnS
         /rxWIaj8MTdS3nBhMR7xUMMdEdMqVW/nIVLAXF7B3eMyeG//ZebPH8ssiObXzfMqeKsZ
         h5wSUTkFm6EbCP9/EAMuwku1rS9/iiEgug9oh9Q9+H21tHD26pN3y4VOOnI5W6y+Xyem
         /qCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0jL6kS6yKwLQwJYSHVW/F2daax6+6XOr6VTQzmb6EBo=;
        b=J1M9qghIQi07xqjbtKyw1XMjA/1fj5Qda/bwjIf/Pq+5pQ8X1qRtbSi8g8BCQcane8
         7urkAppdxm6vFwk+RSpoy4jE2CrcTh44QLRQAZ/4+4kZcDuSK9Pfsc42X/nBgdw6DUSa
         JxDMJqekifczGKKQzxkGwaTJC6l0bS9ycXa3WjVLrxWflAd2gcLG4gCtwwp6N0SjwJIx
         4fSTJu4ZYi01aJyjMqt/kwT0GnKEc0H65G7iw1Ec4FvPtfT4nYISdXLN1MqrZjymuYkV
         qppLKBaAH5nnRbQO1Sd9C9qxAhADyaCXYVTo5Y8klJvMkbpH+REuCTP66z9Woe1P/q2Y
         M9Ww==
X-Gm-Message-State: AOAM531YIuDtXgBR23/eJSzWfrwAzVcDtFy3TyY9jIcEtXMhNg4hT4Zb
	hHf3TP7R4HSUH65oPHdQh28=
X-Received: by 2002:a05:6402:1157:: with SMTP id g23mr28743255edw.303.1618224171909;
        Mon, 12 Apr 2021 03:42:51 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id mp36sm5330293ejc.48.2021.04.12.03.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 03:42:51 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove function
Date: Mon, 12 Apr 2021 12:42:50 +0200
Message-ID: <5043782.cgFr61IFxu@linux.local>
In-Reply-To: <YHQfS3rb81ElJ6uQ@kroah.com>
References: <20210411184813.22836-1-fmdefrancesco@gmail.com> <4388012.RVq5xMhMDq@linux.local> <YHQfS3rb81ElJ6uQ@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, April 12, 2021 12:22:03 PM CEST Greg KH wrote:
> On Mon, Apr 12, 2021 at 12:12:34PM +0200, Fabio M. De Francesco wrote:
> > On Monday, April 12, 2021 11:42:51 AM CEST Greg KH wrote:
> > > On Sun, Apr 11, 2021 at 08:48:13PM +0200, Fabio M. De Francesco 
wrote:
> > > > Remove cmpk_handle_query_config_rx() because it just initializes a
> > > > local
> > > > variable and then returns "void".
> > > > 
> > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > ---
> > > > 
> > > >  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 40
> > > >  ------------------------
> > > >  1 file changed, 40 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > > > b/drivers/staging/rtl8192u/r819xU_cmdpkt.c index
> > > > 4cece40a92f6..d5a54c2d3086 100644
> > > > --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > > > +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> > > > @@ -249,46 +249,6 @@ static void
> > > > cmpk_handle_interrupt_status(struct
> > > > net_device *dev, u8 *pmsg)>
> > > > 
> > > >  	DMESG("<---- cmpk_handle_interrupt_status()\n");
> > > >  
> > > >  }
> > > > 
> > > > -/*----------------------------------------------------------------
> > > > ----
> > > > --------- - * Function:    cmpk_handle_query_config_rx()
> > > > - *
> > > > - * Overview:    The function is responsible for extract the
> > > > message
> > > > from - *		firmware. It will contain dedicated 
info in
> > > > - *		ws-06-0063-rtl8190-command-packet-specification.
> > 
> > Please
> > 
> > > > - *		refer to chapter "Beacon State Element".
> > > > - *
> > > > - * Input:       u8    *pmsg	-	Message Pointer of the
> > 
> > command packet.
> > 
> > > > - *
> > > > - * Output:      NONE
> > > > - *
> > > > - * Return:      NONE
> > > > - *
> > > > - * Revised History:
> > > > - *  When		Who	Remark
> > > > - *  05/12/2008		amy	Create Version 0 porting 
from
> > 
> > windows code.
> > 
> > > > - *
> > > > -
> > > > *------------------------------------------------------------------
> > > > ---
> > > > ------ - */
> > > > -static void cmpk_handle_query_config_rx(struct net_device *dev, u8
> > > > *pmsg) -{
> > > > -	struct cmpk_query_cfg	rx_query_cfg;
> > > > -
> > > > -	/* 1. Extract TX feedback info from RFD to temp structure
> > 
> > buffer. */
> > 
> > > > -	/* It seems that FW use big endian(MIPS) and DRV use little
> > 
> > endian in
> > 
> > > > -	 * windows OS. So we have to read the content byte by byte or
> > > > transfer
> > > > -	 * endian type before copy the message copy.
> > > > -	 */
> > > > -	rx_query_cfg.cfg_action		= (pmsg[4] & 0x80) >> 7;
> > > > -	rx_query_cfg.cfg_type		= (pmsg[4] & 0x60) >> 5;
> > > > -	rx_query_cfg.cfg_size		= (pmsg[4] & 0x18) >> 3;
> > > > -	rx_query_cfg.cfg_page		= (pmsg[6] & 0x0F) >> 0;
> > > > -	rx_query_cfg.cfg_offset		= pmsg[7];
> > > > -	rx_query_cfg.value		= (pmsg[8]  << 24) |
> > 
> > (pmsg[9]  << 16) |
> > 
> > > > -					  (pmsg[10] <<  8)
> > | 
> > | (pmsg[11] <<  0);
> > | 
> > > > -	rx_query_cfg.mask		= (pmsg[12] << 24) |
> > 
> > (pmsg[13] << 16) |
> > 
> > > > -					  (pmsg[14] <<  8)
> > | 
> > | (pmsg[15] <<  0);
> > | 
> > > > -}
> > > > -
> > > > 
> > > >  /*----------------------------------------------------------------
> > > >  ----
> > > >  --------->
> > > >  
> > > >   * Function:	cmpk_count_tx_status()
> > > >   *
> > > 
> > > Always test-build your patches as they can not break the build.  You
> > > obviously did not do that here, why not?
> > 
> > I can't see that where the build of rtl8192u is broken.
> > The following lines are from the compilation log:
> > 
> > git/kernels/staging> make -j8 drivers/staging/rtl8192u/
> > 
> >  [...]
> >  CC [M]  drivers/staging/rtl8192u/r819xU_cmdpkt.o
> >  CC [M]  drivers/staging/rtl8192u/r819xU_cmdpkt.o
> >  [...]
> >  LD [M]  drivers/staging/rtl8192u/r8192u_usb.o
> > 
> > No errors are reported.
> > 
> > What am I missing?
> 
> The function is used elsewhere in this file :(
>
You're right, it is used in a "switch" statement later in the file.
Now I've also understood why it built with no errors:
it built because, notwithstanding that modification, for some reason I have 
still the original version of the file.
I don't know why, maybe I've made some stupid error with Git...

Thanks,

Fabio




