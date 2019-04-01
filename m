X-GM-THRID: 6675054082549350400
X-Received: by 2002:aa7:8185:: with SMTP id g5mr1142533pfi.74.1554157138958;
        Mon, 01 Apr 2019 15:18:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls5287492plb.6.gmail; Mon, 01
 Apr 2019 15:18:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXSmx3WZMYWZ549UiOfhvhcitHuKRohCFio8I2QSlwIaGiV+J9y0JycTaPhDZj73qI0m6/
X-Received: by 2002:a17:902:ba86:: with SMTP id k6mr1707046pls.126.1554157138095;
        Mon, 01 Apr 2019 15:18:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554157138; cv=none;
        d=google.com; s=arc-20160816;
        b=ONT0GvDeMsXs4uRPG0Fssmmjmx0fWzArREsrzurTxt6FFG2U66UiZqg49QE+erBBf6
         dyaODT9aJQE232RyhFrU1+mZz2mPZzWkLOj0/zZ0MxMvhVTGqXaUyyGEd4xMcle1OoGp
         d6BDFufzsxpoGkNSOKe+2oF1A4vVjXkuxx0F+PLD741GIMveGgppjELaLC9GaWQcIYDL
         wyTwDfLBpzqpZtxCI/pLDR88T1slmgUfYE/RfbkTKHO0d0NseqJ1YhBogRvose/2JDox
         zPrThd3KcIBUiLpWo3yAOJAm/p/Fz8UtB6KlXx0VvCsVNFlwq3DZifjjWvlF8MsPXG5j
         PafA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SOEQ/FuV/8ZHXACzuSwrElLLJCqvx7JtgV7MZ7joNq4=;
        b=KgbwKKD120+VDqVOLyXBTt5LAj+OzKz9hwIDZcU94AGn+FjJLVelAKIqiA4qyN7SnH
         WaerqX9ykrkw1ICjo9KNtEpbDd6zx55T+FW8fBIz/ZA7xnozxYRKHaPIakbXULWfjELe
         wtTc0Dgx9XTRV70Aliu4+fo+qSKiVE/zxWK4UM0I2/I9JJn5Fr5lbZPOoZecbWNv3d//
         NruB9jCodyoHl7Lxy8LhEAtt98gjuGah9EAnmapuJuh3Y734pEfGvu10F8bvVlGLTt5J
         wsEY19cFyyAfByGxNdh5wU845xXHiNR+3dUiLqqIGN2vmHM6pJZqMGR7gguZq99UD/vu
         aXIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="fWRLE8z/";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id n19si503006pff.3.2019.04.01.15.18.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 15:18:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="fWRLE8z/";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id t81so8725340oig.10
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 15:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SOEQ/FuV/8ZHXACzuSwrElLLJCqvx7JtgV7MZ7joNq4=;
        b=fWRLE8z/HiCt5pRaryB0gTP02yP2mQx6FuYdvHS9Tpo7KnsbvFYgZWo708cD4Ipyrv
         LXZ24pQsC9V+JpU3eoHLgUf+OzUozP+5GO94AUoCCbbH96TZmcvp3SQPUB5SVVn7rNxk
         Oz9sI43mhK6kTRgx8jUGzUcHCXxHu7c+HpaIrEdNAXf7/CMkk9K5Sd0nXGg4LcGXtN71
         pr7Rpg0CaYxBOxZ3L5QsRwI6RvuTqdIcMW8fsjBElMhAgt5TUmowPw/BZJ4iolBHYS03
         mLxPvguznebcEI6kpHHENQGnlKCpymNOe66cx8udzSNW+iZUSLuxeP24MTsElLjjD2xV
         Cc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SOEQ/FuV/8ZHXACzuSwrElLLJCqvx7JtgV7MZ7joNq4=;
        b=WAy5Dy5jHCQCFuQQ/EfSAf2/9TK0vboXPMwHoQIA9q8OpZkeagYaRGu/72ZTX2XJqX
         UvhEAWCUuY5pLk9RP3g9HYN0/bPtf8EJ/OAaHLqT4VOiGvcbyDbwQrRINF+tF4IFnrtG
         vX27kxpt30+6zVTXUxuP5thLmCYOvl8tiZT01t4EbibaI7L61JBfx5IBwoVdjrP3EMC+
         erhtW97cBKONss7s1nf3wZ/AIAYrBLiQBGNIjM2PrI/rYcjeMtD6KpOmLNzUIFLajIoW
         Z03bmdlhgvFVD0S+Xd6L/n4SeMVKyKt2l2f2wr9im46MCKtvVyOiN+DsCs5ElND8XS6b
         CHKQ==
X-Gm-Message-State: APjAAAV4N3YuZk4mgeEVzJ0KTXbqy45qY7iypc+5I9FznBMG3kOHu6AS
	7mmWvDQ4bvBgSBXqKwJqxTzOmPKQDMA=
X-Received: by 2002:aca:e84c:: with SMTP id f73mr14820605oih.163.1554157137377;
        Mon, 01 Apr 2019 15:18:57 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id q9sm4654061oti.78.2019.04.01.15.18.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 15:18:56 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: rtl8723bs: Remove typedef in struct _Dynamic_Primary_CCA
Date: Mon,  1 Apr 2019 17:18:54 -0500
Message-Id: <20190401221854.29465-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove typedef in struct _Dynamic_Primary_CCA, as a struct that has
elements that can reasonably be directly accessed should never be a
typedef.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 23ab160ac2c8..af68658233e3 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -82,7 +82,7 @@
 
 /* Remove DIG by yuchen */
 
-typedef struct _Dynamic_Primary_CCA {
+struct _Dynamic_Primary_CCA {
 	u8 PriCCA_flag;
 	u8 intf_flag;
 	u8 intf_type;
@@ -90,7 +90,7 @@ typedef struct _Dynamic_Primary_CCA {
 	u8 Monitor_flag;
 	u8 CH_offset;
 	u8 	MF_state;
-} Pri_CCA_T, *pPri_CCA_T;
+};
 
 typedef struct _Rate_Adaptive_Table_ {
 	u8 firstconnect;
@@ -1112,7 +1112,7 @@ typedef  struct DM_Out_Source_Dynamic_Mechanism_Structure {
 	FAT_T DM_FatTable;
 	DIG_T DM_DigTable;
 	PS_T DM_PSTable;
-	Pri_CCA_T DM_PriCCA;
+	struct _Dynamic_Primary_CCA DM_PriCCA;
 	RXHP_T DM_RXHP_Table;
 	RA_T DM_RA_Table;
 	false_ALARM_STATISTICS FalseAlmCnt;
-- 
2.17.1


