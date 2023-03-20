Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1169D10E5
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 05:07:35 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id j3-20020a17090adc8300b0023d09aea4a6so15162144pjv.5;
        Sun, 19 Mar 2023 22:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679288855;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MPrWJir7lxNPo+Fx2Bwr880Bubqv8L6flAF9k6fJd4s=;
        b=VX+eQ7yGRVLcTA8EaiCuPDB6d0xUlH6meWFgwh+6i4u5WJzUd6iJOzfSlzyzsydBMf
         dYuiqg4FNvslYTT3n1bTihxrbfIiOCcTXB0RcmDcTPAYdOAlWkR1i2eTWYd9u2TJWUiE
         ZNZhS8k+oZ5aa+tN5ztiVklB1OBlL2UTKRDUHGLVMAiTAN4zISUTwkZb9Lg6r7HP762s
         oxVkW2uZD+C+BwXrqerjFj94luA9ZsccCVAWEsf+osdzAhTocxjq7AHC5KlmkSXoX3pz
         zMJSvCI78l16NvKu8EQev0IjfSOZ4y6/mPEY97UREOhpZa/oYgDNF04++m805Pqe3KFe
         iwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679288855;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MPrWJir7lxNPo+Fx2Bwr880Bubqv8L6flAF9k6fJd4s=;
        b=zVyc4F9rTnXM13vqKtokvg5EfCx1VSD7cV10IrHBakhEFY6H6ovM/j/M7NWknWm2Vi
         M2Bm0JdlloYpf3/RInu5SSIetftDjC7BQB5ZsRg+MlM2BtTtQoaxrmA9zOofOdX8qpGe
         CTO0J1S6bXvv6ktHJpbu2l9q6fvLP9Us3KhmYTtGjCxi5N3BMsi1sBKjGXuUg0jUMPKX
         Tpn5EkBS9JDZ3izkKwddqXelbIthtg/u/Vzrpj39qhwrljiKjUGlqKG6n+hNjamlgsdS
         etwhsIiYx26yMIk612Ewx0NayetNG22gWi+ZYuqOzlaUJBeh4RDODjgbohdqn1nd0hPh
         Vkjw==
X-Gm-Message-State: AO0yUKXJ50TYsZLjc6iSQM0vmsZgvLyrghWlD7qcxTGZf2mxD7FUZDVA
	P1OEC0PSNbcUg+Ucay5nlts=
X-Google-Smtp-Source: AK7set+GGgmglo4vRa9zphM2IwxvHeCQk2EBYx+5S03fZFG7lSc2pB9X9MUkH3K9gbCVYgky1m7MaQ==
X-Received: by 2002:a17:902:dcd4:b0:19c:a866:6a76 with SMTP id t20-20020a170902dcd400b0019ca8666a76mr14557422pll.42.1679288855393;
        Sun, 19 Mar 2023 22:07:35 -0700 (PDT)
Received: from CloudiRingWorld ([125.121.39.5])
        by smtp.gmail.com with ESMTPSA id b4-20020a170902a9c400b0019f3da8c2a4sm5578296plr.69.2023.03.19.22.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 22:07:35 -0700 (PDT)
Date: Mon, 20 Mar 2023 13:07:31 +0800
From: Kloudifold <cloudifold.3125@gmail.com>
To: outreachy@lists.linux.dev, teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com, gregkh@linuxfoundation.org,
	alison.schofield@intel.com
Cc: linuxstaging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v4] staging: sm750: Rename sm750_hw_cursor_* functions to
 snake_case
Message-ID: <ZBfpbgvYguJnzIOx@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

sm750 driver has sm750_hw_cursor_* functions, which are named in
camelcase. Rename them to snake case to follow the function naming
convention.

- sm750_hw_cursor_setSize  => sm750_hw_cursor_set_size
- sm750_hw_cursor_setPos   => sm750_hw_cursor_set_pos
- sm750_hw_cursor_setColor => sm750_hw_cursor_set_color
- sm750_hw_cursor_setData  => sm750_hw_cursor_set_data
- sm750_hw_cursor_setData2 => sm750_hw_cursor_set_data2

Reported-by: kernel test robot <lkp@intel.com>
Link: https://lore.kernel.org/oe-kbuild-all/202303110849.X24WnHnM-lkp@intel.com/
Signed-off-by: Kloudifold <cloudifold.3125@gmail.com>

---
Changes in v4:
- Update the commit msg (Deepak)
- Use tabs replace 8 spaces

This v4 patch was prompted by 2 errors, 2 warnings and 1 checks reported
by the scripts/checkpatch.pl, which detected the style problem.

Changes in v3:
- Add this changelog (Philipp)
- Move lkp tags and link to the correct location in commit log (Alison)
- Update the commit msg (Philip)
- Update the commit log (Bagas, Julia)

Changes in v2:
- Use new function names in call sites (LKP)

 drivers/staging/sm750fb/sm750.c        | 22 +++++++++++-----------
 drivers/staging/sm750fb/sm750_cursor.c | 14 +++++++-------
 drivers/staging/sm750fb/sm750_cursor.h | 12 ++++++------
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index effc7fcc3..5d7249e82 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -121,14 +121,14 @@ static int lynxfb_ops_cursor(struct fb_info *info, struct fb_cursor *fbcursor)
 
 	sm750_hw_cursor_disable(cursor);
 	if (fbcursor->set & FB_CUR_SETSIZE)
-		sm750_hw_cursor_setSize(cursor,
-					fbcursor->image.width,
-					fbcursor->image.height);
+		sm750_hw_cursor_set_size(cursor,
+					 fbcursor->image.width,
+					 fbcursor->image.height);
 
 	if (fbcursor->set & FB_CUR_SETPOS)
-		sm750_hw_cursor_setPos(cursor,
-				       fbcursor->image.dx - info->var.xoffset,
-				       fbcursor->image.dy - info->var.yoffset);
+		sm750_hw_cursor_set_pos(cursor,
+					fbcursor->image.dx - info->var.xoffset,
+					fbcursor->image.dy - info->var.yoffset);
 
 	if (fbcursor->set & FB_CUR_SETCMAP) {
 		/* get the 16bit color of kernel means */
@@ -142,14 +142,14 @@ static int lynxfb_ops_cursor(struct fb_info *info, struct fb_cursor *fbcursor)
 		     ((info->cmap.green[fbcursor->image.bg_color] & 0xfc00) >> 5) |
 		     ((info->cmap.blue[fbcursor->image.bg_color] & 0xf800) >> 11);
 
-		sm750_hw_cursor_setColor(cursor, fg, bg);
+		sm750_hw_cursor_set_color(cursor, fg, bg);
 	}
 
 	if (fbcursor->set & (FB_CUR_SETSHAPE | FB_CUR_SETIMAGE)) {
-		sm750_hw_cursor_setData(cursor,
-					fbcursor->rop,
-					fbcursor->image.data,
-					fbcursor->mask);
+		sm750_hw_cursor_set_data(cursor,
+					 fbcursor->rop,
+					 fbcursor->image.data,
+					 fbcursor->mask);
 	}
 
 	if (fbcursor->enable)
diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index 43e6f52c2..ff643e33f 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -58,13 +58,13 @@ void sm750_hw_cursor_disable(struct lynx_cursor *cursor)
 	poke32(HWC_ADDRESS, 0);
 }
 
-void sm750_hw_cursor_setSize(struct lynx_cursor *cursor, int w, int h)
+void sm750_hw_cursor_set_size(struct lynx_cursor *cursor, int w, int h)
 {
 	cursor->w = w;
 	cursor->h = h;
 }
 
-void sm750_hw_cursor_setPos(struct lynx_cursor *cursor, int x, int y)
+void sm750_hw_cursor_set_pos(struct lynx_cursor *cursor, int x, int y)
 {
 	u32 reg;
 
@@ -73,7 +73,7 @@ void sm750_hw_cursor_setPos(struct lynx_cursor *cursor, int x, int y)
 	poke32(HWC_LOCATION, reg);
 }
 
-void sm750_hw_cursor_setColor(struct lynx_cursor *cursor, u32 fg, u32 bg)
+void sm750_hw_cursor_set_color(struct lynx_cursor *cursor, u32 fg, u32 bg)
 {
 	u32 reg = (fg << HWC_COLOR_12_2_RGB565_SHIFT) &
 		HWC_COLOR_12_2_RGB565_MASK;
@@ -82,8 +82,8 @@ void sm750_hw_cursor_setColor(struct lynx_cursor *cursor, u32 fg, u32 bg)
 	poke32(HWC_COLOR_3, 0xffe0);
 }
 
-void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
-			     const u8 *pcol, const u8 *pmsk)
+void sm750_hw_cursor_set_data(struct lynx_cursor *cursor, u16 rop,
+			      const u8 *pcol, const u8 *pmsk)
 {
 	int i, j, count, pitch, offset;
 	u8 color, mask, opr;
@@ -132,8 +132,8 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
 	}
 }
 
-void sm750_hw_cursor_setData2(struct lynx_cursor *cursor, u16 rop,
-			      const u8 *pcol, const u8 *pmsk)
+void sm750_hw_cursor_set_data2(struct lynx_cursor *cursor, u16 rop,
+			       const u8 *pcol, const u8 *pmsk)
 {
 	int i, j, count, pitch, offset;
 	u8 color, mask;
diff --git a/drivers/staging/sm750fb/sm750_cursor.h b/drivers/staging/sm750fb/sm750_cursor.h
index b59643dd6..88fa02f63 100644
--- a/drivers/staging/sm750fb/sm750_cursor.h
+++ b/drivers/staging/sm750fb/sm750_cursor.h
@@ -5,11 +5,11 @@
 /* hw_cursor_xxx works for voyager,718 and 750 */
 void sm750_hw_cursor_enable(struct lynx_cursor *cursor);
 void sm750_hw_cursor_disable(struct lynx_cursor *cursor);
-void sm750_hw_cursor_setSize(struct lynx_cursor *cursor, int w, int h);
-void sm750_hw_cursor_setPos(struct lynx_cursor *cursor, int x, int y);
-void sm750_hw_cursor_setColor(struct lynx_cursor *cursor, u32 fg, u32 bg);
-void sm750_hw_cursor_setData(struct lynx_cursor *cursor, u16 rop,
-			     const u8 *data, const u8 *mask);
-void sm750_hw_cursor_setData2(struct lynx_cursor *cursor, u16 rop,
+void sm750_hw_cursor_set_size(struct lynx_cursor *cursor, int w, int h);
+void sm750_hw_cursor_set_pos(struct lynx_cursor *cursor, int x, int y);
+void sm750_hw_cursor_set_color(struct lynx_cursor *cursor, u32 fg, u32 bg);
+void sm750_hw_cursor_set_data(struct lynx_cursor *cursor, u16 rop,
 			      const u8 *data, const u8 *mask);
+void sm750_hw_cursor_set_data2(struct lynx_cursor *cursor, u16 rop,
+			       const u8 *data, const u8 *mask);
 #endif
-- 
2.40.0

