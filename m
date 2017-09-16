X-GM-THRID: 6466329510613614592
X-Received: by 10.98.252.18 with SMTP id e18mr15090949pfh.20.1505559696227;
        Sat, 16 Sep 2017 04:01:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.0.216 with SMTP id 207ls2320800ita.21.gmail; Sat, 16 Sep
 2017 04:01:35 -0700 (PDT)
X-Received: by 10.129.90.137 with SMTP id o131mr18018127ywb.113.1505559695379;
        Sat, 16 Sep 2017 04:01:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559695; cv=none;
        d=google.com; s=arc-20160816;
        b=aQBpfvNP1EkPcYvX9EmR9vUglG/yG7HesBWvT7i+SnWRKcD1qCMT65eAC80lEQUP6u
         VuUMbLjJfKadSNFxLRwdQ4TGBQoH9cqDfGMa+O4xrzGt1ZJhKXsSe7CW8SWDMfmKZ35v
         VvK0C4fSR0B2QfrkZDgxvpp7t7DK2QjD53lB6H1izFuXaR0dMn7Y7VqaT36YrU0dKgx6
         uXbIJg0z3an5qjhkcJ9fWNHnbgEtoOSVsnOp2MFP2egR+NY6wvW4Ktph9UrP34RkG6tq
         QDLxJQAWemBMeC1vwcSrlniqwhrrSeO8eGux+wddPdQh5BmAvDRF0ok3q4p9S4MV23Lz
         cljg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=OfObpy/PApD/c2qdAtTxMxEctukg4gdbap7tatmUzAI=;
        b=KeW8QWoOmfFDvjbxVPxYZSTPUcRVT11nDtfcaPyRTKzoFEkz96Cy5BL8Hat7X/MRix
         isKcu83L9OLjocgS6L7g7ZUEe6Iwld2xotzmASntmZnAtWjryklWbmJIvcMcG5egr1zU
         3PkRcdQG2EfMgxs4UC2WDzseIXnNx5LONEG4JgBTttXVZlAsxLfd90Y0AnvHdp3W/l83
         LclOR4nquEuWn7IGwqb8vjH1rJjGaaR3dm/W1GUodLV858xBwc6NCFGNRFzEYakYu1mJ
         8MAELGxa4zz2viy9K2kJKITU2pBnykUna6xmUASi06cbeh4GdNx3REJiqeUSdfk8nYRe
         CNxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D2EGzd2w;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id k76si317818pfb.5.2017.09.16.04.01.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D2EGzd2w;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v5so2624957pgn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=OfObpy/PApD/c2qdAtTxMxEctukg4gdbap7tatmUzAI=;
        b=D2EGzd2wL1JJWdj2ZLcmOWoRKdGvyS/BI19rVBLjj2rvmdYfV5DcTf3/NCTFMlaqqg
         Bdff57eyTe5LAGnvjsCAyaoJ5W/XSRgFyH1/xaTFB8ZgtjdvC9Jbls2kEkn6jy9bMwIx
         9uuXTd0WbcchKhSL3itS8Cl8gSSbig2tEIYoWNbEN0MRzEBYfkx8kAuDr/C5Dt35jO1/
         eu1jiOac9JkvzZjC/vMsiqh19CaeKZZ//We+8HulgquvNlmoQyAmfVNAyxWdvdRrssFb
         tq4Ig52FuDuwHxFXbVQvnSjI3e7FDgSvBp+2IQ7Zod5vleIq2fzsD38lHsHkQEtUKYsr
         P+mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=OfObpy/PApD/c2qdAtTxMxEctukg4gdbap7tatmUzAI=;
        b=nd3N5NqMqgqVhQ3RP+pFTKA/2NysJx5AfzMLJ0VnT1TlR71CUDW6ir3K44P+b1oKqp
         XaZk9PfH7/5b9N3JTJYBMwSICp7JGeNVdaGcEPqrlP1Z7Dc8th0wngOLqLqgYN5XmRPC
         C8iS0X6XBPF1hQ+84WynGJMWHVnwa39OIO9AMoREOjwWYpcofG1gFqpsGBZSWMSd+7D4
         Sy4kbgW+t1yh1EELxY8aQTNV2b6qramHYGiFeWjm7uLg6WV8MxWPGoT1d2a+vpgB/W+8
         uMLVztwTBGIFumBIZlbXBa7LCdE0uCT8MDXGxvTqKIbcSVe2Hp52fLRuwN+AL3PDqexB
         UpBw==
X-Gm-Message-State: AHPjjUiRY5uqIjujAtJQXsvCbocwG8TB6dwMFi1miulRsbsILCTESxBD
	mtYhUJmiZz80Kg==
X-Google-Smtp-Source: AOwi7QC2xFkj/SIBOKNmC4f1AQMbJIk8kF1zt4byrMfycwiVJAu9BJuPHJUyQRyFt6daDerYyb6Czw==
X-Received: by 10.98.245.74 with SMTP id n71mr2428641pfh.102.1505559695001;
        Sat, 16 Sep 2017 04:01:35 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id v24sm8519297pfi.132.2017.09.16.04.01.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:34 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 07/11] staging: rtl8192u: fix '{' following enum go on the same line
Date: Sat, 16 Sep 2017 16:30:50 +0530
Message-Id: <abce42613b53ef4740dbe28b948e4284567d3fee.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixes checkpatch.pl error:
ERROR: open brace '{' following enum go on the same line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index c88374b..6bea643 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1486,15 +1486,13 @@ typedef enum _Fsync_State {
 } Fsync_State;
 
 // Power save mode configured.
-typedef	enum _RT_PS_MODE
-{
+typedef	enum _RT_PS_MODE {
 	eActive,	// Active/Continuous access.
 	eMaxPs,		// Max power save mode.
 	eFastPs		// Fast power save mode.
 } RT_PS_MODE;
 
-typedef enum _IPS_CALLBACK_FUNCION
-{
+typedef enum _IPS_CALLBACK_FUNCION {
 	IPS_CALLBACK_NONE = 0,
 	IPS_CALLBACK_MGNT_LINK_REQUEST = 1,
 	IPS_CALLBACK_JOIN_REQUEST = 2,
@@ -1572,8 +1570,7 @@ typedef u32 RT_RF_CHANGE_SOURCE;
 #define RF_CHANGE_BY_IPS	BIT(28)
 #define RF_CHANGE_BY_INIT	0	// Do not change the RFOff reason. Defined by Bruce, 2008-01-17.
 
-typedef enum
-{
+typedef enum {
 	COUNTRY_CODE_FCC = 0,
 	COUNTRY_CODE_IC = 1,
 	COUNTRY_CODE_ETSI = 2,
-- 
2.7.4


