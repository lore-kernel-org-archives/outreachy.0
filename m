X-GM-THRID: 6464894536375074816
X-Received: by 10.36.94.74 with SMTP id h71mr8844883itb.27.1505225556837;
        Tue, 12 Sep 2017 07:12:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.94 with SMTP id s91ls1147246ioe.35.gmail; Tue, 12 Sep
 2017 07:12:36 -0700 (PDT)
X-Received: by 10.107.30.8 with SMTP id e8mr8813264ioe.53.1505225556071;
        Tue, 12 Sep 2017 07:12:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505225556; cv=none;
        d=google.com; s=arc-20160816;
        b=JLXFjafczWU5wfEZ9hzvmDc4wPU5pnwbsxMHeOjkFJqqWEc1VXHBctBbQ+acsuKzni
         JUzQkDqMMAnAA9CaQ8BBj6OJoE6dQZuk0ZORK4FnU3vC9TcUOwUWei1kczfTUCbWXQjb
         deiZ3vIo3CdfwVxjBq37h1b5bSC2smt7x3lcx5Cg2GVgMXTkiaL9BEQDCXBJtPenr32F
         uq7Bb44gKZFvRPGFgb6vnoHmiTR9qMaLtXEpdWPzNEyT7mRTVKxMV+urDiksn+V472fM
         0CXag13kmCkdu479BGEg9DdTTKaJI/gNFVX1J28aw99NtR+71inGu+kzZmRUm2DsstMM
         m2SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=E0BYowlm8P/ASAA99h2WbseAy3NXE0i+0UT3SUeMhzo=;
        b=Mc8VGKWejO0bC4FVAYpX4cbvNspHOwg+p419Sdld+2Rkk38P5nd1e2hHcLqt88463g
         QtoPKHS0ngyuQU4LhTOgosYgMejorV2b9b8yqgf8C5LRQBMn/YZM01kDU7cub8lgE/OJ
         4m4PvaC+KSW8EoG95hv8MoNpPU6CisN16S5J4IHFKJHf9dJNBwJ7q9e257bCn9tsF1vA
         lcEG98/bFFZmRi0UWS068xXSDMBQ5JT5lDxdDyoJuU6afRmJan4fLP1Djc3kIugHs6gs
         4wQVkyT103gz5GpEhezg06O2Y0okZM8+ooY44sHwIqwZGvBr4piqmidt/vvjFbFpCoWO
         /SyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=liUeQe0Q;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r78si145028pfb.3.2017.09.12.07.12.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 07:12:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=liUeQe0Q;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j16so3122936pga.2
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 07:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=E0BYowlm8P/ASAA99h2WbseAy3NXE0i+0UT3SUeMhzo=;
        b=liUeQe0QqJfK+U98n8u7xcUmYgp/0uSSnxFBS2FuRq+DEE9oXLV3gurexWHBWKnEoR
         rVOe4SL4Q0HoOY6auMOuInKGMbT8AF5hZ55w1viz2yOQUz4Ba5dJQVnF9vqCS5RUx9lF
         Hy/Bz1QU3IDIOoFbrMU7k9J18tK3jmWyUYuDRUJlP/SuS6QMenCD2PJMr/FkwQtx5xJ+
         Skw0DzsQ6hR8BUiyu1RVy89QA6m9PIBNimLUqSGn3pcOZH/1szd9KPiQA7iVoZlXUazu
         9rrjpuHsfZeuszb0iWInSPdZSpWD1RKFTbrze2w2p0ZuIJ9EXu1oina4edyeo6N3k7Vd
         iZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=E0BYowlm8P/ASAA99h2WbseAy3NXE0i+0UT3SUeMhzo=;
        b=lzuHneIJovz+2zTXsfefoVkDD71MDPrgroYsWVSLkpg7n+cRdxSWXyBKPMqtU7L8FI
         hhdjTUIN1MQY/95X4W0q3haN+oLRFX8Q2AWWYWB/U8kPT597oYLQ95fOwi0OjBCTthpQ
         Ank+jISr0ueggoYG6WGHt4u49CalU8xhP913/deICfQLRpiwSSPaxNH2BO86ouZmNh8f
         0D2iJeupf//89dn6ZL3naIGTxZ4L7bmgXISDAuZ/l7oCcAzyW2N4Yk+FLAYxWpJhYf0Y
         Atuc+n02LjGDwZdqc056u7DpZmYtLbutijJeyDTiro33kxWFH059l0ZHf208doiDj6It
         SuTw==
X-Gm-Message-State: AHPjjUjARKF6cu1xYijGQWczi4BJLzjMb+UFICjaIGuxnXnUNErj1mzm
	5Xv7M+NeB2UvXQ==
X-Google-Smtp-Source: ADKCNb6v2XUDUM5IkJiPKnnRiDTsq1OTlGSAtbHaUj2ZoHbqD9bgVa8e1QC5Y9XQ03L9X4TtK9erDA==
X-Received: by 10.99.142.196 with SMTP id k187mr15205073pge.14.1505225555669;
        Tue, 12 Sep 2017 07:12:35 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.175.183.249])
        by smtp.gmail.com with ESMTPSA id w9sm18746839pfg.129.2017.09.12.07.12.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 12 Sep 2017 07:12:35 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: media: atomisp: Merge assignment with return
Date: Tue, 12 Sep 2017 19:42:29 +0530
Message-Id: <1505225549-4432-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Merge the assignment and the return statements to return the value
directly. Done using the following semantic patch by coccinelle.

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/media/atomisp/i2c/ov5693/ov5693.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
index 1236425..2195011 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
+++ b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
@@ -945,12 +945,8 @@ static int ad5823_t_focus_vcm(struct v4l2_subdev *sd, u16 val)
 
 int ad5823_t_focus_abs(struct v4l2_subdev *sd, s32 value)
 {
-	int ret;
-
 	value = min(value, AD5823_MAX_FOCUS_POS);
-	ret = ad5823_t_focus_vcm(sd, value);
-
-	return ret;
+	return ad5823_t_focus_vcm(sd, value);
 }
 
 static int ov5693_t_focus_abs(struct v4l2_subdev *sd, s32 value)
@@ -1332,7 +1328,6 @@ static int power_ctrl(struct v4l2_subdev *sd, bool flag)
 
 static int gpio_ctrl(struct v4l2_subdev *sd, bool flag)
 {
-	int ret;
 	struct ov5693_device *dev = to_ov5693_sensor(sd);
 
 	if (!dev || !dev->platform_data)
@@ -1342,9 +1337,7 @@ static int gpio_ctrl(struct v4l2_subdev *sd, bool flag)
 	if (dev->platform_data->gpio_ctrl)
 		return dev->platform_data->gpio_ctrl(sd, flag);
 
-	ret = dev->platform_data->gpio0_ctrl(sd, flag);
-
-	return ret;
+	return dev->platform_data->gpio0_ctrl(sd, flag);
 }
 
 static int __power_up(struct v4l2_subdev *sd)
-- 
2.7.4


