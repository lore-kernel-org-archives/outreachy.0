X-GM-THRID: 6211053698454388736
X-Received: by 10.66.161.104 with SMTP id xr8mr8841295pab.26.1446281822433;
        Sat, 31 Oct 2015 01:57:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.70 with SMTP id 64ls983715qgc.26.gmail; Sat, 31 Oct
 2015 01:57:01 -0700 (PDT)
X-Received: by 10.129.134.129 with SMTP id w123mr9622418ywf.17.1446281821911;
        Sat, 31 Oct 2015 01:57:01 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id iz5si973658pbc.2.2015.10.31.01.57.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so96829765pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 01:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=5kRqsjnkn6ez7KHg3WlSRDUf3Qy3S5QOM6J8TaXsUBc=;
        b=XLamPUxw2/XBlyaJJVolQfkYBaTRBkRawGHa3uz229aZ1IBi6xZP58QEVlYteyZLyD
         PGXFyW5skdKTCzoehIPzb0AwUJqLNraLddnCqrcDnywqnTF1YfUd/OP0OgapXgEDZ78p
         LbECPnee9hm5/OTWrn4+M4TJJ0WW3OXeebATgqkUTd+qj3bztTkdYbGDZzCkYMb5MZdU
         2/Btp2Fn8eO6gi/MtDR3bsFGTDW2k2ECeLinfwENAyvwsHWv84758qyWt0JzmcaDSVy4
         Cb8GRo5sElNylYzk8ziyUuCcbAwCpC4mV6gGVKwqlWxVj5F8pKJ65BM3xdywrtg+NLXh
         fpEg==
X-Received: by 10.66.164.10 with SMTP id ym10mr13625950pab.26.1446281821795;
        Sat, 31 Oct 2015 01:57:01 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id yp9sm12645749pab.1.2015.10.31.01.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:57:01 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/5] staging: media: bcm2048: remove unnecessary space after a cast
Date: Sat, 31 Oct 2015 01:56:40 -0700
Message-Id: <c6e9def7b2efba49bfe01130fcef1cf39a96a087.1446281119.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: No space is necessary after a cast

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index f8578fb..199ad37 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -184,8 +184,8 @@
 #define dev_to_v4l2(f)	((f * BCM2048_FREQDEV_UNIT) / BCM2048_FREQV4L2_MULTI)
 #define v4l2_to_dev(f)	((f * BCM2048_FREQV4L2_MULTI) / BCM2048_FREQDEV_UNIT)
 
-#define msb(x)                  ((u8)((u16) x >> 8))
-#define lsb(x)                  ((u8)((u16) x &  0x00FF))
+#define msb(x)                  ((u8)((u16)x >> 8))
+#define lsb(x)                  ((u8)((u16)x &  0x00FF))
 #define compose_u16(msb, lsb)	(((u16)msb << 8) | lsb)
 
 #define BCM2048_DEFAULT_POWERING_DELAY	20
-- 
1.7.9.5


