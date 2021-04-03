X-GM-THRID: 6946995103705595904
X-Received: by 2002:a17:907:2941:: with SMTP id et1mr7119133ejc.48.1617473344571;
        Sat, 03 Apr 2021 11:09:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:16d7:: with SMTP id t23ls5972811ejd.7.gmail; Sat, 03
 Apr 2021 11:09:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJya0PEwJIFEG/JIK8i+lpXrAzN86EcGYZ/XAEB29TSLWKneWd+XHcf2oJY8BMF4TprXRLKy
X-Received: by 2002:a17:906:acb:: with SMTP id z11mr20195174ejf.193.1617473343206;
        Sat, 03 Apr 2021 11:09:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617473343; cv=none;
        d=google.com; s=arc-20160816;
        b=FRNP0wYGktvy5ZKYDR5/I01SbSxoXoa6/YRkabUkI1LiYI87723LxY2odDVcgMuQLk
         hOxZjqX8Te9VMvZQ6t1q6OQGg3XfE3z2G/aHbZ0K0zGES0Tq+3i/Ib3fkyIkYIYWEOz6
         kraLlMJRFnd4v3uePL038BifQV4uKpuOqazAoPefJrf9JWp2iRFgGJkNtUmBvwOliuCn
         hgD2C9fxqmxLgEOBHahpQBKVG4PRGE9zLMyuDky4OGjtim9P/KhL9lV1vKdZmJGko12o
         Q6oxy+ch7hE5jcxegMUAhk7fHTOdEBz5Sf2brtY4kGsJH3tJeQNpgLVuyifL23Hf6cHp
         gV9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+zl2y4WcU4R0W3ITuE2QJIZQ00fTmDL+l8JpHXE4Pss=;
        b=Q0KE3yTmpW07m45UkKs/WOJzn/kSbBDuxeiBsAhjr0xXEdbtL8lr6jRCg8E3N9Mgf9
         2OjzMxYFkL4NpcHx9XVEHRaJTDKdnFroTGhwjeNiAftV5thUUck3eIG/B8i5L/ofgPlX
         pugCPUhGFC3BQzOKxFyj+sZDMmRqv131pdKuFskox3nOJx/QU5syha7uTvN359LS3IXm
         M+8yEnmQ2eapB6uCawORXsbKVtnO8iftGs7LapuA2tPZGWt1cu6FfW4Zv3fFAE67TRgx
         F7By3j6cW/ix44n1RtblBsIBft4DA5pDoMTb57yD1d4T92H+3RRRoXg7lC+6Mroho2Df
         EQXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ef4g5JV8;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id dj3si795860edb.0.2021.04.03.11.09.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 11:09:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ef4g5JV8;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22f.google.com with SMTP id 15so8722204ljj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 11:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+zl2y4WcU4R0W3ITuE2QJIZQ00fTmDL+l8JpHXE4Pss=;
        b=Ef4g5JV8ccGUQyQlk37yDwtMcWa7IICkX5aS3i5PlzDbvJwpzuRFqDQ5siaBKuyi9W
         dveov30OlZGym6TCbh7yi8zp3gSVLpfV6QzL5zBZpwZaSB2nwszwCnyv/UVIsKhIu3mP
         ch6Abac6Ir0239SFunFsDOhDBxKEHjB7RRTcMEXvphtPmSBL/fwuHBoRo9fk6PdkXM0h
         ef2+OBKWNCaKjKuOQVBgurIOHfHw2YLKqLDxnlGIz82HmcmiGTeKL0fGF4PCta1Cvy3c
         aY7KnSc06aUg0Q0+HH9m+KrtEpxTfEPo2adSud/KzaMenzb1gsD7N3jPGqI5L36suWtK
         NX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+zl2y4WcU4R0W3ITuE2QJIZQ00fTmDL+l8JpHXE4Pss=;
        b=NpWVEJ4BOCo9Chsy2m5je+u/VinsPnG64E1pRaAL/t5XmvOPcsH/L+4eAMLqASpmXy
         wGt1IxndMg3c7nqlKFykOoer9IUra2efhYiQPfIWsDfzdNKHOCyNCZtk/tMXA+t3qx/z
         RPPVKxEbtJY/XaR0vy7lP8mPVjoamknlmLaWr7ch4hvzT3vy753Cm5ZBzyXbl863lymb
         qVjQ9m6FfN3jY64XCCPToJjeOw1kJVgXIkcncIJmAXFoy5ZCGzrVZMG7SpvqYY7iTZ1e
         SGDPt/BLakCXsPscIbN/BReaGbDsWjazEAGTYWCsblW2dwjVTDU4cvyB61rdasZORKW0
         YoPw==
X-Gm-Message-State: AOAM53044Tw2r2A/YsWHEKELeXgs5AW3rzo+k1xSfnIRn7PEw6lLBCiP
	geKHya49dJn36NXe9N4S/eWHiky/PicHvuSZ
X-Received: by 2002:a2e:b8d6:: with SMTP id s22mr11506253ljp.252.1617473342760;
        Sat, 03 Apr 2021 11:09:02 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id h62sm1201544lfd.234.2021.04.03.11.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 11:09:02 -0700 (PDT)
Date: Sun, 4 Apr 2021 00:09:01 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: media: zoran: Rename 'DispMode' to 'disp_mode'
Message-ID: <0e31f8ef345b5972ea3f16ea29f962286ebab3e8.1617472411.git.zhansayabagdaulet@gmail.com>
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>

Rename variable 'DispMode' to 'disp_mode' to eliminate camelcase.
Reported by checkpatch.pl.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 6764b51fc595..8891f11f6276 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -292,7 +292,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 {
 	const struct tvnorm *tvn;
 	unsigned int h_start, h_end, v_start, v_end;
-	unsigned int DispMode;
+	unsigned int disp_mode;
 	unsigned int VidWinWid, VidWinHt;
 	unsigned int hcrop1, hcrop2, vcrop1, vcrop2;
 	unsigned int wa, We, ha, He;
@@ -341,8 +341,8 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	btwrite(reg, ZR36057_VFEHCR);
 
 	/* Vertical */
-	DispMode = !(video_height > BUZ_MAX_HEIGHT / 2);
-	VidWinHt = DispMode ? video_height : video_height / 2;
+	disp_mode = !(video_height > BUZ_MAX_HEIGHT / 2);
+	VidWinHt = disp_mode ? video_height : video_height / 2;
 	Y = DIV_ROUND_UP(VidWinHt * 64 * 2, tvn->ha);
 	He = (VidWinHt * 64) / Y;
 	ver_dcm = 64 - Y;
@@ -362,7 +362,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	reg = 0;
 	reg |= (hor_dcm << ZR36057_VFESPFR_HOR_DCM);
 	reg |= (ver_dcm << ZR36057_VFESPFR_VER_DCM);
-	reg |= (DispMode << ZR36057_VFESPFR_DISP_MODE);
+	reg |= (disp_mode << ZR36057_VFESPFR_DISP_MODE);
 	/* RJ: I don't know, why the following has to be the opposite
 	 * of the corresponding ZR36060 setting, but only this way
 	 * we get the correct colors when uncompressing to the screen  */
-- 
2.25.1


