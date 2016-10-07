X-GM-THRID: 6338861029933449216
X-Received: by 10.194.172.131 with SMTP id bc3mr1441514wjc.19.1475881093956;
        Fri, 07 Oct 2016 15:58:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.71.16 with SMTP id u16ls1045716wma.12.gmail; Fri, 07 Oct
 2016 15:58:13 -0700 (PDT)
X-Received: by 10.194.96.177 with SMTP id dt17mr13056wjb.21.1475881093332;
        Fri, 07 Oct 2016 15:58:13 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 82si263584wmg.3.2016.10.07.15.58.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 15:58:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id i130so4912854wmg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 15:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aiY0+NWLLwP33FUkGVxc9yjOYq4zuCiVJ5ExRXiXUmw=;
        b=HP6EapO9jBiv/UsI6Zr1jn8Gp2Si1RkvkUriCfJp9CJARQhA5/GaYGB918PeHCMKAl
         LNlnBUlq0RwETwK2D+YMRhIXdzGI5BcXEj5ViHxhBD9FcnYLJytkRrNkU3RE23MoZR85
         1VoiFOpEUSCb1vpBK1ndM2K1vkVBHaQmnuuaKsZtYB4/EdzykFskLSSVvUSs+M3FujHO
         mXlJG35cRB/weOJfoMgC4IVOoCRLQCSBp7qprPKNCn85RsmJW3X+SfRPRBVfb+MmG3OI
         94BOjJUwgKG+2GmCDoR4JQA0NzuV0vZqPvYHVidaEF7FcLqTPIIeMRDbNU6ZAwg8rosX
         RHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aiY0+NWLLwP33FUkGVxc9yjOYq4zuCiVJ5ExRXiXUmw=;
        b=MyIxL7/Kadlx2q8aHl0w4S4T2J0WRUkB2B9rkOMpUb0Hxqr0MkAY/W376EHhBS0FmA
         GiWU1jpZOwrSquKoPcpwWVHuzitRq0SherhHilJ3embbBPqrm6cSAxSDaNNKgjGZGTw/
         0HWOGuJWzO4snR4DFx67QtUqyUaoBKc1ESA50Q2Xsgk2W0UVKpKa+oN5kMw2yjSqLmhd
         4PtJyf/B2Xtvksa3UxlhmtLVLj3Pg3/afFoRywGr75KAK0VOCHM+NDoKT1anCR6GqwfI
         OWdEGpwonZMEL1VerLvilHF+ReESQHFxA0e8j5MZAS9M2Hw11Td9Zd0UAC2velANp0TY
         5TdQ==
X-Gm-Message-State: AA6/9RkCuyc5Ouk2Kpo2HUYqJgw0zay2x4GI5+9xjUDWsyvkPS518K6E8SuwPSHsMhUZuQ==
X-Received: by 10.28.164.130 with SMTP id n124mr651570wme.105.1475881093135;
        Fri, 07 Oct 2016 15:58:13 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id qa7sm21827537wjc.39.2016.10.07.15.58.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 07 Oct 2016 15:58:12 -0700 (PDT)
Date: Sat, 8 Oct 2016 01:58:11 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ks7010: __packed instedad of __attribute__((packed))
Message-ID: <20161007225811.GA25180@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix a issue found by  checkpatch.pl tool:

"WARNING: __packed is preferred over __attribute__((packed))".

Replace  __attribute__((packed)) with __packed.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 5ae013b..924b902 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1938,12 +1938,12 @@ void hostif_sme_set_wep(struct ks_wlan_private *priv, int type)
 struct wpa_suite_t {
 	unsigned short size;
 	unsigned char suite[4][CIPHER_ID_LEN];
-} __attribute__ ((packed));
+} __packed;
 
 struct rsn_mode_t {
 	uint32_t rsn_mode;
 	uint16_t rsn_capability;
-} __attribute__ ((packed));
+} __packed;
 
 static
 void hostif_sme_set_rsn(struct ks_wlan_private *priv, int type)
@@ -2418,8 +2418,8 @@ void hostif_sme_set_pmksa(struct ks_wlan_private *priv)
 		struct {
 			uint8_t bssid[ETH_ALEN];
 			uint8_t pmkid[IW_PMKID_LEN];
-		} __attribute__ ((packed)) list[PMK_LIST_MAX];
-	} __attribute__ ((packed)) pmkcache;
+		} __packed list[PMK_LIST_MAX];
+	} __packed pmkcache;
 	struct pmk_t *pmk;
 	struct list_head *ptr;
 	int i;
-- 
2.7.4


