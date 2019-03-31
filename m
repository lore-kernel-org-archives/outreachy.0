X-GM-THRID: 6674542859228545024
X-Received: by 2002:a17:902:9a81:: with SMTP id w1mr1461173plp.37.1554043320493;
        Sun, 31 Mar 2019 07:42:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:227:: with SMTP id 36ls2933219plc.8.gmail; Sun, 31
 Mar 2019 07:41:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy1Daw3+sK8lhe6ifwxtptVYSntaOl0QpzSrAL/qKceZeBYc+4as1jV5HdfrItRWtdraiY2
X-Received: by 2002:a17:902:4201:: with SMTP id g1mr1478488pld.109.1554043319737;
        Sun, 31 Mar 2019 07:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554043319; cv=none;
        d=google.com; s=arc-20160816;
        b=koOZgk0R1gR7way/QOdzHtI0yRbS5/5abrtwY87RMcbwhRrB4EJEcuU1rHdeNphm6o
         YyexgNRhzbFgvSCzLn3fIgqVr/C8IZmIa0CxGOS35uIcS81BLW5cTATgHQfSGg759dYE
         VLqB9N6xAu2c61xT9wHe3A2Ad8Bnc/zfZZD+6jCmNs1HiVIo3IVtKjcXISZdbBn8AD1G
         Y3Hq3jp67Uq45vz1x7TFAmJUCOjnTBTRG7KW28wG33B0aF9hCaOCcnZ+rkIGqPBt9cVU
         2MpIX9KMK05WMjzOIvwS03/ZLpla8z2buPoNmgWqFju5qWPxxtMfpGinY7ddG8OAou4N
         ccjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=j5HNPWiH4/pCjuI++GvYyYhymX7JZzUkVHKCFMaA4Ac=;
        b=D9rg7eUPlX9zPd1NNwIMvh1vqVwz3aoMOj/w4jySllt+fDROd4AnFeL+/k9/FDUIXF
         BDiXrKOYovTNJus3gp87XBLywyXyt71eos0umPMzM0OWRcPkDh9BBKW/sDEUO1PTe2/f
         41CU/FSdyKMXUw1vr6qdPRq/iGpXc/8xGBRzSSUYPhNakghy6cBbFUjb2/FyOLySu5iO
         vfnH5Zhf/u0gQkvd3Nadofc52VvhUrjKlDpjmX7ACiM8uH0kJhroYmCy/PKkJTnFgnHX
         wn0jpAK385eK5szOpoiVH7jmKTdSMACHmg9VinJ5eu/7Z66v033bcQzATVg74Nm/U3Lk
         hBgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cuFsnVLv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j8si502691plk.3.2019.03.31.07.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cuFsnVLv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 188so3255863pfd.8
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=j5HNPWiH4/pCjuI++GvYyYhymX7JZzUkVHKCFMaA4Ac=;
        b=cuFsnVLvk5nhcJdCYxVYZKLc7C0qFIsKnLHHidUHMHzEwuNRe7pNuRMTNsyIOKVwFM
         swyhy6QSmQl/L6uA9XFnwgmtVbSCpTufxaOyc+JV+vn3AlUguucJ3f6aEnVESAdQkRKp
         NJK/FD7wdOmn5vVzfQUlfDAKx34lbM+IGDjbSy9jBcIy/heHDCMQqeoo+XQsrKSFpcyY
         5dcupAM6YRo+S2WiTvO4BG8NzVE9BudVVbRiMKdocC9nbug1FaioCLVX47zDDQbelqTO
         Jz4CD7GewUy41cEhcBakXArY1bRc0y4JYWq3p5pJljA6BuK8h6VTpy93cDjuoAA02ArE
         vYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=j5HNPWiH4/pCjuI++GvYyYhymX7JZzUkVHKCFMaA4Ac=;
        b=o+ic90KsOv7FKjlNuu4fM6joNlIf1V3hEitd5fPyS4tob4hwbJ1ZCdsG05Dp7HEYzV
         hp614ZuprMUVcE7ct0T6v21qujYXdunPOnNLBlYNDPKJJnHWBdBDrEST0NCfITtyJxHh
         M/kXeVAtmrpqU8fXd9CNeQBPYdB966VKyGSVkFnnGDI88treqN6/yJm4Ru5KG3lsoxyv
         03BvhvVG92uDezcNO5Gq8KlhAPdHPokt4PH9tA6XsRTIx8PwEl8BkIU8UNQTF+BmjBLc
         qmFLSmfNhpGRAJsY/67jSowPj/hdXlLwEE8ujpJ3MUgG7fJ6gAiN+aYWzbW3D+v1yZOe
         KD8w==
X-Gm-Message-State: APjAAAU6ogQ0O/x8U7i9fd58/4H38vCKAiO74icdxGygt50VjPOIRRDa
	cftuRWGbQsWivf0lJxsyMxneJKDV
X-Received: by 2002:aa7:8609:: with SMTP id p9mr57669610pfn.166.1554043319195;
        Sun, 31 Mar 2019 07:41:59 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g67sm12397858pfg.94.2019.03.31.07.41.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 07:41:58 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 2/7] staging: rtlwifi: phydm: phydm.c: Compress two lines into one line
Date: Sun, 31 Mar 2019 20:11:29 +0530
Message-Id: <55923ff0f300b54cba51dbb2662efd80c4d882d4.1554042597.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variables.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm.c b/drivers/staging/rtlwifi/phydm/phydm.c
index 473eeb6..09dbb96 100644
--- a/drivers/staging/rtlwifi/phydm/phydm.c
+++ b/drivers/staging/rtlwifi/phydm/phydm.c
@@ -49,7 +49,7 @@ static void odm_update_power_training_state(struct phy_dm_struct *dm);
 /*Y = 10*log(X)*/
 s32 odm_pwdb_conversion(s32 X, u32 total_bit, u32 decimal_bit)
 {
-	s32 Y, integer = 0, decimal = 0;
+	s32 integer = 0, decimal = 0;
 	u32 i;
 
 	if (X == 0)
@@ -66,9 +66,7 @@ s32 odm_pwdb_conversion(s32 X, u32 total_bit, u32 decimal_bit)
 		}
 	}
 
-	Y = 3 * (integer - decimal_bit) + decimal; /* 10*log(x)=3*log2(x), */
-
-	return Y;
+	return 3 * (integer - decimal_bit) + decimal; /* 10*log(x)=3*log2(x), */;
 }
 
 s32 odm_sign_conversion(s32 value, u32 total_bit)
@@ -1240,7 +1238,6 @@ u32 odm_convert_to_db(u32 value)
 {
 	u8 i;
 	u8 j;
-	u32 dB;
 
 	value = value & 0xFFFF;
 
@@ -1257,16 +1254,13 @@ u32 odm_convert_to_db(u32 value)
 			break;
 	}
 
-	dB = (i << 3) + j + 1;
-
-	return dB;
+	return (i << 3) + j + 1;
 }
 
 u32 odm_convert_to_linear(u32 value)
 {
 	u8 i;
 	u8 j;
-	u32 linear;
 
 	/* 1dB~96dB */
 
@@ -1275,9 +1269,7 @@ u32 odm_convert_to_linear(u32 value)
 	i = (u8)((value - 1) >> 3);
 	j = (u8)(value - 1) - (i << 3);
 
-	linear = db_invert_table[i][j];
-
-	return linear;
+	return db_invert_table[i][j];
 }
 
 /*
-- 
2.7.4


