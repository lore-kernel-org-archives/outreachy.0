X-GM-THRID: 6669309760471302144
X-Received: by 2002:a5e:8b44:: with SMTP id z4mr8233499iom.1.1552819684702;
        Sun, 17 Mar 2019 03:48:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6f44:: with SMTP id x65ls2673567itb.1.gmail; Sun, 17 Mar
 2019 03:48:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxLqhzj6P4HniegMTsTT/yM02iF+P/zcPds87Yf2dVNQgbKTpmRu1Vb7rh1iNgzYwiQi5RT
X-Received: by 2002:a24:1c4a:: with SMTP id c71mr6980632itc.11.1552819683839;
        Sun, 17 Mar 2019 03:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552819683; cv=none;
        d=google.com; s=arc-20160816;
        b=hrjVBaoyIvzgknfh3CFLnymOHYV62SzKPseaa9bR6Iwo0+uXrmt1zk/3SWx057zAWG
         JwUz4ipap/MBN+3dz51kM+Q4voOwLyBHd4LnIvFLhr5d6m/Q9PXo8ELKsZNHhFvC1gRR
         Kbq9QwokcS7fgFNq4Dl3f4zgmzVLPV/5EIB2hBOtxSbQVNLFPYu9m8bUlEaw/lFx8us6
         MOwvWFMDvaaxslRTRweRGdcIbaX5f8tTpKiXdY0QbhTZyQMq/zjlax9r+1RpZJ/Gpuke
         Nkj3q6XCcJx2g/nZkjzfaYPl8u/v8iMCGaWGlZN2WydaJXSJ2e7htwe0im9fcxQc3O2m
         YCHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=OGDRYDdf2emg1VRMSHaJP/+tiPpw2i/y82QmuKKETWs=;
        b=cL5LIA+pow4QnJc665F1KPSwnIL82RE8U4owicUwDVNHYT0mcuiic+jTq7owHXm+OS
         T1RNoFONyYS0ULlG1zDHg5Mugeu+t2W5Skec6GdOcbcb+kEzHi2Y5pdogRyILhh2Zm6u
         M7WMJDyPV72Hjks1FMef9YIcztx+fXk3i3LKsrGNgVnTzmWjsL0BhB6bhsULqdLbxcS3
         lyV4SQXipqrfk6Mp+9PS35/V87egfRlXSyDGEzG4i0KA6G7ABwRajvUlxTbSYZd1VDE9
         oeZvv3OwJHHGWxtKdLZrRYfry8R+zKZkVukP/t3wtgplJ5lfcYQVenWdgdswd0m9vNmZ
         Ryfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a88uwFIT;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l23si372468ioc.2.2019.03.17.03.48.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a88uwFIT;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i20so9310934pfo.6
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 03:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OGDRYDdf2emg1VRMSHaJP/+tiPpw2i/y82QmuKKETWs=;
        b=a88uwFITuHXIIpWn09BScgw1rDor/1xEcOJ7vwkat4aqECQdNaAjwlKQphJXs3c6YQ
         XoNxCdEnYOxmabXL8yrODZtsZVGgA8UH09Z3yrqXbCJDUFC012VaMqpY+wb/yY3T5Y00
         KQVbMkGMTu3eLNws4ScyY3L7fAv0mgd1nlGSxDP25ms6kmyAjsqv8TLRgmGQztCbksMC
         OcFMxOxGqDaiFnTND3GbbWGQyZN17pqNWHvc9l1b4XwGp+V5880I7EzjrD1mAHOAjQ3D
         jdINCAUpD/Pw1OFYw6ECPXUXvVKc9QkSJEzxwHJtMb2hVfQAacIouc8jwoTtIBbh+RoR
         0hYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OGDRYDdf2emg1VRMSHaJP/+tiPpw2i/y82QmuKKETWs=;
        b=a5Hip/DFli5LJsBl/RS+mFLT7zJQCdSGwkEdOFtRhCj/ZYdzXDnVmO0Wfh3833z8f0
         ag0S2EDBQpmLZW/vKK35+DqrYHdmAw1/pdrO2lrCaKdjfQlb/0nTsqSNdAO5DZvolmjO
         1mWUWbTE6Kg5Nil58UFeX/tNSnVotNESiJJxtc2CnO6xUGLD0lhWrtD/o/pwBb/VOysZ
         AsGX1CAU+vtsZWqUDPUz2TRW3CjoEV5iz/QOaoYH0oKzqLKB3gB3vRi90d5KGGTg/91Q
         xYOoe0DzNNZCel00Pa6qyACYDeU91aq6qnV3/hCT0gqEdCpG1v08xKWHZJGM0eiMocSO
         suDw==
X-Gm-Message-State: APjAAAU5+JWcNgjZgBfPj71z/tbs6XVAr+PJ9yHfN75QezPx/rU2Z61X
	qkctMJgB3H3mEnw8iz/5DSgVOitIlpE=
X-Received: by 2002:aa7:8005:: with SMTP id j5mr13541234pfi.211.1552819683562;
        Sun, 17 Mar 2019 03:48:03 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.100])
        by smtp.googlemail.com with ESMTPSA id o5sm28361620pgc.16.2019.03.17.03.48.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:48:02 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6655: rxtx.c: Remove unnecessary space after a cast
Date: Sun, 17 Mar 2019 16:17:51 +0530
Message-Id: <20190317104751.2864-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Issue found by checkpatch.pl semantic patch results for
rxtx.c. Remove unnecessary space after the cast.

CHECK:
No necessary space is required after a cast.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index a7c1e46a953e..c8c29bfd78ff 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -1149,7 +1149,7 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 			/* Auto Fall Back */
 			if (bRTS) { /* RTS_need */
 				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
-				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
+				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
 				pvRTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
 				pvCTS = NULL;
 				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize +
-- 
2.17.1


