X-GM-THRID: 6950672534035496960
X-Received: by 2002:a1c:9d90:: with SMTP id g138mr666231wme.156.1618329559526;
        Tue, 13 Apr 2021 08:59:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c205:: with SMTP id s5ls1612879wmf.3.canary-gmail; Tue,
 13 Apr 2021 08:59:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx8jkhiiBxuUNqa9CUuVRtNAd4bUTjPLorrfNy3UMocBZIG06XScWSau31itYJ/bQnFeSdp
X-Received: by 2002:a05:600c:4107:: with SMTP id j7mr659508wmi.25.1618329558088;
        Tue, 13 Apr 2021 08:59:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618329558; cv=none;
        d=google.com; s=arc-20160816;
        b=qJC32qc3DuXd1MhE7ZZcfgfzn3xbZAnHu1tmnrpEukIOW4Rby9zju/4+zetwrWypWQ
         rK1fFoUhGKaKl1+cOzSHY+KfukT9mjfuYwXGem9rth4Vv+x2iGvjHZK99CEv6R0NciYh
         W0cY3Q1ga5/9Uj7nNJh5QWVtv81HntCqOwiUcvJ8I20777mzisCasSCHlOSbjSvsSxZ0
         OY209+cSKMxO07zMrAYfieM4H5dbAtxV7/yErFKc8+ZyeMdcqMYAZKVpeF+IBVPjBgag
         qy6djGbpea/S1LmeWzz/qJDfppSJi7xqutXAAP9evq6NfpmGebKA8/sduskjh9yvNfTc
         y7Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=t80Ay0RM+FSktFuIVmdmHsgIKuVKC6dk8w1F4+C4e8M=;
        b=kteLyMbR7/PoPhs0n6GWsbWzewR6QhuZdV/qkcMd3wQ7sqRNdwyR4lM2mdMR1gBJ5c
         +ctlGyXXOQyKYCOZxdmuRnjmgF2X2XhL6eoGVjYpcxGTvdmtsfmw4DyNtHiorx8eIFdN
         dz2XORUap7gLRz1AHfsQF8rPDP7IGnaw0zzv+J/lW6p0iyhi7sjLxYUCJn4YW/IoS3A9
         tmWUJ++/xzpxBTvNkyUHORHIkgkl66kg9IohaWNWQXhpk8dSs2is8iQrPQEpZ/Q5V13k
         Z2s+DLxr7Ib+N6AewtRuZIaD+SHURln6nJRaxeBtwSi6m/D91IPbtBeUpulTOBSjbXl0
         xjvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q2lfUhHd;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id p65si164447wmp.0.2021.04.13.08.59.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:59:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q2lfUhHd;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id u17so26803434ejk.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t80Ay0RM+FSktFuIVmdmHsgIKuVKC6dk8w1F4+C4e8M=;
        b=Q2lfUhHd0jGJMAVNDwb7Opdm+DyQ3AeqNzu23r3ykYgH/NA9048hTnRz8m32kSjeqe
         cC8YY2uu+ifsa8uoo32WCKYYRgnESPEZn/G/gdXHTDeaYnJ5HJh8TwaPWLMUkrfzI2jk
         3gjBiVnIACSyFMIcnUArUvNx3YnGzmqj7gNCdzuJ9y0C4nCUQdEjHmK9xdDweaiavT8T
         +Hivdj6cIIQntQukoQtlJnufFaEf/J1vrXVtbWAxyGYS6PyH3tKuMdD4edzGtHLlHzSR
         UJsHvdZALW/iHhfLAspxsycS7Hj+lwP+1x32T5HwZcOQEz3EPqepURZRGyjTgu08tX/2
         SBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t80Ay0RM+FSktFuIVmdmHsgIKuVKC6dk8w1F4+C4e8M=;
        b=K/04UGE9IdU5JUIWg5KKdmrTcJ8KAV4P25JQZuu3eR+XFI/HZ4n9mD1c3Ud6laRXNi
         2S3cWNul+1/A884Mq/laSlnJm6I3Y4BIGnYgYHOsaOfFScO+rwTUdvmcvZgQ6UOcI3OO
         vJziAy6/ZV7ZAQrPIijBIqaNTFsPQ6m2ogYCx0/WeLhq1PyAsvMuvCqks29EKypF3VUT
         EcDDBnbXZtpsVW/KETPtJFiBaxbOvA4FLDlw+bSr3UcoNsOAm0lZRHr/uL76Z87uxeVY
         j/vReZHHyzWXm0kiiO422j+hywkmjATsC7JWLTn5sFheHCyY9eHDcPKk7XSfRV2KbdA8
         7y6g==
X-Gm-Message-State: AOAM5306fIAK9w3u6WTIQmbS0k3AKm/TwqN364s9RfgDUicmDz2u5vj7
	ucs0uDVd6UnltmuIRYayldmrNeqGSyLIvLxj
X-Received: by 2002:a17:907:3f8b:: with SMTP id hr11mr33680401ejc.477.1618329557497;
        Tue, 13 Apr 2021 08:59:17 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id a18sm2119910ejr.76.2021.04.13.08.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:59:17 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Tue, 13 Apr 2021 17:59:08 +0200
Message-Id: <20210413155908.8691-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed the led_blink_hdl() function (declaration, definition, and
caller code) because it's useless. It only seems to check whether or not a
given pointer is NULL. There are other (simpler) means for that purpose.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
 3 files changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 0297fbad7bce..4c44dfd21514 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] = {
 
 	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
-	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
 
 	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelSwitch_param), set_csa_hdl) /*61*/
 	GEN_MLME_EXT_HANDLER(sizeof(struct TDLSoption_param), tdls_hdl) /*62*/
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 440e22922106..6f2a0584f977 100644
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


