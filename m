X-GM-THRID: 6748575425662812160
X-Received: by 2002:a81:440e:: with SMTP id r14mr2646602ywa.160.1571836384651;
        Wed, 23 Oct 2019 06:13:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:d611:: with SMTP id y17ls345600ywd.13.gmail; Wed, 23 Oct
 2019 06:13:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxOTOD03iO+WGsXPbk9lK8au8AmLUOiovmrDpHYQfZ8hLnsUViiNRZ6fjOsKlMcziyLTX7f
X-Received: by 2002:a81:ee02:: with SMTP id l2mr2651657ywm.178.1571836383174;
        Wed, 23 Oct 2019 06:13:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571836383; cv=none;
        d=google.com; s=arc-20160816;
        b=Fy/84SZ6mHJcTEXp4TpH4Xez4PtY887dODftIxbqtjZxUCOy1eDIwWUcY2VutfO1wd
         zS6KnmeCwHXWbO4QHmbR6s+rHqX7SNjbrrO+lntI6UZhYsyYj9tlzLpuKilJEtz0k7MJ
         HeSt+4aOPt8uFcvwp4IAwwV14nQ/pFMU5WF+rg1NN+a+VWCo1TPwWL+tJOjBkW9TuBgE
         aFUMYYMAOSdKYR9jbf0RN0YKFMKwxv8Zo8e7t1TlU2R4D84Eo/3rRgI3P4J06GeoIRv3
         A61P/kLyodTNJFobnxbQWVfECIE/gIpo5oi1rCEeRDhpODZpbR1M50Y40HC0VJJuS0ag
         rNBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
        b=BdarxoofsNn2ZFCkZaubhGf5Sr/7houCAg0TWXDpMJcz8T00t6q7fXErVYLzv6K/HS
         HDghQuyoy1JwB/50eRlzqSJ6trcQ1LS+BO8XNboZJi3jTERzvznF6i8/Itq3WROdCFQS
         /xw/v3uhI4EupdWspOA5z2Iqy5bU601gqDnpSC57agNrl9bIpVI2wa5mYgqACFkm6cU+
         afvwQAHdId7/V40NfGcWRn1B37q5oEeMXdTDc5F2mXMJa/kNf7/brG2WC/0iMToJJDhK
         O1innKiW4QAETLJAIEnwWqxC7NYFbtiE+cqwuSpXP68XmAfp//ak9i3P9RSFwhRFpf30
         3DcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QaqaR1qO;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id x7si261172ywd.5.2019.10.23.06.13.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 06:13:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QaqaR1qO;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id o49so24334363qta.7
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 06:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
        b=QaqaR1qOT89rUu8StdHeaRI2FrFjxRCrlbXfhbbHR9vZnzKThIdbKrmyRWSBN2bdba
         sE46IsgHzgT9XYWG4UdfQyRWXTMVeJ7VpFPmkCa9vj/+DpX1g7evROqCXHGhIcJN2JNO
         8aErTqkuxElpgoSh8cNYzAjW33boa8eGOwYgwdUEbdfsQ+wnAj2GDUUzHJv5i5C5bJ21
         6rjUKT54WjEeNI+v4/pfTwYinBFUPFIKHYhC2u8idnVI7ulG4Ascu6dmTCtCPgYNMjnl
         uxM6Kw22wp3J3MMxVWzjjjcXHrCafX3kkVC13+EaGqgJzpbeLwjb3HKn79iWQORVb1PJ
         wXvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
        b=VOhSyOaeNoIaLaI8OibC6/pjt0MKyVpdMBt/s4X4x0GipIRyUoLZF0E6GhtYW4TEV1
         Gy8WAJg2QeE6he0YwdUUj9/WOtiDJsoVImX1MFWypr3rePoeBlksByRzwlgWUcRtxqpE
         Ejo9QkVAcGrg8lZm/KZtBAY1zzY9XzKnYnQEMt2k4wmW5HaJd6ps+ktF5yrqw/S+R3Cz
         oLgxemBucClXWO0v27ZrRChpWfUYFhxg7G0Ybjrv0//wrfsayaUEjpCeU5p1CvsUNVTY
         KXkiRQq/aRGjDCV4bErvqVF71bqVTtJawEfRKYEzn/xzKfN1denIaOB7uMMjxAhp872O
         +8/g==
X-Gm-Message-State: APjAAAWPY2dcfUqbzCgEKFv+n64Zc1MotTv7pdaS9Iw0e3zUBk2JCSmA
	3j9d1umFMkp02Xs6UX0RGUQF9bIJv5g=
X-Received: by 2002:ac8:76d9:: with SMTP id q25mr9148063qtr.23.1571836382491;
        Wed, 23 Oct 2019 06:13:02 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id p22sm9863919qkk.92.2019.10.23.06.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 06:13:01 -0700 (PDT)
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
Subject: [PATCH v2] staging: sm750fb: format description of parameters the to kernel doc format
Date: Wed, 23 Oct 2019 10:12:52 -0300
Message-Id: <20191023131253.20819-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cluster comments that describes parameters of functions and create one
single comment before the function in kernel doc format.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Changes v2:
 - Add name of function at the begining of comment
 - Separate each parameter in individuals lines

Here are the commands that I used to test my documentation and the
respective outputs:

$ kdoc_function sm750_acc.c sm750_hw_imageblit man
In NAME:
 there is the name of the function, but it's without a brief description
In ARGUMENTS:
 argument 'accel' is presented as '-- undescribed --'

$ kdoc_function sm750_acc.c sm750_hw_copyarea man
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


