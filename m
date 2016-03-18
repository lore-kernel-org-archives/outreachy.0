X-GM-THRID: 6263413935995617280
X-Received: by 10.129.39.146 with SMTP id n140mr11788558ywn.22.1458314698587;
        Fri, 18 Mar 2016 08:24:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.165 with SMTP id d34ls2627359qge.89.gmail; Fri, 18 Mar
 2016 08:24:57 -0700 (PDT)
X-Received: by 10.140.20.204 with SMTP id 70mr12076611qgj.18.1458314697816;
        Fri, 18 Mar 2016 08:24:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si2198568pfa.2.2016.03.18.08.24.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 08:24:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so17415456pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 08:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EOllCZrDxxfcBGCzvP0NcazIGBZmp7C4bjuPPZWOesk=;
        b=T2QIahRYyp7MoXC3XzaV8mPEHOor2a30WpEVWTtLMJiX9dMwrnD1/NOBA8fdRPabvg
         LZ3UsUW71ZUMdP8+O2MKBsE25uNQWGM6MmZWTH+rtyHtuh7UaWWNWDVpyKnAAu1MiTY1
         M+ZRIIyHQ+qWS5Y+BrgOFquEU3F90jRxDjUNvpETUNqYLzTw/OksKK4uaLK0FDEOERKi
         SVwpOp5Xyb4pNR1XgTMA1PsXmXy+h4+Ec8HbPzf2tHNfjH1CtjKPWe66/IWOVJ2J53pV
         szBatMerF2enm04c995J8U/z3kApGtUaHEamCa+J6o8+N1aGBV4SmpM+j4AR4g6Pu+ah
         h3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EOllCZrDxxfcBGCzvP0NcazIGBZmp7C4bjuPPZWOesk=;
        b=RKmwDlVk9dem860sDhggBCpE4jNz3g+Pufcl/tB1prStJjHrRsqveNttX7qAPGCMmu
         pDsMweArj8uziP00XJw8PWWmpEP2+XLSIIjw59uXjU1A6yyuQlXH/zjEqFHVbtqw5moy
         SZO6UfPAh2wb5pN2Dmw+07MddDRMwgiRrKwkBWzFLJ6MJOmHi+74VsEJLU+zdo29AokZ
         QU5Q63ZD1G4/hJHLnDye28PhWk9JjyNP9nEelN+EH0UEGcipoCS8FI++M5a2Bdf7J2VV
         2AQ1pD/cOWJZ0ajsIk6NSa2/yaKKtySWpmsC29S92TNLJI9J5Wle4u46A3z+Kg3AKutB
         jBYg==
X-Gm-Message-State: AD7BkJLTvVrfHkOINZXM/FaUT5aANM87IWStUHIR4trquzlIFkW6TV52ScrMWG7RZ3Zj1A==
X-Received: by 10.98.18.1 with SMTP id a1mr2900670pfj.39.1458314697575;
        Fri, 18 Mar 2016 08:24:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.148])
        by smtp.gmail.com with ESMTPSA id l4sm6797552pfi.73.2016.03.18.08.24.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 08:24:57 -0700 (PDT)
Date: Fri, 18 Mar 2016 13:56:00 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: emxx_udc: emxx_udc: Add space around operator.
Message-ID: <20160318082600.GA5285@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Add space around operator.This patch is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 40 ++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 4a2cc38..39769e3 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -97,7 +97,7 @@
 #define BIT30		0x40000000
 #define BIT31		0x80000000
 
-#define TEST_FORCE_ENABLE		(BIT18+BIT16)
+#define TEST_FORCE_ENABLE		(BIT18 + BIT16)
 
 #define INT_SEL				BIT10
 #define CONSTFS				BIT09
@@ -125,15 +125,15 @@
 /*------- (0x0008) USB Address Register */
 #define USB_ADDR			0x007F0000
 #define SOF_STATUS			BIT15
-#define UFRAME				(BIT14+BIT13+BIT12)
+#define UFRAME				(BIT14 + BIT13 + BIT12)
 #define FRAME				0x000007FF
 
 #define USB_ADRS_SHIFT			16
 
 /*------- (0x000C) UTMI Characteristic 1 Register */
-#define SQUSET				(BIT07+BIT06+BIT05+BIT04)
+#define SQUSET				(BIT07 + BIT06 + BIT05 + BIT04)
 
-#define USB_SQUSET			(BIT06+BIT05+BIT04)
+#define USB_SQUSET			(BIT06 + BIT05 + BIT04)
 
 /*------- (0x0010) TEST Control Register */
 #define FORCEHS				BIT02
@@ -196,7 +196,7 @@
 #define RSUM_EN				BIT01
 
 #define USB_INT_EN_BIT	\
-	(EP0_EN|SPEED_MODE_EN|USB_RST_EN|SPND_EN|RSUM_EN)
+	(EP0_EN | SPEED_MODE_EN | USB_RST_EN | SPND_EN | RSUM_EN)
 
 /*------- (0x0028) EP0 Control Register */
 #define EP0_STGSEL			BIT18
@@ -205,9 +205,9 @@
 #define EP0_PIDCLR			BIT09
 #define EP0_BCLR			BIT08
 #define EP0_DEND			BIT07
-#define EP0_DW				(BIT06+BIT05)
+#define EP0_DW				(BIT06 + BIT05)
 #define EP0_DW4				0
-#define EP0_DW3				(BIT06+BIT05)
+#define EP0_DW3				(BIT06 + BIT05)
 #define EP0_DW2				BIT06
 #define EP0_DW1				BIT05
 
@@ -238,7 +238,7 @@
 #define STG_START_INT			BIT01
 #define SETUP_INT			BIT00
 
-#define EP0_STATUS_RW_BIT	(BIT16|BIT15|BIT11|0xFF)
+#define EP0_STATUS_RW_BIT	(BIT16 | BIT15 | BIT11 | 0xFF)
 
 /*------- (0x0030) EP0 Interrupt Enable Register */
 #define EP0_PERR_NAK_EN			BIT16
@@ -256,7 +256,7 @@
 #define SETUP_EN			BIT00
 
 #define EP0_INT_EN_BIT	\
-	(EP0_OUT_OR_EN|EP0_OUT_EN|EP0_IN_EN|STG_END_EN|SETUP_EN)
+	(EP0_OUT_OR_EN | EP0_OUT_EN | EP0_IN_EN | STG_END_EN | SETUP_EN)
 
 /*------- (0x0034) EP0 Length Register */
 #define EP0_LDATA			0x0000007F
@@ -270,7 +270,7 @@
 #define EPn_BUF_SINGLE			BIT30
 
 #define EPn_DIR0			BIT26
-#define EPn_MODE			(BIT25+BIT24)
+#define EPn_MODE			(BIT25 + BIT24)
 #define EPn_BULK			0
 #define EPn_INTERRUPT			BIT24
 #define EPn_ISO				BIT25
@@ -283,9 +283,9 @@
 #define EPn_BCLR			BIT09
 #define EPn_CBCLR			BIT08
 #define EPn_DEND			BIT07
-#define EPn_DW				(BIT06+BIT05)
+#define EPn_DW				(BIT06 + BIT05)
 #define EPn_DW4				0
-#define EPn_DW3				(BIT06+BIT05)
+#define EPn_DW3				(BIT06 + BIT05)
 #define EPn_DW2				BIT06
 #define EPn_DW1				BIT05
 
@@ -324,7 +324,7 @@
 #define EPn_IN_EMPTY			BIT00		/* R */
 
 #define EPn_INT_EN	\
-	(EPn_OUT_END_INT|EPn_OUT_INT|EPn_IN_END_INT|EPn_IN_INT)
+	(EPn_OUT_END_INT | EPn_OUT_INT | EPn_IN_END_INT | EPn_IN_INT)
 
 /*------- (0x0048:) EPn Interrupt Enable Register */
 #define EPn_OUT_END_EN			BIT23		/* RW */
@@ -368,7 +368,7 @@
 #define ARBITER_CTR			BIT31		/* RW */
 #define MCYCLE_RST			BIT12		/* RW */
 
-#define ENDIAN_CTR			(BIT09+BIT08)	/* RW */
+#define ENDIAN_CTR			(BIT09 + BIT08)	/* RW */
 #define ENDIAN_BYTE_SWAP		BIT09
 #define ENDIAN_HALF_WORD_SWAP		ENDIAN_CTR
 
@@ -376,7 +376,7 @@
 #define HTRANS_MODE			BIT04		/* RW */
 
 #define WBURST_TYPE			BIT02		/* RW */
-#define BURST_TYPE			(BIT01+BIT00)	/* RW */
+#define BURST_TYPE			(BIT01 + BIT00)	/* RW */
 #define BURST_MAX_16			0
 #define BURST_MAX_8			BIT00
 #define BURST_MAX_4			BIT01
@@ -412,7 +412,7 @@
 #define EPC_RST				BIT00		/* RW */
 
 /*------- (0x1014) USBF_EPTEST Register */
-#define LINESTATE			(BIT09+BIT08)	/* R */
+#define LINESTATE			(BIT09 + BIT08)	/* R */
 #define DM_LEVEL			BIT09		/* R */
 #define DP_LEVEL			BIT08		/* R */
 
@@ -485,7 +485,7 @@ struct fc_regs {
 
 	struct ep_regs EP_REGS[REG_EP_NUM];	/* Endpoint Register */
 
-	u8 Reserved220[0x1000-0x220];	/* (0x0220:0x0FFF) Reserved */
+	u8 Reserved220[0x1000 - 0x220];	/* (0x0220:0x0FFF) Reserved */
 
 	u32 AHBSCTR;			/* (0x1000) AHBSCTR */
 	u32 AHBMCTR;			/* (0x1004) AHBMCTR */
@@ -494,16 +494,16 @@ struct fc_regs {
 	u32 EPCTR;			/* (0x1010) EPCTR */
 	u32 USBF_EPTEST;		/* (0x1014) USBF_EPTEST */
 
-	u8 Reserved1018[0x20-0x18];	/* (0x1018:0x101F) Reserved */
+	u8 Reserved1018[0x20 - 0x18];	/* (0x1018:0x101F) Reserved */
 
 	u32 USBSSVER;			/* (0x1020) USBSSVER */
 	u32 USBSSCONF;			/* (0x1024) USBSSCONF */
 
-	u8 Reserved1028[0x110-0x28];	/* (0x1028:0x110F) Reserved */
+	u8 Reserved1028[0x110 - 0x28];	/* (0x1028:0x110F) Reserved */
 
 	struct ep_dcr EP_DCR[REG_EP_NUM];	/* */
 
-	u8 Reserved1200[0x1000-0x200];	/* Reserved */
+	u8 Reserved1200[0x1000 - 0x200];	/* Reserved */
 } __aligned(32);
 
 #define EP0_PACKETSIZE			64
-- 
1.8.3.4


