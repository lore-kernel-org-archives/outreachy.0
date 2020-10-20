X-GM-THRID: 6885724042283712512
X-Received: by 2002:a05:620a:12a6:: with SMTP id x6mr1403198qki.189.1603207560466;
        Tue, 20 Oct 2020 08:26:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:4721:: with SMTP id l1ls637763qvz.2.gmail; Tue, 20 Oct
 2020 08:25:59 -0700 (PDT)
X-Received: by 2002:ad4:59cf:: with SMTP id el15mr4074491qvb.17.1603207559401;
        Tue, 20 Oct 2020 08:25:59 -0700 (PDT)
Received: by 2002:a37:9bd8:0:b029:114:f417:e038 with SMTP id d207-20020a379bd80000b0290114f417e038msqke;
        Tue, 20 Oct 2020 08:12:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxmFaG6WnJFDtnkQUnDJV/Hobn16UBROOlTcjGRXsh5kTRM7disDIGbVATe4B7eGEUB0yNu
X-Received: by 2002:a7b:c418:: with SMTP id k24mr3646045wmi.118.1603206755257;
        Tue, 20 Oct 2020 08:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603206755; cv=none;
        d=google.com; s=arc-20160816;
        b=1BKZoxkojMLMoUtyMY2yhhgCfRTnhABnRmPLfTcSX4Q6Qs0wm3fu+27qx+3MDlIlhA
         scZ6N/FO5Ucr1UIrNkU8LpbhE6+TaDavea2y4ASP2K/JFYQ7LLF7RDkxIT/sfwyftCMu
         JZIDHMDNKS44sPeUZGotHJqk6+k8H7r5hdfTh/7KW3tlQy8yofwU9Hv97vz8sxRKujPh
         kLzeiigoNAgXsgnPt7ktXddyTfr6BE3HWP29m0VCtby8LMz6TN4zKZjqddE3DKLQGUew
         U1/OXe9nrvoZy5u/ivUTj6sJl+U/Y01KG705sVI1/MlYVEabSl4j0NRoXrqAFerRJCyY
         C/1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=EK3gcsHybVhWPEw7Y/gst/5psrELnXvW2wuD9XeQ/Ek=;
        b=xdbZPqnDxHlEKZDH/VyQKGpqKCLr3BhpsEiyg0EE3BoGgBGb2NgYt3KZw24CrCZMiL
         jAhjyc7aC80gCCAidg9BGnGizNfMxJKF6tRlq6LARu8seXfJ/32RNBtO9OZzDWhZMamp
         wRNTjkLBl6hJLLjozTMK3Cvu8VV1JGLkfTDOJZvtlkNgvZGiaOym3Va96uopvJW+sjhv
         ouy7Tt1c7jPQ9+U72vCiI5ccdfyy0odLCZ239vXZZnXw3UTBKxhayzhBUUq+l7znOqOV
         rHJn1lqIy3f6ZJu6PFK+ewIgSR8Lwor2dNFJQBIMq1W7WBCSO5Od2K5wcXUUgijnhKua
         8nzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RU4GYeA1;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id j5si56960wro.2.2020.10.20.08.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 08:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RU4GYeA1;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id i2so2416213ljg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 08:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EK3gcsHybVhWPEw7Y/gst/5psrELnXvW2wuD9XeQ/Ek=;
        b=RU4GYeA19RJeCXJb5rcbmbVwScuNz4WWR3dTxNC6LiEuIx8PKNNz2LsW/pVcELfX0k
         VP6gmY3gscsKdj527RPWGzU45TBNbLUqcWvM3wdLdIyh/XwqZGNDmm0puq0He2+qrph7
         NsPnjVL0N6ItTnc5mTvdSG2N6aTkqOXzB7xeiKmCe80Xbb/oz3xzE+9+CyJ/+NGsLQ1V
         qUevZV4WKyYWRAey5SjF0Ceyou5ZeBZ3W1s4biNj261pWI9hEZGRWtKQSBDl9nQ+SfUm
         aiIRGCixoyL5epRhLAdhkZ21tsUhNf9UYqRDdV0n5LJrslzR+mx4LOD71b8vnjB4Ibcl
         gdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EK3gcsHybVhWPEw7Y/gst/5psrELnXvW2wuD9XeQ/Ek=;
        b=GO10xT6ngazs+ut7HYT98sP/kqb5P6eSPoLOIa210GVOIG+0s/OC2M61npjME3Rnz0
         1UP26pr3JpaP5+1xm06EJ2yjDaj/LaZf7QE6HdDKpRwUmZsqgJYhGyu22qqy1IoGBtRM
         LyIunPhMjeaXA/B2I9FudcczjPko7CX/PyfEXunLdWiiNzMKxC5eFoY+uVMr/SY1LMoR
         riXX5dieEUfDURSZHRCKVV7uN9kV7nVEIsr/Ie8uQfqqWBbtw43xmMCr+qad//ZDpSVz
         5MennJcmymf34yrL6HzVerMap3jxXDym+FuQvRuTqPnQL8mB1usuw0g4QpZOBNmUJAeh
         gsRA==
X-Gm-Message-State: AOAM531K106EMI/SHILWLTnvThVNGe87PDIajjqOR/lWEAyTt42+kOAu
	XviHIP2t+Hzhc1VufdrS9x8=
X-Received: by 2002:a2e:94e:: with SMTP id 75mr1281460ljj.95.1603206754952;
        Tue, 20 Oct 2020 08:12:34 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id 73sm345864lff.125.2020.10.20.08.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 08:12:34 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/rtl8192u/ieee80211: fix line length exceeds 100 columns
Date: Tue, 20 Oct 2020 08:11:11 -0700
Message-Id: <20201020151111.35848-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/dot11d.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.h b/drivers/staging/rtl8192u/ieee80211/dot11d.h
index 8b485fa18089..e1d794d8ac69 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.h
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.h
@@ -17,14 +17,16 @@ enum dot11d_state {
 };
 
 struct rt_dot11d_info {
-	u16 country_ie_len; /* > 0 if country_ie_buf[] contains valid country information element. */
+	/* > 0 if country_ie_buf[] contains valid country information element. */
+	u16 country_ie_len;
 
 	/*  country_ie_src_addr u16 aligned for comparison and copy */
 	u8  country_ie_src_addr[ETH_ALEN]; /* Source AP of the country IE. */
 	u8  country_ie_buf[MAX_IE_LEN];
 	u8  country_ie_watchdog;
 
-	u8  channel_map[MAX_CHANNEL_NUMBER + 1];  /* !Value 0: Invalid, 1: Valid (active scan), 2: Valid (passive scan) */
+	/* !Value 0: Invalid, 1: Valid (active scan), 2: Valid (passive scan) */
+	u8  channel_map[MAX_CHANNEL_NUMBER + 1];
 	u8  max_tx_pwr_dbm_list[MAX_CHANNEL_NUMBER + 1];
 
 	enum dot11d_state state;
@@ -36,8 +38,10 @@ struct rt_dot11d_info {
 #define IS_DOT11D_ENABLE(ieee_dev) (GET_DOT11D_INFO(ieee_dev)->dot11d_enabled)
 #define IS_COUNTRY_IE_VALID(ieee_dev) (GET_DOT11D_INFO(ieee_dev)->country_ie_len > 0)
 
-#define IS_EQUAL_CIE_SRC(ieee_dev, addr) ether_addr_equal(GET_DOT11D_INFO(ieee_dev)->country_ie_src_addr, addr)
-#define UPDATE_CIE_SRC(ieee_dev, addr) ether_addr_copy(GET_DOT11D_INFO(ieee_dev)->country_ie_src_addr, addr)
+#define IS_EQUAL_CIE_SRC(ieee_dev, addr) \
+	ether_addr_equal(GET_DOT11D_INFO(ieee_dev)->country_ie_src_addr, addr)
+#define UPDATE_CIE_SRC(ieee_dev, addr) \
+	ether_addr_copy(GET_DOT11D_INFO(ieee_dev)->country_ie_src_addr, addr)
 
 #define GET_CIE_WATCHDOG(ieee_dev) (GET_DOT11D_INFO(ieee_dev)->country_ie_watchdog)
 #define RESET_CIE_WATCHDOG(ieee_dev) (GET_CIE_WATCHDOG(ieee_dev) = 0)
-- 
2.25.1


