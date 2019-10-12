X-GM-THRID: 6746979289302827008
X-Received: by 2002:a17:902:bd06:: with SMTP id p6mr19740911pls.120.1570903574100;
        Sat, 12 Oct 2019 11:06:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bc48:: with SMTP id t8ls2807705plz.16.gmail; Sat, 12
 Oct 2019 11:06:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzz+76x0VMmqhNvv2cHci3rvT8BvUU1MoYGOTC3Qv27g6qkVpAqjVU/2ksfFGQlhxoSWyHQ
X-Received: by 2002:a17:902:aa07:: with SMTP id be7mr21669162plb.242.1570903573034;
        Sat, 12 Oct 2019 11:06:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570903573; cv=none;
        d=google.com; s=arc-20160816;
        b=gxsBI1Dguh1/4VeeKWxuNw34ies1Wf8SGwk8IG6ChdDtTIdgQQ3bowHvj3Aflp2WMF
         6fvdrzlIQq03BB4n4I9Op9zt1fQFTjDQOC9j/V9r4vNqxQkYPMCaKeeiFLtBOvbjCyuw
         UanKjj7LQq3hdjDzI9EaIvRXmSN4sU0Nzqaj68hZ0aWBFUuBADdSnJq5obIuivgzEUue
         vmiKAB9OIcZBSWwe01k2lL0ynntNY9yim4TX5vC4soGv1W0EUdpuTsVymnqDFfYAxbIg
         VSNYEYaOa7EXUXeZYP6kh2f08dO02LvuHJCzZrUXU8xTIoDa3TR3Y3cFw29tJYKpv29c
         mzUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tT24sM9T6hkRxQedrQmg31fItSCxPHO1fScVTFID4Ho=;
        b=GWV7K/QXeAY5RZ265kzNZ93xjgYzz0DBUM2p2b9abckbI7z1nfJWwz+m4myZ41EzMx
         lY+StXZYATSj98+Uoe5CACvsmIOD1Qv3L+VYYu4+HB99MQAltrNsrodo5mtQFq/uWH4q
         92ifXMLgUif/hUHW2kTOXkfVuDysI/qfxkTg8ykBQlhCcG1KAO7M6FC7/I0gkucwBN1i
         bLbCf1C0+j8l63TbibuCmrOO7WMuIbTTAE4mcpgzS3yayeNInVqc8grq8tGLGg6oTCTc
         eAFRqhUEjYy0+RC5Nap/19sux8ZpHyb8d7LfQpFe6jrKQ/UF7PmiKq9fDcEhSZzQgVLR
         BghA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ksbeu2/A";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id h1si615997pju.1.2019.10.12.11.06.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 11:06:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ksbeu2/A";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id k7so6024249pll.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 11:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tT24sM9T6hkRxQedrQmg31fItSCxPHO1fScVTFID4Ho=;
        b=ksbeu2/AEfGmAq8zJkbp87DWQ4AGE6KLQFuGtREb+FWns2cMXhD1fnsu47paOill+X
         DxFBieCpyg4rMipRLMyg54BcqAcXpcsyY5lcjy2jY2470m64V+powGa3brFDZfxmYOo2
         CCTKhAlqmX6O+m0x3lB/gRB6pwa00K08NjhYpQQvQjFqQ5yS9QqZ5bLXuhsCqkK7snOa
         E/bMkCWPX2PqM5sLCTmeXsqMOMqV08dH428qlHYOH89L2KC1Z1SYUWDD8/EcBAzcOWNt
         pe9G6gA2hUTM8g0AP19JXuAn7iwJq/itPeWoBwrnjkJLdWXj2xyJcO3+GLZi6wr9vf4/
         eL5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tT24sM9T6hkRxQedrQmg31fItSCxPHO1fScVTFID4Ho=;
        b=icPPDuxyFBs91QViSGSMUVbtjQOEPfL/H6fTc6eRHp92e9MaPI4sH/yrAbgiFu0tLx
         o/THUzTJMfHZh6iym8yRGnF/lJEZQLT5uLx49JAJbKMP7r2uswarXRaNMl5Oa6XGOF50
         STI9vDUgkKqzj2NwEg370jB7F1DKtpz+pbSWNtmC3e6hS2889QTD/xN4PYgjpVYexW1G
         BkFs+P8egvfACI8sRtgDf6b+/T6EUCl0vg+nWPUQyKil+qmmykGL1gLMle4ZPAaZC8lr
         qHTom5kpEm1kxgR8NcVOUdYUKGaAnnPEcwQ09IhnfGboA/cxHF2z/VELPB2FPF1S16vR
         QpeQ==
X-Gm-Message-State: APjAAAV3ZMuO/GjiwvBZU6cU01riVsbUn7sjOwjfHXwipZwifnM8292+
	VwQ8KjpJGJJ8YicgimTZaJRoICm/ynHkgg==
X-Received: by 2002:a17:902:545:: with SMTP id 63mr16371191plf.14.1570903572632;
        Sat, 12 Oct 2019 11:06:12 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p17sm12183475pfn.50.2019.10.12.11.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 11:06:12 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v2 4/5] staging: octeon: remove typedef declartion for cvmx_pko_command_word0
Date: Sat, 12 Oct 2019 21:04:34 +0300
Message-Id: <40bb26b250d7ba5b0d5199072e773be2fb0fed90.1570821661.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570821661.git.wambui.karugax@gmail.com>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes addition of new typedef declaration for
cvmx_pko_command_word0.
Also replace previous instances with new union declaration.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c  | 2 +-
 drivers/staging/octeon/octeon-stubs.h | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index a039882e4f70..95bd1b5338fc 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -127,7 +127,7 @@ static void cvm_oct_free_tx_skbs(struct net_device *dev)
  */
 int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 {
-	cvmx_pko_command_word0_t pko_command;
+	union cvmx_pko_command_word0 pko_command;
 	union cvmx_buf_ptr hw_buffer;
 	u64 old_scratch;
 	u64 old_scratch2;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 40f0cfee0dff..db2d6f64b666 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1137,7 +1137,7 @@ union cvmx_npi_rsl_int_blocks {
 	} cn50xx;
 };
 
-typedef union {
+union cvmx_pko_command_word0 {
 	uint64_t u64;
 	struct {
 	        uint64_t total_bytes:16;
@@ -1157,7 +1157,7 @@ typedef union {
 	        uint64_t size0:2;
 	        uint64_t size1:2;
 	} s;
-} cvmx_pko_command_word0_t;
+};
 
 union cvmx_ciu_timx {
 	uint64_t u64;
@@ -1384,7 +1384,7 @@ static inline void cvmx_pko_send_packet_prepare(uint64_t port, uint64_t queue,
 { }
 
 static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
-		uint64_t queue, cvmx_pko_command_word0_t pko_command,
+		uint64_t queue, union cvmx_pko_command_word0 pko_command,
 		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
 {
 	cvmx_pko_status_t ret = 0;
-- 
2.23.0


