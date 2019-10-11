X-GM-THRID: 6746422022313607168
X-Received: by 2002:ac8:3f64:: with SMTP id w33mr14725147qtk.191.1570773811263;
        Thu, 10 Oct 2019 23:03:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:ef0f:: with SMTP id d15ls1273220qkg.8.gmail; Thu, 10 Oct
 2019 23:03:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoDSzz+sSXioJ0nvqnjqATdYFB2lURDfwi6c4g6vaxZtNKSZP9t9isHFa2Q4ud1j3TmPgN
X-Received: by 2002:a37:7dc2:: with SMTP id y185mr1138496qkc.100.1570773810213;
        Thu, 10 Oct 2019 23:03:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570773810; cv=none;
        d=google.com; s=arc-20160816;
        b=F59Fr5vWOhxALZ5U/38HMCRDPQmqwEtaVpwqVcxzQ5GJQfM43d2YHffoEW32mSG6Fp
         0RfH08WmBuqHd2VcN+3fpbUzG8121X+k7qpd9Jf2uWtI5dfsDoL4r6LDg+nOonA2RYm3
         WMoLcywNdUkj+upC7XiPQC0Vf6hQoJw5ii0aCn8gvceeo9LDzTApwr9KmFMuqJRmZLbt
         tJ70pxAz1ssny9h1LtFvvxYOM8pLoppNnfeA6WNZ+JpQyOCeZUIZhzkeA/VXfoDiztv6
         aM3wgrBAL7XFfyGz63myJq3AoER87pdwmWxW8pDXP84RoXc7rR/k4PjZYMZ2XfJQzU52
         p+PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZhH7y9bWqrYq0GkntR2sqe3cFWsNeqnTiNZ167qd4Ww=;
        b=d2Hhwo0vIhhz/53ZpWxTxrO92WkQNKNQ/zrw3r+RFT2lX6bVNUH/0Wnh6yQLE13rou
         ZLjnjg913gDfI+h9D6GFU6aQHFjZhaqJuV36hz2ush0bCVG1wHlFqow93wUF7eSTPMkr
         wk8mUbSTEuWXUwUnatujfqQ45UE00aGvzAgEgXPKxtTGTVh+GxWaP2HTBbtqyrAcdTfx
         gYki0zsEoNj5sDO59Airs43LLWPNl/C3zrnkyohWTvx1r+AiOZqsw4CmsY+CnXNNxmS4
         Bqia5vvj1K2fQuvIx+6qlosmoSD9Le+X4QxMSs5hYiLmDJl5gmnwtjF6KIUrawBTi1ci
         0GqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCsQiH4z;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id u44si895056qtb.5.2019.10.10.23.03.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 23:03:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCsQiH4z;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id d22so3967491pls.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 23:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZhH7y9bWqrYq0GkntR2sqe3cFWsNeqnTiNZ167qd4Ww=;
        b=QCsQiH4zWuKHwsrNSls2v4R+pgugagGbeWEx0Jxi05GUkcoh3J8oTImD/N5SqDx11B
         DKgkcanC09fKw+B+TmxVc8a5cEBEg75rnu47ckfW3U/ariFlcLaSfcKay4RdHgc71Sv7
         UyPem8oI1w5WSHT+6pdXHHOGLoqcb1S+93dT1rlBWr5NcLznYSzaiRmTbwfnICVl3pUe
         RSsLpBCAHFmNC0rKM4Hiy8eevrSCU4G/FS4D402e8pJ8qa6swip9P/UsRmtLa3kXGJ5a
         VBJfiBa62PBLkawRSn/QA7A2POcOhqMprIz7xU5cpGj5boKYxe4vUF9/jD7Uilm83BuX
         Vpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZhH7y9bWqrYq0GkntR2sqe3cFWsNeqnTiNZ167qd4Ww=;
        b=nhsmpC45e4FH5rNbpTWO7nRAyjBNeTqUoTUuEJCGvYU+jjC2DL462L0tOK7gfifdIq
         63klTwtg3YszGSLdFY0G5AH7L10VuXvQqLtT7ywClfrUHTHxzyFhR8XFxSRrZ/DIveyu
         BLw98YeBI+2VRa83R6WN6+mutB6M9Y+98lSH2OHNqZZCSJmxGKv1QFv8PqERSRcalG/P
         mEvUVSU9VkzcUphEpNej5zcr+K0V63YHRj80MAIBDcRPp4RIzZj4u21oyLZkT71bnwNf
         qjesIMshJU6p1XieQyDXEcAk7wowV5bvbLHalQ6DloKLN6oZ1q1jnaU4YYNAkVEqedxm
         UnPg==
X-Gm-Message-State: APjAAAX6d35tds2KmoykkDShai7USo71Gh6xCyfKz7BL9PCRgEPdpw5T
	hD+iORUdsENM/ayb2wmae0J2ibNEkxn/4A==
X-Received: by 2002:a17:902:aa07:: with SMTP id be7mr13517839plb.242.1570773809093;
        Thu, 10 Oct 2019 23:03:29 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 23:03:28 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 3/5] staging: octeon: remove typedef declaration for cvmx_fau_reg_32_t
Date: Fri, 11 Oct 2019 09:02:40 +0300
Message-Id: <b4ac58c4f17ec98e014980ae7084db16ffd9d97c.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove typedef declaration for enum cvmx_fau_reg_32_t in
drivers/staging/octeon/octeon-stubs.h.
Also replace its previous uses with new declaration format.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 78f42597cee5..1725d54523de 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -201,9 +201,9 @@ union cvmx_helper_link_info_t {
 	} s;
 };
 
-typedef enum {
+enum cvmx_fau_reg_32_t {
 	CVMX_FAU_REG_32_START	= 0,
-} cvmx_fau_reg_32_t;
+};
 
 typedef enum {
 	CVMX_FAU_OP_SIZE_8 = 0,
@@ -1178,16 +1178,18 @@ union cvmx_gmxx_rxx_rx_inbnd {
 	} s;
 };
 
-static inline int32_t cvmx_fau_fetch_and_add32(cvmx_fau_reg_32_t reg,
+static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32_t reg,
 					       int32_t value)
 {
 	return value;
 }
 
-static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
+static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32_t reg,
+					 int32_t value)
 { }
 
-static inline void cvmx_fau_atomic_write32(cvmx_fau_reg_32_t reg, int32_t value)
+static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32_t reg,
+					   int32_t value)
 { }
 
 static inline uint64_t cvmx_scratch_read64(uint64_t address)
@@ -1364,7 +1366,7 @@ static inline int cvmx_spi_restart_interface(int interface,
 }
 
 static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
-						  cvmx_fau_reg_32_t reg,
+						  enum cvmx_fau_reg_32_t reg,
 						  int32_t value)
 { }
 
-- 
2.23.0


