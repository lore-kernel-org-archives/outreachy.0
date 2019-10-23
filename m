X-GM-THRID: 6748575425662812160
X-Received: by 2002:a62:7643:: with SMTP id r64mr10622993pfc.106.1571836392430;
        Wed, 23 Oct 2019 06:13:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:8302:: with SMTP id h2ls719763pfe.9.gmail; Wed, 23 Oct
 2019 06:13:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyD5kvkrc1SFV6opu8bSylQph5lcGcbbA3hDtHW/lPKIQgkOiSDrOI+rB0RmCLubl0oQg/L
X-Received: by 2002:a63:1b5d:: with SMTP id b29mr3659156pgm.426.1571836391084;
        Wed, 23 Oct 2019 06:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571836391; cv=none;
        d=google.com; s=arc-20160816;
        b=Tj9wA+Tm1yoJ5Q/XHRKKrD37YILjBWX+okVQ7CjFgeAmKEaAPdfuLKuSveIxIOVGhO
         cEIFBaTN4NuJ5g+KzX6DKZp9iGGsR32lQGwNtLF7qShsG1jnsQGhqNgaTQxQYy6ZY7vh
         RlqExuT8Gmk5jjyjOYQkUtgrf5uXNveTUZl9Pi60AVKPw1si0I03RM8j/br9XT46docT
         akPQJcOAOXaAj0Vnp0ITCM1GgO9wIXWopMma8y+jBx/if1zzrA1mheYEeD5WhikSn+rD
         biRut9Ylm6kFcIx3Bzyc2ItOc3KHketrvITVvhLersp8V1hCPeeNHeZURehSdOU/Tk46
         LclQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
        b=gNAB3NZ0jA/yg+GVneXM6L1vldOuGBs8Zz5eohXFxFxgUGOqu1W4Ah/9UWsVkOCHOW
         HyEBAHo6AGfUIunf4Wlftlvl3/TPXJheJDucaC8ULT1+W6WJtL0CBoVP9S+xvUt+l6Bx
         TMWWELN+erRRaviAHkdmEh8z4BOn8Rvs6zxFk7BTJMlxzyeFfnkjfD0PeJ3eyu+xiWd+
         kCcnuY0qQwR3QeYlJX8V3U2DEGie10oumUMv6UFEI6gKIKEpvsTOx+TauSiyykNMg5Em
         6y0p1IHn55IPegSOcUdFtBSdlbM0genrwSbwHKW9qGnDpO4RLRKB7Ks/7A5mmApz05sL
         q6DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OQbB3ahk;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id q141si1239850pfc.4.2019.10.23.06.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 06:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OQbB3ahk;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id t20so32143356qtr.10
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 06:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
        b=OQbB3ahkNcYiRxKZW8WuEY2S5xKzEhTNB/yLXCb1NRI8+c7ma5fAM9xNufogBcCpNg
         V5siEzpBSch8ntre1ZdrN8kiOhhZX8AIUIELqxg5XWp11+Wn6SMTVEtWb7T2sKxwiCn0
         AQxaWPGf9ayNFpQPdasmdYfV4vXuSjxaqeI9mN4kSB6ETuY4xI+Cotu/jBQHp22f94va
         p/daWLWBPAxV9x2V2EwGYeMLWAj69yJelgOqu+70IE33ofgUlvNXfugBhApkps3Og5rD
         EWc6s2CMCuPgPeMhpAWbVIbo0Y6+/csSEDR85pxw0Ixxi3LOUdDn46zToyKDyl/Y9Rkm
         rUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ohRiKoQhkRpaqt9hJhdQvzQzR+t9Fsg+JL8RFCA1XEE=;
        b=sjvyrURVLtID38KdgkfpHGDRXiMOF//dgGXmIom/Cg8QTvjS4BWt1WnBFyISoSk0ZA
         uimqdeJ7KgjT8uZMB7iP1yoIn+R1UBSKvtAcBqDqRilKyruT5xCH271oFgrfCETvkXGO
         aKGGpQF9xCSB+LsWPvE6rvU1CdOa8VpYy1k48y21J6REDrWxRxYlU++Xy3NkInLU3Buh
         wf11xd3VxRlk9ZBjDu80yZh4xMBbfS6tkKk2uX5DVdP+uCblW6/LlrNbaNdKketXaOtH
         sRYxy/F1v9WCdX++fhMFPsvD1xtsftUI4PiBnyopP9eiC3vZN1LTl2+O9D0kfS56aX/F
         c9vg==
X-Gm-Message-State: APjAAAW93mzwQagLz9szoEVO4XR43ziZZkJwWjKFPGkQ7fu9Tb5u4s8f
	Ktx7+DgwzxFMxZtoIqkI2mA50LK3cXc=
X-Received: by 2002:aed:3063:: with SMTP id 90mr7472229qte.242.1571836390299;
        Wed, 23 Oct 2019 06:13:10 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([201.53.210.37])
        by smtp.gmail.com with ESMTPSA id p22sm9863919qkk.92.2019.10.23.06.13.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 06:13:09 -0700 (PDT)
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
Subject: [PATCH v2] staging: sm750fb: Format description of parameters the to kernel doc format
Date: Wed, 23 Oct 2019 10:12:53 -0300
Message-Id: <20191023131253.20819-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023131253.20819-1-gabrielabittencourt00@gmail.com>
References: <20191023131253.20819-1-gabrielabittencourt00@gmail.com>
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


