X-GM-THRID: 6673513874647416832
X-Received: by 2002:ac8:278e:: with SMTP id w14mr2897251qtw.6.1553800201734;
        Thu, 28 Mar 2019 12:10:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4d02:: with SMTP id a2ls2869262qkb.6.gmail; Thu, 28 Mar
 2019 12:10:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwmwLmRCcXZ93igfgVaGqtbNyzJlIbm1auenADAWw56Q251Mxz1tnujvNA5gguOlj2hVuGH
X-Received: by 2002:ae9:ebd4:: with SMTP id b203mr2971664qkg.17.1553800200803;
        Thu, 28 Mar 2019 12:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553800200; cv=none;
        d=google.com; s=arc-20160816;
        b=MQyVUthSbxqZ56lO23o2saAybptG9oLZ9epr7+ot0b19fR8DICRKbY34iVHRLQQvPh
         Kx6RIM5WO3Yz1WVl1LQ/w7RScMOSCewaPSwPsoHhdeo0dv9ua1HNnmOFjqtiXq1aKBGe
         MkeZKBgHsii4v4pNCrIhcIXLB+NFRGnfXzxrOCUGR7XUYhpnnhqK86KLV/1ofCwLklXG
         fv0BBAxlS9DG/BeXP7h130/p5rkWBdzx+k+U38UF8qR4SpEVGzrrPXLvaIKE+l1nluzC
         dL8t0qC2gUgEmycM0AvdUUYScwkjO8iG9pWXS/MMLcc+J+yqxisLyvtxzHMaA9Us9ZZq
         b6/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=VYg9Sg+kySSlR+5SoY0wd6wZ9gvxNIFidEW8yEZNmcQ=;
        b=DalkgoB3Xb+7QenKKB54fZZJCmPjnUgtjpjcPeBVKRMZd4d6RO0Z2rJSVHkJblnnAd
         pRuAiK8nqPZ/QZzYkKYuFAUtuBC7V8VOzGDgBP9EFS8OwnRmeHBKbomDV+pZTAGZdYjD
         TVutSkIv37D5i2v4kWhv9biECo2DtO9QoMINhco5UbzfVLY+JWtI10Da47bWRjeOaZnN
         wfCmHNy56ZplpHuIp4lloQSEJRwRTu/JFIknhhQxBIN+QeL85Gx0ex2Sb4E0gM/dlgBl
         SD5SzcYqJJ/u9nEVNsqkf4+Yuc3XgrKv/mT5IRCwrH3QSK2grR0LP8V50btmsBJS1Q+2
         Q3jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EABwo3I8;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id h186si2014915qkc.1.2019.03.28.12.10.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 12:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EABwo3I8;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id g12so5400596pll.11
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 12:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VYg9Sg+kySSlR+5SoY0wd6wZ9gvxNIFidEW8yEZNmcQ=;
        b=EABwo3I8RxPLn9h8dzqpwv4Mwsn0EnO792XgcTL5dAtGGlT7HzKuBwfLkL1xBT5ah/
         pKOqmi161ykaWNjHOcuWKcSPIwvOZCQXcAqE62N4VA9zoVTFLHR1x4o9UMGTterHS7kh
         tS8hxIIedrBqzjZRUL6FS29kLskdxerENg8eQvq9rkcBvJv4izZW+pwaXQ8POdfLMgDG
         JLfN8+BHUWHi5QXlr9e/ezWxwsQ+WubRtEZ9B3oPydVu1tHHbMIqf0qnxPpmWvFGCGLR
         V6Xtq3KAY+zKE3NLH49962imq+yjVet469kSc7ckU8j97aVY56LoeTMlroKEVsa6R6Zu
         P/HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VYg9Sg+kySSlR+5SoY0wd6wZ9gvxNIFidEW8yEZNmcQ=;
        b=azq/1NgH3ag2qAqadNjPGeLYE/n/XnH3Kf3dslcmuOwqP8P6v1EBPxCFladFBR+OoF
         2MdyOfRc76mwcuab6ohZzrOVz1O021nxgE6xbT+s0QAHLkMJ6L01MO7zP4ApJVy8nbDp
         jncSZRWFTgRB7x2ucsM0wxdsoB6Hv78bVel1+cYsuLpFPmJivVcJKhqqnBVvBHm0SXEQ
         tVxI2jnwuDJYIDkvhsilF7IVybovHxguEBHwzTLYB11Np5jYDjL7r7ow1PxC2qwTvjYO
         LGe9zlKUyC9/IKo90iRH7YqPFS7CLUPB8GzZju+JVWkiZMdLATuDOOTNNzJb9Z4wp/7Y
         xWsg==
X-Gm-Message-State: APjAAAUPVcSxjmnbj1QLEZfsmD5EDn2h9UUrS7YB/oPS2gdGv6M4QfMZ
	hfZzIWfixhYmaevoOSz5uIIPF72KqpU=
X-Received: by 2002:a17:902:8202:: with SMTP id x2mr37467228pln.318.1553800200058;
        Thu, 28 Mar 2019 12:10:00 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id v6sm16794418pgv.92.2019.03.28.12.09.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 12:09:59 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v2] staging: rtl8192u: ieee80211: Use !x in place of NULL comparison
Date: Fri, 29 Mar 2019 00:39:43 +0530
Message-Id: <20190328190943.5193-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Change NULL comparison to Boolean negation.Issue found using Coccinelle

Semantic patch used to solve the problem is as follows:

@replace_rule@
expression e;
@@

- e == NULL
+ !e

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v2: 
 -combined two lines into one
 -added space before {

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 6009fe0e1d4f..a657f9b23a9d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -341,7 +341,7 @@ ieee80211_rx_frame_decrypt(struct ieee80211_device *ieee, struct sk_buff *skb,
 	struct rtl_80211_hdr_4addr *hdr;
 	int res, hdrlen;
 
-	if (crypt == NULL || crypt->ops->decrypt_mpdu == NULL)
+	if (!crypt || !crypt->ops->decrypt_mpdu)
 		return 0;
 	if (ieee->hwsec_active)
 	{
@@ -388,7 +388,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
 	struct rtl_80211_hdr_4addr *hdr;
 	int res, hdrlen;
 
-	if (crypt == NULL || crypt->ops->decrypt_msdu == NULL)
+	if (!crypt || !crypt->ops->decrypt_msdu)
 		return 0;
 	if (ieee->hwsec_active)
 	{
@@ -983,8 +983,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 		/* allow NULL decrypt to indicate an station specific override
 		 * for default encryption */
-		if (crypt && (crypt->ops == NULL ||
-			      crypt->ops->decrypt_mpdu == NULL))
+		if (crypt && (!crypt->ops || !crypt->ops->decrypt_mpdu))
 			crypt = NULL;
 
 		if (!crypt && (fc & IEEE80211_FCTL_WEP)) {
@@ -1285,7 +1284,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	}
 
 //added by amy for reorder
-	if (!ieee->pHTInfo->bCurRxReorderEnable || pTS == NULL){
+	if (!ieee->pHTInfo->bCurRxReorderEnable || !pTS) {
 //added by amy for reorder
 		for(i = 0; i<rxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = rxb->subframes[i];
@@ -1421,9 +1420,9 @@ static int ieee80211_read_qos_info_element(struct
 	int ret = 0;
 	u16 size = sizeof(struct ieee80211_qos_information_element) - 2;
 
-	if (element_info == NULL)
+	if (!element_info)
 		return -1;
-	if (info_element == NULL)
+	if (!info_element)
 		return -1;
 
 	if ((info_element->id == QOS_ELEMENT_ID) && (info_element->len == size)) {
-- 
2.17.1


