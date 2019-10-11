X-GM-THRID: 6746422022313607168
X-Received: by 2002:a25:cf58:: with SMTP id f85mr8508385ybg.169.1570773820142;
        Thu, 10 Oct 2019 23:03:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:7a82:: with SMTP id v124ls1015797ybc.15.gmail; Thu, 10
 Oct 2019 23:03:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyw7Php46//Kk4fTInuXTO+2i+F01q73ZoT1iq9fF5OJsJBwm0okshLiEhfrpU+G/v1sVqQ
X-Received: by 2002:a05:6902:510:: with SMTP id x16mr9168496ybs.143.1570773819106;
        Thu, 10 Oct 2019 23:03:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570773819; cv=none;
        d=google.com; s=arc-20160816;
        b=PcM+Vi5wrbkSEox/WRHcF79EnkSPxwy/W6dyE9N2EFEjceVwSF8EXB9qO50UP3GAqa
         dsSPk2D8CISNHsO+9+5qGTcSPJ9ltX5UY9Sj0Cla6xA9Qia/lW1juk6jSCd5C0ZfJyBL
         geWfz2QK8LiUD4tow8TPn9Q8zzsKVsD7S5cd24AyyYXTq6kmhmK+LpTnvcl9r+HTIqbi
         Ve+UwCXzDfI8C93SA8YfQyHUf3eN0yEPNf0UlbNr3WUzU6oR2OtjhhxJr8xLYwBUknzu
         wGyzVVhOLWuJ66QI3bwMPTe09T8tBvwqjrO3OOTobHM9kjsrM0CX68nK+Trkd7RVy6Wz
         1X/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=k/wT9/t7A7HYNz/iX11tkHS3rBfrsw9PYcflAAbRT90=;
        b=ta3vDYD2Ue5xR45e0V2x1q0/3JB/QT7HBf/JD8Q1gAmZsW6nE7YGNSzVBXG2OyhG2m
         fEG00GYJwlTcoK9ABbQ7TuMTP5EsgrgwucDiY4qRVInNNKhhA28BBMaRcnsSnN/8rzjY
         WoTIqSXBPCiUK0nEWja24McknwUei1JqNGa7NrXWQUeXxyBBccII/CRBF846/R0KZ3VJ
         bgIp/4Zmw1clm697yzHTvY/zLdDP6/xuCmtuQHiF9U1Cm0Sv+W/vGiJ1nZIULN3dN+A0
         tF+M+PT/1+QBMnFgCAd2lsG7pPzoK5OX1gjfgewus2Ep1c+aUAlmYxfK94Joxl/fPm5/
         NQqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q9nQZH4C;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u129si343548ywc.1.2019.10.10.23.03.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 23:03:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q9nQZH4C;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i32so5138189pgl.10
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 23:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k/wT9/t7A7HYNz/iX11tkHS3rBfrsw9PYcflAAbRT90=;
        b=Q9nQZH4CDkUFTAl2+DJ6ZNZ1QHR/rqxgghwGvth2AXWM0MGBrQDH44O7i0AU/86qht
         LVO+dlnp7g5IPI9DAFW77C+A1pdePrXYwrAbQtXDZ+lME7HNkMRVMntBIcOHDKivm3rL
         tulRrhMtEGLJ6H6T7xoCqC4QonryEe7/GKvYJkHRMj/3xyXHBe6Psu6wcqmUrCMaZq7u
         ENu3PiQvVRYJEXD3XW23KVujsbJPBbel5WtUB+ZX93Sf3Y+t6QvxYtsvg7H7BODDr/m+
         S3kn/8I71qrf6o05f380Veg0mIUy8fC1i1Jop1T7v8a6iYv5eE83+WPIj8WIGCFDlQWW
         LSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k/wT9/t7A7HYNz/iX11tkHS3rBfrsw9PYcflAAbRT90=;
        b=eVP7SrO0HT8Iy1F9Gk8FVK6KZrM4ixs8sLK+dvXYlPZgDEaCCn9jNmFDuNJPbTb6q3
         ScDE7SLfBZoLYQs/XJ9LzEj53BjItBaSpJbDC6IvKhoNukVA44aZBh80bHVsm/DovVYB
         gxOwakMy9zOA+AUIJsvVo2dRCRzcm5dkcdY3pfCbEWkuwaE05JoVDkWe8w0Q5+HTeqSX
         /qKeb9/dKCkaryWQpbumZ2fKSO1DcdZbucOXWnsffxPWRc64yqFaepxSwoDYgmr6H7Ba
         YuEhiX7TQVOzxEN/w3bJIu/abvec4PZri5HhPcYQquTf+bgpjaZpD4+KN3tNUtHILAPF
         VWVA==
X-Gm-Message-State: APjAAAUtDvL/h9kvmKTHXs/68nRRHbOjEAHooSLPbTaHGZmo9IuihiGw
	WVvQ+ZlfcNxxKgZOZmugmjjLNBFPxhPUpg==
X-Received: by 2002:a63:4622:: with SMTP id t34mr15529950pga.0.1570773817999;
        Thu, 10 Oct 2019 23:03:37 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 23:03:37 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 4/5] staging: octeon: remove typedef declartion for cvmx_pko_command_word0_t
Date: Fri, 11 Oct 2019 09:02:41 +0300
Message-Id: <2248b40bda9295263ba998c216fe1ac18a2324b4.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes addition of new typedef declaration for
cvmx_pko_command_word0_t in drivers/staging/octeon/octeon-stubs.h.
Also replace previous instances with new union declaration.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-tx.c  | 2 +-
 drivers/staging/octeon/octeon-stubs.h | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index 7ececfac0701..f88d8e6f5292 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -127,7 +127,7 @@ static void cvm_oct_free_tx_skbs(struct net_device *dev)
  */
 int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
 {
-	cvmx_pko_command_word0_t pko_command;
+	union cvmx_pko_command_word0_t pko_command;
 	union cvmx_buf_ptr hw_buffer;
 	u64 old_scratch;
 	u64 old_scratch2;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 1725d54523de..06e6a0223416 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1137,7 +1137,7 @@ union cvmx_npi_rsl_int_blocks {
 	} cn50xx;
 };
 
-typedef union {
+union  cvmx_pko_command_word0_t {
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
+		uint64_t queue, union cvmx_pko_command_word0_t pko_command,
 		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
 {
 	cvmx_pko_status_t ret = 0;
-- 
2.23.0


