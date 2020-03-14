X-GM-THRID: 6804152716629114880
X-Received: by 2002:a67:8c7:: with SMTP id 190mr1330184vsi.168.1584215256705;
        Sat, 14 Mar 2020 12:47:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:27c5:: with SMTP id n188ls1729342vsn.8.gmail; Sat, 14
 Mar 2020 12:47:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtsKHhBlctjJAyawc5JUurZL7d3HBXBAUPXRY0QwZZjkn+Im3OuGiDZ0DxLO63BP/zz82Oz
X-Received: by 2002:a67:7f04:: with SMTP id a4mr13234475vsd.57.1584215255180;
        Sat, 14 Mar 2020 12:47:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584215255; cv=none;
        d=google.com; s=arc-20160816;
        b=TaHonbZ6gjbQfQatzeNQRzwaS8m3ypdDtGDEqKsUbhcygExxhVtQ6CFqra+9RIJbUC
         V+SWqhNo2MXF06S6lUGyIIR7iDXjCwgp53qjSMbmuCwEmLr/61NeqX5oKCCnC/W2RCqJ
         vkaTn6+pSAL6aV0gu6uaSQA8ck5ez9Y8duwJuEN5pCO/MwXdIf/bHGEkpVPkNifW8osw
         KG3Vrb6kKiWYUnHgDeoXN+RsjeT/f6pNiKnqk0OrDrpvvetX3ZOViaXmyOzB9cJ3kkCS
         BohJgmKbtLR6cxUKE9dQyG2n4lu/DdJwo3DQh7K/YcWEErmtXfYbCUmC4Dt07lUHQj/L
         h3cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mVgR1dmnnp3suQ7Eyf4D19gCQgovmzBVyGOH8rJQPuo=;
        b=Oaq78P5HrMg5D8ld7gbip9Glu1akoXOHKiJvqbzn97+AfPNfCaUuCsbvVKaeMae9NQ
         GBbPC5b5RtptWYBN7F5SWv2LUhmjXs1J7eh+59OWaNEeSRH+kZuhbk6AcJ4hmP0u6nnp
         gDjeWaOlmOQvcNdKKncUNANQ19SIJ5W9tNdhuRWz1yA+og/0WGKIDRlTSFcxuTSkEdmL
         NWUPAl5jxnOojMGWtI7hmkqaHok7VnIkait2+QkZLGrX3eDR2IQzFBBB5S5WCagX0T6i
         r643v6sPz78ocQJJEVGouCXOJUQz4vTH81QjpAjvg9HoDJlGARJQRGav9TAF0RR5fGTS
         KLtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=da9nSx9H;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id w4si793598vse.2.2020.03.14.12.47.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 12:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=da9nSx9H;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id ca13so6110026pjb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 12:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mVgR1dmnnp3suQ7Eyf4D19gCQgovmzBVyGOH8rJQPuo=;
        b=da9nSx9Hp9trbPL6w91lx2aEW+pDVqybnbPJ7aHW6fPta52ZcGQJtglik91YTG0T9+
         wXVn/qNosxoJJXdIm9hEUx/n+5Vjq3BCD1Lr6n0dlfWVDTFFmkFxDGUUg1uV5Smk/1hs
         +7xvYD5aus9hoSG9mOzHG0a8ly9sCwZErMMYRXl6DB/csFfjREtSprLOXamRM0FvDm1N
         CfNekA8FMdxj9UPKYBgMSaeHy0GdJCH18IhvHEjbWksz3wQZqlqMA29Ed7z4foizoemQ
         mPQZbZ7Cqjur3X/ORjFQDlm+1bM+Gvr9EJByvZ8SBR9cB3Vi3CmIQzLcDYg7PFMHQ+/K
         BotQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mVgR1dmnnp3suQ7Eyf4D19gCQgovmzBVyGOH8rJQPuo=;
        b=FYeNhN7EuJzmdJPwvNtaKwYFpXFXcDvsLEQbsGxP9iTg1W/AnImKablFV/Uth1XGMz
         SO1XzjnPSJqIkGUdUptaneYWrMpFKpdb+jmfYrtncisavBW/mly7ZfFUqeGYBFG07BJ8
         LxQOAyr384ewNCS/1haUcrYh7uVPhXMWVzmgmhpF135BDtd8kNToUzKBvMResm0tZZVO
         PelFsa4vt1xc22YIsxoCKIQaPrJo8tkWplI/QXkqiLiKwW0srmS+PN63Ta6jCNjD3IKa
         mQcUQw8ih4uS0agDdXCQBSx/cmNBlq74Wdi4IRehRy1p01yg31HYUaHTjMwzKkK7+Y4/
         cMBg==
X-Gm-Message-State: ANhLgQ3PBwvIpmJ7DVlJ9WZ+8TRI4AYVJHWeeMz6P9IKTiuE/E9rDIdY
	J/FjRzGBk1dYrllM0guUTGRpnFFj
X-Received: by 2002:a17:90b:300b:: with SMTP id hg11mr8143618pjb.181.1584215253990;
        Sat, 14 Mar 2020 12:47:33 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id q43sm14451877pjc.40.2020.03.14.12.47.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 12:47:33 -0700 (PDT)
Date: Sun, 15 Mar 2020 01:17:28 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com, mh12gx2825@gmail.com
Subject: [PATCH] staging: comedi: ni_mio_common: Code reformat and
 re-indentation
Message-ID: <20200314194724.GA2711@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Resolve general code indentation problems as detected by checkpatch script.
Implement code reformat and re-indentation as per coding style to
improve readability.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 .../staging/comedi/drivers/ni_mio_common.c    | 62 ++++++++++---------
 1 file changed, 32 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index b72a40a79930..48e20de3ebcf 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -2198,10 +2198,10 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 			   NISTC_AI_TRIG_START1_SEL(0);
 		break;
 	case TRIG_EXT:
-		ai_trig |= NISTC_AI_TRIG_START1_SEL(
-			ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg),
-					       NI_AI_StartTrigger,
-					       &devpriv->routing_tables, 1));
+		ai_trig |= NISTC_AI_TRIG_START1_SEL(ni_get_reg_value_roffs(
+					CR_CHAN(cmd->start_arg),
+					NI_AI_StartTrigger,
+					&devpriv->routing_tables, 1));
 
 		if (cmd->start_arg & CR_INVERT)
 			ai_trig |= NISTC_AI_TRIG_START1_POLARITY;
@@ -2311,10 +2311,11 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		    (cmd->scan_begin_arg & ~CR_EDGE) !=
 		    (cmd->convert_arg & ~CR_EDGE))
 			start_stop_select |= NISTC_AI_START_SYNC;
-		start_stop_select |= NISTC_AI_START_SEL(
-			ni_get_reg_value_roffs(CR_CHAN(cmd->scan_begin_arg),
-					       NI_AI_SampleClock,
-					       &devpriv->routing_tables, 1));
+
+		start_stop_select |= NISTC_AI_START_SEL(ni_get_reg_value_roffs(
+						CR_CHAN(cmd->scan_begin_arg),
+						NI_AI_SampleClock,
+						&devpriv->routing_tables, 1));
 		ni_stc_writew(dev, start_stop_select, NISTC_AI_START_STOP_REG);
 		break;
 	}
@@ -2342,10 +2343,10 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		ni_stc_writew(dev, mode2, NISTC_AI_MODE2_REG);
 		break;
 	case TRIG_EXT:
-		mode1 |= NISTC_AI_MODE1_CONVERT_SRC(
-			ni_get_reg_value_roffs(CR_CHAN(cmd->convert_arg),
-					       NI_AI_ConvertClock,
-					       &devpriv->routing_tables, 1));
+		mode1 |= NISTC_AI_MODE1_CONVERT_SRC(ni_get_reg_value_roffs(
+						CR_CHAN(cmd->convert_arg),
+						NI_AI_ConvertClock,
+						&devpriv->routing_tables, 1));
 		if ((cmd->convert_arg & CR_INVERT) == 0)
 			mode1 |= NISTC_AI_MODE1_CONVERT_POLARITY;
 		ni_stc_writew(dev, mode1, NISTC_AI_MODE1_REG);
@@ -2969,10 +2970,11 @@ static void ni_ao_cmd_set_trigger(struct comedi_device *dev,
 		trigsel = NISTC_AO_TRIG_START1_EDGE |
 			  NISTC_AO_TRIG_START1_SYNC;
 	} else { /* TRIG_EXT */
-		trigsel = NISTC_AO_TRIG_START1_SEL(
-			ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg),
-					       NI_AO_StartTrigger,
-					       &devpriv->routing_tables, 1));
+		trigsel = NISTC_AO_TRIG_START1_SEL(ni_get_reg_value_roffs(
+						CR_CHAN(cmd->start_arg),
+						NI_AO_StartTrigger,
+						&devpriv->routing_tables, 1));
+
 		/* 0=active high, 1=active low. see daq-stc 3-24 (p186) */
 		if (cmd->start_arg & CR_INVERT)
 			trigsel |= NISTC_AO_TRIG_START1_POLARITY;
@@ -3079,12 +3081,10 @@ static void ni_ao_cmd_set_update(struct comedi_device *dev,
 	 * zero out these bit fields to be set below. Does an ao-reset do this
 	 * automatically?
 	 */
-	devpriv->ao_mode1 &= ~(
-	  NISTC_AO_MODE1_UI_SRC_MASK         |
-	  NISTC_AO_MODE1_UI_SRC_POLARITY     |
-	  NISTC_AO_MODE1_UPDATE_SRC_MASK     |
-	  NISTC_AO_MODE1_UPDATE_SRC_POLARITY
-	);
+	devpriv->ao_mode1 &= ~(NISTC_AO_MODE1_UI_SRC_MASK          |
+				NISTC_AO_MODE1_UI_SRC_POLARITY     |
+				NISTC_AO_MODE1_UPDATE_SRC_MASK     |
+				NISTC_AO_MODE1_UPDATE_SRC_POLARITY);
 
 	if (cmd->scan_begin_src == TRIG_TIMER) {
 		unsigned int trigvar;
@@ -3133,10 +3133,10 @@ static void ni_ao_cmd_set_update(struct comedi_device *dev,
 	} else { /* TRIG_EXT */
 		/* FIXME:  assert scan_begin_arg != 0, ret failure otherwise */
 		devpriv->ao_cmd2  |= NISTC_AO_CMD2_BC_GATE_ENA;
-		devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC(
-			ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
-					 NI_AO_SampleClock,
-					 &devpriv->routing_tables));
+		devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC(ni_get_reg_value(
+						CR_CHAN(cmd->scan_begin_arg),
+						NI_AO_SampleClock,
+						&devpriv->routing_tables));
 		if (cmd->scan_begin_arg & CR_INVERT)
 			devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC_POLARITY;
 	}
@@ -3672,13 +3672,15 @@ static int ni_cdio_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	 */
 	cdo_mode_bits = NI_M_CDO_MODE_FIFO_MODE |
 			NI_M_CDO_MODE_HALT_ON_ERROR |
-			NI_M_CDO_MODE_SAMPLE_SRC(
-				ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
-						 NI_DO_SampleClock,
-						 &devpriv->routing_tables));
+			NI_M_CDO_MODE_SAMPLE_SRC(ni_get_reg_value(
+						CR_CHAN(cmd->scan_begin_arg),
+						NI_DO_SampleClock,
+						&devpriv->routing_tables));
 	if (cmd->scan_begin_arg & CR_INVERT)
 		cdo_mode_bits |= NI_M_CDO_MODE_POLARITY;
+
 	ni_writel(dev, cdo_mode_bits, NI_M_CDO_MODE_REG);
+
 	if (s->io_bits) {
 		ni_writel(dev, s->state, NI_M_CDO_FIFO_DATA_REG);
 		ni_writel(dev, NI_M_CDO_CMD_SW_UPDATE, NI_M_CDIO_CMD_REG);
-- 
2.17.1


