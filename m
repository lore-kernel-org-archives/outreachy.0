X-GM-THRID: 6746029180637413376
X-Received: by 2002:aca:4155:: with SMTP id o82mr5832384oia.103.1570682316017;
        Wed, 09 Oct 2019 21:38:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:4f98:: with SMTP id g24ls461954oiy.12.gmail; Wed, 09 Oct
 2019 21:38:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxLsjaFE4GW1KGyMwRQHIGbv018zzfHr8BTX8r62PyW5Zww/CVskQdP7A3R4im06ttU8BvJ
X-Received: by 2002:aca:ef85:: with SMTP id n127mr5819830oih.42.1570682315173;
        Wed, 09 Oct 2019 21:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570682315; cv=none;
        d=google.com; s=arc-20160816;
        b=WhYkZvR+DFZkxP7xRqTcUD98cycrc/Qeg62dGzswu9FYt5V7KtL6ALtaAaTQvitLaB
         l8rBCLqh2nueU+ufq869N3lYSNzrbX/KK5VyZYDWnWJd+iQXVJCgSpbGOZOsSJdF6fwr
         giVBNz55AYAGHwkvMl3yYinqNyd574LTBCa1idqcJdE3OZn0WquN/CKwZs8TVmicIe3M
         3JcXUYun/VfhZIUNDMqNFjuPYmUrMypBGvfz9DHgbz7Fc5fSaX1qv1U7BieWCe/tMGaL
         Nn0vk+2Qm/mn5ZxdLFEiuvFr1fXsBg1AyrwA5wvA0j9ypRv51crITn1h+okbf/kd5tO7
         Iqig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=l5uokupUiO2U2j99X5zPHcQ8eZZb9WokuIKIk7sOlFY=;
        b=mESafwQJ3dL14qKb/6p9juuI5DfQjbuHUzRkt3qBS082ZdHQFXkWPdcey6BKEMSXNu
         OBByIUG8F1RZgKOZ/f7twhIZFzwHdEPdhHVRFhBEGSw40Mo4UF6mnNpsPRsdq5nUoL++
         B3PjK64N493lqT9vCGNIvabhCETHs1yG9ArKQhLjDIwKJGhr1CYZ3jrJHtHPcu9S2Bns
         TzmoYMsTPlirPhbukVFwIJUtp9GIwIdM/WEXgf6/1heinV8deFPq0Ux3CUpnyM+s+470
         lKPC0HAbtMahPS8GxbSPD+w2V+fX9Nr1lX27+z1vB1rS3+6njuQcEYC22EQ4nyd8XQ9D
         WNEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AKUf19Dk;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b11si493760oii.5.2019.10.09.21.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 21:38:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AKUf19Dk;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id e1so2833857pgj.6
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 21:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l5uokupUiO2U2j99X5zPHcQ8eZZb9WokuIKIk7sOlFY=;
        b=AKUf19DkQPdw0kdHAAVDVBCfTDQY7NEaj4VomUaYZY2MA04uGr4YUiCrg9NPqKbkGq
         BjC+s85LwAKZrzkkyEg/vA7TL+mvERFXgVNeDqGcWzjBZJmzfysAilRVLg546r+lFALb
         MJFV9zbG0VGRktwQCMdq6Fswm26LvaoEIy6qQaT6ymwKgMq9Ig4wJWUJlHungqmW81J0
         BmNRSKp96SXKwHJRBjC9V8C9ETZwsNBSCg5QwST0kVBZHi/voZIS9bmv69xDPN0GF8qX
         oDEk2GOLuqx7G/fpcVdQjpWyFnVQbEZHfl/RNenN4m4cluNLTbjObB2PYhI1gNLnLc32
         KWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l5uokupUiO2U2j99X5zPHcQ8eZZb9WokuIKIk7sOlFY=;
        b=t9HdCUvIEvS4J2O6W/NufA6srPb8Gme5rDgzvPeJjh8+UwikR+ksLJWhecP5dytay6
         EKe0xeoRRRCLvs9RJeN2Fk9xnaW2iMRwRv5M2qy0a/Iynkb5HLqIlu9BhKCk8cvcIYN5
         gV3LfwxV+A7/A8gMePQKkoA7qN8i0N5XD4HhGbT/uh94lkUBvQ/3VzZvNcUelhbbr7np
         Y/2P+IrEBneV5fqVni2FN9GcaG6vEyOCIeSAXOdTUJA2LWFZ8l2lL9ZAb/nMMZ9XuVo2
         QrwUYE1Rlc9wg9QLOiYqCpw3wTirl1N2scJoScACQu2SEyBxPyfGLBcxkA5ky2tSVZ2n
         wI1Q==
X-Gm-Message-State: APjAAAVB43g/xzc7d6QgyTZIqsliJlf/NFCjH55vvkpmGiYGk6dSN9Qc
	8uiBq52vC8794tcBpugsfXcHdU8Y9+Im1w==
X-Received: by 2002:a63:ff46:: with SMTP id s6mr8656134pgk.337.1570682314092;
        Wed, 09 Oct 2019 21:38:34 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id 2sm3607480pfo.91.2019.10.09.21.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 21:38:33 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH] staging: octeon: Fix incorrect type in assignment
Date: Thu, 10 Oct 2019 07:38:15 +0300
Message-Id: <20191010043815.14027-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix the following warning generated by sparse in
drivers/staging/octeon/ethernet-tx.c:

drivers/staging/octeon/ethernet-tx.c:563:50: warning: incorrect type in assignment (different base types)
drivers/staging/octeon/ethernet-tx.c:563:50:    expected unsigned short [usertype] hw_chksum
drivers/staging/octeon/ethernet-tx.c:563:50:    got restricted __wsum [usertype] csum

Warning generated by running:
make C=2 CF="-D__CHECK_ENDIAN__" drivers/staging/octeon/

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 38954b6c89e1..b2e3c72205dd 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -123,7 +123,7 @@ union cvmx_pip_wqe_word0 {
 	struct {
 		uint64_t next_ptr:40;
 		uint8_t unused;
-		uint16_t hw_chksum;
+		__wsum hw_chksum;
 	} cn38xx;
 	struct {
 		uint64_t pknd:6;        /* 0..5 */
-- 
2.23.0


