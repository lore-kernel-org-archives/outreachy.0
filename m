X-GM-THRID: 6673513874647416832
X-Received: by 2002:a5e:8a07:: with SMTP id d7mr3933293iok.7.1553798530519;
        Thu, 28 Mar 2019 11:42:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls1397285itm.2.canary-gmail; Thu,
 28 Mar 2019 11:42:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwK0F6gaXN4sNxMU9AQ8ZamvKdw0gAsti0wXZDU4gmDp0rIUIekFuoNEUAWgmTjFwtrEx4n
X-Received: by 2002:a24:2584:: with SMTP id g126mr453694itg.23.1553798529688;
        Thu, 28 Mar 2019 11:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553798529; cv=none;
        d=google.com; s=arc-20160816;
        b=srEtgK3njzPnmyCGOjpChFp1pUSGZu96DKKkCtabSa71zkhyRC0gmS4UOd1zmK6sPf
         16u01JrLiaf0B3Yyg8NhyCfu0F5Zw8S1rWLwX+gmk1ePL/Bp3oTff54oGG68WgbZ29qz
         1oC0xFRU8jjYBIZO/5ezvWDR0o3uyIjmBOS2/uli9qYZ3dfMYA0iAqHvqDlZULtYL1D8
         kStZIm6Jcp3B0pXrdEoNfXEkiQak+eNleDYv4d2drGRpH168Zsxce1mehn+gmLw1eDq0
         Z26oCb1O/1QN6W0hR4R9mpkPmHYgkj8kiOQjaBgjtF39t7+MGdzVp5pBnJUOo9okCaoO
         7FUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5eWdm/dfXKyZB2eHkQy5CIhjLPu2OCiCAIL+AGEymgU=;
        b=nisuprHNpXh9t19g5pk3KfzE9hJ7RTWBrKTeELRvG8pXivXGfl7Z47EUMrnhC+USTb
         J9n6ngFohUNqdu0UWr3daGtfUylU/EhSOgMGG5f4KTIY31h64MZKhp0rSZfIr7j8EaEo
         2QduYIPT8BUQ6VkAOKV6LGHvJmQlbku9uCcQp43ZSaXpG15DTMc2szLvnnv/6veboSOF
         OaqFCsjAFhlFBd7wLOL1/H7IAnj2m9dXcADVcxf+vhC8+eEUxMkzBzUQoE1zNIKg792F
         UzMA43DckHAc64hQK1XRu2U+V4/7dhij3ritsfeSte1ONVuARpqvZRIy39T9lNK8reoX
         P0lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tKrZJlwY;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 196si566558itw.0.2019.03.28.11.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tKrZJlwY;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id y6so5371267pll.13
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 11:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5eWdm/dfXKyZB2eHkQy5CIhjLPu2OCiCAIL+AGEymgU=;
        b=tKrZJlwYGVzO9N4FuygMiJ9lDuKgcwl4j+tk9SVPCVlJDN0WGyg8aSworOlRRkrOUg
         BMvCuPGglLXOP6izcv1ENglMxO6WWtntY6NDPh6a1gDfB2rdUc2U3UwPflNxFxpcwDO7
         +4QF6JdY82nwb1Fdpm3t34CvBZN45MlqmRbpgMgeNzpsRJg8zSA66cioxlGuHWhffWwU
         14L5lhIZzxyXkkrKEDWQGav8AXz4dUVe3Pcm7HHQ9LjglTrlfjZzy54EM4NEsMOwuht0
         quzCQpMPGiCbKGaTjaXksb03f1HQXpglIUGmU6TAURdLv3WYeIPO5iX6nU0vno2VHcbl
         Twfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5eWdm/dfXKyZB2eHkQy5CIhjLPu2OCiCAIL+AGEymgU=;
        b=llj5IlFcnbqlF65A8g81IgPLp2RRsPxEzAcaf8i2fURrwJ2BrZndCPLbmQfTmBuxlJ
         3GqaFrnQTSk+gxtP6ez7WWiZoV3T0e/szdvtm2YNXz/vPW9SCirlWJHY8xNwmo5NKO0/
         E7EPlgTg0ic7jAs4vwl6Sh4CoCg3EVbXK32IT0X7eTMZpT2ewkHk5LzbUt+6udT+I6rU
         BhksuF1luRzlGVcCCVbBx3CWFBot+ZaHcniljB4xD0pPE95Az1pwATSlbI7XEO5+VOBB
         9l07ZgIe3EjuTOM/oefPf0kopfVzG72dB/jHeylZLDxptP7tAWAJcbQvJK2U0dc+SdKE
         FQXA==
X-Gm-Message-State: APjAAAVfKV9NTci5Euq+mCc0376BnPLH1Gnx9OE0XCM109yKcD4JK5li
	ssdIBg5ELnkihqOujWPB7xDFmHh4ksM=
X-Received: by 2002:a17:902:7c94:: with SMTP id y20mr42709620pll.263.1553798528850;
        Thu, 28 Mar 2019 11:42:08 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id u15sm37389793pfm.163.2019.03.28.11.42.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:42:08 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8192u: ieee80211: Use !x in place of NULL comparison
Date: Fri, 29 Mar 2019 00:11:51 +0530
Message-Id: <20190328184151.4315-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

change NULL comparison to Boolean negation.Issue found using Coccinelle.
Semantic patch used to solve the problem is as follow:

@replace_rule@
expression e;
@@

- e == NULL
+ !e

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 6009fe0e1d4f..25d9237bc23f 100644
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
@@ -983,8 +983,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 		/* allow NULL decrypt to indicate an station specific override
 		 * for default encryption */
-		if (crypt && (crypt->ops == NULL ||
-			      crypt->ops->decrypt_mpdu == NULL))
+		if (crypt && (!crypt->ops ||
+			      !crypt->ops->decrypt_mpdu))
 			crypt = NULL;
 
 		if (!crypt && (fc & IEEE80211_FCTL_WEP)) {
@@ -1285,7 +1285,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 	}
 
 //added by amy for reorder
-	if (!ieee->pHTInfo->bCurRxReorderEnable || pTS == NULL){
+	if (!ieee->pHTInfo->bCurRxReorderEnable || !pTS){
 //added by amy for reorder
 		for(i = 0; i<rxb->nr_subframes; i++) {
 			struct sk_buff *sub_skb = rxb->subframes[i];
@@ -1421,9 +1421,9 @@ static int ieee80211_read_qos_info_element(struct
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


