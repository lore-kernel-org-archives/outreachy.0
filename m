X-GM-THRID: 6471467521247543296
X-Received: by 10.99.179.9 with SMTP id i9mr548037pgf.16.1506755991738;
        Sat, 30 Sep 2017 00:19:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.3.2 with SMTP id 2ls2534226pfd.9.gmail; Sat, 30 Sep 2017
 00:19:51 -0700 (PDT)
X-Received: by 10.98.86.216 with SMTP id h85mr804005pfj.5.1506755991123;
        Sat, 30 Sep 2017 00:19:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506755991; cv=none;
        d=google.com; s=arc-20160816;
        b=BvqFSQq87j5ajSAAErPMcmE07xpBhVSSaPWgquw6ZETPV8A9IbKVj1Jt9BUcZzpL7M
         Qk4czgC3fXSCwcNzvgwwaPfDJxMuN/HD5KuFV5rWc0dtUiuVDk3b0OxNRgWMt/OMkLV9
         u8NEvUpW8CqGSQYCH2/BcWHjWwJ842VqJnSwwrwZDtjXwI0Oo607uCD6f5HseLeIqlxJ
         vcqFGbocPwq2WzB4eKdzVusYHYOLN1YUKTjd9G0FFGJfuavCdWjW5mohzDWVKV4VwpyA
         VuQSP3cteHWiagFWqFGgzhQT/ragWfU0jLvVy4cifLwtZBDK2m4UqrVKnxoBQzjd5ji2
         ABPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=tQFrs/9VqX4kO4n0FOX14IYBLZxemy1b91cgh/AY4/U=;
        b=JzI/OOiHU70HMdIz1cvKQMvBAp5Z/Euai1se0hNCy/wJZJRHEr3pux3Sl8dqHZEJcw
         IfHoq9OzpYmiixz1TuIgwwkh/EwIFq0QosYlgq9PPyP9kFVDsUz3fXEY2HomnVJycf8H
         cLsS2xtBxvm+w/iPkAMsMCS3qwaJkNgSweg9QGAA8M1SAwwy6CXppSrmR7lSggfdiU+M
         uklr1xV4abnDhrci+E4cRmH+djArVbvJPWm7ezMLKGmexFIWM74ADmJXX0+39VCACXS9
         RPouP+SU1n8UIJ6Va6Xcq+8unOpqwpujF/J2oYuyQ8Ou/LvUBbRthph8rfNfN0SV1m4R
         RVzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MtDNHIpn;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a17si664732pfk.15.2017.09.30.00.19.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 00:19:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MtDNHIpn;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e69so1124638pfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 00:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tQFrs/9VqX4kO4n0FOX14IYBLZxemy1b91cgh/AY4/U=;
        b=MtDNHIpn1YdrPlpUfNN/JyCMHYbkXNp4tj2O3orxaBQ6/em9T0wcZjidmDufN09w7C
         vMw8/MstjewHf4vYJp6HVpd5oABo/M4RpKzXfkY+kFJZnDe7RTqjZChtYacld8+mR1qW
         TFWC2iPOfvt9ZfpkE8xzVswgIad5XBjBJXPWrSZqhNfKblaxBtMqA4TOHGFndBIF7fuK
         y60imMu6wDUzDHlTkiyFEcJ+GTm7aTU+U5WD2d/ajpt0U6zwAmx7TmbTxHsZbYCi8h7W
         h5vDoIBUc8jqdoOBdiZgdxWWQ9ADa5mOa9mab4NzrPv8qO5PJiB23tn97IJOcFrTwKt2
         creA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tQFrs/9VqX4kO4n0FOX14IYBLZxemy1b91cgh/AY4/U=;
        b=AoG5QTL+rypCRhiKeT/ALEP1DZ1iCEilCkRn1f5POGzfeC6yEn9DNk0UMqU3mRAaDv
         IE9OulWCS/yyLLy9st0pWDOHYFh8VseuUqT4xnuVMWhs3RYODyjmPpiiLC2LKxaDY9Qv
         CfP3R5KeZ83z2Oyj6fKwT6QCjjKnKCTXIMj9jnQK27uAMW5SsAyd/SPZkYNOS/KGadHJ
         1ZKRMo2h1577s57HJN13kPTOkY4kv9CyMmTXLLfCo3S3ZzirAnTm6Y3y/4T71mx5J5nh
         eIn2EhwmX+wyNcP8OyU++R2CKp5bNCbaLrhwBEKFK7xub/shi7RfE0rpDZNcGmAnIbDT
         VO4w==
X-Gm-Message-State: AHPjjUhl01q2whL7hsibD8behZbB/8AojFMaLCfwf4e/mA7GDpdHtjEr
	qSz9hXXWubxzXwzMitGGu+w=
X-Google-Smtp-Source: AOwi7QC62Ge1PdBv0VhmrCcQ/zZ0M5gLCLFf841Gxkighknmul7eqkWDgKX4KmBNNigw4BD2uYwfyg==
X-Received: by 10.84.128.14 with SMTP id 14mr9381590pla.329.1506755990951;
        Sat, 30 Sep 2017 00:19:50 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.6.85])
        by smtp.gmail.com with ESMTPSA id b66sm9548729pfe.165.2017.09.30.00.19.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 00:19:50 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 2/6] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Sat, 30 Sep 2017 12:49:45 +0530
Message-Id: <b58f641ac47b1fdd3be19d4135c48d76a9051276.1506755265.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506755265.git.srishtishar@gmail.com>
References: <cover.1506755265.git.srishtishar@gmail.com>

For variables of the type struct list_head use list_entry to access
current list element instead of using container_of.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
@@

-container_of
+list_entry
   (l,...)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 22cf362..f9df4ac 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -152,8 +152,8 @@ u32	_rtw_free_sta_priv(struct	sta_priv *pstapriv)
 			while (phead != plist) {
 				int i;
 
-				psta = container_of(plist, struct sta_info,
-						    hash_list);
+				psta = list_entry(plist, struct sta_info,
+						  hash_list);
 				plist = plist->next;
 
 				for (i = 0; i < 16; i++) {
@@ -323,7 +323,7 @@ u32	rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 		plist = phead->next;
 
 		while (!list_empty(phead)) {
-			prframe = container_of(plist, struct recv_frame, list);
+			prframe = list_entry(plist, struct recv_frame, list);
 
 			plist = plist->next;
 
@@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
 		plist = phead->next;
 
 		while (phead != plist) {
-			psta = container_of(plist, struct sta_info, hash_list);
+			psta = list_entry(plist, struct sta_info, hash_list);
 
 			plist = plist->next;
 
@@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	plist = phead->next;
 
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, hash_list);
+		psta = list_entry(plist, struct sta_info, hash_list);
 
 		if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
 			/*  if found the matched address */
@@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 	phead = get_list_head(pacl_node_q);
 	plist = phead->next;
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
-- 
2.7.4


