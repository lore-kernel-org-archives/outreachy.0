X-GM-THRID: 6260686017839235072
X-Received: by 10.66.163.4 with SMTP id ye4mr5854499pab.23.1457679592554;
        Thu, 10 Mar 2016 22:59:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.137 with SMTP id p9ls60460igr.28.gmail; Thu, 10 Mar 2016
 22:59:52 -0800 (PST)
X-Received: by 10.66.147.106 with SMTP id tj10mr5921442pab.30.1457679592304;
        Thu, 10 Mar 2016 22:59:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id y20si1040298pfa.2.2016.03.10.22.59.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 22:59:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so7344664pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 22:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=WydzxgTFh5N6dXC+xQSCYscK1JihbVws0vLa+r3NbxQ=;
        b=H8CuRR4ii3xwD11gGI4ckWdJQIZRlRx0VpgLWq65k+Y2x6PgDT461m8Mde8MhERBQe
         DwEDJLah092ESh2Mponm0TqUylJBZ8NZ/qmmol2H68IogN9/81hCy8YIPmOgMb3/hhdE
         Co0oO+akvi5UXsU6rom3tz4ymONLBROQoLQ9ofyC8YB+EmReA0DI34vTwdBp4hmyqZUx
         BfMbwQZkLt3CBXZjdG8wPpCB+3/ixwtZgqHwAXLA3NbSALyPnw/QT8pDtyP0OK5NPp2S
         2+5HzpOVAh5ue4uB1p9VnKCLyLKM8/QfXfMZyds3oUmgano70m5f2WLe7t1JaUqfwaaw
         y5RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=WydzxgTFh5N6dXC+xQSCYscK1JihbVws0vLa+r3NbxQ=;
        b=W26egDk84qyyLKToXgi+k0He9fTkgYUwBeFD+LrA5CDcDvptLH3+LgmbE2SnLrRrMt
         rDm7K7iyIRKzZDhoJzmu4atwF7Gn+aZecykRA0hxBX8v4z5ciQM5SXL+NDUfW7m5qlAE
         5+4q6R7dt5oZBSZ4QwuCFWX7DiP+ybnh1v6ApSpK63a52jIFAuk4uuPe8KyL4QKr/IiQ
         OjeOaICF20igLN0U8GF5YCarmbWcv0VCnHEtpIxdZkQ9vFYSDxaua8J5l60Qz9NpjJwl
         xmhkS164GyHaZc2sr6vhvsbbqy6m9O9r59tYYCVSglxqmXt987ChoJUUdV8W/oqkO/G3
         rBJg==
X-Gm-Message-State: AD7BkJI5I5zXOoL2nK3UI/tdyPvtvLY1OfmZN6Ojx/jCQFFyz3hWwzDk2V+NX0Qqb1YT1A==
X-Received: by 10.66.235.129 with SMTP id um1mr10066886pac.17.1457679592175;
        Thu, 10 Mar 2016 22:59:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.187.211])
        by smtp.gmail.com with ESMTPSA id qh8sm10103257pac.40.2016.03.10.22.59.46
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 22:59:51 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 12:29:42 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 3/3] taging: rtl8723au: Remove empty function odm_Init_RSSIForDM23a
Date: Fri, 11 Mar 2016 12:28:51 +0530
Message-Id: <c0833dc65439bb2756b15bbd9400bbe4973ee2d8.1457679000.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457679000.git.bhumirks@gmail.com>
References: <cover.1457679000.git.bhumirks@gmail.com>
In-Reply-To: <cover.1457679000.git.bhumirks@gmail.com>
References: <cover.1457679000.git.bhumirks@gmail.com>

The function odm_Init_RSSIForDM23a is empty and therefore there is no use 
of keeping it. Also, remove its prototype.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/hal/odm_HWConfig.c     | 4 ----
 drivers/staging/rtl8723au/include/odm_HWConfig.h | 2 --
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/odm_HWConfig.c b/drivers/staging/rtl8723au/hal/odm_HWConfig.c
index 7b9799e..0562f61 100644
--- a/drivers/staging/rtl8723au/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8723au/hal/odm_HWConfig.c
@@ -270,10 +270,6 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct dm_odm_t *pDM_Odm,
 	}
 }
 
-void odm_Init_RSSIForDM23a(struct dm_odm_t *pDM_Odm)
-{
-}
-
 static void odm_Process_RSSIForDM(struct dm_odm_t *pDM_Odm,
 				  struct phy_info *pPhyInfo,
 				  struct odm_packet_info *pPktinfo)
diff --git a/drivers/staging/rtl8723au/include/odm_HWConfig.h b/drivers/staging/rtl8723au/include/odm_HWConfig.h
index ce7abe7..c748d5f 100644
--- a/drivers/staging/rtl8723au/include/odm_HWConfig.h
+++ b/drivers/staging/rtl8723au/include/odm_HWConfig.h
@@ -142,8 +142,6 @@ struct phy_status_rpt_8195 {
 };
 
 
-void odm_Init_RSSIForDM23a(struct dm_odm_t *pDM_Odm);
-
 void
 ODM_PhyStatusQuery23a(
 	struct dm_odm_t *pDM_Odm,
-- 
1.9.1


