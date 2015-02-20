X-GM-THRID: 1310105534464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8a3d9727c6ce8071,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.26.74 with SMTP id j10mr1283360lag.10.1424440025911;
        Fri, 20 Feb 2015 05:47:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.187.106 with SMTP id fr10ls101848wic.8.canary; Fri, 20 Feb
 2015 05:47:05 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr1282827wjc.3.1424440025580;
        Fri, 20 Feb 2015 05:47:05 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id cl5si106793wib.3.2015.02.20.05.47.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 05:47:05 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f173.google.com with SMTP id bs8so3075123wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ATK9D8/t/v3kZeHXMKC7eu48jciWvm8NHGINHTLxZ+U=;
        b=ZpbeXH4xbh7gxlLTTgeGiNiJamjkakLVlgZCkWU8otHWWRzazfiDTMhp6dDnTrdVay
         mHvp+0Rhm1b0juvU6UBGMptDYcqXZIu7FLkHijadNnHq8ThjniRdbZhsiU6hlxSn9M+P
         kQrpvWZ+0bZTApCCGFM9ejvB+F2zAmQjqHtEXLLTAIQ8wPZkQFCJpS8GP8XbBaaMjcap
         /0xLFfFobB3b8HU9EJL44CjcbkE66itGUJcIYtwVg/s1QU0+w2nef5+oLRVLt//ALvsN
         JJOzWGWaKPwtwv/EcC13+gBaiDlqjXg5/R9GnhST9dyleSxj8smKj5mr2gVuOfwmNt5e
         THyA==
X-Received: by 10.180.21.210 with SMTP id x18mr24003872wie.78.1424440025500;
        Fri, 20 Feb 2015 05:47:05 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id lx10sm10404884wjb.17.2015.02.20.05.47.04
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 05:47:05 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: rtl8192ee: Add blank line
Date: Fri, 20 Feb 2015 15:47:07 +0200
Message-Id: <1424440027-16681-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/rtl8192ee/base.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/rtl8192ee/base.c b/drivers/staging/rtl8192ee/base.c
index 2f0fea5..1cbe70c 100644
--- a/drivers/staging/rtl8192ee/base.c
+++ b/drivers/staging/rtl8192ee/base.c
@@ -243,6 +243,7 @@ static void _rtl_init_hw_vht_capab(struct ieee80211_hw *hw,
 
 	if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
 		u16 mcs_map;
+
 		vht_cap->vht_supported = true;
 		vht_cap->cap =
 			IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_3895 |
@@ -451,6 +452,7 @@ static void _rtl_init_mac80211(struct ieee80211_hw *hw)
 		SET_IEEE80211_PERM_ADDR(hw, rtlefuse->dev_addr);
 	} else {
 		u8 rtlmac[] = { 0x00, 0xe0, 0x4c, 0x81, 0x92, 0x00 };
+
 		get_random_bytes((rtlmac + (ETH_ALEN - 1)), 1);
 		SET_IEEE80211_PERM_ADDR(hw, rtlmac);
 	}
@@ -632,6 +634,7 @@ static void _rtl_query_shortgi(struct ieee80211_hw *hw,
 	u8 rate_flag = info->control.rates[0].flags;
 	u8 sgi_40 = 0, sgi_20 = 0, bw_40 = 0;
 	u8 sgi_80 = 0, bw_80 = 0;
+
 	tcb_desc->use_shortgi = false;
 
 	if (sta == NULL)
-- 
1.8.3.2


