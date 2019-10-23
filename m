X-GM-THRID: 6751036778892754944
X-Received: by 2002:a65:49c9:: with SMTP id t9mr11521641pgs.61.1571848254001;
        Wed, 23 Oct 2019 09:30:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6307:: with SMTP id x7ls913453pfb.0.gmail; Wed, 23 Oct
 2019 09:30:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxDDVEEmpWS3TjcF3YH1ejGNz5UxMAMZeT5DTbv415EbIrWTPiga4UY2X09cOglMa3NlRUR
X-Received: by 2002:a63:aa4b:: with SMTP id x11mr11288291pgo.419.1571848253028;
        Wed, 23 Oct 2019 09:30:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571848253; cv=none;
        d=google.com; s=arc-20160816;
        b=UvSO5BY6KuU63LgaX8KrsM5b/23NFNpwjESHEnLY45NTkwTC/GNhxg8XdHjf7ptuBA
         uFwzzyVM46eZVYYDaVkIlk6riFNqNev8FzCWTtj+5+pY9Sz53ELIOSmlflFnRYCmY0vd
         EhuiMWj2NlaoDPzaDU67WGuEakmLVJu7I5Wzj5qWWDPcOBTGKN6eK/E98WTWO1Ly9mrF
         iN+jjK+HtKFDlsgNgYTV005uUwmcFb4H+ZSLt0hKjuSZkNUdB7zsG/2Q2jLVLkgIfVvm
         bTbYnk2IerX4l17El1XnQ0j/3liXFz5QqEVGZ/0O+c0x2WK5xLVndH9xKAlLUJhJ8AP4
         Pa2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SucdjKTGQcanI63L94XU0ndX+0QHtlZGsavJY3p6BqA=;
        b=un+yN/dDFawTwBBW96bH/LEhBicNAFLT6t1tVudaKeEW10NtWhaJWrb9984HW07rSV
         m1KNE5rLQjb2sHrRRtNmcmYxj5LXR+XFuqJxMnHYLib30qAixNJTVyIqcmD9RzSNOUiw
         agcttA+d878zHRlz+U8hpQodXOKKTU3r+PIM+ybKkiYrRWQznDnqrYOvBx1FS20gDllN
         Dd6C+QbsejTiK9Nlfku5cTaUxSEVg2TLgx1A+EUT4ziaOK2ZMJvCEyq6as0JiwAtTFtr
         cx2h0hGTYoIhySI/M+Qc6AEBIKIj1ohZVryJRjvw35O19vPT6DmbPaN4jjAb7WN96U9I
         lIpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NhyKubbI;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id t17si441782pgu.1.2019.10.23.09.30.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 09:30:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NhyKubbI;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id w14so33153203qto.9
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 09:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SucdjKTGQcanI63L94XU0ndX+0QHtlZGsavJY3p6BqA=;
        b=NhyKubbIifRt3AhK5Egtx9QnOPj1v//tXutsSnBwRmGH1pPaeiFJm04d/udCUcFHVA
         2pgEq3W3mODPiR3aXH2hqyK87JAc/WoFuGI9Nrs6pj9lwRnZZ+n3e+OgoLVqH5EICScL
         tRfVk7Em36cn5n/p+w2+VimZLKyjzoAm6huuRee3vgPld5M30vipDo3yQnLzRXDwOgZe
         6zemSjktm3iZEQpJgVb4BcV4FkAajvF1iEKmUWeyApUatAR9iBtJrN6k8ia+kFRUxzRp
         DYhpm2kFg4eNwlHTL/MKF6//+R6djzAY5zCucG9n+hV/gqhRMyINYIv05502j1RxHv3h
         KRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SucdjKTGQcanI63L94XU0ndX+0QHtlZGsavJY3p6BqA=;
        b=hgUQJtYR3WPDSZW+kqdqa1x7S8L2Kes213hf8j+6tHdAg63gF6JNw2SIER5hOHdbnF
         r5OuGHA0pLlFX+Sh97NA/CePlNBgUOMTWwiwDiAk21M5OxQU9p8Cla0CVjnq1/1gprvg
         RIuSKCawt4kBiZlIlQGjnMfTOZxtdU/Y0kju0BEJmD4TW5WTpGCbOQWaoPucfPfq70xx
         FV5nI7hvxrppo1nRJpQZ8itZCxWYfZ7ZfTRjb1w3vr9/EMieRvrRCp7754Sub7Wr8Dxj
         Oh7nxF8BWwtivxgUw1Eb34RUlzuITWHJkbhuLH7fCZaLec3WKwviKmmOvAMVczNviyty
         ev9Q==
X-Gm-Message-State: APjAAAWZAuwcYaJB9NxO6qqkWCtgCgIDRHFigdNuuV6WX5YRmzkCkRvQ
	rfme/D4kNZ3qY6/Ku5yEPtMYJrsI9ig=
X-Received: by 2002:ac8:fda:: with SMTP id f26mr10287344qtk.34.1571848251776;
        Wed, 23 Oct 2019 09:30:51 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id t13sm8349067qtn.18.2019.10.23.09.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 09:30:51 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v3 2/2] staging: sm750fb: format description of parameters in accel.h
Date: Wed, 23 Oct 2019 13:30:14 -0300
Message-Id: <20191023163016.30217-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023163016.30217-1-gabrielabittencourt00@gmail.com>
References: <20191023163016.30217-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Formatting comments in file drivers/staging/sm750fb/sm750_accel.h.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Changes v3:
 - Apply changes in file accel.h
---
 drivers/staging/sm750fb/sm750_accel.h | 75 ++++++++++++++++-----------
 1 file changed, 46 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c4f42002a50f..c16350b5a310 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -194,33 +194,50 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
 				u32 x, u32 y, u32 width, u32 height,
 				u32 color, u32 rop);
 
-int sm750_hw_copyarea(
-struct lynx_accel *accel,
-unsigned int sBase,  /* Address of source: offset in frame buffer */
-unsigned int sPitch, /* Pitch value of source surface in BYTE */
-unsigned int sx,
-unsigned int sy,     /* Starting coordinate of source surface */
-unsigned int dBase,  /* Address of destination: offset in frame buffer */
-unsigned int dPitch, /* Pitch value of destination surface in BYTE */
-unsigned int bpp,    /* Color depth of destination surface */
-unsigned int dx,
-unsigned int dy,     /* Starting coordinate of destination surface */
-unsigned int width,
-unsigned int height, /* width and height of rectangle in pixel value */
-unsigned int rop2);
-
-int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
-		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
-		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
-		 u32 dBase,    /* Address of destination: offset in frame buffer */
-		 u32 dPitch,   /* Pitch value of destination surface in BYTE */
-		 u32 bytePerPixel,      /* Color depth of destination surface */
-		 u32 dx,
-		 u32 dy,       /* Starting coordinate of destination surface */
-		 u32 width,
-		 u32 height,   /* width and height of rectangle in pixel value */
-		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
-		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
-		 u32 rop2);
+/**
+ * sm750_hm_copyarea
+ * @sBase: Address of source: offset in frame buffer
+ * @sPitch: Pitch value of source surface in BYTE
+ * @sx: Starting x coordinate of source surface
+ * @sy: Starting y coordinate of source surface
+ * @dBase: Address of destination: offset in frame buffer
+ * @dPitch: Pitch value of destination surface in BYTE
+ * @Bpp: Color depth of destination surface
+ * @dx: Starting x coordinate of destination surface
+ * @dy: Starting y coordinate of destination surface
+ * @width: width of rectangle in pixel value
+ * @height: height of rectangle in pixel value
+ * @rop2: ROP value
+ */
+int sm750_hw_copyarea(struct lynx_accel *accel,
+		      unsigned int sBase, unsigned int sPitch,
+		      unsigned int sx, unsigned int sy,
+		      unsigned int dBase, unsigned int dPitch,
+		      unsigned int Bpp, unsigned int dx, unsigned int dy,
+		      unsigned int width, unsigned int height,
+		      unsigned int rop2);
+
+/**
+ * sm750_hw_imageblit
+ * @pSrcbuf: pointer to start of source buffer in system memory
+ * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
+ *>-----      and -ive mean button up
+ * @startBit: Mono data can start at any bit in a byte, this value should be
+ *>-----      0 to 7
+ * @dBase: Address of destination: offset in frame buffer
+ * @dPitch: Pitch value of destination surface in BYTE
+ * @bytePerPixel: Color depth of destination surface
+ * @dx: Starting x coordinate of destination surface
+ * @dy: Starting y coordinate of destination surface
+ * @width: width of rectangle in pixel value
+ * @height: height of rectangle in pixel value
+ * @fColor: Foreground color (corresponding to a 1 in the monochrome data
+ * @bColor: Background color (corresponding to a 0 in the monochrome data
+ * @rop2: ROP value
+ */
+int sm750_hw_imageblit(struct lynx_accel *accel, const char *pSrcbuf,
+		       u32 srcDelta, u32 startBit, u32 dBase, u32 dPitch,
+		       u32 bytePerPixel, u32 dx, u32 dy, u32 width,
+		       u32 height, u32 fColor, u32 bColor, u32 rop2);
+
 #endif
-- 
2.20.1


