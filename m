X-GM-THRID: 6340866735627829248
X-Received: by 10.36.204.68 with SMTP id x65mr1603448itf.3.1476350131049;
        Thu, 13 Oct 2016 02:15:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.139 with SMTP id i133ls1927084ioe.54.gmail; Thu, 13
 Oct 2016 02:15:30 -0700 (PDT)
X-Received: by 10.66.158.38 with SMTP id wr6mr1138944pab.13.1476350130112;
        Thu, 13 Oct 2016 02:15:30 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id x14si1561310vkd.3.2016.10.13.02.15.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 02:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id l131so8793535lfl.0
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 02:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VL/0BEU2V5wZGINJBzJsQruoI5SNphwqbwuJ5JBU/SM=;
        b=Ew/A2QSmS7YWoY/6m95NW4K9Ma6fTGlvStFs2+pgItYvr2csxHdruQiXSTUqHkWYKK
         wl6HusMSAUUwgQZVO5jmGNtDfC71HhrvjQe58HSwKcpAp14U5Hd/eMi4CMoUIl78Ov3W
         /UcDY9h44uRP86isr7NlXH4TvBZbHR/NYnJavUAgTk34hk4SKpVkDUec9GmcAypNMejw
         qmqTZ5FcB+W/N6C8vnTYpEP3SvphM6NAwAaW3yA1cH73mhywVq3ld2uDd+aX4CiCybol
         3jtJvo973l6gp8LPT9wX6MfwKQBvrLw8fx+mWRWp4CA8smv1S5/agFZuTHtkzNsGJrG8
         0cOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VL/0BEU2V5wZGINJBzJsQruoI5SNphwqbwuJ5JBU/SM=;
        b=jRjDaxhVZ+xETL5ohZpfFlKo4FmxA91uiX61dizz/yUD4y6+uLdGxGxh0wBRg34bkH
         /S3GGmX4oMSIzcCKoaAoZQsX/Ux8NXrOEH5uKbmo5gaJqKRiIuAkbaCyWcPluAsHNI59
         7a21ZElWfmsCB26a3r65yDIR0QrxTsFUMlw5L5mI4CdjRP6xitOsXpdK8x/HxRrPbrYq
         1gEK6NkAN8E2PALnR3W+nDoshq/3cJcPggjPjna5udkVJbvcYCc0R3ccMPp/5xM45Afb
         foPskgtZRfZVM4y3NbV8F+scPAWab8O8MR3URDOYBzskBIjGf9EuS79W6w43EeUmSxo+
         rVtw==
X-Gm-Message-State: AA6/9Rkq14mAQ1b+XlwRuFapBcEBiOTlo5IaR6IeAo+eEyZJZYyW+ycSbz5co3vA4fMjJA==
X-Received: by 10.28.232.148 with SMTP id f20mr1452506wmi.30.1476350128614;
        Thu, 13 Oct 2016 02:15:28 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.0])
        by smtp.gmail.com with ESMTPSA id y2sm20852973wjx.20.2016.10.13.02.15.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 02:15:27 -0700 (PDT)
Date: Thu, 13 Oct 2016 12:15:23 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8188eu: hal: Compress return logic into one
 line
Message-ID: <20161013091523.GA7793@domino-MS-16Y1>
References: <20161013084120.GA6373@domino-MS-16Y1>
 <20161013085349.GA5232@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161013085349.GA5232@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 13, 2016 at 10:53:49AM +0200, Greg Kroah-Hartman wrote:
> On Thu, Oct 13, 2016 at 11:41:20AM +0300, Mihaela Muraru wrote:
> > Simplify function returns by merging assignment and return into
> > one command line.
> > Found with Coccinelle
> > @@
> > expression e, ret;
> > @@
> > 
> > -ret =
> > +return
> >         e;
> > -return ret;
> > 
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  ret.out | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >  create mode 100644 ret.out
> > 
> > diff --git a/ret.out b/ret.out
> > new file mode 100644
> > index 0000000..fd4d380
> > --- /dev/null
> > +++ b/ret.out
> > @@ -0,0 +1,22 @@
> > +--- /home/domino/git/kernels/staging/drivers/staging/rtl8188eu/hal/phy.c
> > ++++ /tmp/cocci-output-5790-5d9d37-phy.c
> > +@@ -44,8 +44,7 @@ u32 phy_query_bb_reg(struct adapter *ada
> > + 
> > + 	original_value = usb_read32(adapt, regaddr);
> > + 	bit_shift = cal_bit_shift(bitmask);
> > +-	return_value = (original_value & bitmask) >> bit_shift;
> > +-	return return_value;
> > ++	return (original_value & bitmask) >> bit_shift;
> > + }
> > + 
> > + void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
> > +@@ -123,8 +122,7 @@ u32 rtw_hal_read_rfreg(struct adapter *a
> > + 
> > + 	original_value = rf_serial_read(adapt, rf_path, reg_addr);
> > + 	bit_shift =  cal_bit_shift(bit_mask);
> > +-	readback_value = (original_value & bit_mask) >> bit_shift;
> > +-	return readback_value;
> > ++	return (original_value & bit_mask) >> bit_shift;
> > + }
> > + 
> > + void phy_set_rf_reg(struct adapter *adapt, enum rf_radio_path rf_path,
> 
> Your patch just adds a patch to the tree, not what I think you ment to
> send here :)
 
> Care to try it again?

Thanks for reply, i will send it again :)

mihaela
 
> thanks,
> 
> greg k-h

