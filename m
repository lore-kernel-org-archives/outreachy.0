X-GM-THRID: 6746979289302827008
X-Received: by 2002:a17:90a:8d13:: with SMTP id c19mr25177276pjo.63.1570903565586;
        Sat, 12 Oct 2019 11:06:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:3687:: with SMTP id d129ls1317208pfa.13.gmail; Sat, 12
 Oct 2019 11:06:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzamWugM8RUTRELHCf/MzLfIj5YP78bzR6FaNC25iQrvTuLpyBgAaEt8wXOIUw2PeXJHuaA
X-Received: by 2002:a62:5ec6:: with SMTP id s189mr23168899pfb.169.1570903564370;
        Sat, 12 Oct 2019 11:06:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570903564; cv=none;
        d=google.com; s=arc-20160816;
        b=uGF4mXl4p/oZZAaMxcVQmNyvkJd83qg6HoeeEiU5oaqZ4nm4E16ZZNDx4ELKkwQRxo
         e+JlGKPg9Ie2ezniSQ4ooLwjO/s1ErhMmVbZSkkusl5tUCwjx8u/SX5DRn5Gjel6k1Zp
         xxSmj3WHR7OSa8bMmrxLcaDdWHAQsYpnUoLmBGl3k0JSD/toY1CSwGj3o7WEvJT3NR9E
         fJmtwhFMCY8+3pDVb51YE6dAg1yGxr0pgqpIonoAsfoOV9ypiayh0V1CPFa3X66mp4Yx
         bAe9a/9HvBY7rOX8XP2sSlVEFdkzgudgj0pZDl9Wl8ePeIcSzpvjsda2XL8xbstcvlwW
         HJ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=M0IO3QVHvP8iuWc7wMX3UeVoicJhBdbrs0nmaFfvgXI=;
        b=RbVZib8MqlVFywF2rnlSQ58omVp+TYfKCNBtDQza+IKx1AT4nVNI3iscBPAUsnWJcN
         gIc7eFkZEZRNQgiDtZZiCCDu1KTg57VfmEeMi4qLfEp0K4RVgoGCNlOgcq+fmSsOzsD/
         dkqiEaFP7gcCkITeYM8A9kK0Z7uq+Fd4ygvyrvz35I6dzzrIpSdQtfwrgce/nDuXRiBu
         0wH23uG2WP+YkZB4FNwLz/2EF8BLaJa6BKYq5tfvi7LVXRrEIyWqe3xAvXV9YmUl4Jxq
         2B0I/V5Dezkax/s8u3g0zSGZ/9FgmePEqMtfym6PA7tfBfRXyx8+rE0Fo5wmJOe7Qq37
         Uptg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cKSczFSU;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id br8si1427507pjb.3.2019.10.12.11.06.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 11:06:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cKSczFSU;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id d26so7644797pgl.7
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 11:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M0IO3QVHvP8iuWc7wMX3UeVoicJhBdbrs0nmaFfvgXI=;
        b=cKSczFSU2zV5NJoLOSzUVc9jLOqNZ8plp6l+JTG6mIKrUT0kLwwHdzrrqdTmW3K2Ap
         hTaONGQQWgN9MtghRVYKIM7ZR2wKtklibu2cBXCFAZTuMhXVQKGHyoJUdboogMsBLGkC
         +r5ra5fIwC0j2+2Y/8hkRITfOo4bEP49KYqy48Hbu5bMDC4JKneBvol2E7fU1ITtYF4A
         N/PL+xT1gzG9Fu4r3Bo4EaYZ5ptPrywgeJq5Do392d4087jSxu+nZMsOhoMakNmAZ5JI
         TZFSwxpy6sSXQmJ/KfBTEUaWwQru/rjLRtSHfCV+rvXplG9m7wWu5DWmntDbGAfpJlod
         NcMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M0IO3QVHvP8iuWc7wMX3UeVoicJhBdbrs0nmaFfvgXI=;
        b=AMIidmoLSw9PsZySk23K63F2+JWDEOMhv1nwd5lJ0aLV5hLVBfknoKsvwoS316kWEP
         ZN53sUZgH5UBumgJlodiH7VwhCdWQ+OBNmDTMKuqEZvYuY+VMrGtpSRr5ox/ACCnMA6C
         PTS6oXXDuwRhjHCQItCoEJ4JvGuQvXMMlU7qEdYsbboRDCEXOslbQkfrhjEXpEht6QSb
         dy5A3UFAw8APh/BfoFfw/BUJT2xg2vObh8gG4KfsFC9fdhBChhjofaRrZ5hTH+D/WX1+
         3eeZCMg9Rps7gUCtFyUZr3VXigGWdKI9kHTErdqzsqkavKNQSCFvlXjSZqEANOZanf9q
         Th+Q==
X-Gm-Message-State: APjAAAWm6E4eUgcTjh1atk9O4uWVXObRcrrfeYaGrU1gGd3+ohcvp3kO
	4b0Zmf5XJVwFcH464nphkhyrbU2oOJwMqA==
X-Received: by 2002:a62:870c:: with SMTP id i12mr23374694pfe.247.1570903563907;
        Sat, 12 Oct 2019 11:06:03 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 11:06:03 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v2 3/5] staging: octeon: remove typedef declaration for cvmx_fau_reg_32
Date: Sat, 12 Oct 2019 21:04:33 +0300
Message-Id: <b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570821661.git.wambui.karugax@gmail.com>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove typedef declaration for enum cvmx_fau_reg_32.
Also replace its previous uses with new declaration format.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 0991be329139..40f0cfee0dff 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -201,9 +201,9 @@ union cvmx_helper_link_info {
 	} s;
 };
 
-typedef enum {
+enum cvmx_fau_reg_32 {
 	CVMX_FAU_REG_32_START	= 0,
-} cvmx_fau_reg_32_t;
+};
 
 typedef enum {
 	CVMX_FAU_OP_SIZE_8 = 0,
@@ -1178,16 +1178,18 @@ union cvmx_gmxx_rxx_rx_inbnd {
 	} s;
 };
 
-static inline int32_t cvmx_fau_fetch_and_add32(cvmx_fau_reg_32_t reg,
+static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32 reg,
 					       int32_t value)
 {
 	return value;
 }
 
-static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
+static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32 reg,
+					 int32_t value)
 { }
 
-static inline void cvmx_fau_atomic_write32(cvmx_fau_reg_32_t reg, int32_t value)
+static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32 reg,
+					   int32_t value)
 { }
 
 static inline uint64_t cvmx_scratch_read64(uint64_t address)
@@ -1364,7 +1366,7 @@ static inline int cvmx_spi_restart_interface(int interface,
 }
 
 static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
-						  cvmx_fau_reg_32_t reg,
+						  enum cvmx_fau_reg_32 reg,
 						  int32_t value)
 { }
 
-- 
2.23.0


