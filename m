X-GM-THRID: 6751257049994100736
X-Received: by 2002:a63:e145:: with SMTP id h5mr1308565pgk.447.1571969809119;
        Thu, 24 Oct 2019 19:16:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4458:: with SMTP id t24ls2307331pgk.4.gmail; Thu, 24 Oct
 2019 19:16:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw9BRQgUApMlrj0EHavJVohQgfOFq34c3vE/0GzzZQJC0/QNvRKMfMcI2E1k+UcgcnelGJR
X-Received: by 2002:a63:a05c:: with SMTP id u28mr1362262pgn.333.1571969807231;
        Thu, 24 Oct 2019 19:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571969807; cv=none;
        d=google.com; s=arc-20160816;
        b=hmh+Q44U5QSkoDl+BbfVNKOCOVDe4rstRH1LRIUTldTp7X7XyugvsWPIpJq3+XilBf
         hUMeZGFO1Na3E8hX/HmPLsRIPh62DklnNjI1fG+1tZujl3ln06nDI7PW1UJKdDMdspfL
         wN3JcucUTnC4MlUn4kEV4w8rzbWI8m7VGO3neeiekNKj+3jccO0humjmTPfUXUDLHHeV
         swFFr23F1mhsp9KMDQQQK8x77viejOjmrVu5sKQ9AFK9qhn3p+dTsIEyAp/OroBB9KKw
         ilEWTDZcFMid9JZImNeEqqGoEowfDcob6Uqe3UOJypyjHkoa5RIZwjaUx601D/XMH5W5
         Vkbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CwPvOdK5K8xg4bP4LWriq5c96Z/9TPJjyIj1EkQrEdQ=;
        b=o9/ntewrNu4zRZcyAGWif3ctGmCJLhNsmw5C/4Ck3GaIRIFC4aoz5XmemJFQqBapxR
         g+htrPGfAZWmXg1PdQ97LoHaKhPEnpnOT3+rAQeMJBbhgRLju22BBIarazouCLMCeQW4
         jJhtrzpGgNp8XkiARozBvefLhZ7/OL/CLrf7BIR0YMCH+eoULNe5M6VGqszBlG2NABks
         FgizN9aWY3/kqvs3gxBOtRjRPfA4KZ8kiDIJmTrVXX6DpYAADzP3z/zlEDcjVLAHwJ27
         6mmzz6DzF5E3uFJabC3yZrUKinuS7BSxpoNRcSuUUfDrJAbXYXWjPY8D7bg1GKvROfJI
         +ZNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W0suI0CG;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h1si153456pju.1.2019.10.24.19.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 19:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W0suI0CG;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 3so487596pfb.10
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 19:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CwPvOdK5K8xg4bP4LWriq5c96Z/9TPJjyIj1EkQrEdQ=;
        b=W0suI0CGHhNBk6B+ZUl87iQFmSxHIniZ+UOC5nyeLUNpU8XYmgfJcj0qo6icwqqJQg
         9wSaaHjaa0ETYaF/5oPVc8E+XHlBjGiE4X3ID9lHNiW0dsyFrQXYs4u6DCn8lLn1KugL
         m2EcXwC/ZSbPjwHiqjJg68i7rBGokLVCuyOGEfibtiwDqL3IS+VCpdPj8NZ6jznmVuBA
         S8e5xNf80uLy0zBhiNjXVWzERSnoP8cO3e5dtfiS/8bsyQXrSBvWupdEJFHkqioE20+Y
         d70bSrB5YoFsGaeiatSysL/pHxuTATw2MNM/tY+WehTf0z/LzPf9UeJvGnYDZ+11MOVl
         Jgog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CwPvOdK5K8xg4bP4LWriq5c96Z/9TPJjyIj1EkQrEdQ=;
        b=Vi+Zf2cFw1XHmHmhbwgAAIlUuHAH6bSXIWgJhgqpE/l+XUT9iRqXRXTILGLQ5d78/6
         YDqWFQKbmAbxyRtiYz5HeO/fHdaGz58WI86iQ4A0e5IvDv/JxDjgYAZYF4O4skApi1ds
         rksLGEZO/sg/j57JVV04GmSJsAhXQCR/SatSB+nKM2MwhyJIrcaRQVqJNpXMXQF96vWv
         ULfdJhI0uiQSZGLC4o2TKdtEn6RuUfz716bEVGf3nF+gVbKBhe3Op/YwzkTL9iw4PN8V
         3G543FZPxaeco4qTZ1Td4JowWr8ennm/KnXt3+a/mReavRb++qBqWWtQvC6K92C6byNJ
         9lbA==
X-Gm-Message-State: APjAAAXTDmsmCDHh8CPrS/QD1ZnSCiQaaVAgrpFpACXwvlM1I7Nbxn+R
	Xpncd0g0ghw6d19fOjxuJkXoJLAN
X-Received: by 2002:a65:498a:: with SMTP id r10mr1352762pgs.131.1571969806391;
        Thu, 24 Oct 2019 19:16:46 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 6sm285159pfz.156.2019.10.24.19.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 19:16:45 -0700 (PDT)
Date: Thu, 24 Oct 2019 19:16:44 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_i2c: Fix lines over 80 chars
Message-ID: <20191025021644.GA8713@jamal-XPS-13-9343>
References: <cover.1571948876.git.jamal.k.shareef@gmail.com>
 <e9fce17736dbd3219b4ad5c18b3436ae34299dcd.1571948876.git.jamal.k.shareef@gmail.com>
 <20191025012648.GA265361@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191025012648.GA265361@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 24, 2019 at 09:26:48PM -0400, Greg KH wrote:
> On Thu, Oct 24, 2019 at 01:35:19PM -0700, Jamal Shareef wrote:
> > Fix lines over 80 characters warnings.
> > issue found by checkpatch.
> > 
> > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc2000_i2c.c | 203 ++++++++++++++++++--------
> >  1 file changed, 139 insertions(+), 64 deletions(-)
> > 
> > diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
> > index bc02534d8dc3..69128fd7fd5e 100644
> > --- a/drivers/staging/kpc2000/kpc2000_i2c.c
> > +++ b/drivers/staging/kpc2000/kpc2000_i2c.c
> > @@ -99,7 +99,8 @@ struct i2c_device {
> >  #define SMBHSTSTS_INTR          0x02
> >  #define SMBHSTSTS_HOST_BUSY     0x01
> >  
> > -#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
> > +#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | \
> 
> Shouldn't you use a tab in this line?
> 
> > +		SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
> 
> That does not line up very well, it looks worse now :(
>
Will revise this.
> 
> >  
> >  /* Older devices have their ID defined in <linux/pci_ids.h> */
> >  #define PCI_DEVICE_ID_INTEL_COUGARPOINT_SMBUS       0x1c22
> > @@ -136,7 +137,9 @@ static int i801_check_pre(struct i2c_device *priv)
> >  
> >  	status = inb_p(SMBHSTSTS(priv));
> >  	if (status & SMBHSTSTS_HOST_BUSY) {
> > -		dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
> > +		dev_err(&priv->adapter.dev,
> > +			"SMBus is busy, can't use it! (status=%x)\n",
> > +			status);
> 
> Why did you put status on a new line?
>
This was a requested change in Patch v1. Can revert if necessary.
> >  		return -EBUSY;
> >  	}
> >  
> > @@ -146,7 +149,9 @@ static int i801_check_pre(struct i2c_device *priv)
> >  		outb_p(status, SMBHSTSTS(priv));
> >  		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
> >  		if (status) {
> > -			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
> > +			dev_err(&priv->adapter.dev,
> > +				"Failed clearing status flags (%02x)\n",
> > +				status);
> 
> Same here, why this last line change?
> 
Same as above
> 
> 
> >  			return -EBUSY;
> >  		}
> >  	}
> > @@ -162,15 +167,20 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
> >  	if (timeout) {
> >  		dev_err(&priv->adapter.dev, "Transaction timeout\n");
> >  		/* try to stop the current command */
> > -		dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
> > -		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
> > +		dev_dbg(&priv->adapter.dev,
> > +			"Terminating the current operation\n");
> > +		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL,
> > +		       SMBHSTCNT(priv));
> 
> SHouldn't this line up a bit differently?
> 
> You might want to use a text editor that handles this properly when
> adding indentation.  I know vim does it, and I imagine that emacs does
> as well.
> 
> thanks,
> 
> greg k-h

Checkpatch warns if it is indented any other way, is this not correct?
It looks like the second argument to outb_p.

Jamal

