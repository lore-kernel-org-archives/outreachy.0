X-GM-THRID: 6804152716629114880
X-Received: by 2002:a63:ec53:: with SMTP id r19mr19117696pgj.256.1584220080171;
        Sat, 14 Mar 2020 14:08:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls6538287plr.10.gmail; Sat, 14
 Mar 2020 14:07:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvJf78dzI5dz4kbBxJan4ZHo1mZSfJTcIWGkfYCAuFMCn4LmdyJHOFGFDU/me7tvdVUAnf2
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr16988727pjk.134.1584220078588;
        Sat, 14 Mar 2020 14:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584220078; cv=none;
        d=google.com; s=arc-20160816;
        b=Rp0U7++P1sSlvWB66SG1RiVIUBSrBKvWMSDfO/Ww4fSFMqU2iBjgAO78nqs+tw8TbQ
         8Bhp68kaOTzR76rJP8DqkHs8ptEShXX2zoEPzeL70ovupcjumPvhFaTjiMmtwAvuLSWi
         O/syJjlHKRPoQyo+L5yctJ4DIMZfbLs2544s6NJjDa5AaEmW5rA5rdKMEEsSk+xVE9Ro
         vr1qttSBqBxESp8iKqiq2g+2r0fVMTPFXVcS/1RnQZxomiLOjN6exWjCFelDh/WJCjjK
         Lnz4cStpZcFjYNlu4OxDjMM1ZEyRsc3tw2ds313rHkESjtL2W7UzJbJAM4pV7rk6L8M5
         ELZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=yVTnGRGkwi4Cx/mSYlcwCEfoJ9G+C3ll5VttYS8FiTM=;
        b=NEoQYpTdVixt3CctGQdmWyqeA5vzLnDx4uSzebFoSz7vfuS3nGdah0usJMZjCaGHrM
         kp9Tyd07irS/aWKOoEWs9zfdvl2Zo+0gPpmtrnvUitGxraCUOlPMU/AVy1vCHBP26DBj
         p6RutJAPxMvDgL4PR9Z/nIOBmypymwucLXuugiTs9pUmiJzvGWR9bTH+vNy6mbi/SmPm
         emzFrCmfGopoRNslQWXRyHeJciEOPYlVIRMs+21wSebsMrhtbCreKHdS3EIGoFgXweXw
         eII8CwJ8fVEB5sN1Ewipj4vLtFV/SpdrnLRevRfkOF1oF8vnQu8kacW61AWGsHTK8YlO
         qing==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K/eMKcrA";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id q2si1162901pjv.3.2020.03.14.14.07.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 14:07:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K/eMKcrA";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id dw20so2748011pjb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 14:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yVTnGRGkwi4Cx/mSYlcwCEfoJ9G+C3ll5VttYS8FiTM=;
        b=K/eMKcrAb4xG3i5alzvmDittslPjvMbO/Sb4CepdN4nKjVPrzEk3FM+E/q9qE6ewvo
         6EOj45i8PQmsuKKAjg4dGpwggong0frO0uaz6c4j5yTfXFSJ+mG0qqJrnBfGpwPPCX6U
         +vFVCZxd8nM4RYyX41Ao5a51GsTO5AgSb5fJQSbZGd3C67zos3sZ/9ALxnxXyyV7WerE
         rRPIlVya5PaTsu8CQQ2+W4YaFVO9LqN++xeI/47JaOFmmmMSIwki2FGG7MneboVQ6b+4
         9davSqDwDKK44WVJxlmymk9NO0f34vtao53dLDUGSeKcXO1qGZIiSw5Om9pFeueyxGud
         C8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yVTnGRGkwi4Cx/mSYlcwCEfoJ9G+C3ll5VttYS8FiTM=;
        b=ObMrRK1KVXgs566f0/NJi/o/Iigdn+v6H3oZAePpo7j4sZLcx+rkXMgrgA3RB3aRZk
         u/GPjn6cxQTUVjBk+hnneaTkQv0ZWKFj16s418fQXMPNQdLlIHAbbmNrfIE5Q/oeDHaz
         9PYgjfCDgZ5DlBFKBp+8XpjEraqxMpI+vizQaNUpfgr2/SEjUq4HPNx4y9bZanttQEOG
         /W5MipZYIhk9DMBRkXIT/al+z/U15RSEPdNpJ7JFgBxZn16n9iBCsjYvJ2911CoHkuXN
         Eo3yIi8/xcDFnLALFmZVCAIyLihaSoXJNQn04UWF2dDix1kbxoFikQtd05+M+zAGLZYe
         duHQ==
X-Gm-Message-State: ANhLgQ0Yy5qfAEvGQE7SD2+c3CiaoZIZRV/GfgzltDHkt5pg66dvVrVm
	EsRHFTM9G9YcD94a6MhH78RjlZIj
X-Received: by 2002:a17:902:444:: with SMTP id 62mr5404931ple.301.1584220078079;
        Sat, 14 Mar 2020 14:07:58 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id z16sm15331282pjt.40.2020.03.14.14.07.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 14:07:57 -0700 (PDT)
Date: Sun, 15 Mar 2020 02:37:53 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: [PATCH v2] staging: comedi: ni_mio_common: Code reformat and
 re-indentation
Message-ID: <20200314210749.GA3393@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Resolve general code indentation problems as detected by checkpatch script.
Implement code reformat and re-indentation as per coding style to
improve readability.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Changes since v1:
    - Add following review comments by Julia
	1. Reformat ni_get_reg_value_roffs anf like function calls so
	that both the functions are visible easily.
	2. Reformat NISTC* lines to aling properly.
	3. Remove new lines added around ni_writel function call. Not
	necessary.


 .../staging/comedi/drivers/ni_mio_common.c    | 54 ++++++++++---------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index b72a40a79930..d99f4065b96d 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -2199,9 +2199,10 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		break;
 	case TRIG_EXT:
 		ai_trig |= NISTC_AI_TRIG_START1_SEL(
-			ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg),
-					       NI_AI_StartTrigger,
-					       &devpriv->routing_tables, 1));
+				ni_get_reg_value_roffs(
+					CR_CHAN(cmd->start_arg),
+					NI_AI_StartTrigger,
+					&devpriv->routing_tables, 1));
 
 		if (cmd->start_arg & CR_INVERT)
 			ai_trig |= NISTC_AI_TRIG_START1_POLARITY;
@@ -2311,10 +2312,12 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		    (cmd->scan_begin_arg & ~CR_EDGE) !=
 		    (cmd->convert_arg & ~CR_EDGE))
 			start_stop_select |= NISTC_AI_START_SYNC;
+
 		start_stop_select |= NISTC_AI_START_SEL(
-			ni_get_reg_value_roffs(CR_CHAN(cmd->scan_begin_arg),
-					       NI_AI_SampleClock,
-					       &devpriv->routing_tables, 1));
+					ni_get_reg_value_roffs(
+						CR_CHAN(cmd->scan_begin_arg),
+						NI_AI_SampleClock,
+						&devpriv->routing_tables, 1));
 		ni_stc_writew(dev, start_stop_select, NISTC_AI_START_STOP_REG);
 		break;
 	}
@@ -2343,9 +2346,10 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 		break;
 	case TRIG_EXT:
 		mode1 |= NISTC_AI_MODE1_CONVERT_SRC(
-			ni_get_reg_value_roffs(CR_CHAN(cmd->convert_arg),
-					       NI_AI_ConvertClock,
-					       &devpriv->routing_tables, 1));
+				ni_get_reg_value_roffs(
+						CR_CHAN(cmd->convert_arg),
+						NI_AI_ConvertClock,
+						&devpriv->routing_tables, 1));
 		if ((cmd->convert_arg & CR_INVERT) == 0)
 			mode1 |= NISTC_AI_MODE1_CONVERT_POLARITY;
 		ni_stc_writew(dev, mode1, NISTC_AI_MODE1_REG);
@@ -2970,9 +2974,11 @@ static void ni_ao_cmd_set_trigger(struct comedi_device *dev,
 			  NISTC_AO_TRIG_START1_SYNC;
 	} else { /* TRIG_EXT */
 		trigsel = NISTC_AO_TRIG_START1_SEL(
-			ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg),
-					       NI_AO_StartTrigger,
-					       &devpriv->routing_tables, 1));
+				ni_get_reg_value_roffs(
+						CR_CHAN(cmd->start_arg),
+						NI_AO_StartTrigger,
+						&devpriv->routing_tables, 1));
+
 		/* 0=active high, 1=active low. see daq-stc 3-24 (p186) */
 		if (cmd->start_arg & CR_INVERT)
 			trigsel |= NISTC_AO_TRIG_START1_POLARITY;
@@ -3079,12 +3085,10 @@ static void ni_ao_cmd_set_update(struct comedi_device *dev,
 	 * zero out these bit fields to be set below. Does an ao-reset do this
 	 * automatically?
 	 */
-	devpriv->ao_mode1 &= ~(
-	  NISTC_AO_MODE1_UI_SRC_MASK         |
-	  NISTC_AO_MODE1_UI_SRC_POLARITY     |
-	  NISTC_AO_MODE1_UPDATE_SRC_MASK     |
-	  NISTC_AO_MODE1_UPDATE_SRC_POLARITY
-	);
+	devpriv->ao_mode1 &=  ~(NISTC_AO_MODE1_UI_SRC_MASK	   |
+				NISTC_AO_MODE1_UI_SRC_POLARITY	   |
+				NISTC_AO_MODE1_UPDATE_SRC_MASK	   |
+				NISTC_AO_MODE1_UPDATE_SRC_POLARITY);
 
 	if (cmd->scan_begin_src == TRIG_TIMER) {
 		unsigned int trigvar;
@@ -3134,9 +3138,10 @@ static void ni_ao_cmd_set_update(struct comedi_device *dev,
 		/* FIXME:  assert scan_begin_arg != 0, ret failure otherwise */
 		devpriv->ao_cmd2  |= NISTC_AO_CMD2_BC_GATE_ENA;
 		devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC(
-			ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
-					 NI_AO_SampleClock,
-					 &devpriv->routing_tables));
+					ni_get_reg_value(
+						CR_CHAN(cmd->scan_begin_arg),
+						NI_AO_SampleClock,
+						&devpriv->routing_tables));
 		if (cmd->scan_begin_arg & CR_INVERT)
 			devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC_POLARITY;
 	}
@@ -3673,9 +3678,10 @@ static int ni_cdio_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 	cdo_mode_bits = NI_M_CDO_MODE_FIFO_MODE |
 			NI_M_CDO_MODE_HALT_ON_ERROR |
 			NI_M_CDO_MODE_SAMPLE_SRC(
-				ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
-						 NI_DO_SampleClock,
-						 &devpriv->routing_tables));
+				ni_get_reg_value(
+					CR_CHAN(cmd->scan_begin_arg),
+					NI_DO_SampleClock,
+					&devpriv->routing_tables));
 	if (cmd->scan_begin_arg & CR_INVERT)
 		cdo_mode_bits |= NI_M_CDO_MODE_POLARITY;
 	ni_writel(dev, cdo_mode_bits, NI_M_CDO_MODE_REG);
-- 
2.17.1


