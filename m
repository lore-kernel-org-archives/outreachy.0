X-GM-THRID: 6948085452987432960
X-Received: by 2002:ac2:53a7:: with SMTP id j7mr23389844lfh.305.1617727208607;
        Tue, 06 Apr 2021 09:40:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b54d:: with SMTP id a13ls3716133ljn.3.gmail; Tue, 06 Apr
 2021 09:40:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXo6QiEEkd5MssBAehtur5ghDrcGuZ8RHBNSCvCNPTnpWfzxH0hqET+vde5lR1fP7tSLht
X-Received: by 2002:a2e:5808:: with SMTP id m8mr19013813ljb.397.1617727206605;
        Tue, 06 Apr 2021 09:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617727206; cv=none;
        d=google.com; s=arc-20160816;
        b=Qo1AGSYdQP2Ll9uVwlX5/fI73AlQE3NqnpGzRYJvWGzi6nDYmD8+h7QkYevtyfXvC8
         mZQHXwhqGGBlmFy0wVhMrWCwBWmlOhYQKg0KWHUxrcckmhezY7pHTSFKbsXyV/58QImX
         d0B3rF33wk6XgtDwNBEh/HYtfIh4o0jK0C6cMSOCfXkGnI6hHPDaizAL9hJIkNMp6Mj1
         IREgeXByv+ZNGYy0Q9I3pT4ZJxR2rX+Ehj5HdB3xHwVlih0L+YxfYnIJ3+lMaUXclkFf
         db+/oTx9pxeLMyO/dP7e0orzqa1/eXFJDVRgmc6HQqEp8KGnvkEHQMbMpVO6IfbIcpOr
         hMhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TYC5pS0xZoRYRV3BpSxKjUXSyW8aTbxm6/R1LCQeLzw=;
        b=y9kDhoQi1h5C5Tdl4644RC6z4k4Uymm8YE2jMJz0nisHoBXrVkMpwDMxv/pfErUH1h
         ymMCHLdS60VbElGGOF+Th7/eBxsZUtNYflcLz/A0CaSt+urYB42mM32le2qbpLXD870p
         o7BLHKRBSPhK/lILRoLQqVU2imD3mPV/3m2wRdVKN8QZILJECkQpG0MIS8XWx8EmPB0t
         wVBw8nEaSxBrehmFlAyTsZMCMGwp4ZLN6rc5eTHT/Oir2KGr9QAsRX8gqQKc0j2qhITB
         9SeEUR8STUtKVWTCmsBXJjR1olpxEjaGmjw/aeOg0ZEmjEixoj0bKWNKuQvoCD5aFBK6
         mvWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qV50w6B8;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id a10si1640534lfs.11.2021.04.06.09.40.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 09:40:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qV50w6B8;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id b7so23027012ejv.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 09:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TYC5pS0xZoRYRV3BpSxKjUXSyW8aTbxm6/R1LCQeLzw=;
        b=qV50w6B8dKqAjAmUayknbkDnjoTNg3BVKtkUfavuH2Ko5BoDXs6W0KfMdPVqXa4t40
         CFDr4rS4U6HJBrhrhHCWn6mDvzzMXyNckepu1qbjeaHYsUkzgXRxVj0jwXGiM56tZfbg
         F8JFEvZa+GaJBynVMqfAT743ycIV11ef+8zDPhBPQR3OSkI1t4A0TseXbpkcR6NVTmVB
         7RSydu7KZnvqQg0j4kiqfeizcy4KPervJAYw4gKmXA8/j7RXHN6tCcVZQrw9Jx5vjWWR
         6ufSUQMJeCqrFIrAcQAmPv4FpkDArjAVCNCBsqq6vPXACC85QxngpL/MdNWvQ1vFDWbT
         k24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TYC5pS0xZoRYRV3BpSxKjUXSyW8aTbxm6/R1LCQeLzw=;
        b=Zk9P26lfjqdtCE6HJWUqYFL1bRooj4YOXPnaqt83IPBfbxTN6Hi4j0FZ+SE83GVPvF
         LEucAS+QZobIkPw6bVVIX8V++ck5Yv8z6qxbX/2aXjh37w0m8wWlLFu5gBX43+6bHIrW
         Kl0Ep+2RRZnnustvjblXnWY5Z0p6aqBrchhGiz3aFP1DyzOulkDTLDne20IfjWWsYed8
         nB5CKzurg8HM2P24EFuJQpRE/hTexA+zytMWS3MZOPm6ftStNKzbc8qEr9iqf18bnkFB
         5zzJkwOVj7fiORdiYUWr/fXIMZjW1KqRsKFANjZjzK2MU5FBWBYh4fdbcrnb+/Lr8lPe
         guTg==
X-Gm-Message-State: AOAM531ffiUEvD8B75vgfDoFaPs+AwE8EWdrwOjqqpNHz/PjvJj+MsBk
	fYV0IuWOWP7Do4noFGpkPKI=
X-Received: by 2002:a17:906:430f:: with SMTP id j15mr21808675ejm.543.1617727206298;
        Tue, 06 Apr 2021 09:40:06 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id u24sm14117326edt.85.2021.04.06.09.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 09:40:05 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Add spaces around operator in HalBtc8723b1Ant.h
Date: Tue,  6 Apr 2021 18:40:01 +0200
Message-Id: <20210406164001.13646-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Added spaces around operators in file HalBtc8723b1Ant.h. Issue detected
by checkpatch.pl. Spaces are preferred to improve readibility.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
index 59e8c68cdc20..719e19420a3b 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.h
@@ -15,7 +15,7 @@
 #define	BT_INFO_8723B_1ANT_B_CONNECTION		BIT0
 
 #define	BT_INFO_8723B_1ANT_A2DP_BASIC_RATE(_BT_INFO_EXT_)	\
-		(((_BT_INFO_EXT_&BIT0)) ? true : false)
+		(((_BT_INFO_EXT_ & BIT0)) ? true : false)
 
 #define	BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT 2
 
-- 
2.30.2


