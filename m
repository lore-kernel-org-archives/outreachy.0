X-GM-THRID: 6337380973243531264
X-Received: by 10.25.234.146 with SMTP id y18mr26210lfi.1.1475536491691;
        Mon, 03 Oct 2016 16:14:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.20.67 with SMTP id 64ls1701537wmu.22.canary; Mon, 03 Oct
 2016 16:14:51 -0700 (PDT)
X-Received: by 10.28.31.7 with SMTP id f7mr721286wmf.0.1475536491257;
        Mon, 03 Oct 2016 16:14:51 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id c74si25539wmd.3.2016.10.03.16.14.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 16:14:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b201so11780176wmb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 16:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GmSjTSx/uubYmOtLOenKDBe3+dzMgEGVWedWJZmiu78=;
        b=vwjBj5D2RWHTLBCjEefjklo2EMtsl/Yu4vmCdxuyTaR8S2GxJMgF82WUDnWCaHI6r9
         5bk66MVVvW/MKCUKMulPJ8sS4sB3dcEAnGnm3YEQX0Nk82wCBIMDlszCHI/vw497x79j
         KyPRKIeZTYsG8h2Mds1Qm0Vj+P4OzSRYp/pY0mDwLCQtsAah8mypkrdgv1n0xLV+xvwb
         +UUDcdZmm/QUZ6Dv+9+rHHV4+9cdwjUnW/L2ojnRUVqptfQFgTDmS7QE+x493RtaM9jt
         z0MSgpWbIUxFoId3UaxqRpzIlvQBeEIP7+bFbrcuEY7qNflI40fCfa8qEXXcGWAlpo2f
         9EfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GmSjTSx/uubYmOtLOenKDBe3+dzMgEGVWedWJZmiu78=;
        b=mXYkrTJ5Nrvpil/t/h6dhBCjHMN6apaplcR8lKcXhuWlgcjMApRrV799Icsoxu/xq0
         bInxKNw8Bq2UrBbF1yuZsCx20bR+QjJ4RkzDrVumi/ToUmu60NI7acCLfaVihHEWSyec
         DhEZVOehAIQTWxrxhjm1IhK/daK3igvuxDITEyGiOL1Cwc97RBb8eNqvo2dBzf3Y8CxZ
         KI7UrMiaWSQb2WR+OBY+IK7dqjU3eKPvAEevyr/rZnWJlsH6KkxBiYTcTqPaxXRhUvh7
         JpgL/5/E+7pH+tIGIY6B2EvfhWKrag46DR0rkMDSBGt4zCFPk0fAcJx1qVYPR9iGev7f
         qHHg==
X-Gm-Message-State: AA6/9Rl79Xw7nIcSmXP2P5BDgbloaFD0nvsoxS8y8Yb0KDoF0Zv4PIFOrW4m2VDwBbdPug==
X-Received: by 10.28.12.16 with SMTP id 16mr782693wmm.118.1475536490959;
        Mon, 03 Oct 2016 16:14:50 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (240.red-79-150-62.dynamicip.rima-tde.net. [79.150.62.240])
        by smtp.gmail.com with ESMTPSA id ce6sm424786wjc.27.2016.10.03.16.14.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 16:14:50 -0700 (PDT)
Date: Thu, 29 Sep 2016 17:28:37 +0200
From: Keila Novo <laurana5@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH]board/Kconfig: Add a paragraph that describes the simbol
Message-ID: <20160929152837.GA32652@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)


Commit:
The staging board allows continous upstream
in-tree development and integration of 
new platform devices.

Signed-off-by: Keila Novo <laurana5@gmail.com>
---
 drivers/staging/board/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/board/Kconfig b/drivers/staging/board/Kconfig
index 3f287c4..830337d 100644
--- a/drivers/staging/board/Kconfig
+++ b/drivers/staging/board/Kconfig
@@ -1,3 +1,7 @@
+#
+#Staging board gives support and configures the kernel build
+#with new type of devices, making them compatible.
+#
 config STAGING_BOARD
 	bool "Staging Board Support"
 	depends on OF_ADDRESS && OF_IRQ && CLKDEV_LOOKUP
-- 
2.7.4


