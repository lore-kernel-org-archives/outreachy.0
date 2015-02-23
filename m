X-GM-THRID: 2570422583296
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3ae25544df29569f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr1455837lbb.11.1424706840917;
        Mon, 23 Feb 2015 07:54:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.166 with SMTP id t6ls308876lat.83.gmail; Mon, 23 Feb
 2015 07:54:00 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr1494907lbb.13.1424706840464;
        Mon, 23 Feb 2015 07:54:00 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id el6si716906wib.2.2015.02.23.07.54.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 07:54:00 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so8111491wiv.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 07:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=EvPpyC1Pj3wk8aMA73aSVoBJzvGJsISCQqoDVn4Y+h4=;
        b=t4OZL+4JvGBTJsD1PNS8ubEl4at36HvEbGt3yfxQZq7sfAsIQ3fbvsZHj265f2VLND
         +KxiHpCJOUs46h/vciJUN5GhUXaFOP+bV0JpGBPfBU2k1+rl1t+xeayHFt0KNP3M9QOB
         odmM2VALvF4IDBi0mdn2iZ5E3NsBlxlTIp5bc7JoZJRcTzZPzvQc9DqeTJL+q1XCQ/37
         2Ad9XLPQpFAQXWD12AKc3Rh13XOzQY6QV49Ra83CW2w9b38nsRiBMjlUv4FdtQQgd3qo
         VUh4v/GFbN4rwBunQLM2M8V0NGiA45TbotHj+O2SOmly0u6KxlFnjYuNGB6zdeau0eGB
         Iy6Q==
X-Received: by 10.180.189.203 with SMTP id gk11mr21777567wic.32.1424706840274;
        Mon, 23 Feb 2015 07:54:00 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id gm2sm16448258wib.5.2015.02.23.07.53.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 07:53:59 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Add space after '&'
Date: Mon, 23 Feb 2015 17:53:44 +0200
Message-Id: <1424706824-22670-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This Error found checkpatch.pl

ERROR: need consistent spacing around '&'

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_xmit.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
index 7a5e6bf..2c9fe07 100644
--- a/drivers/staging/rtl8723au/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
@@ -255,7 +255,7 @@ static void update_attrib_vcs_info(struct rtw_adapter *padapter, struct xmit_fra
 		return;
 	}
 
-	if (!(psta->state &_FW_LINKED)) {
+	if (!(psta->state & _FW_LINKED)) {
 		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, psta->state);
 		return;
 	}
@@ -661,7 +661,7 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
 		return _FAIL;
 	}
 
-	if (!(stainfo->state &_FW_LINKED)) {
+	if (!(stainfo->state & _FW_LINKED)) {
 		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n",
 			  __func__, stainfo->state);
 		return _FAIL;
@@ -874,7 +874,7 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
 		return _FAIL;
 	}
 
-	if (!(psta->state &_FW_LINKED)) {
+	if (!(psta->state & _FW_LINKED)) {
 		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, psta->state);
 		return _FAIL;
 	}
@@ -1012,7 +1012,7 @@ s32 rtw_txframes_sta_ac_pending23a(struct rtw_adapter *padapter,
 		DBG_8723A("%s, psta == NUL\n", __func__);
 		return 0;
 	}
-	if (!(psta->state &_FW_LINKED)) {
+	if (!(psta->state & _FW_LINKED)) {
 		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n", __func__,
 			  psta->state);
 		return 0;
@@ -1098,7 +1098,7 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
 		return _FAIL;
 	}
 
-	if (!(psta->state &_FW_LINKED)) {
+	if (!(psta->state & _FW_LINKED)) {
 		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n",
 			  __func__, psta->state);
 		return _FAIL;
-- 
1.9.1


