X-GM-THRID: 6674542859228545024
X-Received: by 2002:a24:d603:: with SMTP id o3mr5148273itg.17.1554038121386;
        Sun, 31 Mar 2019 06:15:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:456a:: with SMTP id y103ls2040803ita.2.gmail; Sun, 31
 Mar 2019 06:15:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwlJEJM6k6nJMl7OjEY7zaRKB/25uZ7icFigLjpyKHLkBMhSQuFF9q9G6ucH7lgwE5C5pxF
X-Received: by 2002:a24:5741:: with SMTP id u62mr3503855ita.5.1554038120700;
        Sun, 31 Mar 2019 06:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038120; cv=none;
        d=google.com; s=arc-20160816;
        b=Nx/qihwMQbbN0AXOnPd9T4B2bNwAIIgNjpZWJrnwdWSfeQ9NPwZ3yG6hM3dsgD/QKt
         eYzfBPKc2mqfI3XFm7Ryd6fbNw43MQkdWh7/zjTAh8xTaV6GpP1hCSp5jhQ3opwtAiMy
         IQaoGYNhGcCRWNto5I9NnBc/1nlSW3C5Z5WI0v4XqWNkdFXNzAw4yA2786tXXmBsBzjM
         FLnqT0qOl8gMFouU/vjtivL+medDwpVgzUD0cOLZ3Oc7TBYoHpZ4gM6Qp/XcNM1kufDp
         Fv71R5vHBzDTllO1kWM0gMTsHf7mVKEYS2jbVgc0PrjMzJ2dVfmFjpuZY0pUtb7x7EZs
         LRFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=j5HNPWiH4/pCjuI++GvYyYhymX7JZzUkVHKCFMaA4Ac=;
        b=lg5hZ8YEalqa35zRIZULywSjkBjY9h/ztfY9BfvYYHGiPyOQoJ4uK4ukb+adq1rjKb
         F/tHM2FN8E6GsFzde7xjMh24p8WL6RO3UjkePwDGIldzBoeuvA+G4lMv92r8jhcdwSFv
         gmnJT85BP/aWybJ91hGKQTuKGwJRs1bvNW0PSKu23kktemzXxnDgh07EPklwZ89WR7+5
         rAiEAKOoBbaYkNtOpdoeX4mgnFyh66J8tHjf+4bFI9DRQy2w6L6V2sSriZ/yjYFy3DlL
         o/0cwED0rs6pnap6TYVcAUBBNuTq64gNrqxKdeM0em8aaTyhNvr6hCb2Jr/rlz6ukLk7
         0S6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sSDtcXQQ;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id u1si970748itj.2.2019.03.31.06.15.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sSDtcXQQ;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id g37so3150682plb.5
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=j5HNPWiH4/pCjuI++GvYyYhymX7JZzUkVHKCFMaA4Ac=;
        b=sSDtcXQQX+eLhWRUW1xHyUxfM4OmICJPPNyPRqlgNqWSpvH3DjYr/K0cbkupn6CES4
         g7EJuGHxS8gx8MtTrv2megIFBEWdVvPePS9DT3iEfnGK6qZbiATffiE4k2gbmAeMBoAf
         YNZoDXidViDiEwG5cr0TDbn+3VV1jl/mKMkzygBm1V4eauzNfm9ewfxDrSieiShK0rTg
         i2OnqbM9PFSPvgsr4CYtwaJ3UnNj1qUxz9He6GaAza7pha5FRfAJ7nUyeLs/+frvR6YI
         cU61e/vBOvul3rmgliC2CEDWU5OWt0j2EQvhtDmk4sT0teo7Mg7dGQ89Ew1b9z9RF1qZ
         NqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=j5HNPWiH4/pCjuI++GvYyYhymX7JZzUkVHKCFMaA4Ac=;
        b=Kl79rlYZ+2mYP1zvDiIgTlMXZAspSJF0zwzlDNB3O0I75UueuSBQakqr+2tEVvYcmU
         RgeAB/CqW6nyg9F/C4FgTvh2I4VKgYeNrX9AKdmk9m/Dqu/qiKTfpG/B/GREEApRr46B
         w7QQ+g2eGQs1zE1r5g/AjNEWYeyWL5e3edl+cxUflhUss2ooh/SONcinachmwVYNXdai
         sk5XySgEqtwz6RTr1+6xaaaf5kEhFQ50ERsIE3qjKNbOpkVHLrLy21xxlIdfAkCAQfox
         9wcvYVF4rY6Xd7CSBa/JWBTkethZJiTqO/B1d6V77GaLQq/sLYawAZ/CpzpFzJkbyrXD
         hDiQ==
X-Gm-Message-State: APjAAAV686mQbhzHo8vmLHiBHrE/0/7CFcjMCfolYWa6JnQGjEGhAy3t
	q2zplrpVipGMXjNpby2KzPoN9Iie
X-Received: by 2002:a17:902:7084:: with SMTP id z4mr59155821plk.305.1554038119835;
        Sun, 31 Mar 2019 06:15:19 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id v6sm10085946pgv.92.2019.03.31.06.15.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 06:15:19 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/7] staging: rtlwifi: phydm: phydm.c: Compress two lines into one line
Date: Sun, 31 Mar 2019 18:44:48 +0530
Message-Id: <55923ff0f300b54cba51dbb2662efd80c4d882d4.1554037161.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>

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


