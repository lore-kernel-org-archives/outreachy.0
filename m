X-GM-THRID: 6805647461769543680
X-Received: by 2002:a2e:330e:: with SMTP id d14mr3482543ljc.72.1584563279905;
        Wed, 18 Mar 2020 13:27:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls10473ljj.11.gmail; Wed, 18 Mar
 2020 13:27:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWcUrYxcIiNZhOgv1jpqhUraVF1+J6JYfr5HjRCWNvYiMAJy/V9ddvpIHJiAKyh6d2BC2t
X-Received: by 2002:a2e:8119:: with SMTP id d25mr3510131ljg.39.1584563278299;
        Wed, 18 Mar 2020 13:27:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584563278; cv=none;
        d=google.com; s=arc-20160816;
        b=JvfUSUxFsa9cGVgIFY6EoIgn+qB20F3DALPCMsXkC8kufnpwt7JmtveOmBQtOahU1E
         eg4T4xHhQ+zsS/msNzObdCLxn/SAg7QWsMPdqJfKdNX2HvXh/i30aa7zCFAOMGnQYUO9
         miLIy7KU75h7c+c2NbbJvIqEDWt1G0BTHY09H1GRnvPkAL5PC4BK54yTgZex/kMhxxr9
         jstMYxwx4VQ/FXUt/61xWNLCdiZZTFztUnvrN0ebABFhsLRGA7vc7OJmD/ug6uwOii1i
         PdK7pqJc12ZWKnSqneLFFgajIaTNyW4XYp4rwxPCYPK/8rQWXoPFDfHI1ZDyRpy8PzxZ
         GEIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vaYgRFUhD6Mc/0ywUWkucm6KFwTV8oZk/brQy5aQhvU=;
        b=k2jW3hECWE256Zs6/66exs9MjK+pZ+YvBGE8NoIX+IMLMVsYvsHzYGI+ZSic1oXMK7
         VvyOtj8w3bNJvPgAQkt+FL/Hu0hSddzu2MNRiJQh34hb1p+NGkfmmUtqGNx2yoLJ5lrp
         RlUxul1Z3s57zLkDUHx3leoms7p8fsbw6SnXUxIE10+nMBA2kNtFATwnlRpfwSn9GSGQ
         1K17ytFlwN3VQbgmUkhkAXG0PG9d7wnoFdj/jFNzeXoEGI/vOfCWLMMaoXyx68umZEQB
         Oi6/dR+aNEBu4RqijbWvut0dyJbvuaYeLlrdb8N2n1G4pHhx8STnPBL4I/fGpQSOw2p3
         FDSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kdJBF2mx;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a21si867lff.3.2020.03.18.13.27.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 13:27:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kdJBF2mx;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id g62so4950421wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 13:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vaYgRFUhD6Mc/0ywUWkucm6KFwTV8oZk/brQy5aQhvU=;
        b=kdJBF2mxbEriaD2Yt9efTLNd6p4uH8iOOh92DSiH9odZewtaJEfokvAIkoxMdrbfSj
         jghPKBWuTifqMVtNhleHSe/GXjJJYofrwfdhAIsXQeb4Ll5mBpeQfZs8ME8lP5wTtrZG
         +mMctFW7L9m2oaFgaVCFxAN5/u0igyzg5ZIc8CMVT60TI8kc3ys2sdob1p9NzFzuFuoj
         WptUG3xwaMtIYRxbBqUo8/L0iHlSp6Wbl+zNyRqtrgUKDhiQbCoQ3Gvm100KVQIdcLEy
         EKMQn+KNH/gm3j1yttPmIJyN9A5Sh0QSDROkjGG4F63ki+f5X/HZujFsC9CRCyoO7jB2
         3OXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vaYgRFUhD6Mc/0ywUWkucm6KFwTV8oZk/brQy5aQhvU=;
        b=em8E+v9fRzIs2/WGCOwboT67mGAHY2a+NWZ4WRri4qVJNOZoN1FNH1nxFKt/92E+Ny
         VlmGplp0EKbkC7v1PcCkFg2I/fMlWyUnl8ph2AOfd+GbcLNr6laxUHEl+uW4ENRi3Xj9
         AlObW68Iou5EDB3yebMWADSKdbJlUwyjXbyAAnk4smWbGwZ5Tv0doyToXdCBKdTjczFj
         fyZF1V+ElVDvqrWgXLguBAchU1JR1bnDFbOoLSKmm1gWEMkcVNFzT92cWzXsGGjRTDEw
         2L7ft7/+ydhiVzOBnHf8hYdqmPQyFxmhLC1oWYMPtongmA/YsjvZZWeMzhOrTP4Npcai
         GIBw==
X-Gm-Message-State: ANhLgQ3rfGikLPH8MJOeaIOr/YcuO6/N/Ec3P01w3jN/B7kgQCNI/Lr7
	pMNmiO775GTsa5GnBLfviJA=
X-Received: by 2002:a7b:cf03:: with SMTP id l3mr7099103wmg.139.1584563277778;
        Wed, 18 Mar 2020 13:27:57 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.71.247])
        by smtp.gmail.com with ESMTPSA id b202sm5705244wmd.15.2020.03.18.13.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 13:27:57 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Manish Chopra <manishc@marvell.com>,
	GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH] Staging: qlge: Elemenate anomalies in driver's coding style.
Date: Wed, 18 Mar 2020 16:27:47 -0400
Message-Id: <20200318202747.4218-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This driver maintains a coding style of declaring variables
and assigning values to them in separate lines.
There are anomalies, elemenate them.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 1795533cbd3a..8bf592812518 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -496,7 +496,8 @@ static int ql_get_mpi_shadow_regs(struct ql_adapter *qdev, u32 *buf)
 static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
 			   u32 offset, u32 count)
 {
-	int i, status = 0;
+	int i;
+	int status = 0;
 
 	for (i = 0; i < count; i++, buf++) {
 		status = ql_read_mpi_reg(qdev, offset + i, buf);
-- 
2.20.1


