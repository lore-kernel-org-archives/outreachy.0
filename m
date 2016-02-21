X-GM-THRID: 6253644561933926400
X-Received: by 10.50.20.135 with SMTP id n7mr5600583ige.5.1456040088553;
        Sat, 20 Feb 2016 23:34:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.76.3 with SMTP id g3ls470489obw.60.gmail; Sat, 20 Feb 2016
 23:34:48 -0800 (PST)
X-Received: by 10.182.29.41 with SMTP id g9mr21301691obh.27.1456040088147;
        Sat, 20 Feb 2016 23:34:48 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id ff2si2714975pad.2.2016.02.20.23.34.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 23:34:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id e127so75219396pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 23:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=WDiZ2T5x95KKZqc9zey3NNWAq16HxgvsD2rp9BQA0fs=;
        b=PVYvMidCReVjRQGcbQ4zP1GXRtkhXUc+imflnQ7K4loPQ0XF0G20AT5qdRiLZ3yD5N
         fuSWu0bop4s6UrGtVq+/c1q2Xr/q6ykoEuzQsYmL7tkLp2QoEjYcuq89sSGNfjdIeXOR
         AgJT8bbO5S2RCEXukH9G7JL7DBL4LPmFSGe8wOrim7UVWa4h24T+yyjWhVNwKzvvk1nY
         NRRjnVhVKPrujGPGAIJYfSnzU7o4Uzmer2dz0PoLvqun3gCGy+U5W6pW90Ql4yDtRR/o
         9QObxxzY3IpGbvHp51+IgV6UeWIC0uucvg2ijDw9Zmfo5zCkbYReApCFcIZVdWYUZZ3I
         n6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=WDiZ2T5x95KKZqc9zey3NNWAq16HxgvsD2rp9BQA0fs=;
        b=ZGPv41cu4s3QQ1x9YEJZtt51HAGUChE+rb0z2bbO723QaSDkhigkTTpPxQtD7jLsHE
         0h3RCze0RZP0OD+f4pX4Qkx8odrz5kPoGApCvMgCf4Y9YxHWXnHYOZqS0PDYsFh6bDJW
         ioUfzi8sTsirS6kdKMQZDSMLmyapCSkRmrkEStfs5rQ0+rNLm519Y5Uk66jd2xQujXEl
         mXZ9okCfLWUmFp3GU3vZkQndkJdf848y5Bd31bDitdl0K7ws9H/wlgUrc40u51u9Rc/v
         V/EQqGkaD3yxvqsGjAQ3tZw0iuz6XCVZs/0PB8HLjK7SsVh+dmmNagp7KxiwXhFyqt3K
         sALQ==
X-Gm-Message-State: AG10YOR/NtaMXdbqbv0BN/SvOi4VhiST6p9MpCW4MG56Kx5bBWKpXEB+PpvzCB7jMXiDww==
X-Received: by 10.98.66.81 with SMTP id p78mr29936756pfa.43.1456040087987;
        Sat, 20 Feb 2016 23:34:47 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n68sm28457375pfj.46.2016.02.20.23.34.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 23:34:47 -0800 (PST)
Date: Sun, 21 Feb 2016 13:05:20 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Removed unnecessary return variable
Message-ID: <20160221073520.GA15093@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables in switch statements.
This was done with Coccinelle:

@@ local idexpression ret; expression e1,e2; identifier label;
@@
switch ( ... ) {
case label : ...
- ret = e1;
- break;
+ return e1;
... default: ...
- ret = e2;
+ return e2;
... }
... when != ret
- return ret;
@@ type T; identifier x; @@
- T x;
... when != x

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rts5208/rtsx_scsi.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index 60871f3..16284ca 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -1931,20 +1931,15 @@ static int rw_mem_cmd_buf(struct scsi_cmnd *srb, struct rtsx_chip *chip)

 static int suit_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 {
-	int result;
-
 	switch (srb->cmnd[3]) {
 	case INIT_BATCHCMD:
 	case ADD_BATCHCMD:
 	case SEND_BATCHCMD:
 	case GET_BATCHRSP:
-		result = rw_mem_cmd_buf(srb, chip);
-		break;
+		return rw_mem_cmd_buf(srb, chip);
 	default:
-		result = TRANSPORT_ERROR;
+		return TRANSPORT_ERROR;
 	}
-
-	return result;
 }

 static int read_phy_register(struct scsi_cmnd *srb, struct rtsx_chip *chip)
--
2.1.4


