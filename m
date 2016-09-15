X-GM-THRID: 6330661437367648256
X-Received: by 10.98.25.66 with SMTP id 63mr8008045pfz.2.1473971977896;
        Thu, 15 Sep 2016 13:39:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.121.132 with SMTP id z126ls658490itc.5.canary; Thu, 15 Sep
 2016 13:39:35 -0700 (PDT)
X-Received: by 10.98.207.69 with SMTP id b66mr7957301pfg.14.1473971975854;
        Thu, 15 Sep 2016 13:39:35 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si1551084pab.2.2016.09.15.13.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:39:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so2550314pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=B3i9SWR7OAcWoAgW9P3D4BZdAOGik6PwUuLtdoHAT3c=;
        b=vJWOWB3+yECge2hXd1EMULu1BCvT7ujxuFE8fSeRIqud5Ti4XX184Qd0pszKMOF9u1
         9IvyZtz8i2rPjy/Rk1cug55CUaLMzr0bbYTTfRALBmIBGt7QywvXSF21o+70D3x+eZut
         y+7BV3pc3AmRsvfpUwbALj+8ml5ZxHLMNeXHtk+ItiKW9w7vDKT5e/uApDHt0wvpf5N5
         ihsuOj+d2Awm+aaTuEcj0D4EbopTI0kasvboau2tekcXvVSkogUbyv6K6EKLICsps1Rr
         gnF3iuTck9IdZEROFG4VdkSe6vzmTDhB++MPLbTAK/wWjGAJyDcNWPb3avi+e5RzoePK
         r8dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=B3i9SWR7OAcWoAgW9P3D4BZdAOGik6PwUuLtdoHAT3c=;
        b=Rg9Ci3D0NR15WH1oYta43ASF6YIyaSvAHJuLOePqGeaiLCxGWvb5NVYQJYAzSk98if
         h1psnP1NzH1YzKfq0CHRzHconsoMKqz/y+Wj3HFH9TrRXOjIlxQwposDqKv0bRWB2LL+
         qntlraWXtCHGqKMplVAhnIB8G6LLrgZX68XqoXW9QYWz6k3ml36kAvPrJ4IgMyZh3QEI
         R17073pG3WIHpKBpXyGSQk2aYe+2aCnYs6bVlxrrA5iwlbXQy/dVJpqMBgJnoZXRAFTW
         AdgfFlXRzdhGIJCGNd5g/htVCVJ73r4s+XGyhys7fcK4WG6YOmCNtkcXAonqUogJITOj
         b2gw==
X-Gm-Message-State: AE9vXwPsPQX8X8eT7QhaDKZj273ISkRgs1JUZx4BjdPd5aT5RIL14ee4CD48WjTd9QUTxg==
X-Received: by 10.66.123.79 with SMTP id ly15mr17825670pab.157.1473971975603;
        Thu, 15 Sep 2016 13:39:35 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.179.117])
        by smtp.gmail.com with ESMTPSA id b64sm47088393pfa.82.2016.09.15.13.39.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 13:39:34 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Fri, 16 Sep 2016 02:09:09 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3] Staging: comedi: s626: Remove all unused functions
Date: Fri, 16 Sep 2016 02:09:08 +0530
Message-Id: <1473971948-3546-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove all #ifdef'ed static functions as they are not used anywhere
in the kernel. Some functions were detected using Coccinelle but removed by
hand and some were removed as the functions in which they were getting
used were also unused functions.
Script:

@initialize:python@
@@
def display(name,p):
        print(name,p[0].file)

@r1@
identifier func;
type T;
position p;
@@
static T func@p(...)
{
...
}

@r@
identifier r1.func;
@@
func

@script:python depends on !r@
func << r1.func;
p << r1.p;
@@
display(func,p)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Simplify coccinelle script by removing func(...)
  and adding spaces around "<<".

Changes in v3:
* Remove other unused functions and correct the subject line.

 drivers/staging/comedi/drivers/s626.c | 284 ----------------------------------
 1 file changed, 284 deletions(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
index 6d89ca0..c14a025 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -697,134 +697,6 @@ static void s626_reset_cap_flags(struct comedi_device *dev,
 	s626_debi_replace(dev, S626_LP_CRB(chan), ~S626_CRBMSK_INTCTRL, set);
 }
 
-#ifdef unused
-/*
- * Return counter setup in a format (COUNTER_SETUP) that is consistent
- * for both A and B counters.
- */
-static uint16_t s626_get_mode_a(struct comedi_device *dev,
-				unsigned int chan)
-{
-	uint16_t cra;
-	uint16_t crb;
-	uint16_t setup;
-	unsigned int cntsrc, clkmult, clkpol, encmode;
-
-	/* Fetch CRA and CRB register images. */
-	cra = s626_debi_read(dev, S626_LP_CRA(chan));
-	crb = s626_debi_read(dev, S626_LP_CRB(chan));
-
-	/*
-	 * Populate the standardized counter setup bit fields.
-	 */
-	setup =
-		/* LoadSrc  = LoadSrcA. */
-		S626_SET_STD_LOADSRC(S626_GET_CRA_LOADSRC_A(cra)) |
-		/* LatchSrc = LatchSrcA. */
-		S626_SET_STD_LATCHSRC(S626_GET_CRB_LATCHSRC(crb)) |
-		/* IntSrc   = IntSrcA. */
-		S626_SET_STD_INTSRC(S626_GET_CRA_INTSRC_A(cra)) |
-		/* IndxSrc  = IndxSrcA. */
-		S626_SET_STD_INDXSRC(S626_GET_CRA_INDXSRC_A(cra)) |
-		/* IndxPol  = IndxPolA. */
-		S626_SET_STD_INDXPOL(S626_GET_CRA_INDXPOL_A(cra)) |
-		/* ClkEnab  = ClkEnabA. */
-		S626_SET_STD_CLKENAB(S626_GET_CRB_CLKENAB_A(crb));
-
-	/* Adjust mode-dependent parameters. */
-	cntsrc = S626_GET_CRA_CNTSRC_A(cra);
-	if (cntsrc & S626_CNTSRC_SYSCLK) {
-		/* Timer mode (CntSrcA<1> == 1): */
-		encmode = S626_ENCMODE_TIMER;
-		/* Set ClkPol to indicate count direction (CntSrcA<0>). */
-		clkpol = cntsrc & 1;
-		/* ClkMult must be 1x in Timer mode. */
-		clkmult = S626_CLKMULT_1X;
-	} else {
-		/* Counter mode (CntSrcA<1> == 0): */
-		encmode = S626_ENCMODE_COUNTER;
-		/* Pass through ClkPol. */
-		clkpol = S626_GET_CRA_CLKPOL_A(cra);
-		/* Force ClkMult to 1x if not legal, else pass through. */
-		clkmult = S626_GET_CRA_CLKMULT_A(cra);
-		if (clkmult == S626_CLKMULT_SPECIAL)
-			clkmult = S626_CLKMULT_1X;
-	}
-	setup |= S626_SET_STD_ENCMODE(encmode) | S626_SET_STD_CLKMULT(clkmult) |
-		 S626_SET_STD_CLKPOL(clkpol);
-
-	/* Return adjusted counter setup. */
-	return setup;
-}
-
-static uint16_t s626_get_mode_b(struct comedi_device *dev,
-				unsigned int chan)
-{
-	uint16_t cra;
-	uint16_t crb;
-	uint16_t setup;
-	unsigned int cntsrc, clkmult, clkpol, encmode;
-
-	/* Fetch CRA and CRB register images. */
-	cra = s626_debi_read(dev, S626_LP_CRA(chan));
-	crb = s626_debi_read(dev, S626_LP_CRB(chan));
-
-	/*
-	 * Populate the standardized counter setup bit fields.
-	 */
-	setup =
-		/* IntSrc   = IntSrcB. */
-		S626_SET_STD_INTSRC(S626_GET_CRB_INTSRC_B(crb)) |
-		/* LatchSrc = LatchSrcB. */
-		S626_SET_STD_LATCHSRC(S626_GET_CRB_LATCHSRC(crb)) |
-		/* LoadSrc  = LoadSrcB. */
-		S626_SET_STD_LOADSRC(S626_GET_CRB_LOADSRC_B(crb)) |
-		/* IndxPol  = IndxPolB. */
-		S626_SET_STD_INDXPOL(S626_GET_CRB_INDXPOL_B(crb)) |
-		/* ClkEnab  = ClkEnabB. */
-		S626_SET_STD_CLKENAB(S626_GET_CRB_CLKENAB_B(crb)) |
-		/* IndxSrc  = IndxSrcB. */
-		S626_SET_STD_INDXSRC(S626_GET_CRA_INDXSRC_B(cra));
-
-	/* Adjust mode-dependent parameters. */
-	cntsrc = S626_GET_CRA_CNTSRC_B(cra);
-	clkmult = S626_GET_CRB_CLKMULT_B(crb);
-	if (clkmult == S626_CLKMULT_SPECIAL) {
-		/* Extender mode (ClkMultB == S626_CLKMULT_SPECIAL): */
-		encmode = S626_ENCMODE_EXTENDER;
-		/* Indicate multiplier is 1x. */
-		clkmult = S626_CLKMULT_1X;
-		/* Set ClkPol equal to Timer count direction (CntSrcB<0>). */
-		clkpol = cntsrc & 1;
-	} else if (cntsrc & S626_CNTSRC_SYSCLK) {
-		/* Timer mode (CntSrcB<1> == 1): */
-		encmode = S626_ENCMODE_TIMER;
-		/* Indicate multiplier is 1x. */
-		clkmult = S626_CLKMULT_1X;
-		/* Set ClkPol equal to Timer count direction (CntSrcB<0>). */
-		clkpol = cntsrc & 1;
-	} else {
-		/* If Counter mode (CntSrcB<1> == 0): */
-		encmode = S626_ENCMODE_COUNTER;
-		/* Clock multiplier is passed through. */
-		/* Clock polarity is passed through. */
-		clkpol = S626_GET_CRB_CLKPOL_B(crb);
-	}
-	setup |= S626_SET_STD_ENCMODE(encmode) | S626_SET_STD_CLKMULT(clkmult) |
-		 S626_SET_STD_CLKPOL(clkpol);
-
-	/* Return adjusted counter setup. */
-	return setup;
-}
-
-static uint16_t s626_get_mode(struct comedi_device *dev,
-			      unsigned int chan)
-{
-	return (chan < 3) ? s626_get_mode_a(dev, chan)
-			  : s626_get_mode_b(dev, chan);
-}
-#endif
-
 /*
  * Set the operating mode for the specified counter.  The setup
  * parameter is treated as a COUNTER_SETUP data type.  The following
@@ -1023,25 +895,6 @@ static void s626_set_enable(struct comedi_device *dev,
 	s626_debi_replace(dev, S626_LP_CRB(chan), ~mask, set);
 }
 
-#ifdef unused
-static uint16_t s626_get_enable(struct comedi_device *dev,
-				unsigned int chan)
-{
-	uint16_t crb = s626_debi_read(dev, S626_LP_CRB(chan));
-
-	return (chan < 3) ? S626_GET_CRB_CLKENAB_A(crb)
-			  : S626_GET_CRB_CLKENAB_B(crb);
-}
-#endif
-
-#ifdef unused
-static uint16_t s626_get_latch_source(struct comedi_device *dev,
-				      unsigned int chan)
-{
-	return S626_GET_CRB_LATCHSRC(s626_debi_read(dev, S626_LP_CRB(chan)));
-}
-#endif
-
 /*
  * Return/set the event that will trigger transfer of the preload
  * register into the counter.  0=ThisCntr_Index, 1=ThisCntr_Overflow,
@@ -1066,19 +919,6 @@ static void s626_set_load_trig(struct comedi_device *dev,
 	s626_debi_replace(dev, reg, ~mask, set);
 }
 
-#ifdef unused
-static uint16_t s626_get_load_trig(struct comedi_device *dev,
-				   unsigned int chan)
-{
-	if (chan < 3)
-		return S626_GET_CRA_LOADSRC_A(s626_debi_read(dev,
-							S626_LP_CRA(chan)));
-	else
-		return S626_GET_CRB_LOADSRC_B(s626_debi_read(dev,
-							S626_LP_CRB(chan)));
-}
-#endif
-
 /*
  * Return/set counter interrupt source and clear any captured
  * index/overflow events.  int_source: 0=Disabled, 1=OverflowOnly,
@@ -1138,93 +978,6 @@ static void s626_set_int_src(struct comedi_device *dev,
 	}
 }
 
-#ifdef unused
-static uint16_t s626_get_int_src(struct comedi_device *dev,
-				 unsigned int chan)
-{
-	if (chan < 3)
-		return S626_GET_CRA_INTSRC_A(s626_debi_read(dev,
-							S626_LP_CRA(chan)));
-	else
-		return S626_GET_CRB_INTSRC_B(s626_debi_read(dev,
-							S626_LP_CRB(chan)));
-}
-#endif
-
-#ifdef unused
-/*
- * Return/set the clock multiplier.
- */
-static void s626_set_clk_mult(struct comedi_device *dev,
-			      unsigned int chan, uint16_t value)
-{
-	uint16_t mode;
-
-	mode = s626_get_mode(dev, chan);
-	mode &= ~S626_STDMSK_CLKMULT;
-	mode |= S626_SET_STD_CLKMULT(value);
-
-	s626_set_mode(dev, chan, mode, false);
-}
-
-/*
- * Return/set the clock polarity.
- */
-static void s626_set_clk_pol(struct comedi_device *dev,
-			     unsigned int chan, uint16_t value)
-{
-	uint16_t mode;
-
-	mode = s626_get_mode(dev, chan);
-	mode &= ~S626_STDMSK_CLKPOL;
-	mode |= S626_SET_STD_CLKPOL(value);
-
-	s626_set_mode(dev, chan, mode, false);
-}
-
-/*
- * Return/set the encoder mode.
- */
-static void s626_set_enc_mode(struct comedi_device *dev,
-			      unsigned int chan, uint16_t value)
-{
-	uint16_t mode;
-
-	mode = s626_get_mode(dev, chan);
-	mode &= ~S626_STDMSK_ENCMODE;
-	mode |= S626_SET_STD_ENCMODE(value);
-
-	s626_set_mode(dev, chan, mode, false);
-}
-
-static uint16_t s626_get_index_pol(struct comedi_device *dev,
-				   unsigned int chan)
-{
-	return S626_GET_STD_INDXPOL(s626_get_mode(dev, chan));
-}
-
-/*
- * Return/set the index source.
- */
-static void s626_set_index_src(struct comedi_device *dev,
-			       unsigned int chan, uint16_t value)
-{
-	uint16_t mode;
-
-	mode = s626_get_mode(dev, chan);
-	mode &= ~S626_STDMSK_INDXSRC;
-	mode |= S626_SET_STD_INDXSRC(value != 0);
-
-	s626_set_mode(dev, chan, mode, false);
-}
-
-static uint16_t s626_get_index_src(struct comedi_device *dev,
-				   unsigned int chan)
-{
-	return S626_GET_STD_INDXSRC(s626_get_mode(dev, chan));
-}
-#endif
-
 /*
  * Generate an index pulse.
  */
@@ -1717,43 +1470,6 @@ static void s626_reset_adc(struct comedi_device *dev, uint8_t *ppl)
 	/* End of RPS program build */
 }
 
-#ifdef unused_code
-static int s626_ai_rinsn(struct comedi_device *dev,
-			 struct comedi_subdevice *s,
-			 struct comedi_insn *insn,
-			 unsigned int *data)
-{
-	struct s626_private *devpriv = dev->private;
-	uint8_t i;
-	int32_t *readaddr;
-
-	/* Trigger ADC scan loop start */
-	s626_mc_enable(dev, S626_MC2_ADC_RPS, S626_P_MC2);
-
-	/* Wait until ADC scan loop is finished (RPS Signal 0 reset) */
-	while (s626_mc_test(dev, S626_MC2_ADC_RPS, S626_P_MC2))
-		;
-
-	/*
-	 * Init ptr to DMA buffer that holds new ADC data.  We skip the
-	 * first uint16_t in the buffer because it contains junk data from
-	 * the final ADC of the previous poll list scan.
-	 */
-	readaddr = (uint32_t *)devpriv->ana_buf.logical_base + 1;
-
-	/*
-	 * Convert ADC data to 16-bit integer values and
-	 * copy to application buffer.
-	 */
-	for (i = 0; i < devpriv->adc_items; i++) {
-		*data = s626_ai_reg_to_uint(*readaddr++);
-		data++;
-	}
-
-	return i;
-}
-#endif
-
 static int s626_ai_eoc(struct comedi_device *dev,
 		       struct comedi_subdevice *s,
 		       struct comedi_insn *insn,
-- 
1.9.1


