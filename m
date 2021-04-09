X-GM-THRID: 6948889025177452544
X-Received: by 2002:a17:902:d78a:b029:e6:e1f:f695 with SMTP id z10-20020a170902d78ab02900e60e1ff695mr13982268ply.82.1617993883049;
        Fri, 09 Apr 2021 11:44:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:348e:: with SMTP id p14ls5477722pjb.1.canary-gmail;
 Fri, 09 Apr 2021 11:44:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztaQZiiOG95J+HuAQ9uBJ1NS70RaG28YZ5Zv+q7il6knWi0BqlySEjdsXFDM7mln6hALt9
X-Received: by 2002:a17:903:18d:b029:e9:2863:69c with SMTP id z13-20020a170903018db02900e92863069cmr7353141plg.5.1617993881878;
        Fri, 09 Apr 2021 11:44:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617993881; cv=none;
        d=google.com; s=arc-20160816;
        b=HusDEj93nntnolRSgnC0YvJ9Q4GpnzcPSApttPZEzVaqRY4l5vdoGx4boU1W9eEMM4
         Bk1KAWr3wGJlIAkecmx1VMkX6JPi6/CaBR58YXHtfP0h5++Z78j8NfAG2OQ6EY4he2f4
         gS1KnSRn1JmKIaFaFahx5o4tvnETV9ts9Q7jFhWxEFtj/HdkDaPj6jH35dkODKm68FX5
         AUjjPN38QFzh12OtRS2hVG3O9fFyN12ptksGOakUs5Nhmps1pwuzNo6D+OgzYqRba+7g
         8M3bVh0C/VuMkkkpqhePmY60XDAhBy8sgKYE9bszknXmvTyJJtzQVd5PBtgI+s3guFrm
         IvAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=DEZQwU7+bR4zHFrlZFkoLnzYpfePzyjEKTTsW+6yMQA=;
        b=RA9KWrBUA22rvpShIBsL1A3oAoKBEhOWsW1GvQoOirL+Mrff7YEcN8XiA1J/5envPp
         2G5++ho5NDjCpZToiK2IoonaIZ9kuxRlbdcgU1L8MDalN96Z1a7MsEtiXYjH2AeooyZn
         cJDVPLdm0+Bf3U8vEZGk4ZgVBdCJWdWzM1MTpaLWuGZ8eHuoEV3CYZSw4fjXM0DNeW0p
         1/lrbCldKZnXNoaKck5TZskwZCPvfxAU7mmWqEyLVg8LqLuQ/+zhCeHw1uaAD/OHaW9Q
         3eOX5U0kqW2SrTXTT+Y8ml4l3K4cjcxLeianYwjF5wMZYbkqEjZBP/0/NuhElPaec4yl
         dwwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hWYEFRmZ;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id ft8si1072141pjb.0.2021.04.09.11.44.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 11:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hWYEFRmZ;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id d10so4570451pgf.12
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 11:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=DEZQwU7+bR4zHFrlZFkoLnzYpfePzyjEKTTsW+6yMQA=;
        b=hWYEFRmZHHq7fkA7wJ3zyzQ33SlB4kEy087wSHjM57p38jnVLjOrnmCarDHQGPzJhU
         qEI5AEHfF+CiRpBP0a1E9vCGCIosskyPta844Nhlq0nP+jd3pnIR26+WXJOQW3JdsYX3
         cM7R0w33zniJwQjNlFXcUc0nYDz/wNrLUjzn0rPbOF/UxkLHE4jX2X6PtfCYlqVGLlma
         SggnWL6Tsbzx3lBbHcjPNlvCavJmCIaHivPMqOtGYLXpBdHB6A/x3As85EMMDBLjdY19
         lcAgzQd1PrCWtg1sopDtS0TLTCTMOamDypm7zi5tyhgZt4HbA3FJ7BAQJiNZjcLPcRIb
         sa9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=DEZQwU7+bR4zHFrlZFkoLnzYpfePzyjEKTTsW+6yMQA=;
        b=PIC/vRF8QlMEzntq8rLu7Y8w1S+CcFwQuge7lg26el9iIHIQ0tqHRwIB8hGBsYcDxB
         ss9mjIGai+/kDCqxNv6+F52ulPGT2QFg/yKcKQa/wM49VhwsJBi1NPc3pyBvgUvATuzA
         F1YEEOI6Qa0e5LAxb12u1vFIWJKlET+Q0xUNLI/nWcKKIYGV4rqoT8Yos3x5Loq/rqgG
         SafGq6qoDaNKttlYuRwtdqkXcgCoW++i0YlaGoq9BjSXZ+IzOLRrQ7hezWATAfvSENJd
         sHRnreglJxyizf5aEkMT+9xdwtwG58N4StEL9Ajcw4Emtw4FpLDr0pobjlc0N9tKGx2c
         9YPA==
X-Gm-Message-State: AOAM532QBuCcz/O+JNDlOWkLznABBPVJKrqcSC7IesAmk/iNn4pmHIqo
	l/VnyQihlUAc+c09ziECw/0=
X-Received: by 2002:aa7:950d:0:b029:244:4dd5:cd0a with SMTP id b13-20020aa7950d0000b02902444dd5cd0amr9255389pfp.59.1617993881518;
        Fri, 09 Apr 2021 11:44:41 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id l191sm3151921pfd.36.2021.04.09.11.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 11:44:41 -0700 (PDT)
Date: Sat, 10 Apr 2021 00:14:34 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2 1/2] media: zoran: add spaces around '<<'
Message-ID: <YHCgksbiLv0pFF2F@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

No changes required in this patch. 
In v1:- Added spaces around '<<' operator to improve readability and meet linux kernel coding
style

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- No changes required in this patch. Below is the git
diff of v1.

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


