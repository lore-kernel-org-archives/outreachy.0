X-GM-THRID: 1751610556416
X-Received: by 10.112.64.171 with SMTP id p11mr268096lbs.12.1424520337393;
        Sat, 21 Feb 2015 04:05:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.4 with SMTP id u4ls347639laj.88.gmail; Sat, 21 Feb 2015
 04:05:36 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr267996lak.5.1424520336959;
        Sat, 21 Feb 2015 04:05:36 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id i7si295526wif.0.2015.02.21.04.05.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 04:05:36 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so9988388wes.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 04:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=sCTLHzOTmAMxU48UbrjiF6OaL5LrZWGDBgW9I5Qyh4w=;
        b=kHvTwVVSjPB7XReH0ammPZoApELfT7D5dvR4AL27RxtHZHxnfJlIWoEY+HThILLhEH
         sybev+pYNk6rp+BkcD+dp4ABDnoDWalHtnEGwa6DqdFwdJxRaKGbySgQydCMe5soGKXy
         21hxTxkuWFQ0maCyUgAybM+j6tAdFvQPXMhfddCt9swRe6q66iiGWY/TppgJFou4XfAM
         09i6wv8nbWS/TaG5ZYC7qH7qUqoHEpdXwO0n9aVRI4NiS2Tcm7u3OQy36eIs6mnDTQiL
         v94bhkgwU/meqyKcZ/VKbCTXKdmC7UqiOilyPOMD+M1andHW/Ruht/pfLCpLK921hPAe
         vNAA==
X-Received: by 10.180.108.177 with SMTP id hl17mr3439294wib.35.1424520336868;
        Sat, 21 Feb 2015 04:05:36 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.58.202])
        by mx.google.com with ESMTPSA id ha5sm6713227wib.1.2015.02.21.04.05.35
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 04:05:36 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: ste_rmi4: Add blank line
Date: Sat, 21 Feb 2015 14:05:39 +0200
Message-Id: <1424520339-6267-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
index 28b3930..f92ae1d 100644
--- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
+++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
@@ -415,6 +415,7 @@ static int synaptics_rmi4_report_device(struct synaptics_rmi4_data *pdata,
 	int touch = 0;
 	struct	i2c_client *client = pdata->i2c_client;
 	static int num_error_reports;
+
 	if (rfi->fn_number != SYNAPTICS_RMI4_TOUCHPAD_FUNC_NUM) {
 		num_error_reports++;
 		if (num_error_reports < MAX_ERROR_REPORT)
@@ -485,6 +486,7 @@ static irqreturn_t synaptics_rmi4_irq(int irq, void *data)
 {
 	struct synaptics_rmi4_data *pdata = data;
 	int touch_count;
+
 	do {
 		touch_count = synaptics_rmi4_sensor_report(pdata);
 		if (touch_count)
-- 
1.8.3.2


