X-GM-THRID: 6250021302893019136
X-Received: by 10.28.45.82 with SMTP id t79mr2054551wmt.2.1455196482837;
        Thu, 11 Feb 2016 05:14:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.73.133 with SMTP id w127ls376694wma.52.gmail; Thu, 11 Feb
 2016 05:14:40 -0800 (PST)
X-Received: by 10.194.21.99 with SMTP id u3mr5546612wje.0.1455196480887;
        Thu, 11 Feb 2016 05:14:40 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id e130si715263wme.2.2016.02.11.05.14.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 05:14:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id p63so67164478wmp.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 05:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QfifCUlZDnirbl+JtzlnYPiosxpKhe9PSbUh/XmRSaM=;
        b=bLQ6cHEhavaVSox200HIzTBgYIdGK+jFX524LMPrDD05nbP571Z+aIT65jx1wbHN05
         47V25zGEyXEHP9dDh2BSSguOrvNVouNRwVLwo4Dt+g3F0YhyO2m/WDBAzjvhf/muX7Cz
         n3QFfNP5SsUREBz/d29PljjQSrr0ad+zowKE4sMwoQQ1FQG47zzoP+3rnG9c6OKBBxkN
         QCHHyZfqYWULwz88SNtfyKSM7NQk8Rpt6OizNVZ4ae3g80AUc7ykgaU7jcN+GiOZrUqb
         xNb2IixsAlvqNGATyZuNENXd7oHYbGIZX4r2PP2nvg1MFG0e9yfvKl+JEDiloHWpPDHQ
         Aerw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QfifCUlZDnirbl+JtzlnYPiosxpKhe9PSbUh/XmRSaM=;
        b=L/7LI6PXP9tzWmDi/Du9Hon/bkyxaGUkKbamqtw4nM2hnhlwzFJkETR86k9gjbJ5Lv
         vvJ9B8OmAmf4n7LTJEBW5rBmiuOkotriRNlcJAtCECz0Sz2VzGKlE9PNApC37c47N2Cg
         bi9PKv/7UecnoEhU2xGnoqSRh5PX9cWzMCjBGa5FibLj93qtTec7jMV+hNql7N9/RGc8
         uV7gMBQhx2rNC/GcuCshVQ2Omk6lUvCztFPBHP0WE+VeW9CcMexElXu/XtHrILDovcwh
         Ozvk085XNKvO2DbQ0VqsR1BNoOiMHCN8mC/bXJMilRjdhssjyxfIkGR/Z4m/CXQvkdhL
         H8MA==
X-Gm-Message-State: AG10YOQi9M+NXMJfirV1+mHF1pf64Rz0GSa0iEjOKItzHn9eRfUwN969oSGjtfYETftcWg==
X-Received: by 10.194.88.195 with SMTP id bi3mr44737066wjb.34.1455196480713;
        Thu, 11 Feb 2016 05:14:40 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.231.165.145])
        by smtp.gmail.com with ESMTPSA id gg7sm7578008wjd.10.2016.02.11.05.14.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 05:14:39 -0800 (PST)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] staging: dgnc: usleep_range is preferred over udelay
Date: Thu, 11 Feb 2016 15:14:30 +0200
Message-Id: <1455196470-4026-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

This patch fixes the issue:

CHECK: usleep_range is preferred over udelay; see
Documentation/timers/timers-howto.txt

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 72f0aaa..ce1471b 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
 	 * Presumably, this is a bug in this UART.
 	 */
 
-	udelay(10);
+	usleep_range(10, 100);
 }
 
 static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
@@ -1116,7 +1116,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
 	writeb(out, &ch->ch_cls_uart->mcr);
 
 	/* Give time for the UART to actually drop the signals */
-	udelay(10);
+	usleep_range(10, 100);
 }
 
 static void cls_send_start_character(struct channel_t *ch)
@@ -1170,7 +1170,7 @@ static void cls_uart_init(struct channel_t *ch)
 
 	writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT),
 	       &ch->ch_cls_uart->isr_fcr);
-	udelay(10);
+	usleep_range(10, 100);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 
-- 
2.1.4


