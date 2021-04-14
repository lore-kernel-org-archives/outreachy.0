X-GM-THRID: 6951097380954439680
X-Received: by 2002:a05:6512:1102:: with SMTP id l2mr27550659lfg.501.1618428481984;
        Wed, 14 Apr 2021 12:28:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls3107434lfv.1.gmail; Wed,
 14 Apr 2021 12:28:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxO0Y2ijaTM7kdfvvmm8d/qnyHhWoBImgx1qPqXlPiTn+yaF81uAmFRknIdZa7k1AgAXhQq
X-Received: by 2002:ac2:5613:: with SMTP id v19mr23856701lfd.492.1618428480331;
        Wed, 14 Apr 2021 12:28:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618428480; cv=none;
        d=google.com; s=arc-20160816;
        b=KmEqGYRLvN/F40jvFvoAtDU+Km8Pe54RrtNbyU073yJwUAv7/y9jYeloLp27P78use
         HO1k8Ct40CxchNaz2NSCnjagj6MxadLQPblmxuCTHpnpj2H86LN3XgniV2HMbIpVn6EB
         VbLHdtOyc+IWrGSs9T6elNLyYVZ0TSo4H166TZhMJwHiHLVOXLSy3p8NhihPmmKHwuOs
         kDfc79rHTcmrvUYlJzD/FNHHOA08+2ZI2lNTIrbKM4RwwRk+ElyNqBt4SZ73pmavZ06k
         821uM7abEq9aMjEYnBzB0ttWMIIwz083skE7F4MS+dqyUY4mqPOd17qAxQNPTwOMXot9
         /KTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=av0jQOTJIUMGDZ5JlBg9J5NuC7eaxG6UgWRpBDlzXG0=;
        b=LT7TnGRQf4iF22vaLEJiNEZTxlTtBdESZ3/cwOsVUpJSOFL7K3REc0lEq853S1su+o
         RqAnUEmwtozC7jNrB2ZEuQntsM8rNT5B9e17keUJ803taIbB4iU4LjUf1WY6D1xWKlO7
         7bnDs3G1HOZz6EmVk+liQ1qryXj5QYjPRnqPScwDXkOh2O5VFmcEqfAxDL2XJVrpkv77
         4RVU2w5HMijQD8It81w+4tjvD/+teY9WSYAa5mXIcZUbSXZ4N1fw66HnpBbbJXuRnysb
         87fChYpIN/Q6FYUkqv+c83s5h3uQEvGr4jOZ/GEUKSyr1SfXgD9DjkRXbudnXkK8QO/T
         6PVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MQMgbj01;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id j7si22139lfm.9.2021.04.14.12.28.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 12:28:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MQMgbj01;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id mh2so11575381ejb.8
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 12:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=av0jQOTJIUMGDZ5JlBg9J5NuC7eaxG6UgWRpBDlzXG0=;
        b=MQMgbj01xhogw78xBc3/IIZV83BqH13/t1wthxCFJtz4Sl9JrcOHGTzbCWuA/NWtCZ
         M0DL18mXdnJNHQBvb94FTB23AlzXykQI4sHguH+iAnDXREGWs/HPvnTe2Gdi+W+96Wsl
         XrjG0Ir0gti0N5CsFS/Ld6dJhlY3m+j1ypDK6LRIgGVXa2gYAyxurCT4PVMHq1wejSZa
         udLd4ytLxSrsXGAiNbuTSv4qW6WNOpbZZeElY+wMccY6EyPNZhZqg4EMUnutbbNYmJm0
         Y2lokRl9jntIn2icSEsLVVdrQlJwPdNTYKvfo4VoNJuzdUclKxY5T2cABxVfQE8Kv5V6
         05Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=av0jQOTJIUMGDZ5JlBg9J5NuC7eaxG6UgWRpBDlzXG0=;
        b=VORSWaZqqSLBjJBZIxzT5NlDhsvy3f8uUtlouW5iX0XkWVu2f4ASToi+ni39jOp/Ec
         FfmqHdlkkl0BFYmjKe1+YgPYJ0tderDjgRRKOznes3Gm1DlQtbdx4TE6WWvg1zoD4Wib
         mw99Muio827U6ULXAS5SoJSHx/ZIuQFkrhohUgx75zYOnWrFxIJTqPcA4c0huquHZPmK
         GafnQ41kcstjkJkDhixNe1g89mTSz89yWDpCcoSdBYEgwjS1F21chJcaCR3NiHW56m/X
         3eKbE7RuSqNwoaI5F8nXEiXY4q/1WVx7c715fQfAjxqw6BkH3OIcZRDA0dT8adkcALWP
         H0bg==
X-Gm-Message-State: AOAM531E2JMBCsw+irkDEF6hEALsKiRDI+Bcy+fgFvz2zo7f4KkPc2LH
	eCOe4wP+iTkrd5yTIiXrMCDyy4Kv2khAicdR
X-Received: by 2002:a17:906:8293:: with SMTP id h19mr418169ejx.217.1618428479653;
        Wed, 14 Apr 2021 12:27:59 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gn3sm259049ejc.2.2021.04.14.12.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 12:27:59 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: [Outreachy patch] [PATCH v3 1/2] staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Wed, 14 Apr 2021 21:27:49 +0200
Message-Id: <20210414192750.4974-2-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210414192750.4974-1-fmdefrancesco@gmail.com>
References: <20210414192750.4974-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed useless led_blink_hdl() prototype and definition. In wlancmds[]
the slot #60 is now set to NULL using the macro GEN_MLME_EXT_HANDLER. This
change has not unwanted side effects because the code in rtw_cmd.c checks
if the function pointer is valid before using it.

Reported-by: Julia Lawall <julia.lawall@inria.fr>
Suggested-by: Matthew Wilcox <willy@infradead.org>
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v2: no changes.
Changes from v1: Corrected a bad solution to this issue that made use of
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


