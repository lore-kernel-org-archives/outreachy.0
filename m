X-GM-THRID: 6745885278091608064
X-Received: by 2002:aa7:df07:: with SMTP id c7mr10129690edy.110.1570743625852;
        Thu, 10 Oct 2019 14:40:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d98d:: with SMTP id u13ls1243364eds.12.gmail; Thu, 10
 Oct 2019 14:40:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz/WvLU5RbJGzaRxgI6w2qsVKf+xB2ZRuGo9S7OipuEtvkm4H4XErwNXEJfoHxiRg9WJvVd
X-Received: by 2002:aa7:d8c7:: with SMTP id k7mr10342222eds.138.1570743624974;
        Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570743624; cv=none;
        d=google.com; s=arc-20160816;
        b=nOmdVyvG8zLP9h7OTDMxqPvVq9V37hzTx0KF8p0Jeo2phtEoGBhdsw0seqXIN1o6pG
         3l2ZJoL9NFnAYijUpQust5OGjbQShw52H206qe0yvk9f+SymN67DKBs5XnKVWXa9hq+3
         +hupMKxaYRSZk6lvoafRuAACkhFte3qae7aGLtDILzBBZblmvCDTC8dPeEMzbqJNXYx0
         ziXy2w0eGw9+nDkvuTaiBqUolYDk1HfjzOHTlBgFSScdJyb387ChWVtuezA9lJvobsNk
         S2j8IC9o2CUNqQir06PeNmQQ4WcW4PZlNLsNM/2imqIGQXyZGsIz2DEK6Vzc1CE3YTwa
         Jt2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XMJglR3k39oo4lFzmZ/NkXw1yJ/6wrmxZJcm2kMQjmw=;
        b=NHHUH0vhmKp4tCPUs2NhBpdpA1vG8cjKmgnFzKxa/2rhPSplEJlJbRKR6pUwT1hefE
         p9cmrKTn8eqfrHLwIvKQq+dfxvpaAST7hlCHrJi+qb/CSyb6cWjmelwtp22ApDMWs8pu
         SFJEQQmm+qwokloGNCZf1lCwbc5xLKNRye6RFih61TSwplkm1OaN69VnqnIYwaCCkapq
         kI3GfdGK/8JyMRdpFrikLAfrabGI3WVc1901JsoO5ZUkrMt9fm8fqb77tP4z+rARKli/
         /AjEWO0CFQkXEoHO18h+1zu+hUpmzlLBrlBaW1wbD88HRelGhd8PzaKEQ/tZgSZWnVYB
         BXpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PvY+F1VY;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d14si87503edb.4.2019.10.10.14.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PvY+F1VY;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id o18so9534172wrv.13
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XMJglR3k39oo4lFzmZ/NkXw1yJ/6wrmxZJcm2kMQjmw=;
        b=PvY+F1VYaxQrnqBlJD58hDny3N9yiiWe+m/OLkz52Dmkwp5x9bKGbWo0COyLmAXNwu
         Vw17CkjrhVHj9qHYpXLbNitEatrskyN0M9svUZmmG77ZkxteamJ4ZTMPIW9ek8kBg9Cu
         gTuSE4F41QCNgIjLvR6kV/lgqi1zWbNk9FGlugi3LsN/5Wgx8I96n9+vObBmMVdBK9IM
         pRiF1C0BlurG4Hd2v0cArtcJS/Z4z1v4+VNAwWWv+pzYYE8Nl7QhFwdQ9Gul+31cvVXL
         T5D2Qm5OgNzFsJOG9zMBE39pcAci0Xl0FzvUMvvsfYy5O+5IcUS8WKKy5ETL6PcBrXpU
         0+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XMJglR3k39oo4lFzmZ/NkXw1yJ/6wrmxZJcm2kMQjmw=;
        b=CgjeYmuiZWePfSWMimpt1Z0v88AFTilz6ufvoOCA5I0VIUVFbpkEoEPpv0aMl0BwGz
         cF2RcLY9tsgfC+jwX7XuDnH3YgQb2Zn1oV92sM/ImFOakwSmFwbJbpxK7UWH9mwePCAC
         Ek4FHMSt3w3xNlYbcZ94GYFEl5+FYFGj0VzNTeY8qs12U3L2faPt8FoziopwtN0feXre
         I8h3H4y6KHRu7Rn5r+MOMmUq4Tygi/V/Ue58jYGUYYmpn3qQR6HP0BXUNqmiXHcA9rBT
         8h0BNrYE94psRqMCVnGd5aO4yuYOZL7NFS6nl3EXaG8VSO62hSOKIKAhirBufpLuMrv7
         QIZA==
X-Gm-Message-State: APjAAAX1MAlSvNz5nNcEFH8i4Ul0azjbhRE9aD47hsCa89QsqNUL7KJo
	aiLe9jLjV1B1T4kzRf2OEbgF46XO1Dyx
X-Received: by 2002:adf:9c81:: with SMTP id d1mr9781941wre.238.1570743624401;
        Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id h63sm11455423wmf.15.2019.10.10.14.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 14:40:24 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	dan.carpenter@oracle.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH v1 3/5] staging: qlge: Fix multiple assignments warning by replacing integer variables to bool
Date: Thu, 10 Oct 2019 22:40:04 +0100
Message-Id: <20191010214006.23677-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010214006.23677-1-jbi.octave@gmail.com>
References: <20191010214006.23677-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix multiple assignments warning " check
 issue detected by checkpatch tool:
"CHECK: multiple assignments should be avoided".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 27aa8de3b5ff..b8ff9eccc472 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -112,7 +112,7 @@ static int ql_read_serdes_reg(struct ql_adapter *qdev, u32 reg, u32 *data)
 
 static void ql_get_both_serdes(struct ql_adapter *qdev, u32 addr,
 			       u32 *direct_ptr, u32 *indirect_ptr,
-			unsigned int direct_valid, unsigned int indirect_valid)
+			       bool direct_valid, bool indirect_valid)
 {
 	unsigned int status;
 
@@ -136,13 +136,12 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 			      struct ql_mpi_coredump *mpi_coredump)
 {
 	int status;
-	unsigned int xfi_direct_valid, xfi_indirect_valid, xaui_direct_valid;
-	unsigned int xaui_indirect_valid, i;
+	bool xfi_direct_valid = false, xfi_indirect_valid = false;
+	bool xaui_direct_valid = true, xaui_indirect_valid = true;
+	unsigned int i;
 	u32 *direct_ptr, temp;
 	u32 *indirect_ptr;
 
-	xfi_direct_valid = xfi_indirect_valid = 0;
-	xaui_direct_valid = xaui_indirect_valid = 1;
 
 	/* The XAUI needs to be read out per port */
 	status = ql_read_other_func_serdes_reg(qdev,
@@ -152,7 +151,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
 				XG_SERDES_ADDR_XAUI_PWR_DOWN)
-		xaui_indirect_valid = 0;
+		xaui_indirect_valid = false;
 
 	status = ql_read_serdes_reg(qdev, XG_SERDES_XAUI_HSS_PCS_START, &temp);
 
@@ -161,7 +160,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 
 	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
 				XG_SERDES_ADDR_XAUI_PWR_DOWN)
-		xaui_direct_valid = 0;
+		xaui_direct_valid = false;
 
 	/*
 	 * XFI register is shared so only need to read one
@@ -176,18 +175,18 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 		/* now see if i'm NIC 1 or NIC 2 */
 		if (qdev->func & 1)
 			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
-			xfi_indirect_valid = 1;
+			xfi_indirect_valid = true;
 		else
-			xfi_direct_valid = 1;
+			xfi_direct_valid = true;
 	}
 	if ((temp & XG_SERDES_ADDR_XFI2_PWR_UP) ==
 					XG_SERDES_ADDR_XFI2_PWR_UP) {
 		/* now see if i'm NIC 1 or NIC 2 */
 		if (qdev->func & 1)
 			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
-			xfi_direct_valid = 1;
+			xfi_direct_valid = true;
 		else
-			xfi_indirect_valid = 1;
+			xfi_indirect_valid = true;
 	}
 
 	/* Get XAUI_AN register block. */
-- 
2.21.0


