X-GM-THRID: 6748810538213441536
X-Received: by 2002:a05:6402:327:: with SMTP id q7mr4826075edw.30.1571329901108;
        Thu, 17 Oct 2019 09:31:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:d144:: with SMTP id br4ls699326ejb.11.gmail; Thu, 17
 Oct 2019 09:31:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyYoYpwau25pLikJcT4ttViD7HrN2hnM1t/QH31sFHKVWRe00BHXaqR9yqTaZI5V1Ol2BJj
X-Received: by 2002:a17:907:2118:: with SMTP id qn24mr4312841ejb.141.1571329900255;
        Thu, 17 Oct 2019 09:31:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571329900; cv=none;
        d=google.com; s=arc-20160816;
        b=cIMl0MvMIsQ5ubMO0+Jf7VHbGwFITeLQXAyuz7G6yvHp4jH8zLUHjKJW0y6tyA7mm6
         VWenvk6melBuyab3f9lQVrHL7U9i3AQz6bzuPJqSF5LI9kbPbASvMOYiFwB4R3bH9Pi8
         09OQehh0nVIL9wmdy9YXZ7jKZjLEKQJQfTl6Rfg2tQFg97AiwWt9dqCl2DiGIzw8t5K3
         gI3nZztOtoxNf+jsPvw3q5jTzzjAPeuyK/dU8qJDmRPIGeD+9orboO1hJaTod5usIvKd
         E6IFVRfLbEtbaARJueAePKgZE0lw5zqEKhwX5gJnauZb8JhVxlflAjwykfgB5W//ngDW
         KRBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=X1zUk17JrlVJLw6KxQJPRWZyZv3u/o1pHV8YWsE0fr0=;
        b=zGr449zuMwWL24OGliIJU0I7/fAV0WjHqhuEsNcsTMpmgYl2/vBMc1jnYiwQpyLAO/
         0/u2ZqO/+NzU9UUSzfHiU7gY+RzLsFYu+mHjpM5SbsAU8q3jPwaZOxzQiellm4tuA8Mx
         tmEIbL9aBZ+yUuQUJucIhltvzbu0yBO94mr2NTMtm996D19ADlYkbGE8QHwwLWPeJZor
         MHSFJFYF5MQ6TlZdW4GkWaKvnPW1CmeAMYaJhbUQQO8esviTMqGblbIpjGa39kVKhYTH
         Dj03bsX65EgiLCFmMDeoNj+8y9e8NHvgRc6zQ/aCBMaBWqMcBy2yNgHSctPBJ9P0WIIR
         BekA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DF+WobUa;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q8si203134edn.5.2019.10.17.09.31.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 09:31:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DF+WobUa;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id 3so3216223wmi.3
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 09:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X1zUk17JrlVJLw6KxQJPRWZyZv3u/o1pHV8YWsE0fr0=;
        b=DF+WobUaujHwxm3KkShLKnqhTfjpPVCbCXX2SFkF8iYfDfWE9waE1jnSQnugzMMXjm
         4rnK9c8fegZQI/YU0pi5i9Q7+D8zhEOUoId5EmBkxqzSb3zoAWmjgQuWctNdFjZbyzp3
         83J4wuskg8s4H2hl6c2Lv2Xoe3la+MN0wLcwpqg9g1l591+appJBy/XAR5lm2qHh5sZI
         Ntj9JOS0B1SlwPkXIfQDOWQtsf0AHJ+sbg87POJ0lPbiDWazOD5KBGeSNG+E/rptI6OJ
         ZA1mKuJzorY+TsObto/DJYflNEhsgVY64kiIrrYSO8ZXF0vkmL01ICC19r1Ue//wLLFI
         nLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X1zUk17JrlVJLw6KxQJPRWZyZv3u/o1pHV8YWsE0fr0=;
        b=JFabEI81x3aeqxNuHNqKt5oKKhMVxTFuxgdsCTuZ8tsD82c6PD4JA4+dqdKBv9GUXv
         HzVuGV+rZphfYawISFQlg+IY9ZTaZJLD8Op/EW+GhyM3W2R9+dADZTEeTaA9qVu/zn3Y
         YFv8laeQuzAlTe2GmRQu2Z8bDXmAAqVA9+WYRX2O5fN1JgEiJXQeqy0T7E4eIntMtk05
         t97Jd2CF8ZGIIv2lU7fn81I8NyTwC+hOBnmfU/2gT6ZIRQmgw30nrUsjrO2Lh820MO4C
         BaL0Ysd8ywFDRiIfkxfxyuJ/Hxd8ugIRaJZ0E/Hp2A9y0ghl0r9csZiHRHXmgJoVuI27
         JI+Q==
X-Gm-Message-State: APjAAAU/DvYJZKPrgP7TRhOuELAc9WKr/jB+KfLfF7H+HObwcRcCMJRv
	DXV5BidoTHDeuhBgQsBKuLOUqZnGM83F
X-Received: by 2002:a1c:7c0a:: with SMTP id x10mr3733165wmc.48.1571329899615;
        Thu, 17 Oct 2019 09:31:39 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id j19sm1759084wre.0.2019.10.17.09.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 09:31:39 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH] staging: vc04_services: fix warnings of scpace required between operator
Date: Thu, 17 Oct 2019 17:31:26 +0100
Message-Id: <20191017163126.23992-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings of space required between operator and variables.
Issue detected by checkpatch tool

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
This Resend patch includes fix for both vchi.h and vchi_cfg.h files
Previous sent patch had onlyfix for vchi_cfg.h file

 drivers/staging/vc04_services/interface/vchi/vchi.h     | 8 ++++----
 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index f85562b9ba9e..bdc393d36769 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -11,14 +11,14 @@
  Global defs
  *****************************************************************************/
 
-#define VCHI_BULK_ROUND_UP(x)     ((((unsigned long)(x))+VCHI_BULK_ALIGN-1) & ~(VCHI_BULK_ALIGN-1))
-#define VCHI_BULK_ROUND_DOWN(x)   (((unsigned long)(x)) & ~(VCHI_BULK_ALIGN-1))
-#define VCHI_BULK_ALIGN_NBYTES(x) (VCHI_BULK_ALIGNED(x) ? 0 : (VCHI_BULK_ALIGN - ((unsigned long)(x) & (VCHI_BULK_ALIGN-1))))
+#define VCHI_BULK_ROUND_UP(x)     ((((unsigned long)(x)) + VCHI_BULK_ALIGN - 1) & ~(VCHI_BULK_ALIGN - 1))
+#define VCHI_BULK_ROUND_DOWN(x)   (((unsigned long)(x)) & ~(VCHI_BULK_ALIGN - 1))
+#define VCHI_BULK_ALIGN_NBYTES(x) (VCHI_BULK_ALIGNED(x) ? 0 : (VCHI_BULK_ALIGN - ((unsigned long)(x) & (VCHI_BULK_ALIGN - 1))))
 
 #ifdef USE_VCHIQ_ARM
 #define VCHI_BULK_ALIGNED(x)      1
 #else
-#define VCHI_BULK_ALIGNED(x)      (((unsigned long)(x) & (VCHI_BULK_ALIGN-1)) == 0)
+#define VCHI_BULK_ALIGNED(x)      (((unsigned long)(x) & (VCHI_BULK_ALIGN - 1)) == 0)
 #endif
 
 struct vchi_version {
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
index 94c2fcf50468..138c36151a22 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
@@ -175,9 +175,9 @@
  * by suspending parsing as the comment above says, but we don't.
  * This sweeps the issue under the carpet.
  */
-#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
+#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
 #  undef VCHI_RX_MSG_QUEUE_SIZE
-#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
+#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
 #endif
 
 /*
-- 
2.21.0


