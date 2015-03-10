X-GM-THRID: 7460820615168
X-Received: by 10.112.198.34 with SMTP id iz2mr4681580lbc.22.1426007353870;
        Tue, 10 Mar 2015 10:09:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.115 with SMTP id s19ls130640wiv.38.gmail; Tue, 10 Mar
 2015 10:09:13 -0700 (PDT)
X-Received: by 10.180.87.166 with SMTP id az6mr8006291wib.1.1426007353545;
        Tue, 10 Mar 2015 10:09:13 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id i8si119167wif.1.2015.03.10.10.09.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:09:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wibbs8 with SMTP id bs8so4787398wib.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=kMp1Ot9A1f1Hq4yJeU8HwSjyiU9hoXYcgc5T0bkQHOA=;
        b=ezXUsZXIlzaZjYemAQjuvx/ptZRw7oGVzZ7e3OnZSGDvHdwt68lNC7IwMn7KDcOoQW
         91F7Hgdq6Tg0iTO/bKzVWxHzLBoM0nMg+YJMzrmin++NWFwXV2OOxllfTHq2BBRGIIiD
         hReieixBpMPG/+LiMZ6otTHYBBzNrp/cI/pMSk4YwBxn/z+RBPVaeO22klINdk6VQeXu
         VDwxYRKLKT4RbMTMpYkF4UQc9vLeOzPTFdWCemj0E5UCUx/xAfAnp2V1MkagGR0fczpN
         7g18Bx1IVZfcBRPINLEX1f8TMfbIVOf8HIAwZJv9RFIBCoCMbaPAmuJGfcbzYoeWvu5m
         +k3Q==
X-Received: by 10.180.206.13 with SMTP id lk13mr24510318wic.35.1426007353461;
        Tue, 10 Mar 2015 10:09:13 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id bd3sm2413417wib.17.2015.03.10.10.09.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:09:12 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:09:10 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 20/20] staging: goldfish: remove extra parentheses around
 function arguments
Message-ID: <43f9fde8d3ae2d6c316519418db0f87937f2fc64.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/goldfish/goldfish_audio.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
index f200359..c7f8f1c 100644
--- a/drivers/staging/goldfish/goldfish_audio.c
+++ b/drivers/staging/goldfish/goldfish_audio.c
@@ -125,8 +125,8 @@ static ssize_t goldfish_audio_read(struct file *fp, char __user *buf,
 		length = (count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count);
 		AUDIO_WRITE(data, AUDIO_START_READ, length);
 
-		wait_event_interruptible(data->wait, (data->buffer_status &
-					 AUDIO_INT_READ_BUFFER_FULL));
+		wait_event_interruptible(data->wait, data->buffer_status &
+					 AUDIO_INT_READ_BUFFER_FULL);
 
 		length = AUDIO_READ(data, AUDIO_READ_BUFFER_AVAILABLE);
 
@@ -154,9 +154,9 @@ static ssize_t goldfish_audio_write(struct file *fp, const char __user *buf,
 
 		if (copy > WRITE_BUFFER_SIZE)
 			copy = WRITE_BUFFER_SIZE;
-		wait_event_interruptible(data->wait, (data->buffer_status &
+		wait_event_interruptible(data->wait, data->buffer_status &
 					(AUDIO_INT_WRITE_BUFFER_1_EMPTY |
-					AUDIO_INT_WRITE_BUFFER_2_EMPTY)));
+					AUDIO_INT_WRITE_BUFFER_2_EMPTY));
 
 		if ((data->buffer_status & AUDIO_INT_WRITE_BUFFER_1_EMPTY) != 0)
 			kbuf = data->write_buffer1;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

