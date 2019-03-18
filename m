X-GM-THRID: 6669762778998243328
X-Received: by 2002:a9d:ee4:: with SMTP id 91mr10208517otj.50.1552925160065;
        Mon, 18 Mar 2019 09:06:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5c05:: with SMTP id o5ls2834841otk.6.gmail; Mon, 18 Mar
 2019 09:05:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwer/fFnQE6dI0RCe6DZGBH4YA6DuVJRHuk7rXeFfq1D9FvXgIfSVhu34NvmOi/h97uN3FA
X-Received: by 2002:a9d:7751:: with SMTP id t17mr10736078otl.9.1552925159285;
        Mon, 18 Mar 2019 09:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552925159; cv=none;
        d=google.com; s=arc-20160816;
        b=fX+O75h/T6l9N2bbiiFzXDCE3bCQuigU5c7eRm0tMPq8W7DEGPdQNrAzCU+zRyoFfA
         1Kvgr2hzKYCn6J79Ef7wy1JL2il6NcADLFpJC8fqHPuVjEmumVl9OVh/1VW9e9pSnio4
         pIFWoNC5xbPE6ovaTKretupSgKY9LNOlV5QrfXbgUdvr0PagQ66KzAw6fZXBDAf91wR6
         9ecm6+ncWfUgNObs2VGrKWhS9Rs+1IweKWtXd+63jSBqYezCjNwnBwGzQM/VgPwCuKvs
         3hW7YzQ5rGPBFHncm1QlGM2TzNGicVZ/P0kcUguK/YDuWBmjk3jyzaDGmLm3hXpdIcwc
         ofGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wAzZEcfvvvTVJBdqAz+ZM9Po88slWCEIL/I1c435U18=;
        b=BM8xFTDX4g4wr3ZDP5tWGg0D7xXEKS+oaMHmt6vqO8IZRNUXt+lWeqnC5z6ieqtaYV
         We+lMRe7EdznwNQHCHg1Rqb+RuMFI77vqsQqz4qG8ryheG++HWpFrApx+WZUzyNNPSGZ
         Cw1Yy8iG9i04Ak4K1kmHa3pCawdjNl6EzY/xoisdwhXgmzCRCDkcyGX5t4Oij6GQfnCc
         k3GvbQL3pk0qk/pnAWW7uIhlYYfhymL61lkYhCL4rKjcymRa/2S9be7WblPN+lGqDVpK
         7wQSae0zvjU2JqRodiP1chHFGwxlM9H8ZTRolnbvuVIY+k2EACRQwxOwNDz9AIY4yJq3
         2raQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tTdlSNsn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p8si444197oig.5.2019.03.18.09.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 09:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tTdlSNsn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id i19so11588107pfd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 09:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wAzZEcfvvvTVJBdqAz+ZM9Po88slWCEIL/I1c435U18=;
        b=tTdlSNsnUMWk76mkv8UiHC9l4tSj+LOuNNITu4FYdoQgPDfm0+6qphpzfnFRPcrAyR
         lgRzuPgFB/foX7bFUqWktSxtJS+iSPD5s9ackUTM9SIzEK/51yHRrNw3OMHp07x7DG+2
         Elt5iMPe8PuOF9nnGG5PJNL4HCeAtT79iYQVLV/6TE8+ZftfNME9FhkZZjPJv2bVwzbh
         3HyXVbo2BTrcBUnYGGSHZgMq2Zg9hGFl4y2zKgKq2voLjXSB1sG6jO8O9ZElFDr73la+
         V3opudKDkq/nkr6Sp//FI38504gT5kH63kE8lugqCd9MWlngJiGCdQSWgCYnk2DD7rsf
         a26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wAzZEcfvvvTVJBdqAz+ZM9Po88slWCEIL/I1c435U18=;
        b=YD6r6GVL9q/rDm/W/ve6dNaMvKd+Rt78MIAL7PpWopqatC24sfmmtL7VjcVShRIBJY
         w73mcj3di5d0uoFDiMfwro4p3tnYFT6XHGl1N7VGsJ+YK+rXj68N8yL4+7ajPY5L8bgr
         om/ZtVtrisl0eBzZfe1X/UNm+kupv5DOgdrixUuuzmyNNgYX9Wnd0MQ25mf71Aja/6D3
         wqqSsVezDfHWbzPqxIJx3DMzoOjfEtVvrAPRYWpNNshgmEf+ryijCf4bspKIeMpiUpwc
         JK/A0MKrTAjQ0lhDNe2eLEYbZgQOo7xjFQyHtgf+iUo9dySmD4AtH/liUyLoHGfd+xo9
         sxhg==
X-Gm-Message-State: APjAAAVjF64hzORYpMMUOMPeHZXimW12d7bIM6zND8mTs2XAz1oPdJBp
	Ve8cWI/zGQp9QxgxBmCJXHA=
X-Received: by 2002:a63:cc03:: with SMTP id x3mr18179446pgf.121.1552925158198;
        Mon, 18 Mar 2019 09:05:58 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.32])
        by smtp.googlemail.com with ESMTPSA id d11sm26721292pfh.29.2019.03.18.09.05.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 09:05:57 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: core: rtw_efuse.c: Line over 80 characters.
Date: Mon, 18 Mar 2019 21:35:42 +0530
Message-Id: <20190318160542.2803-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index 51c3dd6d7ffb..a5d34b85d9c5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -794,13 +794,16 @@ bool Efuse_PgPacketWrite(struct adapter *pAdapter, u8 offset, u8 word_en, u8 *pD
 
 	hal_EfuseConstructPGPkt(offset, word_en, pData, &targetPkt);
 
-	if (!hal_EfusePartialWriteCheck(pAdapter, efuseType, &startAddr, &targetPkt))
+	if (!hal_EfusePartialWriteCheck(pAdapter, efuseType,
+					&startAddr, &targetPkt))
 		return false;
 
-	if (!hal_EfusePgPacketWriteHeader(pAdapter, efuseType, &startAddr, &targetPkt))
+	if (!hal_EfusePgPacketWriteHeader(pAdapter, efuseType,
+					  &startAddr, &targetPkt))
 		return false;
 
-	if (!hal_EfusePgPacketWriteData(pAdapter, efuseType, &startAddr, &targetPkt))
+	if (!hal_EfusePgPacketWriteData(pAdapter, efuseType,
+					&startAddr, &targetPkt))
 		return false;
 
 	return true;
-- 
2.17.1


