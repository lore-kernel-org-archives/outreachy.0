X-GM-THRID: 6205587481887244288
X-Received: by 10.13.230.214 with SMTP id p205mr4382581ywe.57.1444850930164;
        Wed, 14 Oct 2015 12:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.7 with SMTP id c7ls121086iod.15.gmail; Wed, 14 Oct
 2015 12:28:49 -0700 (PDT)
X-Received: by 10.50.41.7 with SMTP id b7mr23581755igl.12.1444850929920;
        Wed, 14 Oct 2015 12:28:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si1075158pbb.0.2015.10.14.12.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id cn9so31307218pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=T5TvGzh30WzVWnGAAJX9ZjgHHlrcyZZAA6VAnVsb50s=;
        b=1Dt7UZ7QG/r4V3L+SVdMQFMHiCxc9nUZBzVutrBXiVA1LysErRSdMfAHFC+6CD5+5J
         snLlbn2Wu4Uoju903vrW+jSYs2HWcAJZ7TAww89hL7ZX90SRGWp4kw7e55jjaXyzM3X8
         CfvXdLgEnuEYTA+yXSobX9HmkbsL4K00uUAN/qjzTGK/aFiXfX5QmTp4dsFfNoi6aDth
         SzyFmhe9oRqm0DIMqFfbIf6afC+VGOHWWglq9Xfmd9qkSbh3GQmtrr+y1qCBJfRtWTju
         0QxYirbx9fX2hFUkZYvb+heG9bohQInrIImd99U3Fz8oLrigIXTMY+RSIqj8YcQEz35l
         WL0Q==
X-Received: by 10.68.139.72 with SMTP id qw8mr5318845pbb.60.1444850929802;
        Wed, 14 Oct 2015 12:28:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.28.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:28:49 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 01/12] Staging: most: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:19 +0530
Message-Id: <1444850910-11408-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EACF0.001C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index c7e956f..3887631 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -279,7 +279,7 @@ static int try_start_dim_transfer(struct hdm_channel *hdm_ch)
  */
 static int deliver_netinfo_thread(void *data)
 {
-	struct dim2_hdm *dev = (struct dim2_hdm *)data;
+	struct dim2_hdm *dev = data;
 
 	while (!kthread_should_stop()) {
 		wait_event_interruptible(dev->netinfo_waitq,
@@ -450,7 +450,7 @@ static void dim2_tasklet_fn(unsigned long data)
  */
 static irqreturn_t dim2_ahb_isr(int irq, void *_dev)
 {
-	struct dim2_hdm *dev = (struct dim2_hdm *)_dev;
+	struct dim2_hdm *dev = _dev;
 	struct dim_channel *buffer[DMA_CHANNELS + 1];
 	unsigned long flags;
 
-- 
2.1.4


