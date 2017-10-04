X-GM-THRID: 6472784237919469568
X-Received: by 10.99.121.141 with SMTP id u135mr2099506pgc.156.1507123170679;
        Wed, 04 Oct 2017 06:19:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.76.133 with SMTP id m5ls4375616pgt.21.gmail; Wed, 04 Oct
 2017 06:19:29 -0700 (PDT)
X-Received: by 10.99.116.75 with SMTP id e11mr141461pgn.49.1507123169635;
        Wed, 04 Oct 2017 06:19:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507123169; cv=none;
        d=google.com; s=arc-20160816;
        b=AQsoDH4I3kbW4q5du+EnlLubq1ckDq6N37bms59DRQxdhQubTtS7O3+wERr/PvtLuc
         bJf20r9m3v200On1GTChB1pz5f81Ot51DtpdBDducbNIqCKYBSFfqk7fOdzCD0cNwG8a
         xQqbU+i8ResILdZwOX/f08Vg8YsqlNfgXpI9KpYexQLNZWza7PabV6ZF3sQG0iaNpMDI
         uZVRUr4tejBfPMqWpFeyltbEqmuHRLNGATl0g4B566TgT9Uqdekkkl2SQBLrOc1xAdlB
         FY57ejVNodWu0QJ37veZaruQP4Xf16kup5eesyum25KziGgiPRG344f6fqT9FgUeLbDu
         X+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Im/sT8sNii6UN5R4fhJRbGOD+ICFbGSigFWutT8nZjw=;
        b=i3AEmpfgjwC93sqamb4lTBK0q7CrWbjfTzcIcWTPwvedaIwFpPMYRBGl3ZeQO/Z7Fw
         GV8EXhdDK3BwVmyI9R/CzvoDDYFalxO/BsUzzKhVA6ko4d1Wdlp6TSMKH0BpGQgcmTGK
         kU1jCNIGVPn8YDHMhCqe9kvUx5jvGi62gxr4L1zy+V8O0aILwDKtILftc1F6FyVPEpzY
         L+JAyFT7W2zLPGj3qyR2BcohgHSEJJsOTM2eB3HSl9xzo1gMmjrXuubEES4LWGCqCqBj
         tHkSs51hIr7G9KjjlfelokXXpGkIq/ilLn62PNzzzloVC4owtoAOpZ+J2PsuMX1oi7+r
         f50Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lujfBJ/x;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 13si1794977pfk.26.2017.10.04.06.19.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 06:19:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lujfBJ/x;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i195so4855361pgd.3
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 06:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Im/sT8sNii6UN5R4fhJRbGOD+ICFbGSigFWutT8nZjw=;
        b=lujfBJ/xMhjt5SbU3qPvkEVL9zi3DwmUvwtjpqpN13+g9pmEE/HlwjxY1lUBQZOsk6
         Ma6r6+oYEgNf3CkuvQPGetIubNlCZzaPLD06OKROnWLCJQdH+a3EfVkEBpFT8sEQixTm
         s+IQ7Xl1SfFK/aszaJ2gkJoBiYToAkhiWV3vxQK1iMbJOlBjyJifoVMMYwatSm8Tu+BH
         3LD6nFrN+Y5ss3lJqxeA4NYP1dlPvzKtnoAsOOIE4Dxb1FREZ4gpWAIQiyNwqYgM6Uzw
         tPCc8ydwBkGJlL2XljbL9y8jTGmeTXRytzpXx0eiMEpwsd8/Ni3xSv3+XudqkYmaVwET
         UivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Im/sT8sNii6UN5R4fhJRbGOD+ICFbGSigFWutT8nZjw=;
        b=Da2SBA3kTmEPD4eFPTORWCOg0agQO/YhRzYR2ls4UgcdqU7myZvMZrIv2AE+NjJREX
         XgmxKQ0+U3AHIdQRTYcuh4XM+sxKAerxS3c5CboJ+E+8+m2HAbtcQBnY0eb8PdScraM7
         CaatRe8iKsvU5Xk1FU587m9QehFvz6apDzPrM7oShUp5Punvohhbj3MtwponynfSuUnm
         PlavKjrudk+U+0/geeTunSqFrir/PJn0tJNrSscznr1XqWccvsTOn8ujLOkfZkPValfJ
         gtUePtkjZAoAfUa6IX6qwA4+S0p/ro5wgsnMkfK7eeeF5z8ojXH8VcffpWVDCo7u2l/u
         OYHQ==
X-Gm-Message-State: AHPjjUjk3wpY1K8E8CCe/85sk51LH+eeJtbA0stBvZ2RBcu8YsLYqu7M
	VRb3TqeqPXPjP3N1kY4waLY=
X-Google-Smtp-Source: AOwi7QDh6qTV+YhFmXa+t7+gIL+bXpBwBVNrka3yqbhhiKnI42sSKNTcrBpk5RufOBFPzXZEvNtHtA==
X-Received: by 10.159.216.146 with SMTP id s18mr19819096plp.451.1507123169412;
        Wed, 04 Oct 2017 06:19:29 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([182.70.213.86])
        by smtp.gmail.com with ESMTPSA id g68sm24656870pfb.120.2017.10.04.06.19.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Oct 2017 06:19:28 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Use list_for_each_entry_safe
Date: Wed,  4 Oct 2017 18:49:21 +0530
Message-Id: <1507123161-5686-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use list_for_each_entry_safe to make the code more compact. 
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
expression e;
identifier m, list_del_init, f;
type T1;
T1* pos;
iterator name list_for_each_entry_safe;
@@

f(...){

+T1* tmp;
<+...
-while(...)
+list_for_each_entry_safe(pos,tmp,l,m)
{
...
-pos = container_of(l,T1,m);
...
-l=e;
 <+...
  list_del_init(&pos->m)
 ...+>
}
...+>
}

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 52f31c7..4e1d06c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -5446,6 +5446,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 {
+	struct xmit_frame *tmp;
 	if (send_beacon(padapter) == _FAIL) {
 		DBG_88E("issue_beacon, fail!\n");
 		return H2C_PARAMETERS_ERROR;
@@ -5469,11 +5470,8 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 			xmitframe_phead = get_list_head(&psta_bmc->sleep_q);
 			xmitframe_plist = xmitframe_phead->next;
 
-			while (xmitframe_phead != xmitframe_plist) {
-				pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
-
-				xmitframe_plist = xmitframe_plist->next;
-
+			list_for_each_entry_safe(pxmitframe, tmp,
+						 xmitframe_plist, list) {
 				list_del_init(&pxmitframe->list);
 
 				psta_bmc->sleepq_len--;
-- 
2.7.4


