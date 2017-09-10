X-GM-THRID: 6464167912849539072
X-Received: by 10.200.39.50 with SMTP id g47mr2220305qtg.0.1505056756908;
        Sun, 10 Sep 2017 08:19:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.68.196 with SMTP id o187ls4024047ita.15.canary-gmail; Sun,
 10 Sep 2017 08:19:16 -0700 (PDT)
X-Received: by 10.99.114.19 with SMTP id n19mr5525545pgc.38.1505056756351;
        Sun, 10 Sep 2017 08:19:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505056756; cv=none;
        d=google.com; s=arc-20160816;
        b=F+WIZFtu3DR7ay7EgnX6s1hlPsrzxuL+kTCFNS3J6vigJo/bU+tjwBEXAixkwmRpwP
         LjtKSD7/oPoQX4JA7BEEdLoIGNNNrd0TiDy4RFNpNY8PlTH0Xj0vJ1yKfEsljGvUUsLK
         lwml7s2FIWUhva7VkiBhesyjk6kZ3Bbmf5IyJ/C8x41FgiHB5HoKc+UTsDhboVaOx9Jm
         0fPGm90f/cC9NvDuBn9X9CXCLr9kaCHZSZLnTvOPzxFLTQYjSgakL+8LMq3Y1b5MUI3f
         zaLQsVbxfubzWzaqQvioyHS0BJarckpuZkXjUGA7/useZJvcYEs05scerIZsjCkrHsZj
         n9iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=ZRF0+9iBu33rwtYxOYEoyTe7Tg4X9LftXO+SGToEpjw=;
        b=tdFeYZL9oT8wRz55LoB5urBgNNxwuvsPbG5yPK6VhL3Ie0nFQTax/FFHY0RunoYhCI
         t+QZNi+qoXz7YhzFihMp1RwCljNaKGBvPHOOIw/Kwjy+EMFGCGhZsQ7b4ZJ9Qf72QLgi
         f5H0lcRzHq4EvnpJ1dTn/TmrrkvvqAXSDKufn6sDV1AFtikwxJYYaE/PccZqJZG1cRE9
         qabuc+LFL5+bxuTh8QLEmqC1WWQl5Ff9UBQ41fU9rHxFEwZu6+e63jS763clUAh+BCbu
         HClmoxamxUqIs4EPeLtibrC59ReoBbaXll8FjIcDCGsJWHNWJsuJEg2xURKsMZps/FQa
         aiMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jHYn4kd7;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u184si54195pfb.17.2017.09.10.08.19.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 08:19:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jHYn4kd7;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g13so3849218pfm.2
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 08:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZRF0+9iBu33rwtYxOYEoyTe7Tg4X9LftXO+SGToEpjw=;
        b=jHYn4kd7O7oloJPndtuq9+4btU/1gsZBbUsCHhki21U7xf/5LT3ArCQ/ppRq/2WVyl
         jLMuEQLGphIoY8Coi3mRxnUI6w7A8WExc3pJ5ZAcFSjbnRLzQRhE4yfrpZsATzjVblD+
         Fh5deKbCs2f9mBaN5Q2H/pn9aYgqU1PvR7y9sBC3URLIrXzV+qpKob2sGMHBsCnJZpIf
         Wl5FwXH3a4blesAlm4GskW5chSiDFusi/+Z4DORCtROWJHDGvjUos+cFxNN5Hc/QPoSX
         bJ8gktd7+WfwdJ5ahWOVPuzJG16QVDtk6plbpWW22aX1Zj93XcpngsywixCD+mRuzlSY
         CTMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZRF0+9iBu33rwtYxOYEoyTe7Tg4X9LftXO+SGToEpjw=;
        b=CPgSte/C17aNyiHS1PmAWhM7E8iBMtrEN56cAka2tAHsclzGwCa3Marez5t3rZPODr
         q7zecBtQnfiJzjmbDVGqtom4wCNHh2CyGsipMYOnZ2wuhItC7I8VhjqRPWeZS4aDFsqN
         32B8m/Wv8dhePufov8h8La9rUs5HX29DddDkUML2BkMsvbYT57i2pjp2F4I1gbTwOpm2
         VAzGUra3oqwX2FpTRrm4Xyh4Sz2GJTrVAD4kw37KMk3zAOZTr1BfvoHHVsmZTvICYXCo
         vPEwiN9UD+9zUWTvS6Jdgn4rsnc9asXeVjMPm9MI2oD472k0gGxGrwMxF9bqquzg+SLh
         nslQ==
X-Gm-Message-State: AHPjjUhfJhVYp6px8Qrba0xQ5JaAOwP2t7k9zjZJPW5x568NL04KN7OJ
	btTUfzn56uoDrQ==
X-Google-Smtp-Source: ADKCNb5hP1PFHCyFRLHeGDlcHH3pwRX6JlP09LHdQBag7FzhIX5pPWGrPAnULJ4FWFZ+ddVtF/InZw==
X-Received: by 10.84.232.8 with SMTP id h8mr10604091plk.423.1505056756127;
        Sun, 10 Sep 2017 08:19:16 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id m24sm12839499pfg.31.2017.09.10.08.19.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 08:19:15 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 02/10] staging: rtl8723bs: Add spaces around '+', '|', '*'
Date: Sun, 10 Sep 2017 20:47:05 +0530
Message-Id: <28be543667f44c31e38872ec4a96bad8c167e3d8.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Use one space around most binary operators

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 7f22ca9..18f0ac2 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -222,7 +222,7 @@
 /*  BIT4 - RF,					0: non-support, 1: support */
 /*  BIT5 - RF_TXPWR_TRACK,	0: non-support, 1: support */
 /*  BIT6 - RF_TXPWR_LMT,		0: non-support, 1: support */
-static int rtw_load_phy_file = (BIT2|BIT6);
+static int rtw_load_phy_file = (BIT2 | BIT6);
 module_param(rtw_load_phy_file, int, 0644);
 MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
 static int rtw_decrypt_phy_file = 0;
@@ -440,12 +440,12 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
 	u32 priority;
 	u8 *pdata = skb->data;
 
-	memcpy(&eth_type, pdata+(ETH_ALEN<<1), 2);
+	memcpy(&eth_type, pdata + (ETH_ALEN << 1), 2);
 
 	switch (be16_to_cpu(eth_type)) {
 		case ETH_P_IP:
 
-			piphdr = (struct iphdr *)(pdata+ETH_HLEN);
+			piphdr = (struct iphdr *)(pdata + ETH_HLEN);
 
 			dscp = piphdr->tos & 0xfc;
 
@@ -561,7 +561,7 @@ struct net_device *rtw_init_netdev(struct adapter *old_padapter)
 	pnetdev->netdev_ops = &rtw_netdev_ops;
 
 	/* pnetdev->tx_timeout = NULL; */
-	pnetdev->watchdog_timeo = HZ*3; /* 3 second timeout */
+	pnetdev->watchdog_timeo = HZ * 3; /* 3 second timeout */
 	pnetdev->wireless_handlers = (struct iw_handler_def *)&rtw_handlers_def;
 
 	/* step 2. */
@@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter *padapter)
 	pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
 	pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;
 
-	_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY |_FW_UNDER_LINKING);
+	_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING);
 
 	pwrctrlpriv->pwr_state_check_cnts = 0;
 
@@ -935,7 +935,7 @@ static int _rtw_drv_register_netdev(struct adapter *padapter, char *name)
 		goto error_register_netdev;
 	}
 
-	DBG_871X("%s, MAC Address (if%d) = " MAC_FMT "\n", __func__, (padapter->iface_id+1), MAC_ARG(pnetdev->dev_addr));
+	DBG_871X("%s, MAC Address (if%d) = " MAC_FMT "\n", __func__, (padapter->iface_id + 1), MAC_ARG(pnetdev->dev_addr));
 
 	return ret;
 
-- 
1.9.1


