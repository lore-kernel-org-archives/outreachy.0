X-GM-THRID: 6747862437229232128
X-Received: by 2002:a92:7e91:: with SMTP id q17mr3996579ill.22.1571109168244;
        Mon, 14 Oct 2019 20:12:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:5b99:: with SMTP id c25ls813089ilg.15.gmail; Mon, 14 Oct
 2019 20:12:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxlMTs1OLCWWIXeiZGvomCeIuKgOpO2FniqW8R3S4GtuIdwAxZHpm/GF20k+79gqJYEpWJs
X-Received: by 2002:a92:ca91:: with SMTP id t17mr3648437ilo.153.1571109167399;
        Mon, 14 Oct 2019 20:12:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571109167; cv=none;
        d=google.com; s=arc-20160816;
        b=UI/xBHAgUzEexMoVTITeYwW1tspeWfUdbIHfmEvtoymgxGR9qkaSzViiioRpiPIdsB
         fz4E6ntnxg+UubuZPZikdxo4sjUJxHsqyMnuwyo0QW7hT+Xk3gJTOIYWcWKwHtS12wHW
         bKzyKWse0E5FncOYjko1oTq9NxL/r0vLagkzyTHsMO1kFqPDENnonJYrJ1PWSlfzl9rT
         viyzcFKNfnIJxQbMVaSK+QhW6UKg2TXvdEm4nAuQkguO27C8t8hYm6BqgKBs+by4E+bp
         bfEyx1rBpZlE4LwB4w9n2RwAYfV9HsWCn4mtgraSnDjoCYISMhqgE/NvP+WXB7HOhN4t
         8DBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=T7B6SR2pxooDGC7k9QVnIqKMOXJ+86SHzWKJu+B8TKQ=;
        b=OMoN+0BoMlV6bZG8aL1UT6yAy+O+9Qvc8ZOIuLyLw8TWIZz8/S4Zzig4IXsoSEutv/
         otgwg+/9U2AyBKbr8MrcxeulD9DxWjSfWEUEl3OQ2bRxAS5WOgSBBcf9M4d97xWlKpnf
         8dkQQZUjAy9ocm/ZoXgNMvqqNrAF2S3UrvvNZx3DqXSg/g/0Pyp8Qcku0sr6ar+xpaiP
         IoPDlxap3Onf50nH49ZoX0f+uSjzrTeQMkIcc6Ez5IwEUoAjGEccFD3bIgRvAkeEpFhX
         Za/s2Xnjq0lgro7ahXCBwuF+5SxUCxxFY14TKn6LqFMvNHkDxXes9r6jr50OJPxizVMH
         atQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mo9P895h;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s5si358064iol.1.2019.10.14.20.12.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 20:12:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mo9P895h;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id y5so11518845pfo.4
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Oct 2019 20:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=T7B6SR2pxooDGC7k9QVnIqKMOXJ+86SHzWKJu+B8TKQ=;
        b=Mo9P895hKKkg4l38eOOtZftkDqg5jRRA9NzW0CbxDfBu74qemM3ASeqgmgtVn+mWZ2
         1RrOpixVmCfQncm/kODYslo4OqCzfaw+BSxOVMT9MxdPOSTQ8nwbYJvxGQE+cQaLXdZO
         tL536Y/iZ8IH1uNt/J12K3Aj5WKrrOmwzDOvGreLylQKTzAr3DkRBILgKLyRjGl66Tz+
         ugsl6Z+9wNea6vuwF1YjLs19p1o1CiGLInYZ8yU9p2PHsx6SWj3JDq+PcbLR+21619i/
         aVyYxAC79y/X4cQghF3zmC6AI+VwudPQAOzOpW/90v+mktjh7SR5lVyWQehub1EleASh
         pzug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=T7B6SR2pxooDGC7k9QVnIqKMOXJ+86SHzWKJu+B8TKQ=;
        b=HJMLLfyK8N4APaX1af/EQDqWeYHeS6JDDuMw77NTGJMl9U4mZANZoW7tnAGSMxNCzB
         q6qkhbgQDpLEcjNwBPBtBbkw01pDRLbaVa/DR8t/C9+5sbHKdK6s9SWTZtRR67oNShfD
         tH3L1Tco+AanJEHO16gW7PPqTJPmz94xhdA+CfOv+QIOog/SQLn2v2/dXC9uowLqra8u
         h96Qp01F6V1+5UzeY2H7WEHSvM8Yf9lXERr1RMw1LZqOdXj+vWFfLywIV861wHt7fL6g
         8p9oXgasR7EcKBChAoWVOG6y75oek0I6Nd+ixymHijJzFMsSoNLWo+1suOoikx0CqsDt
         8ogA==
X-Gm-Message-State: APjAAAWIPv7mp6e5tUbcbwL0b3/xTCYCrR4bOJRjoLpP4o1ZSedMr7o+
	9ATb+1iFdhNOUfqVEvm9yZA=
X-Received: by 2002:a62:e807:: with SMTP id c7mr35480411pfi.18.1571109166780;
        Mon, 14 Oct 2019 20:12:46 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id y9sm7763057pgq.11.2019.10.14.20.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 20:12:46 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jamal.k.shareef@gmail.com
Subject: [PATCH 2/2] staging: sm750fb: Fix comments and assignments over 80 chars
Date: Mon, 14 Oct 2019 20:12:13 -0700
Message-Id: <5e1ec6d6977f27f39844abf38f598e15cc70916d.1571108943.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571108943.git.jamal.k.shareef@gmail.com>
References: <cover.1571108943.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571108943.git.jamal.k.shareef@gmail.com>
References: <cover.1571108943.git.jamal.k.shareef@gmail.com>

Fixes block comments and variable assignments
that were over 80 characters in length. Issue
found by checkpatch.

Fix typo "mean" to "means". Add comment for
ROP value in sm750_accel.h as it is in
sm750_accel.c file.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/sm750.c       | 22 +++++----
 drivers/staging/sm750fb/sm750_accel.c | 69 ++++++++++++++++++++-------
 drivers/staging/sm750fb/sm750_accel.h | 51 ++++++++++++++++----
 3 files changed, 108 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 59568d18ce23..7eb3f7b0a86b 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -133,13 +133,15 @@ static int lynxfb_ops_cursor(struct fb_info *info, struct fb_cursor *fbcursor)
 		/* get the 16bit color of kernel means */
 		u16 fg, bg;
 
-		fg = ((info->cmap.red[fbcursor->image.fg_color] & 0xf800)) |
-		     ((info->cmap.green[fbcursor->image.fg_color] & 0xfc00) >> 5) |
-		     ((info->cmap.blue[fbcursor->image.fg_color] & 0xf800) >> 11);
+		fg =
+		((info->cmap.red[fbcursor->image.fg_color] & 0xf800)) |
+		((info->cmap.green[fbcursor->image.fg_color] & 0xfc00) >> 5) |
+		((info->cmap.blue[fbcursor->image.fg_color] & 0xf800) >> 11);
 
-		bg = ((info->cmap.red[fbcursor->image.bg_color] & 0xf800)) |
-		     ((info->cmap.green[fbcursor->image.bg_color] & 0xfc00) >> 5) |
-		     ((info->cmap.blue[fbcursor->image.bg_color] & 0xf800) >> 11);
+		bg =
+		((info->cmap.red[fbcursor->image.bg_color] & 0xf800)) |
+		((info->cmap.green[fbcursor->image.bg_color] & 0xfc00) >> 5) |
+		((info->cmap.blue[fbcursor->image.bg_color] & 0xf800) >> 11);
 
 		sm750_hw_cursor_setColor(cursor, fg, bg);
 	}
@@ -695,7 +697,9 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_secondary;
-			/* not consider of padding stuffs for oScreen,need fix */
+			/* not consider of padding stuffs for oScreen,
+			 * need fix
+			 */
 			crtc->oScreen = sm750_dev->vidmem_size >> 1;
 			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
 		}
@@ -709,7 +713,9 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_primary;
-			/* not consider of padding stuffs for oScreen,need fix */
+			/* not consider of padding stuffs for oScreen,
+			 * need fix
+			 */
 			crtc->oScreen = sm750_dev->vidmem_size >> 1;
 			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
 		}
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index dbcbbd1055da..d523df58d067 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -148,10 +148,14 @@ unsigned int rop2)   /* ROP value */
 	unsigned int nDirection, de_ctrl;
 
 	nDirection = LEFT_TO_RIGHT;
-	/* Direction of ROP2 operation: 1 = Left to Right, (-1) = Right to Left */
+	/* Direction of ROP2 operation: 1 = Left to Right,
+	 *                             (-1) = Right to Left
+	 */
 	de_ctrl = 0;
 
-	/* If source and destination are the same surface, need to check for overlay cases */
+	/* If source and destination are the same surface,
+	 * need to check for overlay cases.
+	 */
 	if (sBase == dBase && sPitch == dPitch) {
 		/* Determine direction of operation */
 		if (sy < dy) {
@@ -289,19 +293,51 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
 }
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
-		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
-		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
-		 u32 dBase,    /* Address of destination: offset in frame buffer */
-		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
-		 u32 bytePerPixel,      /* Color depth of destination surface */
+		 const char *pSrcbuf,   /* pointer to start of source buffer
+					 * in system memory
+					 */
+
+		 u32 srcDelta,		/* Pitch value (in bytes) of the
+					 * source buffer, +ive means top down
+					 * and -ive means button up
+					 */
+
+		 u32 startBit,		/* Mono data can start at any bit in a
+					 * byte, this value should be 0 to 7
+					 */
+
+		 u32 dBase,		/* Address of destination: offset in
+					 * frame buffer
+					 */
+
+		 u32 dPitch,		/* Pitch value of destination surface
+					 * in BYTE
+					 */
+
+		 u32 bytePerPixel,	/* Color depth of destination surface */
+
 		 u32 dx,
-		 u32 dy,       /* Starting coordinate of destination surface */
+		 u32 dy,		/* Starting coordinate of destination
+					 * surface
+					 */
+
 		 u32 width,
-		 u32 height,   /* width and height of rectangle in pixel value */
-		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
-		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
-		 u32 rop2)     /* ROP value */
+		 u32 height,		/* width and height of rectangle in
+					 * pixel value
+					 */
+
+		 u32 fColor,		/* Foreground color
+					 * (corresponding to a 1 in the
+					 * monochrome data)
+					 */
+
+		 u32 bColor,		/* Background color
+					 * (corresponding to a 0 in the
+					 * monochrome data)
+					 */
+
+		 u32 rop2)	      /* ROP value */
+
 {
 	unsigned int ulBytesPerScan;
 	unsigned int ul4BytesPerScan;
@@ -379,9 +415,10 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 	/* Write MONO data (line by line) to 2D Engine data port */
 	for (i = 0; i < height; i++) {
 		/* For each line, send the data in chunks of 4 bytes */
-		for (j = 0; j < (ul4BytesPerScan / 4); j++)
-			write_dpPort(accel, *(unsigned int *)(pSrcbuf + (j * 4)));
-
+		for (j = 0; j < (ul4BytesPerScan / 4); j++) {
+			write_dpPort(accel,
+				     *(unsigned int *)(pSrcbuf + (j * 4)));
+		}
 		if (ulBytesRemain) {
 			memcpy(ajRemain, pSrcbuf + ul4BytesPerScan,
 			       ulBytesRemain);
diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c4f42002a50f..9ce8dd8e44c5 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -210,17 +210,48 @@ unsigned int height, /* width and height of rectangle in pixel value */
 unsigned int rop2);
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
-		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
-		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
-		 u32 dBase,    /* Address of destination: offset in frame buffer */
-		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
+		 const char *pSrcbuf,	/* pointer to start of source buffer in
+					 * system memory
+					 */
+
+		 u32 srcDelta,          /* Pitch value (in bytes) of the source
+					 * buffer, +ive means top down and
+					 * -ive means button up
+					 */
+
+		 u32 startBit,		/* Mono data can start at any bit
+					 * in a byte, this value should
+					 * be 0 to 7
+					 */
+
+		 u32 dBase,		/* Address of destination: offset in
+					 * frame buffer
+					 */
+
+		 u32 dPitch,		/* Pitch value of destination surface
+					 * in BYTE
+					 */
+
 		 u32 bytePerPixel,      /* Color depth of destination surface */
+
 		 u32 dx,
-		 u32 dy,       /* Starting coordinate of destination surface */
+		 u32 dy,		/* Starting coordinate of destination
+					 * surface
+					 */
 		 u32 width,
-		 u32 height,   /* width and height of rectangle in pixel value */
-		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
-		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
-		 u32 rop2);
+		 u32 height,		/* width and height of rectangle
+					 * in pixel value
+					 */
+
+		 u32 fColor,		/* Foreground color
+					 * (corresponding to a 1 in the
+					 * monochrome data
+					 */
+
+		 u32 bColor,		/* Background color
+					 * (corresponding to a 0 in the
+					 * monochrome data
+					 */
+
+		 u32 rop2);		/* ROP value */
 #endif
-- 
2.17.1


