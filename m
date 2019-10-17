X-GM-THRID: 6748575425662812160
X-Received: by 2002:a92:3c5a:: with SMTP id j87mr944685ila.24.1571275160187;
        Wed, 16 Oct 2019 18:19:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c90f:: with SMTP id t15ls272400ilp.0.gmail; Wed, 16 Oct
 2019 18:19:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqydDF8qghNdUQtqM0oiFE00O2/6JfNkncMcJWC/VxVfYY+UOCMeY/zNMTv9WdFX9TWsMw7h
X-Received: by 2002:a92:9896:: with SMTP id a22mr869726ill.21.1571275159096;
        Wed, 16 Oct 2019 18:19:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571275159; cv=none;
        d=google.com; s=arc-20160816;
        b=CD47uOJkyN/Lu1T4s/hRRJjCRrn6tkOuX8MVHdBh4NAhUNo65zCUAfAyrUzZ1M1QoO
         23/wodqqw1NEtxAOJxY3F2YDDeUAe1BShZjrSBN7ME4ZLz8zgVE2SogSIlb+xrErkkrm
         Jd2lJrYybQN+xU8QuJS2BF2v5jWVvLKKbiP3pCDP6wj7ePAZQ60PD3MqO8lUjIY76qWU
         GOOkyjPLobOVQunFsA7SHo3KFLG6R9qPQohwT+wSZFe2moc7lFMC5437DyOrcXjBGcJD
         h/bclZTXbM1WcOE7bkbv1deDMtom/WUS+QQB8mMjMwPO1BNBsjyodVFu1FOcoIRO4X/S
         zA0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Z/aa8wHXCxV3tmXbr+VMzZQ5IcQ3POWlrtZSRfFXe4U=;
        b=aWrJMIncBNgnClQ/MFJxWM+zj+ByBFc6yE9h4uU09mU1v4mmXy20SVUmN+f48oBwq/
         ZevtiRmL0dyyzLdw4CD2GmPeuf9CJqcUPmSab++1Ju6vlCEei419BsR8V7bYw4TZx1Hb
         9T76Y4SbYw+lFDCnVInQ86qPCF8gQe8sYgBieOVfMKkYmWk/+lv/eFoy6Lk4JB2kN/6j
         t7YNrY4xmouWJIAUp8urd0psa6hNir4GJQBL3F2qOeIfvriNAPmQ9PoVoRt5PPrSNRaN
         rwrvULjmMWRcSoO6EmYjwfgqQWG9/uZicQu63VflbnsdnRhvbM05m13w4wvVbtq7d1e7
         5o3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FJ7Cx4ok;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id b12si40871ile.2.2019.10.16.18.19.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 18:19:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FJ7Cx4ok;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id v52so1096754qtb.8
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 18:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z/aa8wHXCxV3tmXbr+VMzZQ5IcQ3POWlrtZSRfFXe4U=;
        b=FJ7Cx4okQv21cjqq5YL4ofsxJpaiekvZBcfdJ7bUCEG/x5mqYU4yhbJPlGZ5EMoqCV
         Rr4J7NHIymCg9kxlE/b7KwyW85qj5XEKEZ2zxaZrI9QoNJqea0fZy7JQ69yJwlA/5lVD
         +wpgld+msBPX1ogIOVnPCwIypZBk2P38h9324ayHnCT4ruoAsYX2nRKVdvC6hAMAE/MM
         c6MrgrhT2J8V6lbQgoyngUkfTanQ6Hs259l1lvhTsoQDVhJav2Innl9gS6c9Cb6yw7UR
         8FDqaISP4JzjUrKJgUFw0qIlX49KI/Cq9h1EgbyO61GyVeaVpSYml2GIRXpGVsjrFWfx
         EqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z/aa8wHXCxV3tmXbr+VMzZQ5IcQ3POWlrtZSRfFXe4U=;
        b=iMnqfZp+KLp5l4EcU+ZwRGWQjI9BLx5z2JgQE2X7xJypndhzkf6cadTp4c961La5M6
         6NnS9oNrWWnK4HizTW6qYnRxf2qm4YbJJz+bs2L9LyPqZTGEF7lWfMmXiocJdea18uj+
         8rjpSONmKNwKBLwegxL1eRo2Rw0oecoF37p0P8hsk3j7w/tPg7J96lBAtNJcu05MZPMd
         v6mSrhfPPDOf0+R2LF1lDSGwpEbMAxTfn0QAco8LaKcV8XqVIxsSWPN0VU7p+Bj+HiJE
         vgjjR3AxvkY6JuVggbrxtNrX36g+AzchNbYgcELtMLht6ABaojEEhm0CL2xOO+kEzKV/
         YIdg==
X-Gm-Message-State: APjAAAU9Is7gtTet3bMJKGsyJbeXiR8oo04keRW785H/zoL7QH25HEN1
	yxRY2SfeCSR3eiPVQLnfoVi3GvqEdns=
X-Received: by 2002:a0c:8867:: with SMTP id 36mr1175545qvm.177.1571275158353;
        Wed, 16 Oct 2019 18:19:18 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id v68sm375528qkd.109.2019.10.16.18.19.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 18:19:17 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: sm750fb: format description of parameters the to kernel doc format
Date: Wed, 16 Oct 2019 22:18:49 -0300
Message-Id: <20191017011849.6081-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cluster comments that describes parameters of functions and create one
single comment before the function in kernel doc format.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.c | 65 +++++++++++++++------------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index dbcbbd1055da..d5564cd60f3b 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -130,20 +130,24 @@ int sm750_hw_fillrect(struct lynx_accel *accel,
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
+ * @sBase: Address of source: offset in frame buffer
+ * @sPitch: Pitch value of source surface in BYTE
+ * @sx, @sy: Starting coordinate of source surface
+ * @dBase: Address of destination: offset in frame buffer
+ * @dPitch: Pitch value of destination surface in BYTE
+ * @Bpp: Color depth of destination surface
+ * @dx, @dy: Starting coordinate of destination surface
+ * @width, @height: width and height of rectangle in pixel value
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
 
@@ -288,20 +292,25 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
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
+ * @pSrcbuf: pointer to start of source buffer in system memory
+ * @srcDelta: Pitch value (in bytes) of the source buffer, +ive means top down
+ * and -ive mean button up
+ * @startBit: Mono data can start at any bit in a byte, this value should be
+ * 0 to 7
+ * @dBase: Address of destination: offset in frame buffer
+ * @dPitch: Pitch value of destination surface in BYTE
+ * @bytePerPixel: Color depth of destination surface
+ * @dx, @dy: Starting coordinate of destination surface
+ * @width, @height: width and height of rectangle in pixel value
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


