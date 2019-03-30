X-GM-THRID: 6673993192024571904
X-Received: by 2002:a1f:6095:: with SMTP id u143mr3997728vkb.13.1553910130033;
        Fri, 29 Mar 2019 18:42:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d4b:: with SMTP id y72ls896911vsc.1.gmail; Fri, 29 Mar
 2019 18:42:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxB1HyFvXFbRog1Q15Agr1rSMgbCoXj3pF+/wIXG6q5TLwywjFd+zWOKbYOh9oq8Yfa36CZ
X-Received: by 2002:a67:f54c:: with SMTP id z12mr4000491vsn.17.1553910129258;
        Fri, 29 Mar 2019 18:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553910129; cv=none;
        d=google.com; s=arc-20160816;
        b=N7i2y6sjVtuqB30nbR3iHVAVRJBPZe3Thj7cfQswEMsJ6T7r+UvxAyjI40GPzMhIDi
         TakejVykKzXEP1zw4CwpiQJcA44bzWJO43teYYF2sEKpLNifBS3n7djm0aaxp4V7zs5P
         3oR/CWEKKTeDkR4g+XQ0N5rlQblEH20Oyxka9YHSrHl4qGAXgYkm/Yn/2hkGd1GKA3dp
         Zu+99ejzOcXRbdyxHsYDUth5zMzCWvkn8cNVIh/nsFODeGVjdcF/3+OwwjUlNklxaE+7
         N1nGAwjdBH3XYHvjlqPG9tr2iQb3UWSoV2ZAu/DktGUtmZIjYFCXhdLurZ5CgQ0XITJg
         7C2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=YKLSB+Rii5NX/CcD/bRGNd/iqgt52UAASe1JV4cutt8=;
        b=doR95Z00nG0k/KbjQMh32nKYfAbfkFnvADd67/gsSziDnIJlhDP0Zs88tly1tCrI+s
         h2miQnY+9+QwrxQljq9q065KTJYu+gUvxumeBd0z25XsxDf4QHtG4J4CEgsWWXeCnCi5
         tT1kefIm0sLrNSaLWWVCo2PyUF1h36/oVueQzhIkA/vmQ7Gl07fLEPlo7/NX81llPKIJ
         A8S/vcJ4MiD/CNVN7SxzCy1fzOjAOFXOH2+jbtPY00tZEQbc6sT59suHqMPaAzkcYsek
         y3IMFuNPzVzQMuBot80jtCsuVvoeOlDcaFNs05VxDe/stOVl8P2hllYFr0HWxg16l2PY
         z1+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RXTqmxNF;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k68si242563vkg.5.2019.03.29.18.42.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 18:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RXTqmxNF;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i2so2002275pgj.11
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 18:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YKLSB+Rii5NX/CcD/bRGNd/iqgt52UAASe1JV4cutt8=;
        b=RXTqmxNFRI+CbtY/UlVy8bsIiQFI5nl/ZUw48wX0AIu9VofOjCLb9kzx+3qPPGtIlS
         GYyahrQjD25D5uXz0+F/GC2Im8bbbrrpQFp8EHL1hzTkKnEvyAtKrTRTLtXBYjDdHzvP
         x453TbSn7P2UZxZ/+3qUVActU86qIF1NkLZVN588nEFtcr1khLdilo2YjF+Fx4Pjx7kX
         wXU7vx8POb8KCqNdw4AEhZC6ZHbRGkp5s6OYWFPsbtpcOEeeyGc2/T0mCUvOAt96vkUa
         oNTA1nhJ6ModNCnprvDWxrBGBMCBGrdbzZsbF+92w49rNimgJXLcCZbnJumZhMfaBQkR
         H6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YKLSB+Rii5NX/CcD/bRGNd/iqgt52UAASe1JV4cutt8=;
        b=gpbO3hOgYXEgyF5zqwNSSr8VYHoslm+zxY7cDYRkGzqMKpNsWcs9SImSHbA8XWxgJQ
         qKDXQg9MzVpvgU3dirQsEHtrMXmEgQZooa7J8YRGFC00h3Qnvn7laZcWOJQy+VFS324p
         qM3frJRfBgnHDOJ8q1N64GYoMYwB7g0YtY9Ho479B04pRhmkb+rwOAjesiJ/yay9TINg
         joyRLQPD6hN9SbbSfVNE/puKzKumt5PswuNI9ysVEeEHMseIinkl+23MRzYLj3gCFyJ2
         aO06CaBdNZ3H65jjRBPLkQg9yUr+PekrEVFDVMcsT4w1481FE77DL9SpeTl+i3MGwIxp
         RN8g==
X-Gm-Message-State: APjAAAUP03+FaCMi4TfS5PJUAhjNf0EfFVgmPOAJdsux1dbQ7kfINkPf
	FObtH8wS2WyzbTgZf9NcsoIwFJP8HME=
X-Received: by 2002:a63:5054:: with SMTP id q20mr48878336pgl.414.1553910128219;
        Fri, 29 Mar 2019 18:42:08 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id p3sm8297511pfp.136.2019.03.29.18.42.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 18:42:07 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: media: zoran: Fix block comment style
Date: Sat, 30 Mar 2019 07:11:51 +0530
Message-Id: <20190330014151.32033-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Add trailing */ on a separate line for block comments to get rid of
checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/media/zoran/zr36060.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
index 2c2e8130fc96..7ee53ba4f7fc 100644
--- a/drivers/staging/media/zoran/zr36060.c
+++ b/drivers/staging/media/zoran/zr36060.c
@@ -40,7 +40,8 @@
 #include "videocodec.h"
 
 /* it doesn't make sense to have more than 20 or so,
-  just to prevent some unwanted loops */
+ * just to prevent some unwanted loops
+ */
 #define MAX_CODECS 20
 
 /* amount of chips attached via this driver */
@@ -725,7 +726,8 @@ zr36060_set_video (struct videocodec   *codec,
 	 * ratio 1:2. Setting low_bitrate (insmod option) sets
 	 * it to 1:4 (instead of 1:2, zr36060 max) as limit because the
 	 * buz can't handle more at decimation=1... Use low_bitrate if
-	 * you have a Buz, unless you know what you're doing */
+	 * you have a Buz, unless you know what you're doing
+	 */
 	size = size * cap->quality / (low_bitrate ? 400 : 200);
 	/* Lower limit (arbitrary, 1 KB) */
 	if (size < 8192)
@@ -738,7 +740,8 @@ zr36060_set_video (struct videocodec   *codec,
 
 	/* the MBCVR is the *maximum* block volume, according to the
 	 * JPEG ISO specs, this shouldn't be used, since that allows
-	 * for the best encoding quality. So set it to it's max value */
+	 * for the best encoding quality. So set it to it's max value
+	 */
 	reg = ptr->max_block_vol;
 	zr36060_write(ptr, ZR060_MBCVR, reg);
 
@@ -933,7 +936,8 @@ zr36060_setup (struct videocodec *codec)
 	memcpy(ptr->v_samp_ratio, zr36060_decimation_v, 8);
 
 	ptr->bitrate_ctrl = 0;	/* 0 or 1 - fixed file size flag
-				 * (what is the difference?) */
+				 * (what is the difference?)
+				 */
 	ptr->mode = CODEC_DO_COMPRESSION;
 	ptr->width = 384;
 	ptr->height = 288;
-- 
2.17.1


