X-GM-THRID: 6950732007035895808
X-Received: by 2002:ac8:65d3:: with SMTP id t19mr26086098qto.332.1618343423098;
        Tue, 13 Apr 2021 12:50:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:1046:: with SMTP id l6ls711652qvr.3.gmail; Tue, 13
 Apr 2021 12:50:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJykU7voAvP2izfTTSnFmGRiDZOYRp7XgPl5x+HUr1u2K8RBve36i+yeN/yHxchVyCle66Hq
X-Received: by 2002:a0c:d848:: with SMTP id i8mr35026764qvj.23.1618343422354;
        Tue, 13 Apr 2021 12:50:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618343422; cv=none;
        d=google.com; s=arc-20160816;
        b=CyYg0H2gbd1b3aP/GeKmLoOGqZ1+s0GExuoccxHk955+iNIu8ByQ9vE9pG3ILuK2wZ
         +v8ttCV3PBAexcWtB3tsiMHrkAeMkSggrJrZCC1MxiciY03rHQ5j91N2Gz/BwO1HISN6
         SIzjDnvs2OHhCBk453z8DEsOudUOP04EVWjZD4i5+1O1bu/OYZ0b1DBMBqFRuq8De3yQ
         W32fFw1Esf45OTpcgv8BXSh2Y3Pmp9KKN10x3zhKBBel9R1DnJajvSlGnp1b9DI9FSCF
         Ao8GUiJmBetGMs4YvgI7W4CMy2RxVJv7cnM+H52wr5+1u8gCSEuVfBoM7s/6ND0olEM9
         mfyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xuSm7lduvaNieNDTtoqbp4d4Yshagez+v52iHy5UOJg=;
        b=D/0iP8gS6VBqUeRLWoP8fQla7UYWrPHr7TxfdMDu/CL4NWbhrClDQ4k5s6nPTSyM10
         83l77bW6URESFOJ00y2wK5ixSNcJQ/A227flvggH46uWSc5mE2Y/oyWapz8Sf9ioiQsf
         aNbSGwDy2EJwzqEsZW6YyEAX57gfNO9MKYQxaof8I3Hs56fOclF7gG2Rql8ijaPnBoUm
         vg3Kkb9imLL2RMq0Tx0+31XhtAJ+wWmrVQRrQM3aUEP+YeCO18l7Xj4G6U4jWZa2LX6M
         /vh6ssnYtEVLjbqLRDYfikuqsc81DLwSJBcsAMw4/z5u4Pa8EE25VG/T1O8MXXDBoeuo
         kg3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eFmB2glJ;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id l15si412907qke.1.2021.04.13.12.50.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 12:50:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eFmB2glJ;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id z16so12702354pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 12:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xuSm7lduvaNieNDTtoqbp4d4Yshagez+v52iHy5UOJg=;
        b=eFmB2glJriyWzg8p5ap5w+1U0RcYO2BC0Ga/uhAsjZJRbnNPvA+vHTkBbKE6c75bgY
         oglGjlVL5y+n6GUS9sPMp+UWd939RbhrUcqzFyqvbz0vJx4WDi3AlBjSLwe+p+zOfwtB
         XCgDxmS4Yi9U2ABrBRhKX46x3AwnHUCoMQQthsYml0JLTRWRn4xbVpFqKMUwJdA5ru++
         zeYutmRaNc9P5d6dCVHwFfOLWgGGX2mei5uBc0tC99t5VEL3XjiPtnbdNaspn1MA6SeA
         djQF0iXzr+kpVAkFSo7/W7QK5IgrEZ/RShE4ueoHKqXzfNE7O62ZBZSdWuGZXvGosEo+
         +9Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xuSm7lduvaNieNDTtoqbp4d4Yshagez+v52iHy5UOJg=;
        b=D+Oef1EE0GKNXd9V09odm11uFN3Zg5GA098vgS5gjPQKP15g4KzyPr2qnF4UBbhJUW
         j7H2K4qqI1IEFJthIHfLS2HPpCERFFddFmFJwEW4cXZezJhLw3agNQggdPbOW+vSwiYa
         8NnZ/z7PipRqW6HFGg5uGMuKZEc6F64y2xKRBhLGGsn0q/FUKbx/MW9jbCesIRslvjJU
         MfDO15LysMpXNld8KZhzahnYwZVQIKDkOf3n/rGDtmYQqc4luz1rDVzw4oVovVrsYgcs
         tqK1QytvOuKJeAOLUi+qOqY4wH9GAY+mRoo+JLx3cbWvR0cU6eA1yO92nLAH6EWM39Ut
         qNNA==
X-Gm-Message-State: AOAM530i7SNBRvSbHYnQR/99iSHdnGeOfz+SF7qW43oXLoT4Koa0tx/0
	RVXdw2Oo6TsZUppHmE0bdPbqmI5sL1q/8w==
X-Received: by 2002:a63:1717:: with SMTP id x23mr33416121pgl.89.1618343421478;
        Tue, 13 Apr 2021 12:50:21 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id q13sm91536pgp.37.2021.04.13.12.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 12:50:21 -0700 (PDT)
Date: Wed, 14 Apr 2021 01:20:16 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v4 1/2] staging: media: zoran: add spaces around '<<' operator
Message-ID: <b0c00d95962a836d16a9ab2a0ee66d99f548b15d.1618342050.git.mitaliborkar810@gmail.com>
References: <cover.1618342050.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618342050.git.mitaliborkar810@gmail.com>

Added spaces around '<<' operator to improve readability and meet linux
kernel coding style.
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v3:- No changes.
Changes from v2:- No changes.
Changes from v1:- No changes.

 drivers/staging/media/zoran/zr36057.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
index 71b651add35a..a2a75fd9f535 100644
--- a/drivers/staging/media/zoran/zr36057.h
+++ b/drivers/staging/media/zoran/zr36057.h
@@ -30,13 +30,13 @@
 #define ZR36057_VFESPFR_HOR_DCM          14
 #define ZR36057_VFESPFR_VER_DCM          8
 #define ZR36057_VFESPFR_DISP_MODE        6
-#define ZR36057_VFESPFR_YUV422          (0<<3)
-#define ZR36057_VFESPFR_RGB888          (1<<3)
-#define ZR36057_VFESPFR_RGB565          (2<<3)
-#define ZR36057_VFESPFR_RGB555          (3<<3)
-#define ZR36057_VFESPFR_ERR_DIF          (1<<2)
-#define ZR36057_VFESPFR_PACK24          (1<<1)
-#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1<<0)
+#define ZR36057_VFESPFR_YUV422          (0 << 3)
+#define ZR36057_VFESPFR_RGB888          (1 << 3)
+#define ZR36057_VFESPFR_RGB565          (2 << 3)
+#define ZR36057_VFESPFR_RGB555          (3 << 3)
+#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
+#define ZR36057_VFESPFR_PACK24          (1 << 1)
+#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
 
 #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
 
-- 
2.30.2


