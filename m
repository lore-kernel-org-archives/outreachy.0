X-GM-THRID: 6466329510613614592
X-Received: by 10.202.83.12 with SMTP id h12mr15971034oib.108.1505559700538;
        Sat, 16 Sep 2017 04:01:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.70.16 with SMTP id t16ls4258433ioa.27.gmail; Sat, 16 Sep
 2017 04:01:40 -0700 (PDT)
X-Received: by 10.176.83.34 with SMTP id x31mr18713406uax.51.1505559700091;
        Sat, 16 Sep 2017 04:01:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559700; cv=none;
        d=google.com; s=arc-20160816;
        b=lItpmKrLonfffd2aRMUJ8Gc0cuVUhDwq8//ih7HO/nEEw0Fg7bZaZfmvgS4kA2cFRF
         tUWtiK8YJH2dJqbAP7QNONLpi5XOdzfUWmHZLRgcte3L+u2BvUfygXBpV6JeTGgnGvW2
         yx2FnbnM7ETAOubSM5Tkk8hl7vF06NfEsr4odcSISVendLpTyQYvXiqY2cFbP2cvHYaP
         KRPWgbInmu0Xz46kYVIKteHPwWuPoU0PDjFkRv8zgnkdkomMGDjzqEbmLoy6YdfzGN/f
         QhbHeC4Zp1OJFWfUGfN6u7CrqaJj6pb0UykIKRp6F2qWblUMMK0s3DAWTrEHJVn64dcB
         XE3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=k8Mr2mudbazc3ydgZKvLpwiGq4SYr48//ZkiWFMPiRo=;
        b=AiVSqCmewC4R/tYoIILSbWzeInXlwOJBkVpuQmQpYEvZzPd2+pLnmacbYsmAj2ykau
         MXJWuXGke3CRGzK58MkXQCf0mbqzwmf7BXNeutb3TYe2vpMzmeCiBDSta+h8yWHQmKZr
         /OFBnoi9CQssrU3LZ7YxPa9VWorcCqsAQR9+X0pCCOy+1W6m0QOPgPcviXTQSsP5rX9X
         ezAkvhflxCtHwPJ8t3fty/E1aUCOHyKlCQ6BJ66WdSDkUDV9dzfqzBCrbXHL7ByDdWC/
         fqSScWNOhEqmHCG7cqV28TC/0/cIGsTeNGqa2FRHDmXzrAXvBIToZeK4JQpqagD4wtq/
         1vSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vnmp0FAy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id k76si317934pfb.5.2017.09.16.04.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vnmp0FAy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id i130so2632422pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=k8Mr2mudbazc3ydgZKvLpwiGq4SYr48//ZkiWFMPiRo=;
        b=Vnmp0FAyrkyQXMNHFalg6+b5xxSeLwkTYdY2/sVB5JlHtalB4XpRdyktnB4ev0fDcz
         qf4QBIc4T0q6kNV1UqAwL1KFf8hS520xbOJuairyFx252Af+ha/T23D9R/ldFYdsI33G
         MmL++W4IJDOPZi49FG5pEnuEbSCN/ee1e3FeWCKNOpGEQSnh2wK63mPeCuto1yh/daV1
         op61GlPhS7rVTSaKTackBx6ZENN97myvtgU8/nfaBs21AiLzdxxMyZU0zvFhNlqGYqI1
         07NG5C+erqjE3IeZLQgTRPkVPm351x24OPkMj5VPbLfb6Ns1vM8MXtu7NByQFYn4/nlp
         AezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=k8Mr2mudbazc3ydgZKvLpwiGq4SYr48//ZkiWFMPiRo=;
        b=O2MHpEGNE7q799smlewRJSMvjspCk+lGjAC1riRxN6O2UacyfYmZNVQ5VxhT5MK5b4
         pfnUsWL/N1hqTNHy/Ictflrbj8L841IdZQsl9JrjJH04aQzNaFRH2v38yWpyusagm6zb
         U4UcK/ea+hz3PWCo5Qf97YFvugoj6zAguMZxQ6njuCcdS3cpOSOk09Can7VgEipRfvsA
         liPrrV4hYuA/rlIKuZimo/38QDjy2iqvE7LCD32roOqxYP4fQvUnasZq96nYkr6Wp+Vz
         ++HgXme7JH/xQCv5tJm+QE/jFyija+3Z6YVGa/+iMbUUx5A5cYw9Ca67sZnwBYV61+Cs
         9r3A==
X-Gm-Message-State: AHPjjUhEsLh4H57L6LOV01Uh/Tc46Bw96GfkghgocxgytRc2XSa8Iz7B
	5qIBUGPdPPKRzQ==
X-Google-Smtp-Source: ADKCNb5iDUaR9YDXUsEyXJEQA5UfxiTQsmaDR4fHpLcgm3J0YYZJysUUoRCzAbD9+zk/wLDc+G4YAQ==
X-Received: by 10.99.116.19 with SMTP id p19mr26903103pgc.303.1505559699796;
        Sat, 16 Sep 2017 04:01:39 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id b1sm5844206pgq.56.2017.09.16.04.01.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:39 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 08/11] staging: rtl8192u: remove space function pointer arguments
Date: Sat, 16 Sep 2017 16:30:51 +0530
Message-Id: <2c23c45613e05fc443b075deaf111131a75e8517.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixes checkpatch.pl warning:
WARNING: Unnecessary space before function pointer arguments

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 6bea643..7cdcb75 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1914,11 +1914,11 @@ struct ieee80211_device {
 			       struct net_device *dev);
 
 	int (*reset_port)(struct net_device *dev);
-	int (*is_queue_full) (struct net_device *dev, int pri);
+	int (*is_queue_full)(struct net_device *dev, int pri);
 
-	int (*handle_management) (struct net_device *dev,
+	int (*handle_management)(struct net_device *dev,
 				  struct ieee80211_network *network, u16 type);
-	int (*is_qos_active) (struct net_device *dev, struct sk_buff *skb);
+	int (*is_qos_active)(struct net_device *dev, struct sk_buff *skb);
 
 	/* Softmac-generated frames (management) are TXed via this
 	 * callback if the flag IEEE_SOFTMAC_SINGLE_QUEUE is
@@ -1986,16 +1986,16 @@ struct ieee80211_device {
 	 * stop_send_bacons is NOT guaranteed to be called only
 	 * after start_send_beacons.
 	 */
-	void (*start_send_beacons) (struct net_device *dev,u16 tx_rate);
-	void (*stop_send_beacons) (struct net_device *dev);
+	void (*start_send_beacons)(struct net_device *dev,u16 tx_rate);
+	void (*stop_send_beacons)(struct net_device *dev);
 
 	/* power save mode related */
-	void (*sta_wake_up) (struct net_device *dev);
-	void (*ps_request_tx_ack) (struct net_device *dev);
-	void (*enter_sleep_state) (struct net_device *dev, u32 th, u32 tl);
-	short (*ps_is_queue_empty) (struct net_device *dev);
-	int (*handle_beacon) (struct net_device *dev, struct ieee80211_beacon *beacon, struct ieee80211_network *network);
-	int (*handle_assoc_response) (struct net_device *dev, struct ieee80211_assoc_response_frame *resp, struct ieee80211_network *network);
+	void (*sta_wake_up)(struct net_device *dev);
+	void (*ps_request_tx_ack)(struct net_device *dev);
+	void (*enter_sleep_state)(struct net_device *dev, u32 th, u32 tl);
+	short (*ps_is_queue_empty)(struct net_device *dev);
+	int (*handle_beacon)(struct net_device *dev, struct ieee80211_beacon *beacon, struct ieee80211_network *network);
+	int (*handle_assoc_response)(struct net_device *dev, struct ieee80211_assoc_response_frame *resp, struct ieee80211_network *network);
 
 
 	/* check whether Tx hw resource available */
-- 
2.7.4


