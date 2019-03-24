X-GM-THRID: 6671742657236041728
X-Received: by 2002:a17:902:7c0f:: with SMTP id x15mr17004409pll.98.1553386137176;
        Sat, 23 Mar 2019 17:08:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9f86:: with SMTP id g6ls1792212plq.3.gmail; Sat, 23
 Mar 2019 17:08:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxhlpuMyI7b92gii2CxPWx45hNkQUqOn/w6oUU+lOg2bma89YpeXptkcIa/WOqm4tPfFYU6
X-Received: by 2002:a17:902:274a:: with SMTP id j10mr17232233plg.277.1553386136506;
        Sat, 23 Mar 2019 17:08:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553386136; cv=none;
        d=google.com; s=arc-20160816;
        b=EFf9A/4L0//PokeYAqGNQex3DpOf0oI538lxgcBvjPqaonLtGS+azT6JMSepv7kzG3
         f4XI9s46V1YNYZv7CiHnfpUvpo2A9ajyogM7sOjnjKMZNgpIP5pyBTahqCZXlBNuqd5F
         EVeKT2LBuC4jPEmG9CLWHp9mRDjmmW+1EHZa8Qi5wVKFDddDEgF2pFhlHYZcCCTyKBze
         I+StuDeN2lL7Oe0n6kGWk5YBSDkL8YLWdF4amtD0EiccuGvmWB7XAg32K+MkpiA259xS
         3DEIFk8SxrQfbmd7z+mu1OoS6OwUZ06nxv1to+CqAv3UqImhymvgwgeg0xesjqYpg2P4
         VqvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=bEPDhwh4n1Eyf2AL/aKJjM8O1yWL78P0yUwTTr/uJgo=;
        b=vo6NFwfFNY9c1cY82d06c8cECFoQLb+jrm0UWMYKL5HBOq7MZETdjpimLdhfti+QK4
         6pOhmJqUj+71ytaGOrisRJDxTXNTD8ROO9+EHeQRdxmK9ItYDpBy2WdrOtgZNuv4Q2yz
         SiZNc/h3ib5Ab4fuL9Aeo0HolQRty9eP7vFXjgMGLHGEiCsVfoOiDIkVgfpx1qmk+oia
         wxWjC883Ng4yx924A3iroHw72xBru22CctywoJmbZUVJzCZo1XsZAqkrYpGyj8WNHGIg
         BiSPoK3+HNdb7DeAnA+v3glBPPSsqPQ2L1ExeDQYTIqlXRuNTL/YOR+YoLzE1wtcXilJ
         OdPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uVHQmANc;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t63si562056pfb.5.2019.03.23.17.08.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 17:08:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uVHQmANc;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i2so3929417pgj.11
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 17:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bEPDhwh4n1Eyf2AL/aKJjM8O1yWL78P0yUwTTr/uJgo=;
        b=uVHQmANcvZjWJfnQx/lvSibi/12Zi/P0EG7ByTmDaWLuFR4hqaLqJbDlAsN0et/kKF
         rCxymS2TVA/OGG5dgWfbUg1fPcS4rGnANY+eNWGXdv7KH4JlHQgKK8DRg/q+SXjfdbVT
         +FBRnSwL3Rx/cTKD2/OQBSBWGdyJXgsT8w/5opomE786mhQPfmY8MOtc/JOoQL7ltapG
         /Zq/yBf8XdUnTlAAptSQsFXtLbdOjyzVvi7NtKVHT/XTEjGAFTC64vXkPoHrPZl5KUqq
         kxmmuLQh+ZEubanGuxYCecv4Gb/Q7ZnttiwzfUzcsBTMKvcT9wKhbQe6b+UkO83XFlP3
         kqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bEPDhwh4n1Eyf2AL/aKJjM8O1yWL78P0yUwTTr/uJgo=;
        b=gKd1PhaVyfijix7dS4JmhoiAz7zTpvSUMJ5143VhIiTZAf+soWY5d6t0iZthJC2vWO
         /S/mdw1c1vaV5DK3j3qzgiF3kqjZA9AHA1llTKVuSc3ZsE3L/T3iMC8DaCzulGpMr3mo
         ZaiHx/sAvLLgYbrXUD5fPAZ8thVDIf+xsohTvEmVfy/ZlMw4n1okMnAjzE6WbPaiNHlN
         1eiIylFssG+XArHBfzKwKPrD+OZhKrAOHe1DQRLmw/tZf607m/2PokGuf0FUTFUJCo4T
         pSS2n4oekhdqD2sC0SRs+c5xm4qRS+820n9Zl6qeTp6SCwbj3KOsd/Be2ezisbQu7BER
         oPpQ==
X-Gm-Message-State: APjAAAVjgMfJx7o455xrOqun3akKjQc7I0RUOK1etrdt9dGHjDCtAPR9
	0dTOV2gQmy6MUxMEGd4jrB2c+UMmwsg=
X-Received: by 2002:a65:4806:: with SMTP id h6mr16203344pgs.408.1553386136094;
        Sat, 23 Mar 2019 17:08:56 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id w123sm17068897pfw.72.2019.03.23.17.08.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 17:08:55 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8192u: ieee80211: Remove unnecessary braces.
Date: Sun, 24 Mar 2019 05:38:32 +0530
Message-Id: <20190324000832.12027-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove braces around single statement block to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 6009fe0e1d4f..f0e6b72eb054 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -853,14 +853,10 @@ static u8 parse_subframe(struct sk_buff *skb,
 
 			if (skb->len != 0) {
 				nPadding_Length = 4 - ((nSubframe_Length + ETHERNET_HEADER_SIZE) % 4);
-				if (nPadding_Length == 4) {
+				if (nPadding_Length == 4) 
 					nPadding_Length = 0;
-				}
-
-				if (skb->len < nPadding_Length) {
+				if (skb->len < nPadding_Length) 
 					return 0;
-				}
-
 				skb_pull(skb, nPadding_Length);
 			}
 		}
@@ -1313,9 +1309,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 				stats->rx_packets++;
 				stats->rx_bytes += sub_skb->len;
-				if (is_multicast_ether_addr(dst)) {
+				if (is_multicast_ether_addr(dst)) 
 					stats->multicast++;
-				}
 
 				/* Indicat the packets to upper layer */
 				sub_skb->protocol = eth_type_trans(sub_skb, dev);
-- 
2.17.1


