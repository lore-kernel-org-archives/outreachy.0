X-GM-THRID: 6392907056098050048
X-Received: by 10.157.4.196 with SMTP id 62mr4717124otm.46.1488464664010;
        Thu, 02 Mar 2017 06:24:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.43.135 with SMTP id h129ls4641080ita.4.canary-gmail; Thu,
 02 Mar 2017 06:24:23 -0800 (PST)
X-Received: by 10.99.158.9 with SMTP id s9mr4799485pgd.128.1488464663104;
        Thu, 02 Mar 2017 06:24:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1529606pfd.3.2017.03.02.06.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 06:24:23 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so9489680pgy.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 06:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XzJf1YTsZe/dq+bdUcF3r/nmrjeBFpkFA8dWu8XLw1o=;
        b=COniHLyAgzeLs/iTo1o1brGeo/iOh0h69i8uxphH1DmbzladkM8aM39ZhYO1QFiJxJ
         NLchu2+XLsabRk9BzzEItAGwn727ql/NeIhyUSZ7bwOB0InFydwT5Y7AtGiXjFvpTJPm
         OXfsWJuJpARxUgEPfhm/mHu1+9a6yEy0jnEEdVMRGmDj6uaGPFk8SS8PHjPMsu+rjIv9
         8gradoF1YINTvm62Aq7pKaE65Qc7VA6KriEZG6TijAJjmC0dui8XgB2/xHMAgorqpZiE
         3bROo/Utp/u/qc2EcV3rLMwdTQFDLSx1QqA7ZNDSSB5bmKIAF9DdtF8l1rfju/+cMcxS
         97BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XzJf1YTsZe/dq+bdUcF3r/nmrjeBFpkFA8dWu8XLw1o=;
        b=NUv/B/4pq1U+eP1ZeRmq4zhFkuBbnHWmz3bbgwtJCIT1VOuF3M4HlRjl581ns9hAyB
         3Jnimd9yHALjSkl6iL9vMLQQ5AsCwiFYFeWB6K1eZb4iG/Fk2DIpK3GlszeKDJWgKguH
         ipZXbTL/8kayRmJo/6xyB5iPp/zcWhBedfLRkbklr3imcF/OWX15rxkCDOSnUdO8q/u8
         7lFPqsVojntqNBP21mSVUZ99LuLhmTHtt+GssXbnY1iwNpbi0Yoe6s1mTtnD6oA1dV2l
         pnGlqOIUyYqOoB2xfMW/YfSVRhCahs38ldm7vrveaEM36ZGkCU2Rch3rILfr4nOqxG1e
         os3w==
X-Gm-Message-State: AMke39ni65pTfvt/X5+Dvf89riA22g58U1YJasXW8s+A/ELSqhLAanP8696T2lvFqzAGDQ==
X-Received: by 10.99.189.9 with SMTP id a9mr15798443pgf.190.1488464662581;
        Thu, 02 Mar 2017 06:24:22 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l72sm17540743pfi.93.2017.03.02.06.24.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 06:24:21 -0800 (PST)
Date: Thu, 2 Mar 2017 19:54:19 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: marvin24@gmx.de
Cc: gregkh@linuxfoundation.org, ac100@lists.launchpad.net,
	linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: cleanup USLEEP_RANGE checkpatch checks
Message-ID: <20170302142418.GA16773@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Resolve strict checkpatch USLEEP_RANGE checks by converting delays and
sleeps as described in ./Documentation/timers/timers-howto.txt.

CHECK: usleep_range is preferred over udelay; see Documentation/
timers/timers-howto.txt

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/nvec/nvec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index c1feccf..cd35e64 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 		break;
 	case 2:		/* first byte after command */
 		if (status == (I2C_SL_IRQ | RNW | RCVD)) {
-			udelay(33);
+			usleep_range(33, 100);
 			if (nvec->rx->data[0] != 0x01) {
 				dev_err(nvec->dev,
 					"Read without prior read command\n");
@@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 	 * We experience less incomplete messages with this delay than without
 	 * it, but we don't know why. Help is appreciated.
 	 */
-	udelay(100);
+	usleep_range(100, 200);
 
 	return IRQ_HANDLED;
 }
-- 
2.7.4


