X-GM-THRID: 6329524753040146432
X-Received: by 10.66.153.107 with SMTP id vf11mr17253564pab.44.1473707322106;
        Mon, 12 Sep 2016 12:08:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls9901437otd.5.gmail; Mon, 12 Sep
 2016 12:08:41 -0700 (PDT)
X-Received: by 10.157.10.110 with SMTP id 101mr17802080otg.22.1473707321621;
        Mon, 12 Sep 2016 12:08:41 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z4si2656051pam.0.2016.09.12.12.08.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 12:08:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 128so8475818pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 12:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Tg/LdJ605tBtC9i3cKA4APa/9CZSLxAFNDkAxBs2Zqk=;
        b=lhk49oAdDQNlZ4IsmVlXIavRJ70h670YQEN/ZjYKuUMLxIhFrN5wYx0CWLf5IQywm4
         DJ9G+rZXw8zuU8+z5wRy9qfgxsz3aIGzlFjYnfae4edl/c438YZBVQ7v1VUUqvZt6bi5
         n3n1ldkRNJvaKa8xyeE3WvywTuT9fUOy3iBQckYRG6XKvt/jGUWAXroFfMEbmFKqHe0B
         SqJ1e4Tn9vbTaTC5J7WW/BGRy8S7SRATVv1OQddwr/2pebF39tOXQ+Ic/Sz/JKXabitL
         4YSV3dztlL5ewmPN5haZlK9PZy/7URbPT1pmE3OYGvZnF816KXWq11zPobXr7fYTIOia
         koKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Tg/LdJ605tBtC9i3cKA4APa/9CZSLxAFNDkAxBs2Zqk=;
        b=MR4zLY5ksK3ztQXvgSm9YA57Hl4iGSdZ5U/X71yCLuaJ06z0KmgWlNO+RiZZIopDLD
         8yzRD5eiMo/z4uYZgkReYaMdRA4X4ZvzESf/6Yi3uQz+5rzpe7PAUgTpLv2cPZsCc2gx
         DSrr90UbfOh1A0kx7MWEqT6ARRS5gmPaU0rE1gWHG1onblZJl1YwK+dAkQhnbgDEkYRy
         0WXX8jdWE6XAL/dIgpm0g6DYQp7KFz7MaTwelv8xEum9YZgPxl910VbWRNSSJDt/YAIb
         I1GEApGo8fxDBRFKRH93TqAbHoVcDTpIwOggW/nn4LBgcsfkJRqDozlRScVFRDFrDAUN
         8LFw==
X-Gm-Message-State: AE9vXwNUE8cLQ78m6Xt4MP/ECCA9CvpS5pt1GjytmFkb2Acnvyjq1fstXfx8ERC5kAo+WQ==
X-Received: by 10.98.145.18 with SMTP id l18mr35838084pfe.18.1473707321415;
        Mon, 12 Sep 2016 12:08:41 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.136.122])
        by smtp.gmail.com with ESMTPSA id h65sm3391329pfd.38.2016.09.12.12.08.30
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 12:08:40 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Tue, 13 Sep 2016 00:38:21 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: vt6655: Remove unused function vnt_key_init_table
Date: Tue, 13 Sep 2016 00:38:19 +0530
Message-Id: <1473707299-29700-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function vnt_key_init_table is not used anywhere in the kernel.
Therefore, remove the function definition and prototype.
Grepped to find occurences.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/vt6655/key.c | 10 ----------
 drivers/staging/vt6655/key.h |  2 --
 2 files changed, 12 deletions(-)

diff --git a/drivers/staging/vt6655/key.c b/drivers/staging/vt6655/key.c
index ffcaf25..e161d5d 100644
--- a/drivers/staging/vt6655/key.c
+++ b/drivers/staging/vt6655/key.c
@@ -31,16 +31,6 @@
 #include "key.h"
 #include "mac.h"
 
-int vnt_key_init_table(struct vnt_private *priv)
-{
-	u32 i;
-
-	for (i = 0; i < MAX_KEY_TABLE; i++)
-		MACvDisableKeyEntry(priv, i);
-
-	return 0;
-}
-
 static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
 	struct ieee80211_key_conf *key, u32 key_type, u32 mode,
 	bool onfly_latch)
diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
index 261f818..d7271974 100644
--- a/drivers/staging/vt6655/key.h
+++ b/drivers/staging/vt6655/key.h
@@ -61,8 +61,6 @@
 
 struct vnt_private;
 
-int vnt_key_init_table(struct vnt_private *);
-
 int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 		 struct ieee80211_vif *vif, struct ieee80211_key_conf *key);
 
-- 
1.9.1


