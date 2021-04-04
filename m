X-GM-THRID: 6947408169247178752
X-Received: by 2002:a5d:4105:: with SMTP id l5mr26999962wrp.105.1617569516384;
        Sun, 04 Apr 2021 13:51:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls5683829wrb.1.gmail; Sun,
 04 Apr 2021 13:51:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwqU60iLqyoKrHavAOA3Aej2LqGZuDE0fGCBUva9CBC/kD/mshd3+beiOyvS6QSSix2dLlm
X-Received: by 2002:a5d:5541:: with SMTP id g1mr2656551wrw.419.1617569515098;
        Sun, 04 Apr 2021 13:51:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617569515; cv=none;
        d=google.com; s=arc-20160816;
        b=RE/MCf6sg6FSuT/7+lcvud4apspxkBUsbaxQN4O7e4HsQNDZpXzWZIOqyv+hpwhHXo
         gmLZl7kM40gc36+sdSRMZjIfwStQLprMCmHbL1qvRMmVCdV4f1b7u0YGP9mkA/cUDXVp
         TXMQ9Ia27cnmOCU6Qfkyo/fZ+5URaPuYSQ94haINrNFvTHkFBiGarZLVikDCUzALWWBZ
         T4x3pQ0a7rJUAwkIrWI4rBoQb7w1BcHt3H1F8/tH3547hSwHZ/by8LMa4Fkf2IrQDGo7
         W0WtGtaASDLlxX4xqtrICfHZeosMB7/43NZ6ILKWNrU7Uo0CDelm3YufQ5zlu51Idkp7
         7GPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cXiMXcPJYT2gF1ZyHKZXBRz8MdSstrc2FkV2CzET4+Q=;
        b=MSbjgkGzVX7X46eV15QF/m4aQ7dQoVzkt+g1FkiaMzILeQx+5laoENTFoVHB7dLD7O
         SQ49IkSCCIGWCmoFR9EAVGmHIWDDw8uxGfnCfW4se+DYnTmc1gdx9VWOPsqdKdhkgqLS
         bs+Y+x9PfpbhYesZQa/xmJD1HWVtrwLGE/fWZJTuWjuVFUmnlGHwzA/INh3kg3Z45L6Q
         DD6PrVybCg4gdl3XA9nTnAELcgzW/4ncp1MK+vsOAItx2mgvn5w+4ES++HxT3Kxt3iH8
         p2O3Oylkw8r/RbmehGMEJw4ArvkEFqC6m5vZbfmE5ZkaWpr3v+7wUduofl4egpX9IYli
         LVuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pNbplSVM;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id a187si1031892wmc.1.2021.04.04.13.51.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 13:51:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pNbplSVM;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x135.google.com with SMTP id q29so14746847lfb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 13:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cXiMXcPJYT2gF1ZyHKZXBRz8MdSstrc2FkV2CzET4+Q=;
        b=pNbplSVMj3El5qfqP6wnDvwFawYNC56Bv0mYtHpCQQooiUJUG6PdYrJ302oF7b21P6
         5fCo6C2xqTxnSGK6eIeRtdXnp8MGkJzbVrCrDbovEVCJalXgoGq9MkUewJy+xBjgxbsO
         LisAWAELom/Dp7zf7I92+42H24kdIJCQY2rwm5o+3aRUUq/OyOIRLo24b5URczcFjJOf
         vh9B7XFZctsc9fXXJ9Rbou0riqr9+4dy8oAgfu7E4q/8U5C7jW83sOXIU9u82uKFxxwB
         kXs8lV1SaOV9yrhZjRpvuCp4/T+P2NHNVqY5oeAuuzM2jtbfJwbJ1t6qO4a9FXwp1veD
         Fi3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cXiMXcPJYT2gF1ZyHKZXBRz8MdSstrc2FkV2CzET4+Q=;
        b=OTtnQ4KPKrLKt989QHiNXPKLc7mZ7qK/3AsuvQCNP4+eFiV3lmPu9OzpCGDtsrSfiS
         PGC7ZRNZL5BvyAi//DFD8r6qbynCLctUFx57P+RfKynWa5Ml+wKzSt6hp1kLjM1chFEN
         JCFlKXnMjPMF0Kj0JG+MPPUPPJ4sbsCGDl5khD523ImHHgsB5kTc0Eq7U+4NW//7z6XW
         agRdPuQ1N6681ddKClGdAp0kLvauVK1USqB9S6VikzVP3DKvAPxdDizqscqjHi4jGGrD
         ITKFJxAC7FJZX8ZDnM8We7LWXxi43BP8nIevwlrd81TDnO3ro6mFpjKWXvVq9wSUyKxI
         YwNw==
X-Gm-Message-State: AOAM530p0vPHG4ZPECjeDxxUNJSWA7ryrN0LOtGasFdtG/CX0UmQ0lx8
	K0Yg22ejhofbJTgNRoNwUZHUcbyav0YFlKVF
X-Received: by 2002:ac2:5a11:: with SMTP id q17mr15758434lfn.354.1617569514393;
        Sun, 04 Apr 2021 13:51:54 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id e15sm1552272lfs.83.2021.04.04.13.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 13:51:54 -0700 (PDT)
Date: Mon, 5 Apr 2021 02:51:52 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8712: add blank lines after declarations
Message-ID: <ffe2ab70ef3cb73d3d6dd19d88804af7ecb568a2.1617568354.git.zhansayabagdaulet@gmail.com>
References: <cover.1617568354.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617568354.git.zhansayabagdaulet@gmail.com>

Add blank lines after function/struct/union/enum declarations to adhere to
Linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.h     |  1 +
 drivers/staging/rtl8712/rtl871x_cmd.h      | 10 ++++++++++
 drivers/staging/rtl8712/rtl871x_event.h    |  1 +
 drivers/staging/rtl8712/rtl871x_mp.c       |  1 +
 drivers/staging/rtl8712/rtl871x_mp.h       |  1 +
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c |  3 +++
 drivers/staging/rtl8712/rtl871x_recv.c     |  1 +
 7 files changed, 18 insertions(+)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.h b/drivers/staging/rtl8712/rtl8712_recv.h
index 3e385b2242d8..c70b37ff554e 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.h
+++ b/drivers/staging/rtl8712/rtl8712_recv.h
@@ -66,6 +66,7 @@ struct phy_stat {
 	__le32 phydw6;
 	__le32 phydw7;
 };
+
 #define PHY_STAT_GAIN_TRSW_SHT 0
 #define PHY_STAT_PWDB_ALL_SHT 4
 #define PHY_STAT_CFOSHO_SHT 5
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 254182a6ce8e..bf6f0c6a86e5 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -333,6 +333,7 @@ struct getdatarate_parm {
 	u32 rsvd;
 
 };
+
 struct getdatarate_rsp {
 	u8 datarates[NumRates];
 };
@@ -377,6 +378,7 @@ struct	getphy_rsp {
 struct readBB_parm {
 	u8	offset;
 };
+
 struct readBB_rsp {
 	u8	value;
 };
@@ -384,6 +386,7 @@ struct readBB_rsp {
 struct readTSSI_parm {
 	u8	offset;
 };
+
 struct readTSSI_rsp {
 	u8	value;
 };
@@ -400,6 +403,7 @@ struct writePTM_parm {
 struct readRF_parm {
 	u8	offset;
 };
+
 struct readRF_rsp {
 	u32	value;
 };
@@ -498,6 +502,7 @@ struct settxagctbl_parm {
 struct gettxagctbl_parm {
 	u32 rsvd;
 };
+
 struct gettxagctbl_rsp {
 	u32	txagc[MAX_RATES_LENGTH];
 };
@@ -513,6 +518,7 @@ struct setssup_parm	{
 struct getssup_parm	{
 	u32 rsvd;
 };
+
 struct getssup_rsp	{
 	u8	ss_ForceUp[MAX_RATES_LENGTH];
 };
@@ -524,6 +530,7 @@ struct setssdlevel_parm	{
 struct getssdlevel_parm	{
 	u32 rsvd;
 };
+
 struct getssdlevel_rsp	{
 	u8	ss_DLevel[MAX_RATES_LENGTH];
 };
@@ -535,6 +542,7 @@ struct setssulevel_parm	{
 struct getssulevel_parm	{
 	u32 rsvd;
 };
+
 struct getssulevel_rsp	{
 	u8	ss_ULevel[MAX_RATES_LENGTH];
 };
@@ -585,6 +593,7 @@ struct setratable_parm {
 struct getratable_parm {
 	uint rsvd;
 };
+
 struct getratable_rsp {
 	u8 ss_ForceUp[NumRates];
 	u8 ss_ULevel[NumRates];
@@ -621,6 +630,7 @@ struct getbcnokcnt_rsp {
 struct getbcnerrcnt_parm {
 	unsigned int rsvd;
 };
+
 struct getbcnerrcnt_rsp {
 	unsigned long bcnerrcnt;
 };
diff --git a/drivers/staging/rtl8712/rtl871x_event.h b/drivers/staging/rtl8712/rtl871x_event.h
index d9a5476d2426..759a2d27d8f2 100644
--- a/drivers/staging/rtl8712/rtl871x_event.h
+++ b/drivers/staging/rtl8712/rtl871x_event.h
@@ -102,6 +102,7 @@ struct ADDBA_Req_Report_parm {
 	unsigned short StartSeqNum;
 	unsigned char tid;
 };
+
 #include "rtl8712_event.h"
 
 #endif /* _WLANEVENT_H_ */
diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 24020257bc58..099c512c8519 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -387,6 +387,7 @@ void r8712_SwitchBandwidth(struct _adapter *pAdapter)
 		break;
 	}
 }
+
 /*------------------------------Define structure----------------------------*/
 struct R_ANTENNA_SELECT_OFDM {
 	u32	r_tx_antenna:4;
diff --git a/drivers/staging/rtl8712/rtl871x_mp.h b/drivers/staging/rtl8712/rtl871x_mp.h
index e79a67676469..0a60b1e6ccaf 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.h
+++ b/drivers/staging/rtl8712/rtl871x_mp.h
@@ -121,6 +121,7 @@ struct bb_reg_param {
 	u32 offset;
 	u32 value;
 };
+
 /* ======================================================================= */
 
 #define LOWER	true
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index f906d3fbe179..31414a960c9e 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -681,6 +681,7 @@ uint oid_rt_pro_read_efuse_hdl(struct oid_par_priv *poid_par_priv)
 	*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	return status;
 }
+
 /*------------------------------------------------------------------------*/
 uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
 {
@@ -708,6 +709,7 @@ uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
 		status = RNDIS_STATUS_FAILURE;
 	return status;
 }
+
 /*----------------------------------------------------------------------*/
 
 uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv *poid_par_priv)
@@ -849,6 +851,7 @@ unsigned int mp_ioctl_xmit_packet_hdl(struct oid_par_priv *poid_par_priv)
 {
 	return _SUCCESS;
 }
+
 /*-------------------------------------------------------------------------*/
 uint oid_rt_set_power_down_hdl(struct oid_par_priv *poid_par_priv)
 {
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index efd783e7ccbc..17d4a261dea0 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -219,6 +219,7 @@ union recv_frame *r8712_decryptor(struct _adapter *padapter,
 	}
 	return return_packet;
 }
+
 /*###set the security information in the recv_frame */
 union recv_frame *r8712_portctrl(struct _adapter *adapter,
 				 union recv_frame *precv_frame)
-- 
2.25.1


