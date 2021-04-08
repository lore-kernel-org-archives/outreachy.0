X-GM-THRID: 6948889025177452544
X-Received: by 2002:a9f:2aca:: with SMTP id d10mr8667818uaj.35.1617914325186;
        Thu, 08 Apr 2021 13:38:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:475b:: with SMTP id i27ls659187uac.7.gmail; Thu, 08 Apr
 2021 13:38:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzPAwUsBqBMXVbFFchJQLw2YrCWIAhgET67tMqVsXKQe/inVD8tIXLYx8+qXbAnlG4Fs1XZ
X-Received: by 2002:ab0:c2:: with SMTP id 60mr8191585uaj.123.1617914324277;
        Thu, 08 Apr 2021 13:38:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617914324; cv=none;
        d=google.com; s=arc-20160816;
        b=GbHcU9Mbv8jpLHCKIHCKe9ixw9V6UmDDqoIitBC6J8xuRc2ljSQGQ1T2mI5vjNPhLz
         W1Pj36Z/YUZXT8Z0n+PFev8jBpZipJ1JSG9hgqE8Sb08wGr2ECJifsmR9q8jlGZnDuF2
         U72hqQkvr6INJ2LA8tB627o6wK8IyX6+Z8HMhW+HUy7gd03mngpgoJQgrRcpo9DyktRS
         FhltwgDbkN4DKAG1vOKW2ukiGkt0AuNDCjhUN4+lDBUTUqZw0k5bshyg2UeRkfdkdD/S
         oPUHC1Rq/hD5sJMuGpfeBh/PC1bd84ZJ5h7wv9RZotDf5pdfeiA1lRyN2S/60xDfvXl7
         8iKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cXGFaEh6PCrLA6C4q9RtpEQVCq3uC/hVZI//O0eMp4g=;
        b=bnU1hrnQMCcyVwPi3+o3tBvvbN5TG1mooRVpzMUP+wKrW7sc9Pgb1UyOQ/nJG7jB0U
         Y51pN6A99trNd6jNZ3FqJhtaO7174xy31T7Ef1B9bhqKNxHaEd6jp1dJ12I008yCr2ho
         NnaYTkdMUOluTuAAbs0XZklJBpmETgVe5kU9u4IAgrdTB1hiVOuFgKJwyyviR7V5jGh/
         Z+mK4QLMQlQhJ2uixz0LrK5LGJ/JbOWPmIX70+5MmgIyD67Kck7kFQsR3RYs1LkU9Ruu
         g0xV1F853LiYv/KkbR/f/dpvo+YTehYBdY9p17lqcWHsJrwzzlk8ym6dfcB7gaZNVyaE
         mg/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="f/LlkGDq";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id u22si25849vsn.0.2021.04.08.13.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 13:38:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="f/LlkGDq";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id i190so2697002pfc.12
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 13:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cXGFaEh6PCrLA6C4q9RtpEQVCq3uC/hVZI//O0eMp4g=;
        b=f/LlkGDqmvtigaRHyNZ4I7tRGUf+Iw+okC/qvDjTGAoDJNOMZ1b1czJ/FPYgmAeM7b
         iBcNNjQwepUk/36qBXAwS9Jz6FipKOh05oUYmHpV/wi5cWC7H2I0QgMTo14YbBb5WNbl
         IiciUhySQIOpGvhgCJr1kgY9wMC7CMIUH7MnCUdn0XJ4k7xB5Wn7CrhHcZQLr2shK3ya
         k8vEIjKaaA7ykKGrIznSYynY5XVKiY4Vf5ujhPmGzSSMu4nWhAEz7Xiu58kTVoIrcN9L
         g0cAV7xzmVezFd3MXtnIul78/qbk3infSQP8/fPDHFAfBBXEjFEcFBwU5VOFZlySTE6q
         CYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cXGFaEh6PCrLA6C4q9RtpEQVCq3uC/hVZI//O0eMp4g=;
        b=VGAnFqHPbC2sCnnP28mNGNt9Nlr5owmzr/aoOXbBWn7n6OdTYf4dQvpR3XDy2rhOtN
         lIv2F3IGdX9eyZv23qM/RuSaDKzfKrHPHWC/Wm3XPS9iLp+JhItDlL1WJ23HWImpg+eI
         MmPhdM2DPmxW7+1uIA0kaSd/AbONRDN2D4xPm5esMWgLXBgQs4+Zf/fEy2UrT7oesk28
         Cs1rWTOUkRM/Na9XAy8e01MLgQqgWxKqzEQXQDxSHB0CuAczs0B+TgXvASKbab2OVZ9w
         a+4UIBexL9Lzrs4XCfMCDJXqqGFWzOC8tGv+0nNqZJwyFeJyiJS7nT/IZbJ8hluVSxkL
         A5Uw==
X-Gm-Message-State: AOAM530sPxkpm+omnWH5A4ak2ScQclr7f4jaDResFacruq0oVivaUeHd
	FWGIp8qToHtiiJ+mkxxPyeg=
X-Received: by 2002:aa7:943b:0:b029:23f:8fa1:5f11 with SMTP id y27-20020aa7943b0000b029023f8fa15f11mr9091978pfo.67.1617914323385;
        Thu, 08 Apr 2021 13:38:43 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.11.236])
        by smtp.gmail.com with ESMTPSA id t10sm258894pjy.16.2021.04.08.13.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 13:38:43 -0700 (PDT)
Date: Fri, 9 Apr 2021 02:08:35 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH 1/2] media: zoran: add spaces around '<<'
Message-ID: <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810@gmail.com>
References: <cover.1617912177.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617912177.git.mitaliborkar810@gmail.com>

Added spaces around '<<' operator to improve readability and meet linux
kernel coding style.
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
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


