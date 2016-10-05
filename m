X-GM-THRID: 6337746861682589696
X-Received: by 10.28.198.196 with SMTP id w187mr766883wmf.1.1475650564557;
        Tue, 04 Oct 2016 23:56:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.78 with SMTP id x75ls56646wma.4.gmail; Tue, 04 Oct 2016
 23:56:04 -0700 (PDT)
X-Received: by 10.195.17.199 with SMTP id gg7mr479865wjd.10.1475650564052;
        Tue, 04 Oct 2016 23:56:04 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id a126si702426wmd.1.2016.10.04.23.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 23:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id f193so18382289wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 23:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TB5MdWj1OzXuQwfok9e37RA7QcQWwR5D69n7dQ2kiuM=;
        b=jxzHvyssUb14lwxi+nES6xPcN9gsUhrN84C1oxa8WQWuqLPq6CHLaw1uxu9jYG6knt
         YoE3rGgyQ1SpmJFl/40dAxFbQQLd1VBhj+sg8/h5w9xhFNgyYGk7p6iVVs0Lpr8jX2pr
         F2lOHV0MM0X/Lfue+4CGGhz2e1tzGmrbnl/6vDjQ+i8l2l1FEj51pD/TfDAs+o78YGqL
         EHqITaYt0paWy8iyB/kSfDzzF/6oEsHx64vzLsBBJfD8cZICo8/+dVlLe827EIhx8Xx1
         pgnEJn6yQBhDRm47Kj2IUm3dn9Ub8ptXr4PJVSw81eApYOHYsicRb9hpMJW6tqoU6Ly8
         tqqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TB5MdWj1OzXuQwfok9e37RA7QcQWwR5D69n7dQ2kiuM=;
        b=ln6cE+oIGP6q2aGI8SXFzhw68EDByixazYYPMtgagNTZbVNP9hqyV0FUCi+Rc/oozc
         bIW0BPOnVTAQozBanmhFW16s2Aj15Asv/zUXkAJEWc2T05ndV3ROG/eyc2ARpPQuqpcN
         WtJkku+NjZ89i8AgWROLGQ6PgO1ip1eT2FkpSZNUCpL1V1YtU/WWPR7BwmIC6gp/4uiK
         0DqIdQNKF7g91OHXWQHQ7fcl+/jBE3Ch2k4NACyEqUTtzYmnQzFRnXc2Fi8Dr/mYm0G3
         q/n7UC/BeuzTNa7VuqkAhsr7ILQVVbcVe9lgHAqbiG+iPw9h2CfizsBElXbByKX2eANj
         9+ow==
X-Gm-Message-State: AA6/9Rnt5n+VxRvgvobr6qhcT0uYm3keCgG16BhHieHpdUxudIAn2rEp/e32LaDYj8mKhg==
X-Received: by 10.194.250.106 with SMTP id zb10mr5878518wjc.99.1475650563807;
        Tue, 04 Oct 2016 23:56:03 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id vs7sm7248843wjb.10.2016.10.04.23.56.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 23:56:03 -0700 (PDT)
Date: Wed, 5 Oct 2016 09:56:02 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: remove typedefs in
 ddk750_chip.h
Message-ID: <20161005065601.GA2961@domino-MS-16Y1>
References: <20161004225439.GA10563@domino-MS-16Y1>
 <alpine.DEB.2.10.1610050801290.3061@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610050801290.3061@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 05, 2016 at 08:05:03AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 5 Oct 2016, Muraru Mihaela wrote:
> 
> > This patch fixes the checkpatch.pl warning: "WARNING: do not add new
> > typedefs" by removing the typedefs and changing the files where it was
> > used.
> 
> This is a nice problem to work on.  I would suggest to make the commit
> message a bit more specific by saying which types you are converting.  It
> would help orient the reader when looking at the subsequent code.
> 
> Also, it would be good to change the type name.  The _t suggests a
> typedef.  So you can remove that in each case.
> 
> Be sure that you have a .o file for each .c file that you modify.  And
> check with grep to be double sure that you have adjusted all references to
> this type in the Linux kernel.  Whether a particular line of code is
> compiled depends on configuration options, so there is a small chance that
> you could accidentally miss one occurrence, and that occurrence would be
> one that is under some #ifdefs that are not compatible with your
> configuration.
> 
> julia
 
 Thank you Julia, I will resend the patch v2 and I'll make the changes
 suggested by you.

 mihaela
> >
> > Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_chip.c |  8 ++++----
> >  drivers/staging/sm750fb/ddk750_chip.h | 16 +++++++---------
> >  drivers/staging/sm750fb/ddk750_mode.c |  4 ++--
> >  drivers/staging/sm750fb/sm750_hw.c    |  2 +-
> >  4 files changed, 14 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> > index 3a0afe1..bfe2f1a 100644
> > --- a/drivers/staging/sm750fb/ddk750_chip.c
> > +++ b/drivers/staging/sm750fb/ddk750_chip.c
> > @@ -56,7 +56,7 @@ static unsigned int get_mxclk_freq(void)
> >   */
> >  static void setChipClock(unsigned int frequency)
> >  {
> > -	pll_value_t pll;
> > +	struct pll_value_t pll;
> >  	unsigned int ulActualMxClk;
> >
> >  	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
> > @@ -208,7 +208,7 @@ unsigned int ddk750_getVMSize(void)
> >  	return data;
> >  }
> >
> > -int ddk750_initHw(initchip_param_t *pInitParam)
> > +int ddk750_initHw(struct initchip_param_t *pInitParam)
> >  {
> >  	unsigned int reg;
> >
> > @@ -307,7 +307,7 @@ int ddk750_initHw(initchip_param_t *pInitParam)
> >   * M = {1,...,255}
> >   * N = {2,...,15}
> >   */
> > -unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
> > +unsigned int calcPllValue(unsigned int request_orig, struct pll_value_t *pll)
> >  {
> >  	/* as sm750 register definition,
> >  	 * N located in 2,15 and M located in 1,255
> > @@ -375,7 +375,7 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
> >  	return ret;
> >  }
> >
> > -unsigned int formatPllReg(pll_value_t *pPLL)
> > +unsigned int formatPllReg(struct pll_value_t *pPLL)
> >  {
> >  #ifndef VALIDATION_CHIP
> >  	unsigned int POD = pPLL->POD;
> > diff --git a/drivers/staging/sm750fb/ddk750_chip.h b/drivers/staging/sm750fb/ddk750_chip.h
> > index 14357fd..be4ba11 100644
> > --- a/drivers/staging/sm750fb/ddk750_chip.h
> > +++ b/drivers/staging/sm750fb/ddk750_chip.h
> > @@ -25,7 +25,7 @@ typedef enum _clock_type_t {
> >  }
> >  clock_type_t;
> >
> > -typedef struct _pll_value_t {
> > +struct pll_value_t {
> >  	clock_type_t clockType;
> >  	unsigned long inputFreq; /* Input clock frequency to the PLL */
> >
> > @@ -34,11 +34,10 @@ typedef struct _pll_value_t {
> >  	unsigned long N;
> >  	unsigned long OD;
> >  	unsigned long POD;
> > -}
> > -pll_value_t;
> > +};
> >
> >  /* input struct to initChipParam() function */
> > -typedef struct _initchip_param_t {
> > +struct initchip_param_t {
> >  	unsigned short powerMode;    /* Use power mode 0 or 1 */
> >  	unsigned short chipClock;    /**
> >  				      * Speed of main chip clock in MHz unit
> > @@ -66,14 +65,13 @@ typedef struct _initchip_param_t {
> >  				      */
> >
> >  	/* More initialization parameter can be added if needed */
> > -}
> > -initchip_param_t;
> > +};
> >
> >  logical_chip_type_t sm750_get_chip_type(void);
> > -unsigned int calcPllValue(unsigned int request, pll_value_t *pll);
> > -unsigned int formatPllReg(pll_value_t *pPLL);
> > +unsigned int calcPllValue(unsigned int request, struct pll_value_t *pll);
> > +unsigned int formatPllReg(struct pll_value_t *pPLL);
> >  void ddk750_set_mmio(void __iomem *, unsigned short, char);
> >  unsigned int ddk750_getVMSize(void);
> > -int ddk750_initHw(initchip_param_t *);
> > +int ddk750_initHw(struct initchip_param_t *);
> >
> >  #endif
> > diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> > index b767c7d..f28eb07 100644
> > --- a/drivers/staging/sm750fb/ddk750_mode.c
> > +++ b/drivers/staging/sm750fb/ddk750_mode.c
> > @@ -73,7 +73,7 @@ static unsigned long displayControlAdjust_SM750LE(mode_parameter_t *pModeParam,
> >
> >
> >  /* only timing related registers will be  programed */
> > -static int programModeRegisters(mode_parameter_t *pModeParam, pll_value_t *pll)
> > +static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value_t *pll)
> >  {
> >  	int ret = 0;
> >  	int cnt = 0;
> > @@ -202,7 +202,7 @@ static int programModeRegisters(mode_parameter_t *pModeParam, pll_value_t *pll)
> >
> >  int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock)
> >  {
> > -	pll_value_t pll;
> > +	struct pll_value_t pll;
> >  	unsigned int uiActualPixelClk;
> >
> >  	pll.inputFreq = DEFAULT_INPUT_CLOCK;
> > diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
> > index 7dd208c..b253ba0 100644
> > --- a/drivers/staging/sm750fb/sm750_hw.c
> > +++ b/drivers/staging/sm750fb/sm750_hw.c
> > @@ -100,7 +100,7 @@ int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
> >  	if (parm->master_clk == 0)
> >  		parm->master_clk = parm->chip_clk / 3;
> >
> > -	ddk750_initHw((initchip_param_t *)&sm750_dev->initParm);
> > +	ddk750_initHw((struct initchip_param_t *)&sm750_dev->initParm);
> >  	/* for sm718, open pci burst */
> >  	if (sm750_dev->devid == 0x718) {
> >  		POKE32(SYSTEM_CTRL,
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161004225439.GA10563%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >

