X-GM-THRID: 6395635092352401408
X-Received: by 10.107.138.87 with SMTP id m84mr4998565iod.88.1489099853206;
        Thu, 09 Mar 2017 14:50:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls4110226otd.0.gmail; Thu, 09 Mar
 2017 14:50:52 -0800 (PST)
X-Received: by 10.157.9.238 with SMTP id 43mr5975950otz.140.1489099852890;
        Thu, 09 Mar 2017 14:50:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1488625pfd.3.2017.03.09.14.50.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:50:52 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so3711252pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aEOtZBgzYnYMV4flwV+G+4vMv5BRlV769u68jq9w6FA=;
        b=U/lG2Ye/dPzJzRA67R1dxKw4wWeG/LXqPk3/OyRkBLUWDHrGQ2wc4K8ke/Ea91E9Sn
         gdqxI0MhLuf/ZCt22pFY27dSmioK34Q+zb379PzhndLkw8vuDkBqNtaeCO0vo9B22eMh
         fFKIfjMfyVFovWmEAI9oGSmmFwWvGaxqHd7EfoFUNCop0L64zkAscihWOegMw9oGm0dn
         o21cY/EqxVdVpr0GBS16HKzR3aaeyVKV7RLghtYhsyG8DRJyIoXFkj5cANZwaskiB7fE
         Rng9K6J9xZeSgwB9yKmjxwhq2zujfrwiHWcaCki6+boSRlA6D1H42fl69P24+YmXrEjA
         t+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=aEOtZBgzYnYMV4flwV+G+4vMv5BRlV769u68jq9w6FA=;
        b=HqCfL//2xk27nsmxgHY5pcAhSJlq2DQpRHuMamLcyGzcqqqObt4jIb1k61HSk/ldOF
         3qgqudjxKfSNJ2GndwekzZ9N3rNSRlxSYxlPdqVHKeVE0oQINvyNdSIKlNdaAPyeKfXF
         dZml/BrFr/I/aYxlbuHebj11nWQ2t1keXYsxt/NqSZGoWh/fEMQRWRF63Xdq6Rl5Olc0
         fptlE+qNL1rfECfdr07Q5l/eclEWPgYisKAx4gbJhSYOizHnMvMswubCBCmFrFciGhWh
         n8rvgJnnIjlrj0RGBzInjRoDBSu34eCQd6jEp8gu/poXjTfVWBiz7QygB1EJzyyfcQp4
         B7iw==
X-Gm-Message-State: AMke39kNUba5HnDHqJ74nSXZCDeRGIcpdiID3D92VDdVloMFPsHBpnW5tdty2BaL+nCYyA==
X-Received: by 10.84.202.163 with SMTP id x32mr20332210pld.67.1489099852693;
        Thu, 09 Mar 2017 14:50:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m29sm14404236pfi.54.2017.03.09.14.50.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:50:51 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 5/7] staging: gc2235: Remove multiple assignments
Date: Fri, 10 Mar 2017 04:20:27 +0530
Message-Id: <1489099829-1264-6-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
References: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>

Remove multiple assignments by factorizing them. Problem found using
checkpatch.pl

CHECK: multiple assignments should be avoided

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 198df22..165dcb3 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -259,7 +259,8 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 		return -EINVAL;
 
 	/* pixel clock calculattion */
-	buf->vt_pix_clk_freq_mhz = dev->vt_pix_clk_freq_mhz = 30000000;
+	buf->vt_pix_clk_freq_mhz = 30000000;
+	dev->vt_pix_clk_freq_mhz = 30000000;
 
 	/* get integration time */
 	buf->coarse_integration_time_min = GC2235_COARSE_INTG_TIME_MIN;
-- 
2.7.4


