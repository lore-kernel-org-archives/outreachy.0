X-GM-THRID: 6751036778892754944
X-Received: by 2002:a9d:28f:: with SMTP id 15mr6315268otl.138.1571848247082;
        Wed, 23 Oct 2019 09:30:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls749917otf.14.gmail; Wed, 23 Oct
 2019 09:30:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVaYnxHZX8TNtWcuZYYP6v8GI7adaqKnWxHzviYXg5SFArYA+s+qgFj3iz9iTSAvQ/eMNY
X-Received: by 2002:a9d:7d12:: with SMTP id v18mr5934340otn.103.1571848246128;
        Wed, 23 Oct 2019 09:30:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571848246; cv=none;
        d=google.com; s=arc-20160816;
        b=GHRp1FfPFyw5vKcspTpdgqNkpzoFh2GlzsVvmEC8pl2DRDt3FW4ZRMDAyYhbONW+2s
         EYPJJ0sxLleqmDNCxyub2Q+kyw8MsRRJSCs3KkQjV8lOAxqrKes62hgv09mC3XmsbSpC
         7dHeyQ4V0jpa13vrPTOPKrEniLPZY5V9RL8x+kqyvRKLo5LEGwbBBVbxQ5j6troiY36l
         iorZwL3CwjUSSbGmTJBJN0cOLefENe5ZwLM4DgtAZlV1UVg2NvvEgEyVvQjr20iVZsJR
         CJ1Smv/wVWJNQb/66VF/YBZXtNxu8A63j5/br6/zDrLqCK9VSJUVGie9IjCTFjccCA1v
         +DWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=O/gGINuO4rZ1Q1b4siMstjOWEKgW2+OR5xi6Uu2Zpfw=;
        b=k8ZTsALRQ+F9owEoray0JUYcaHQt8vyapNoK1li7zIcbym6YKD5GB7IY9PBvFaGny8
         076Kl03s5zGD2dFAoyu1TRRzWmxSZ1rF7hztn2EM6fg1oVcDAUvXt6ZeXy2VbSTg6bYo
         rpA7Boniy6JZ1+IxBd59WVOkyuGZF/GiKA2qdfioHdSSS/k3FiNzGwntbqvsJuCfHyn+
         lpZ5dmpvXSrG9g8D6NA6G5cpc6aGQEjGdLR17tI1CoGUqwAVP1WYjEoXUvWNbrd+vyeO
         2BdtBUNIsmLuljm6TU+WjEHnMtd3IR4OJ77eb588aWzlcfSbcA18dD2Jls+xoOmUeoYK
         F8cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fmuAMC8I;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id n63si1150333oib.3.2019.10.23.09.30.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 09:30:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fmuAMC8I;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id c21so33124507qtj.12
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 09:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O/gGINuO4rZ1Q1b4siMstjOWEKgW2+OR5xi6Uu2Zpfw=;
        b=fmuAMC8IrJunvfr9s/spVdumHPvY5Okfcj+sisnh2+hJJ9W2PmFVq+5LO4w4TOVLm3
         q8xSTIWiOnC8qERJV9iDQLiGWQCfiM3bLPn+VrtIJlfMhvHM001dyEbyDrUuIHQoMP8x
         h2xhFWEGgRw/n60NmANQ0lmC9WvLvu6gJk7ahLzu//T8rpKagvcri924bKLZBOzTXL02
         MJcCglKoBR2RkZUrl7jDVWV/N73AodzhZaNfST6MvX7W0PfZdwIoyl1LQRV/yJmgdY2s
         tlB7gUHOHt3fH25WYLHJBP+Lte2mR9v9kJokjpZEeqVZAtuumCCW+YYi3w7NIxzWtClO
         H/gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O/gGINuO4rZ1Q1b4siMstjOWEKgW2+OR5xi6Uu2Zpfw=;
        b=CnXX9O14tEKmdcnkS+/uIirFUa7G6nn1Q0E9Qk3tz/byJ7FH0zvkgunGobmhgaguar
         23LdcWMvtrKbqpAdsj/mXwh/bXq6bqpgxaYJSkrAxz00zywVOyTt8XIGCkObImhQgWph
         9uKClLJbW/J5LwmO/jGL5MYrtDEsVZ1S8BWmveUJE1mV1Q7wl9lOxs8LseXd3qqYRNWa
         mg42oXBGpYL9gsYVz4e7xY1tBhiQaSgQP4g/U1j/QAdluNsHguq5E1wUIoG2T9ro+CBz
         8xn4cD+VGgTH2YgBBz+wxIWbjCODekZyMhzrn7V0DpcSjv0Qusn9zoUDbUbd1HF95ZUA
         ykCw==
X-Gm-Message-State: APjAAAVlWmVBywXYP3tBom1jCbVoxZFTP7lvofTnMr2Z0c8JXpvAim3v
	o0dBzCkGJB6zA2bNQmbVTdQ0/WTPYCU=
X-Received: by 2002:ac8:70c3:: with SMTP id g3mr9955825qtp.391.1571848245230;
        Wed, 23 Oct 2019 09:30:45 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id t13sm8349067qtn.18.2019.10.23.09.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 09:30:44 -0700 (PDT)
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
Subject: [PATCH v3 1/2] staging: sm750fb: format description of parameters in accel.c
Date: Wed, 23 Oct 2019 13:30:13 -0300
Message-Id: <20191023163016.30217-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023163016.30217-1-gabrielabittencourt00@gmail.com>
References: <20191023163016.30217-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Formatting comments in file drivers/staging/sm750fb/sm750_accel.c.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Changes v2:
 - Add name of function at the begining of comment
 - Separate each parameter in individuals lines

Here are the commands that I used to test my documentation and the
respective outputs:

$ kdoc_function sm750_accel.c sm750_hw_imageblit man
In NAME:
 there is the name of the function, but it's without a brief description
In ARGUMENTS:
 argument 'accel' is presented as '-- undescribed --'

$ kdoc_function sm750_accel.c sm750_hw_copyarea man
In NAME:
 there is the name of the function, but it's without a brief description
In ARGUMENTS:
 argument 'accel' is presented as '-- undescribed --'

$ kernel-doc -none sm750_accel.c
2 Warnings:
sm750_accel.c:155: warning: Function parameter or member 'accel'
			    not described in 'sm750_hw_copyarea'
sm750_accel.c:321: warning: Function parameter or member 'accel'
			    not described in 'sm750_hw_imageblit'

I appreciate Randy's explanation about how to test documentation.
Thank you very much.

Changes v3:
 - Transforming patch into a patch serie
 - Apply similar changes in accel.h
---
 drivers/staging/sm750fb/sm750_accel.c | 72 ++++++++++++++++-----------
 1 file changed, 44 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index dbcbbd1055da..645813a87490 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -130,20 +130,28 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
 	return 0;
 }
 
-int sm750_hw_copyarea(
-struct lynx_accel *accel,
-unsigned int sBase,  /* Address of source: offset in frame buffer */
-unsigned int sPitch, /* Pitch value of source surface in BYTE */
-unsigned int sx,
-unsigned int sy,     /* Starting coordinate of source surface */
-unsigned int dBase,  /* Address of destination: offset in frame buffer */
-unsigned int dPitch, /* Pitch value of destination surface in BYTE */
-unsigned int Bpp,    /* Color depth of destination surface */
-unsigned int dx,
-unsigned int dy,     /* Starting coordinate of destination surface */
-unsigned int width,
-unsigned int height, /* width and height of rectangle in pixel value */
-unsigned int rop2)   /* ROP value */
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
+		      unsigned int rop2)
 {
 	unsigned int nDirection, de_ctrl;
 
@@ -288,20 +296,28 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
 	return de_ctrl;
 }
 
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
-		 u32 rop2)     /* ROP value */
+/**
+ * sm750_hw_imageblit
+ * @pSrcbuf: pointer to start of source buffer in system memory
+ * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
+ *	      and -ive mean button up
+ * @startBit: Mono data can start at any bit in a byte, this value should be
+ *	      0 to 7
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
+		       u32 height, u32 fColor, u32 bColor, u32 rop2)
 {
 	unsigned int ulBytesPerScan;
 	unsigned int ul4BytesPerScan;
-- 
2.20.1


