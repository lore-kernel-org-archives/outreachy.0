X-GM-THRID: 6331255217033576448
X-Received: by 10.157.20.41 with SMTP id h38mr1466743oth.76.1474121951663;
        Sat, 17 Sep 2016 07:19:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.227.70 with SMTP id d67ls1821617ith.3.canary; Sat, 17 Sep
 2016 07:19:10 -0700 (PDT)
X-Received: by 10.66.234.197 with SMTP id ug5mr1434880pac.143.1474121950762;
        Sat, 17 Sep 2016 07:19:10 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si5117136pfe.0.2016.09.17.07.19.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 07:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so4705193pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 07:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2K843nz+SOLvYBPW9sahgrG3Z2s2jTSUpMWGMzrSijA=;
        b=uSasKSvWKh0bSiTPQe71yG8u00GyisZX1jA+QWZWYJrQb8xV2Gy6xxQxBueDqR3x+e
         KtlZ9hYq3ZGCdTJWPYYzniV94kRuSKF9yuFnTqm9I79oiwCEigB1Ce4KSpBAnCFYocGc
         aIePSrQQFUmf1GIO7U+h2RYak2HmvtIT+97ShMNeSbMiAPwtQaoPjdeS4cOzyKh59tXd
         +97Vep6671jCJawxZlNJWY+JE+pIfm7zbqG+GKAWIaEvtYhZzIMPcruZWqVztmKkEkt7
         0rm66K1eLSU1RfB6yFb/hYTuyHNcEVk431tOZIdq/gDdZdtrnrPAkNSZX1mncsJKD5yn
         OoNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2K843nz+SOLvYBPW9sahgrG3Z2s2jTSUpMWGMzrSijA=;
        b=Q1g7GgzpmgXNOyQj1Ps1xXaCWP1TbiUOFKSyJdun/2aKwdugiMpKFncdkR2tmuzCpB
         bHvAlP6Y1Sbq8y3iGzEgz2iThb6bV5C3dkaR400PKzFC4EUZnag/h6rfBTNNQot4O7Lh
         nyZJdMxMU/igxwDO/ACy7M717/UslYuRE5q7kBI58nG+AcuPqFQnwFN4RCDKv/aFTAZl
         rENWJ6eBZq1i569x0Tdob/wdOS1GSFu05va2brccT8piWrxtrfmhtbprc4K91hvf1dlG
         KlZkl6ONF0yxVPBjPgXC03sLQhxkWm8f2H4DrVJJZRdrjufY8jNX8Lk0vwro6VdzYJV8
         Ivxg==
X-Gm-Message-State: AE9vXwObUCS5VAKyVDAmCZNQ1WDo6iGk1wn562nezbuqS93Al8mxHnp8bN1Yq9Qeze7CPg==
X-Received: by 10.66.245.204 with SMTP id xq12mr7520795pac.37.1474121950180;
        Sat, 17 Sep 2016 07:19:10 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id ps2sm19600706pab.10.2016.09.17.07.19.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 07:19:09 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 2/2] staging: wlan-ng: change indentation for macros
Date: Sat, 17 Sep 2016 19:48:21 +0530
Message-Id: <09f1c74733b7396dc9a9cdb26843186d3dceac7f.1474119677.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1474119676.git.gs051095@gmail.com>
References: <cover.1474119676.git.gs051095@gmail.com>
In-Reply-To: <cover.1474119676.git.gs051095@gmail.com>
References: <cover.1474119676.git.gs051095@gmail.com>

Modify indentation from two tabs to one space for macros so
as to follow the kernel coding style guide.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 312 +++++++++++++++++++-------------------
 1 file changed, 155 insertions(+), 157 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 7029253..327d7b8 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -62,32 +62,32 @@
 #include <linux/usb.h>
 
 /* Mins & Maxs */
-#define	HFA384x_PORTID_MAX		((u16)7)
-#define	HFA384x_NUMPORTS_MAX		((u16)(HFA384x_PORTID_MAX + 1))
-#define	HFA384x_PDR_LEN_MAX		((u16)512) /* in bytes, from EK */
-#define	HFA384x_PDA_RECS_MAX		((u16)200) /* a guess */
-#define	HFA384x_PDA_LEN_MAX		((u16)1024) /* in bytes, from EK*/
-#define	HFA384x_SCANRESULT_MAX		((u16)31)
-#define	HFA384x_HSCANRESULT_MAX		((u16)31)
-#define	HFA384x_CHINFORESULT_MAX	((u16)16)
-#define	HFA384x_RID_GUESSING_MAXLEN	2048	/* I'm not really sure */
-#define	HFA384x_RIDDATA_MAXLEN		HFA384x_RID_GUESSING_MAXLEN
-#define	HFA384x_USB_RWMEM_MAXLEN	2048
+#define HFA384x_PORTID_MAX		((u16)7)
+#define HFA384x_NUMPORTS_MAX		((u16)(HFA384x_PORTID_MAX + 1))
+#define HFA384x_PDR_LEN_MAX		((u16)512) /* in bytes, from EK */
+#define HFA384x_PDA_RECS_MAX		((u16)200) /* a guess */
+#define HFA384x_PDA_LEN_MAX		((u16)1024) /* in bytes, from EK*/
+#define HFA384x_SCANRESULT_MAX		((u16)31)
+#define HFA384x_HSCANRESULT_MAX		((u16)31)
+#define HFA384x_CHINFORESULT_MAX	((u16)16)
+#define HFA384x_RID_GUESSING_MAXLEN	2048	/* I'm not really sure */
+#define HFA384x_RIDDATA_MAXLEN		HFA384x_RID_GUESSING_MAXLEN
+#define HFA384x_USB_RWMEM_MAXLEN	2048
 
 /* Support Constants */
-#define		HFA384x_PORTTYPE_IBSS			((u16)0)
-#define		HFA384x_PORTTYPE_BSS			((u16)1)
-#define		HFA384x_PORTTYPE_PSUEDOIBSS		((u16)3)
-#define		HFA384x_WEPFLAGS_PRIVINVOKED		((u16)BIT(0))
-#define		HFA384x_WEPFLAGS_EXCLUDE		((u16)BIT(1))
-#define		HFA384x_WEPFLAGS_DISABLE_TXCRYPT	((u16)BIT(4))
-#define		HFA384x_WEPFLAGS_DISABLE_RXCRYPT	((u16)BIT(7))
-#define		HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM	((u16)3)
-#define		HFA384x_PORTSTATUS_DISABLED		((u16)1)
-#define		HFA384x_RATEBIT_1			((u16)1)
-#define		HFA384x_RATEBIT_2			((u16)2)
-#define		HFA384x_RATEBIT_5dot5			((u16)4)
-#define		HFA384x_RATEBIT_11			((u16)8)
+#define HFA384x_PORTTYPE_IBSS			((u16)0)
+#define HFA384x_PORTTYPE_BSS			((u16)1)
+#define HFA384x_PORTTYPE_PSUEDOIBSS		((u16)3)
+#define HFA384x_WEPFLAGS_PRIVINVOKED		((u16)BIT(0))
+#define HFA384x_WEPFLAGS_EXCLUDE		((u16)BIT(1))
+#define HFA384x_WEPFLAGS_DISABLE_TXCRYPT	((u16)BIT(4))
+#define HFA384x_WEPFLAGS_DISABLE_RXCRYPT	((u16)BIT(7))
+#define HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM	((u16)3)
+#define HFA384x_PORTSTATUS_DISABLED		((u16)1)
+#define HFA384x_RATEBIT_1			((u16)1)
+#define HFA384x_RATEBIT_2			((u16)2)
+#define HFA384x_RATEBIT_5dot5			((u16)4)
+#define HFA384x_RATEBIT_11			((u16)8)
 
 /* MAC Internal memory constants and macros */
 /* masks and macros used to manipulate MAC internal memory addresses. */
@@ -105,75 +105,75 @@
  */
 
 /* Mask bits for discarding unwanted pieces in a flat address */
-#define		HFA384x_ADDR_FLAT_AUX_PAGE_MASK	(0x007fff80)
-#define		HFA384x_ADDR_FLAT_AUX_OFF_MASK	(0x0000007f)
-#define		HFA384x_ADDR_FLAT_CMD_PAGE_MASK	(0xffff0000)
-#define		HFA384x_ADDR_FLAT_CMD_OFF_MASK	(0x0000ffff)
+#define HFA384x_ADDR_FLAT_AUX_PAGE_MASK	(0x007fff80)
+#define HFA384x_ADDR_FLAT_AUX_OFF_MASK	(0x0000007f)
+#define HFA384x_ADDR_FLAT_CMD_PAGE_MASK	(0xffff0000)
+#define HFA384x_ADDR_FLAT_CMD_OFF_MASK	(0x0000ffff)
 
 /*
  * Mask bits for discarding unwanted pieces in AUX format
  * 16-bit address parts
  */
-#define		HFA384x_ADDR_AUX_PAGE_MASK	(0xffff)
-#define		HFA384x_ADDR_AUX_OFF_MASK	(0x007f)
+#define HFA384x_ADDR_AUX_PAGE_MASK	(0xffff)
+#define HFA384x_ADDR_AUX_OFF_MASK	(0x007f)
 
 /* Make a 32-bit flat address from AUX format 16-bit page and offset */
-#define		HFA384x_ADDR_AUX_MKFLAT(p, o)	\
+#define HFA384x_ADDR_AUX_MKFLAT(p, o)	\
 		((((u32)(((u16)(p)) & HFA384x_ADDR_AUX_PAGE_MASK)) << 7) | \
 		((u32)(((u16)(o)) & HFA384x_ADDR_AUX_OFF_MASK)))
 
 /* Make CMD format offset and page from a 32-bit flat address */
-#define		HFA384x_ADDR_CMD_MKPAGE(f) \
+#define HFA384x_ADDR_CMD_MKPAGE(f) \
 		((u16)((((u32)(f)) & HFA384x_ADDR_FLAT_CMD_PAGE_MASK) >> 16))
-#define		HFA384x_ADDR_CMD_MKOFF(f) \
+#define HFA384x_ADDR_CMD_MKOFF(f) \
 		((u16)(((u32)(f)) & HFA384x_ADDR_FLAT_CMD_OFF_MASK))
 
 /* Controller Memory addresses */
-#define		HFA3842_PDA_BASE	(0x007f0000UL)
-#define		HFA3841_PDA_BASE	(0x003f0000UL)
-#define		HFA3841_PDA_BOGUS_BASE	(0x00390000UL)
+#define HFA3842_PDA_BASE	(0x007f0000UL)
+#define HFA3841_PDA_BASE	(0x003f0000UL)
+#define HFA3841_PDA_BOGUS_BASE	(0x00390000UL)
 
 /* Driver Download states */
-#define		HFA384x_DLSTATE_DISABLED		0
-#define		HFA384x_DLSTATE_RAMENABLED		1
-#define		HFA384x_DLSTATE_FLASHENABLED		2
+#define HFA384x_DLSTATE_DISABLED		0
+#define HFA384x_DLSTATE_RAMENABLED		1
+#define HFA384x_DLSTATE_FLASHENABLED		2
 
 /* Register Field Masks */
-#define		HFA384x_CMD_AINFO		((u16)(BIT(14) | BIT(13) \
+#define HFA384x_CMD_AINFO		((u16)(BIT(14) | BIT(13) \
 							| BIT(12) | BIT(11) \
 							| BIT(10) | BIT(9) \
 							| BIT(8)))
-#define		HFA384x_CMD_MACPORT		((u16)(BIT(10) | BIT(9) | \
+#define HFA384x_CMD_MACPORT		((u16)(BIT(10) | BIT(9) | \
 							BIT(8)))
-#define		HFA384x_CMD_PROGMODE		((u16)(BIT(9) | BIT(8)))
-#define		HFA384x_CMD_CMDCODE		((u16)(BIT(5) | BIT(4) | \
-							BIT(3) | BIT(2) | \
-							BIT(1) | BIT(0)))
+#define HFA384x_CMD_PROGMODE		((u16)(BIT(9) | BIT(8)))
+#define HFA384x_CMD_CMDCODE		((u16)(BIT(5) | BIT(4) | \
+						BIT(3) | BIT(2) | \
+						BIT(1) | BIT(0)))
 
-#define		HFA384x_STATUS_RESULT		((u16)(BIT(14) | BIT(13) \
+#define HFA384x_STATUS_RESULT		((u16)(BIT(14) | BIT(13) \
 							| BIT(12) | BIT(11) \
 							| BIT(10) | BIT(9) \
 							| BIT(8)))
 
 /* Command Code Constants */
 /* Controller Commands */
-#define		HFA384x_CMDCODE_INIT		((u16)0x00)
-#define		HFA384x_CMDCODE_ENABLE		((u16)0x01)
-#define		HFA384x_CMDCODE_DISABLE		((u16)0x02)
+#define HFA384x_CMDCODE_INIT		((u16)0x00)
+#define HFA384x_CMDCODE_ENABLE		((u16)0x01)
+#define HFA384x_CMDCODE_DISABLE		((u16)0x02)
 
 /* Regulate Commands */
-#define		HFA384x_CMDCODE_INQ		((u16)0x11)
+#define HFA384x_CMDCODE_INQ		((u16)0x11)
 
 /* Configure Commands */
-#define		HFA384x_CMDCODE_DOWNLD		((u16)0x22)
+#define HFA384x_CMDCODE_DOWNLD		((u16)0x22)
 
 /* Debugging Commands */
-#define		HFA384x_CMDCODE_MONITOR		((u16)(0x38))
-#define		HFA384x_MONITOR_ENABLE		((u16)(0x0b))
-#define		HFA384x_MONITOR_DISABLE		((u16)(0x0f))
+#define HFA384x_CMDCODE_MONITOR		((u16)(0x38))
+#define HFA384x_MONITOR_ENABLE		((u16)(0x0b))
+#define HFA384x_MONITOR_DISABLE		((u16)(0x0f))
 
 /* Result Codes */
-#define		HFA384x_CMD_ERR			((u16)(0x7F))
+#define HFA384x_CMD_ERR			((u16)(0x7F))
 
 /*
  *	Programming Modes
@@ -182,104 +182,103 @@
  *	MODE 2: Enable non-volatile memory programming
  *	MODE 3: Program non-volatile memory section
  */
-#define		HFA384x_PROGMODE_DISABLE	((u16)0x00)
-#define		HFA384x_PROGMODE_RAM		((u16)0x01)
-#define		HFA384x_PROGMODE_NV		((u16)0x02)
-#define		HFA384x_PROGMODE_NVWRITE	((u16)0x03)
+#define HFA384x_PROGMODE_DISABLE	((u16)0x00)
+#define HFA384x_PROGMODE_RAM		((u16)0x01)
+#define HFA384x_PROGMODE_NV		((u16)0x02)
+#define HFA384x_PROGMODE_NVWRITE	((u16)0x03)
 
 /* Record ID Constants */
 /* Configuration RIDs: Network Parameters, Static Configuration Entities */
-#define		HFA384x_RID_CNFPORTTYPE		((u16)0xFC00)
-#define		HFA384x_RID_CNFOWNMACADDR	((u16)0xFC01)
-#define		HFA384x_RID_CNFDESIREDSSID	((u16)0xFC02)
-#define		HFA384x_RID_CNFOWNCHANNEL	((u16)0xFC03)
-#define		HFA384x_RID_CNFOWNSSID		((u16)0xFC04)
-#define		HFA384x_RID_CNFMAXDATALEN	((u16)0xFC07)
+#define HFA384x_RID_CNFPORTTYPE		((u16)0xFC00)
+#define HFA384x_RID_CNFOWNMACADDR	((u16)0xFC01)
+#define HFA384x_RID_CNFDESIREDSSID	((u16)0xFC02)
+#define HFA384x_RID_CNFOWNCHANNEL	((u16)0xFC03)
+#define HFA384x_RID_CNFOWNSSID		((u16)0xFC04)
+#define HFA384x_RID_CNFMAXDATALEN	((u16)0xFC07)
 
 /*
  * Configuration RID lengths: Network Params, Static Config Entities
  * This is the length of JUST the DATA part of the RID (does not
  * include the len or code fields)
  */
-#define		HFA384x_RID_CNFOWNMACADDR_LEN	((u16)6)
-#define		HFA384x_RID_CNFDESIREDSSID_LEN	((u16)34)
-#define		HFA384x_RID_CNFOWNSSID_LEN	((u16)34)
+#define HFA384x_RID_CNFOWNMACADDR_LEN	((u16)6)
+#define HFA384x_RID_CNFDESIREDSSID_LEN	((u16)34)
+#define HFA384x_RID_CNFOWNSSID_LEN	((u16)34)
 
 /* Configuration RIDs: Network Parameters, Dynamic Configuration Entities */
-#define		HFA384x_RID_CREATEIBSS		((u16)0xFC81)
-#define		HFA384x_RID_FRAGTHRESH		((u16)0xFC82)
-#define		HFA384x_RID_RTSTHRESH		((u16)0xFC83)
-#define		HFA384x_RID_TXRATECNTL		((u16)0xFC84)
-#define		HFA384x_RID_PROMISCMODE		((u16)0xFC85)
+#define HFA384x_RID_CREATEIBSS		((u16)0xFC81)
+#define HFA384x_RID_FRAGTHRESH		((u16)0xFC82)
+#define HFA384x_RID_RTSTHRESH		((u16)0xFC83)
+#define HFA384x_RID_TXRATECNTL		((u16)0xFC84)
+#define HFA384x_RID_PROMISCMODE		((u16)0xFC85)
 
 /* Information RIDs: NIC Information */
-#define		HFA384x_RID_MAXLOADTIME		((u16)0xFD00)
-#define		HFA384x_RID_DOWNLOADBUFFER	((u16)0xFD01)
-#define		HFA384x_RID_PRIIDENTITY		((u16)0xFD02)
-#define		HFA384x_RID_PRISUPRANGE		((u16)0xFD03)
-#define		HFA384x_RID_PRI_CFIACTRANGES	((u16)0xFD04)
-#define		HFA384x_RID_NICSERIALNUMBER	((u16)0xFD0A)
-#define		HFA384x_RID_NICIDENTITY		((u16)0xFD0B)
-#define		HFA384x_RID_MFISUPRANGE		((u16)0xFD0C)
-#define		HFA384x_RID_CFISUPRANGE		((u16)0xFD0D)
-#define		HFA384x_RID_STAIDENTITY		((u16)0xFD20)
-#define		HFA384x_RID_STASUPRANGE		((u16)0xFD21)
-#define		HFA384x_RID_STA_MFIACTRANGES	((u16)0xFD22)
-#define		HFA384x_RID_STA_CFIACTRANGES	((u16)0xFD23)
+#define HFA384x_RID_MAXLOADTIME		((u16)0xFD00)
+#define HFA384x_RID_DOWNLOADBUFFER	((u16)0xFD01)
+#define HFA384x_RID_PRIIDENTITY		((u16)0xFD02)
+#define HFA384x_RID_PRISUPRANGE		((u16)0xFD03)
+#define HFA384x_RID_PRI_CFIACTRANGES	((u16)0xFD04)
+#define HFA384x_RID_NICSERIALNUMBER	((u16)0xFD0A)
+#define HFA384x_RID_NICIDENTITY		((u16)0xFD0B)
+#define HFA384x_RID_MFISUPRANGE		((u16)0xFD0C)
+#define HFA384x_RID_CFISUPRANGE		((u16)0xFD0D)
+#define HFA384x_RID_STAIDENTITY		((u16)0xFD20)
+#define HFA384x_RID_STASUPRANGE		((u16)0xFD21)
+#define HFA384x_RID_STA_MFIACTRANGES	((u16)0xFD22)
+#define HFA384x_RID_STA_CFIACTRANGES	((u16)0xFD23)
 
 /*
  * Information RID Lengths: NIC Information
  * This is the length of JUST the DATA part of the RID (does not
  * include the len or code fields)
  */
-#define		HFA384x_RID_NICSERIALNUMBER_LEN		((u16)12)
+#define HFA384x_RID_NICSERIALNUMBER_LEN		((u16)12)
 
 /* Information RIDs:  MAC Information */
-#define		HFA384x_RID_PORTSTATUS		((u16)0xFD40)
-#define		HFA384x_RID_CURRENTSSID		((u16)0xFD41)
-#define		HFA384x_RID_CURRENTBSSID	((u16)0xFD42)
-#define		HFA384x_RID_CURRENTTXRATE	((u16)0xFD44)
-#define		HFA384x_RID_SHORTRETRYLIMIT	((u16)0xFD48)
-#define		HFA384x_RID_LONGRETRYLIMIT	((u16)0xFD49)
-#define		HFA384x_RID_MAXTXLIFETIME	((u16)0xFD4A)
-#define		HFA384x_RID_PRIVACYOPTIMP	((u16)0xFD4F)
-#define		HFA384x_RID_DBMCOMMSQUALITY	((u16)0xFD51)
+#define HFA384x_RID_PORTSTATUS		((u16)0xFD40)
+#define HFA384x_RID_CURRENTSSID		((u16)0xFD41)
+#define HFA384x_RID_CURRENTBSSID	((u16)0xFD42)
+#define HFA384x_RID_CURRENTTXRATE	((u16)0xFD44)
+#define HFA384x_RID_SHORTRETRYLIMIT	((u16)0xFD48)
+#define HFA384x_RID_LONGRETRYLIMIT	((u16)0xFD49)
+#define HFA384x_RID_MAXTXLIFETIME	((u16)0xFD4A)
+#define HFA384x_RID_PRIVACYOPTIMP	((u16)0xFD4F)
+#define HFA384x_RID_DBMCOMMSQUALITY	((u16)0xFD51)
 
 /*
  * Information RID Lengths:  MAC Information
  * This is the length of JUST the DATA part of the RID (does not
  * include the len or code fields)
  */
-#define		HFA384x_RID_DBMCOMMSQUALITY_LEN	 \
+#define HFA384x_RID_DBMCOMMSQUALITY_LEN	 \
 	((u16)sizeof(hfa384x_dbmcommsquality_t))
-#define		HFA384x_RID_JOINREQUEST_LEN \
+#define HFA384x_RID_JOINREQUEST_LEN \
 	((u16)sizeof(hfa384x_JoinRequest_data_t))
 
 /* Information RIDs:  Modem Information */
-#define		HFA384x_RID_CURRENTCHANNEL	((u16)0xFDC1)
+#define HFA384x_RID_CURRENTCHANNEL	((u16)0xFDC1)
 
 /* API ENHANCEMENTS (NOT ALREADY IMPLEMENTED) */
-#define		HFA384x_RID_CNFWEPDEFAULTKEYID	((u16)0xFC23)
-#define		HFA384x_RID_CNFWEPDEFAULTKEY0	((u16)0xFC24)
-#define		HFA384x_RID_CNFWEPDEFAULTKEY1	((u16)0xFC25)
-#define		HFA384x_RID_CNFWEPDEFAULTKEY2	((u16)0xFC26)
-#define		HFA384x_RID_CNFWEPDEFAULTKEY3	((u16)0xFC27)
-#define		HFA384x_RID_CNFWEPFLAGS		((u16)0xFC28)
-#define		HFA384x_RID_CNFAUTHENTICATION	((u16)0xFC2A)
-#define		HFA384x_RID_CNFROAMINGMODE	((u16)0xFC2D)
-#define		HFA384x_RID_CNFAPBCNint		((u16)0xFC33)
-#define		HFA384x_RID_CNFDBMADJUST	((u16)0xFC46)
-#define		HFA384x_RID_CNFWPADATA		((u16)0xFC48)
-#define		HFA384x_RID_CNFBASICRATES	((u16)0xFCB3)
-#define		HFA384x_RID_CNFSUPPRATES	((u16)0xFCB4)
-#define		HFA384x_RID_CNFPASSIVESCANCTRL	((u16)0xFCBA)
-#define		HFA384x_RID_TXPOWERMAX		((u16)0xFCBE)
-#define		HFA384x_RID_JOINREQUEST		((u16)0xFCE2)
-#define		HFA384x_RID_AUTHENTICATESTA	((u16)0xFCE3)
-#define		HFA384x_RID_HOSTSCAN		((u16)0xFCE5)
-
-#define		HFA384x_RID_CNFWEPDEFAULTKEY_LEN	((u16)6)
-#define		HFA384x_RID_CNFWEP128DEFAULTKEY_LEN	((u16)14)
+#define HFA384x_RID_CNFWEPDEFAULTKEYID	((u16)0xFC23)
+#define HFA384x_RID_CNFWEPDEFAULTKEY0	((u16)0xFC24)
+#define HFA384x_RID_CNFWEPDEFAULTKEY1	((u16)0xFC25)
+#define HFA384x_RID_CNFWEPDEFAULTKEY2	((u16)0xFC26)
+#define HFA384x_RID_CNFWEPDEFAULTKEY3	((u16)0xFC27)
+#define HFA384x_RID_CNFWEPFLAGS		((u16)0xFC28)
+#define HFA384x_RID_CNFAUTHENTICATION	((u16)0xFC2A)
+#define HFA384x_RID_CNFROAMINGMODE	((u16)0xFC2D)
+#define HFA384x_RID_CNFAPBCNint		((u16)0xFC33)
+#define HFA384x_RID_CNFDBMADJUST	((u16)0xFC46)
+#define HFA384x_RID_CNFWPADATA		((u16)0xFC48)
+#define HFA384x_RID_CNFBASICRATES	((u16)0xFCB3)
+#define HFA384x_RID_CNFSUPPRATES	((u16)0xFCB4)
+#define HFA384x_RID_CNFPASSIVESCANCTRL	((u16)0xFCBA)
+#define HFA384x_RID_TXPOWERMAX		((u16)0xFCBE)
+#define HFA384x_RID_JOINREQUEST		((u16)0xFCE2)
+#define HFA384x_RID_AUTHENTICATESTA	((u16)0xFCE3)
+#define HFA384x_RID_HOSTSCAN		((u16)0xFCE5)
+#define HFA384x_RID_CNFWEPDEFAULTKEY_LEN	((u16)6)
+#define HFA384x_RID_CNFWEP128DEFAULTKEY_LEN	((u16)14)
 
 /* PD Record codes */
 #define HFA384x_PDR_PCB_PARTNUM		((u16)0x0001)
@@ -324,14 +323,13 @@
 
 /* Register Test/Get/Set Field macros */
 
-#define		HFA384x_CMD_AINFO_SET(value)	((u16)((u16)(value) << 8))
-#define		HFA384x_CMD_MACPORT_SET(value)	\
+#define HFA384x_CMD_AINFO_SET(value)	((u16)((u16)(value) << 8))
+#define HFA384x_CMD_MACPORT_SET(value)	\
 			((u16)HFA384x_CMD_AINFO_SET(value))
-#define		HFA384x_CMD_PROGMODE_SET(value)	\
+#define HFA384x_CMD_PROGMODE_SET(value)	\
 			((u16)HFA384x_CMD_AINFO_SET((u16)value))
-#define		HFA384x_CMD_CMDCODE_SET(value)		((u16)(value))
-
-#define		HFA384x_STATUS_RESULT_SET(value)	(((u16)(value)) << 8)
+#define HFA384x_CMD_CMDCODE_SET(value)		((u16)(value))
+#define HFA384x_STATUS_RESULT_SET(value)	(((u16)(value)) << 8)
 
 /* Host Maintained State Info */
 #define HFA384x_STATE_PREINIT	0
@@ -473,17 +471,17 @@ typedef struct hfa384x_tx_frame {
  * Communication Frames: Field Masks for Transmit Frames
  */
 /* Status Field */
-#define		HFA384x_TXSTATUS_ACKERR			((u16)BIT(5))
-#define		HFA384x_TXSTATUS_FORMERR		((u16)BIT(3))
-#define		HFA384x_TXSTATUS_DISCON			((u16)BIT(2))
-#define		HFA384x_TXSTATUS_AGEDERR		((u16)BIT(1))
-#define		HFA384x_TXSTATUS_RETRYERR		((u16)BIT(0))
+#define HFA384x_TXSTATUS_ACKERR			((u16)BIT(5))
+#define HFA384x_TXSTATUS_FORMERR		((u16)BIT(3))
+#define HFA384x_TXSTATUS_DISCON			((u16)BIT(2))
+#define HFA384x_TXSTATUS_AGEDERR		((u16)BIT(1))
+#define HFA384x_TXSTATUS_RETRYERR		((u16)BIT(0))
 /* Transmit Control Field */
-#define		HFA384x_TX_MACPORT			((u16)(BIT(10) | \
+#define HFA384x_TX_MACPORT			((u16)(BIT(10) | \
 							  BIT(9) | BIT(8)))
-#define		HFA384x_TX_STRUCTYPE			((u16)(BIT(4) | BIT(3)))
-#define		HFA384x_TX_TXEX				((u16)BIT(2))
-#define		HFA384x_TX_TXOK				((u16)BIT(1))
+#define HFA384x_TX_STRUCTYPE			((u16)(BIT(4) | BIT(3)))
+#define HFA384x_TX_TXEX				((u16)BIT(2))
+#define HFA384x_TX_TXOK				((u16)BIT(1))
 /*
  * Communication Frames: Test/Get/Set Field Values for Transmit Frames
  */
@@ -494,13 +492,13 @@ typedef struct hfa384x_tx_frame {
 	HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
 	HFA384x_TXSTATUS_RETRYERR))
 
-#define	HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
+#define HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
 
-#define	HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
-#define	HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
+#define HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
+#define HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
 						HFA384x_TX_STRUCTYPE, 3)
-#define	HFA384x_TX_TXEX_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
-#define	HFA384x_TX_TXOK_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
+#define HFA384x_TX_TXEX_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
+#define HFA384x_TX_TXOK_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
 /*
  * Communication Frames: Receive Frames
  */
@@ -536,34 +534,34 @@ typedef struct hfa384x_rx_frame {
  */
 
 /* Status Fields */
-#define		HFA384x_RXSTATUS_MACPORT		((u16)(BIT(10) | \
+#define HFA384x_RXSTATUS_MACPORT		((u16)(BIT(10) | \
 								BIT(9) | \
 								BIT(8)))
-#define		HFA384x_RXSTATUS_FCSERR			((u16)BIT(0))
+#define HFA384x_RXSTATUS_FCSERR			((u16)BIT(0))
 /*
  * Communication Frames: Test/Get/Set Field Values for Receive Frames
  */
-#define		HFA384x_RXSTATUS_MACPORT_GET(value)	((u16)((((u16)(value)) \
+#define HFA384x_RXSTATUS_MACPORT_GET(value)	((u16)((((u16)(value)) \
 					    & HFA384x_RXSTATUS_MACPORT) >> 8))
-#define		HFA384x_RXSTATUS_ISFCSERR(value)	((u16)(((u16)(value)) \
+#define HFA384x_RXSTATUS_ISFCSERR(value)	((u16)(((u16)(value)) \
 						  & HFA384x_RXSTATUS_FCSERR))
 /*
  * FRAME STRUCTURES: Information Types and Information Frame Structures
  *
  * Information Types
  */
-#define		HFA384x_IT_HANDOVERADDR			((u16)0xF000UL)
-#define		HFA384x_IT_COMMTALLIES			((u16)0xF100UL)
-#define		HFA384x_IT_SCANRESULTS			((u16)0xF101UL)
-#define		HFA384x_IT_CHINFORESULTS		((u16)0xF102UL)
-#define		HFA384x_IT_HOSTSCANRESULTS		((u16)0xF103UL)
-#define		HFA384x_IT_LINKSTATUS			((u16)0xF200UL)
-#define		HFA384x_IT_ASSOCSTATUS			((u16)0xF201UL)
-#define		HFA384x_IT_AUTHREQ			((u16)0xF202UL)
-#define		HFA384x_IT_PSUSERCNT			((u16)0xF203UL)
-#define		HFA384x_IT_KEYIDCHANGED			((u16)0xF204UL)
-#define		HFA384x_IT_ASSOCREQ			((u16)0xF205UL)
-#define		HFA384x_IT_MICFAILURE			((u16)0xF206UL)
+#define HFA384x_IT_HANDOVERADDR			((u16)0xF000UL)
+#define HFA384x_IT_COMMTALLIES			((u16)0xF100UL)
+#define HFA384x_IT_SCANRESULTS			((u16)0xF101UL)
+#define HFA384x_IT_CHINFORESULTS		((u16)0xF102UL)
+#define HFA384x_IT_HOSTSCANRESULTS		((u16)0xF103UL)
+#define HFA384x_IT_LINKSTATUS			((u16)0xF200UL)
+#define HFA384x_IT_ASSOCSTATUS			((u16)0xF201UL)
+#define HFA384x_IT_AUTHREQ			((u16)0xF202UL)
+#define HFA384x_IT_PSUSERCNT			((u16)0xF203UL)
+#define HFA384x_IT_KEYIDCHANGED			((u16)0xF204UL)
+#define HFA384x_IT_ASSOCREQ			((u16)0xF205UL)
+#define HFA384x_IT_MICFAILURE			((u16)0xF206UL)
 
 /*
  * Information Frames Structures
@@ -1174,7 +1172,7 @@ typedef struct hfa484x_metacmd {
 	hfa384x_cmdresult_t result;
 } hfa384x_metacmd_t;
 
-#define	MAX_GRP_ADDR		32
+#define MAX_GRP_ADDR		32
 #define WLAN_COMMENT_MAX	80  /* Max. length of user comment string. */
 
 #define WLAN_AUTH_MAX           60  /* Max. # of authenticated stations. */
-- 
2.9.2


