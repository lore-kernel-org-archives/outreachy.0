X-GM-THRID: 9924000088064
X-Received: by 10.66.129.171 with SMTP id nx11mr13862332pab.39.1427353467908;
        Thu, 26 Mar 2015 00:04:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.124.193 with SMTP id mk1ls2309915igb.1.canary; Thu, 26 Mar
 2015 00:04:27 -0700 (PDT)
X-Received: by 10.42.183.206 with SMTP id ch14mr35509218icb.24.1427353467089;
        Thu, 26 Mar 2015 00:04:27 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id gu4si590079pac.1.2015.03.26.00.04.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 00:04:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x233.google.com with SMTP id op1so53885093pdb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 00:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4daVlRu4YJ2EM0ph3EhTb53aFh8+kVKKnytIflTVN1c=;
        b=fHb+aRoCwuHQhnj/UV0ehTtTPNcPVk/6FgZcLX5Lv+cpdEV3oGZdiOx2KCFFlberPX
         zZNKS3jkr1vCJGYGPw1wTjmOByh4mHIZJ6B5z9jQ2P84T1g4TmTqfFHsV2zLaoBt2Zlk
         YrwWNBhmGJdoNAtD+rU9EclJQ9XyV0SqWbixrDB7KU02hPOZqPImuQfuAoPc6nuiiGYP
         HmmJ+4IJsjkpFwZABHGKmDoZCBla9TokpcQRetJ5Y/fVi97m49gooQ/3qciTHsy1Lz7F
         Qbcq9OZlaXRNEXsfO+d/dJC0DFctQd/rvt/RuTMCyYswKWYHN+/JpbVb3CJKP0amWikS
         Zv/A==
X-Received: by 10.66.241.36 with SMTP id wf4mr24566245pac.8.1427353466932;
        Thu, 26 Mar 2015 00:04:26 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id v9sm4515587pdp.12.2015.03.26.00.04.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 00:04:25 -0700 (PDT)
Date: Thu, 26 Mar 2015 12:32:14 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgnc: Reduce line size to increase readability
Message-ID: <20150326070214.GA2896@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Reduce line size to increase code readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 41105be..2abe60b 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -333,7 +333,8 @@ static inline void neo_set_new_start_stop_chars(struct channel_t *ch)
 {
 
 	/* if hardware flow control is set, then skip this whole thing */
-	if (ch->ch_digi.digi_flags & (CTSPACE | RTSPACE) || ch->ch_c_cflag & CRTSCTS)
+	if (ch->ch_digi.digi_flags & (CTSPACE | RTSPACE) ||
+		ch->ch_c_cflag & CRTSCTS)
 		return;
 
 	/* Tell UART what start/stop chars it should be looking for */
@@ -684,7 +685,8 @@ static void neo_param(struct tty_struct *tty)
 		};
 
 		/* Only use the TXPrint baud rate if the terminal unit is NOT open */
-		if (!(ch->ch_tun.un_flags & UN_ISOPEN) && (un->un_type == DGNC_PRINT))
+		if (!(ch->ch_tun.un_flags & UN_ISOPEN) &&
+			(un->un_type == DGNC_PRINT))
 			baud = C_BAUD(ch->ch_pun.un_tty) & 0xff;
 		else
 			baud = C_BAUD(ch->ch_tun.un_tty) & 0xff;
@@ -697,7 +699,8 @@ static void neo_param(struct tty_struct *tty)
 
 		jindex = baud;
 
-		if ((iindex >= 0) && (iindex < 4) && (jindex >= 0) && (jindex < 16))
+		if ((iindex >= 0) && (iindex < 4) &&
+			(jindex >= 0) && (jindex < 16))
 			baud = bauds[iindex][jindex];
 		else
 			baud = 0;
@@ -801,11 +804,13 @@ static void neo_param(struct tty_struct *tty)
 	/* Set new start/stop chars */
 	neo_set_new_start_stop_chars(ch);
 
-	if (ch->ch_digi.digi_flags & CTSPACE || ch->ch_c_cflag & CRTSCTS) {
+	if (ch->ch_digi.digi_flags & CTSPACE ||
+		ch->ch_c_cflag & CRTSCTS) {
 		neo_set_cts_flow_control(ch);
 	} else if (ch->ch_c_iflag & IXON) {
 		/* If start/stop is set to disable, then we should disable flow control */
-		if ((ch->ch_startc == _POSIX_VDISABLE) || (ch->ch_stopc == _POSIX_VDISABLE))
+		if ((ch->ch_startc == _POSIX_VDISABLE) ||
+			(ch->ch_stopc == _POSIX_VDISABLE))
 			neo_set_no_output_flow_control(ch);
 		else
 			neo_set_ixon_flow_control(ch);
@@ -817,7 +822,8 @@ static void neo_param(struct tty_struct *tty)
 		neo_set_rts_flow_control(ch);
 	} else if (ch->ch_c_iflag & IXOFF) {
 		/* If start/stop is set to disable, then we should disable flow control */
-		if ((ch->ch_startc == _POSIX_VDISABLE) || (ch->ch_stopc == _POSIX_VDISABLE))
+		if ((ch->ch_startc == _POSIX_VDISABLE) ||
+			(ch->ch_stopc == _POSIX_VDISABLE))
 			neo_set_no_input_flow_control(ch);
 		else
 			neo_set_ixoff_flow_control(ch);
@@ -1200,7 +1206,8 @@ static void neo_copy_data_from_uart_to_queue(struct channel_t *ch)
 		linestatus = 0;
 
 		/* Copy data from uart to the queue */
-		memcpy_fromio(ch->ch_rqueue + head, &ch->ch_neo_uart->txrxburst, n);
+		memcpy_fromio(ch->ch_rqueue + head,
+				&ch->ch_neo_uart->txrxburst, n);
 
 		/*
 		 * Since RX_FIFO_DATA_ERROR was 0, we are guarenteed
-- 
1.9.1


