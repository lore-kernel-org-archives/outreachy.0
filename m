X-GM-THRID: 6950980105413853184
X-Received: by 2002:a19:b94:: with SMTP id 142mr19998871lfl.309.1618417581700;
        Wed, 14 Apr 2021 09:26:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls2549651lfv.1.gmail; Wed,
 14 Apr 2021 09:26:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwaGaUU6wS4F1zeCtC5VA4MKB/ufcMb847AN5cSr7gWR4pKAaFl+fB4yZ0ia9Bfv8cNuq8t
X-Received: by 2002:a19:ef19:: with SMTP id n25mr18720947lfh.157.1618417579801;
        Wed, 14 Apr 2021 09:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618417579; cv=none;
        d=google.com; s=arc-20160816;
        b=VDkybt53mdx1JhmVVpBtN0X/4v31+sKiYqGXQW8+rwMg7wdv+nP2cIZBugyn2K1O4g
         qPooZxNl0wOrdsioCtUpN9qwpJULY7hjtIwYaowf9UeKDwCYpymXtsUDwvDmZM4FmKT3
         dpDL3AsLNgJ1u8ZgJ6KEh1wGIxEcUGgplsmVACD0KUjkbageO8qBGd8P3H3mTEJzgUG0
         J20j4JRCO2ul43mB7TmCC4UlPuhRMGpwS30mkqmDNets/TXGf9lY3hltr6PlRFrqOoOF
         cxdhKHVwDGkwi6Mc3u3j0tjSCfEB2r1FMl1SgxcgWzwt+ZmHG3Fum9JAezQIgAnXoSpx
         0j+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7OJ5/q27rVQyMJMOKx5XsjrMcpogAT1Y8irqV1uKSxE=;
        b=V/S/rzXopn5VTny0ZJdFBg+sYx+B9cig27/TXIFEjibpJdfhqjGA1hFdzSRX7KmuZ9
         tP1eWqLVByNRtqA1F+LthkfEix6dOlqE3egoPSn21XmBQHXHXRxKIFrqZknnO3njouWC
         wFmOemUjFvQdZDkFQb2S6aAOdx7Gj78p5Aidzo+7cxz5v7ScrWaJTz8GyVzw3LHJjE7n
         r7LvaxafQo956yEEQkF+zkUo1mNy9Cxysvu2MBquq9FDvk8gJpirq5W87NFkCVQOZ62T
         UwY+kIWQJ1MdMigVzzispyp8HfFd4BDyy1T6nLLM0Y/k/9L+A8ubnvu8B5qk/2mwhezK
         hOHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZJiQUOj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id c17si955984ljn.7.2021.04.14.09.26.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 09:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZJiQUOj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62c.google.com with SMTP id g5so25636653ejx.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 09:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7OJ5/q27rVQyMJMOKx5XsjrMcpogAT1Y8irqV1uKSxE=;
        b=nZJiQUOjb34oGOxyGs8MPrzzBpINEaVqRnwnQlby3J29ZlZ2LSD+RySg/Em1usx/sp
         VBK0JbsrcRrXtuDOhdLMWmFY6LgzU0M6QaaU8WoaImzFI4CKqOFK1JrAP0WCyW/2hupo
         Y1jCnX4zRNDAlYQ91iTrV2Z0rolLlrV5hTsarOY7velbj2TE31ngP89BS2CFogI0lFmX
         wtCS3p6NgPyLU267rbHlsAVf7mS34XhhHUx8qk1qor69S/3fx1hg6lCg7eLUw65IDKHA
         o1ag3yhq5Q51sdXKtj0m+Nks9Gkv7RoGHXT8QgPR2/P/L+CZDl0T+A1sp1vNR8wsHr9m
         zx2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7OJ5/q27rVQyMJMOKx5XsjrMcpogAT1Y8irqV1uKSxE=;
        b=djnVtLkcbutwUgu6EWsUFIE6a63htcthbzSp/KbEitzq2T6aKNOYm2+NElGpmZmywk
         jQXTgygt2s7ZLckk/pHY2R5uW6wl/rzH7JbNu1dVCw9NqnjmiENzScRwIkdBk/jpeRsF
         hS/4JAXP4W0+xZa9mfgInKBGxRsI5qS/nJK6+/Y0jSBu4bqXLZrNV+tqS4+ar2YhyKyn
         XUbpbOTGjthbexl0B4ZfSLdMK0FdrxFbx3hvDQXqfQzebJjHGjOsL4lPN8uuJSRYrQjo
         CdhWxK4PhnjYYmqwhstUAqTTm/LOYLNT+vpyivDlKYoS0qywb+k+Y1ghOO4zo5mDPSVH
         6i0g==
X-Gm-Message-State: AOAM533WnccmN/qdwVudmleYs9STxW+i6rY68lp1KbALUWUUuxBGw/hB
	f0inx1POTYDJLvFDZ0+dF7mi/Ir9o04Wtm0X
X-Received: by 2002:a17:906:a385:: with SMTP id k5mr6548344ejz.148.1618417579300;
        Wed, 14 Apr 2021 09:26:19 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id s17sm20803ejx.10.2021.04.14.09.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 09:26:18 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Wed, 14 Apr 2021 18:26:14 +0200
Message-Id: <20210414162614.14867-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed useless led_blink_hdl() prototype and definition. In wlancmds[]
the slot #60 is now set to NULL using the macro GEN_MLME_EXT_HANDLER. This
change has not unwanted side effects because the code in rtw_cmd.c checks
if the function pointer is valid before using it.

Reported-by: Julia Lawall <julia.lawall@inria.fr>
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes since v1: Corrected a bad solution to this issue that made use of
an unnecessary dummy function.

 drivers/staging/rtl8723bs/core/rtw_cmd.c         | 2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
 3 files changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 0297fbad7bce..f82dbd4f4c3d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -150,7 +150,7 @@ static struct cmd_hdl wlancmds[] = {
 
 	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
+	GEN_MLME_EXT_HANDLER(0, NULL) /*60*/
 
 	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param), set_csa_hdl) /*61*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param), tdls_hdl) /*62*/
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 873d3792ac8e..963ea80083c8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -6189,15 +6189,6 @@ u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
 	return	H2C_SUCCESS;
 }
 
-u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf)
-{
-
-	if (!pbuf)
-		return H2C_PARAMETERS_ERROR;
-
-	return	H2C_SUCCESS;
-}
-
 u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf)
 {
 	return	H2C_REJECTED;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 5e6cf63956b8..472818c5fd83 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -745,7 +745,6 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf);
 u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf);
 u8 set_ch_hdl(struct adapter *padapter, u8 *pbuf);
 u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf);
-u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf);
 u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf);	/* Kurt: Handling DFS channel switch announcement ie. */
 u8 tdls_hdl(struct adapter *padapter, unsigned char *pbuf);
 u8 run_in_thread_hdl(struct adapter *padapter, u8 *pbuf);
-- 
2.31.1


