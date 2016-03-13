X-GM-THRID: 6261584556721176576
X-Received: by 10.182.33.42 with SMTP id o10mr14869321obi.12.1457888872188;
        Sun, 13 Mar 2016 10:07:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.149 with SMTP id 21ls3576864qgd.55.gmail; Sun, 13 Mar
 2016 10:07:51 -0700 (PDT)
X-Received: by 10.140.100.197 with SMTP id s63mr14900423qge.4.1457888871478;
        Sun, 13 Mar 2016 10:07:51 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x243.google.com (mail-qg0-x243.google.com. [2607:f8b0:400d:c04::243])
        by gmr-mx.google.com with ESMTPS id s129si1236668ywb.5.2016.03.13.10.07.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:07:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) client-ip=2607:f8b0:400d:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x243.google.com with SMTP id p68so10733620qge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Aj3BCarGOT6C13FC0Pwf6kv3jco7BT1++oH4Q3l4cdY=;
        b=menYse0dYY7A8rQ+bMGJxzNVobntaGCxuyzPHxDqyRy+9kE1JdRnvpZyyM6SZAj7t+
         fuG8nCDk1mtm6NlCa7xNawzr+WzWzAO6+sRdyv8HzxV1Bi5d3fv/4FCEYEEnbZqqt7Ah
         RzkVg6dz7JeTMHoLLuiTq3Se5VNY5HbMY9BxSLtpYEddAnW4ewxHT2uuJa9PRrggYbwe
         fEU27GtcQ0jBGcY2VW1hYIovyM/czIy51TJxLq7CFlAcP8Sxb3pNiwFoA8Hb//e7xL9G
         GOy1TA+1Xjr9ornoh+g6wCYlN5cMuvVmNlO5+S1mNVJpPedxY3eSYC7+BSgbKCtqdQK0
         /95w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Aj3BCarGOT6C13FC0Pwf6kv3jco7BT1++oH4Q3l4cdY=;
        b=OeYidv8zTg1cmibtdos7ioH8z075h8U8ICFFBhwB1usN9IOBB6S4uq7BPr9/VD2/nz
         sVjuYc3Xaej5xbFStZBd0QYAUw3kU6TjR3vWsH2OGDDtEQrci8DG2mBMTXcp/ViqOVz+
         e/5Wtv/DV1h28cj0L4Jcc/kQ7VncH1XE1J5+GGi4wg7sEBAKa60GBp1751UkY3fXrzEA
         JxjdG9OXlmuJgUX8ilz0gM6BJz8j0sq8PcesinblmbquFl9Qtbe5cTKciOEP3s5NRyWE
         YTb1bafgJwc/RU9Mkt8e6wkjs1ERj+hIwvLoydLdp1JGmpzQFYbClRv5L3MhzYjb0eU5
         3N3w==
X-Gm-Message-State: AD7BkJJHzLB6ZB1NG9x8jlttrqhRe2CwAZb33di56hV5HLS7O455DCJJCud8cQ9ICbILww==
X-Received: by 10.140.16.165 with SMTP id 34mr24921727qgb.79.1457888871112;
        Sun, 13 Mar 2016 10:07:51 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id z110sm8445430qgd.45.2016.03.13.10.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:07:50 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:07:46 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/8] staging: dgnc: fixed multiple line over 80 characters
 warning
Message-ID: <a7633646502f8a4c6d05aca486077fd85620846a.1457888423.git.juliana.orod@gmail.com>
References: <cover.1457888423.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888423.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes formatting for multiple lines that
caused checkpatch.pl warnings.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 2fe0d8c..285a724 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -180,7 +180,8 @@ int dgnc_tty_register(struct dgnc_board *brd)
 
 	brd->serial_driver.magic = TTY_DRIVER_MAGIC;
 
-	snprintf(brd->serial_name, MAXTTYNAMELEN, "tty_dgnc_%d_", brd->boardnum);
+	snprintf(brd->serial_name, MAXTTYNAMELEN, "tty_dgnc_%d_",
+		 brd->boardnum);
 
 	brd->serial_driver.name = brd->serial_name;
 	brd->serial_driver.name_base = 0;
@@ -936,7 +937,8 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 		if ((ch->ch_tun.un_tty->flags & (1 << TTY_DO_WRITE_WAKEUP)) &&
 		    ch->ch_tun.un_tty->ldisc->ops->write_wakeup) {
 			spin_unlock_irqrestore(&ch->ch_lock, flags);
-			ch->ch_tun.un_tty->ldisc->ops->write_wakeup(ch->ch_tun.un_tty);
+			ch->ch_tun.un_tty->ldisc->ops->
+			    write_wakeup(ch->ch_tun.un_tty);
 			spin_lock_irqsave(&ch->ch_lock, flags);
 		}
 
@@ -957,7 +959,8 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 				 */
 				if (ch->ch_digi.digi_flags & DIGI_RTS_TOGGLE) {
 					ch->ch_mostat &= ~(UART_MCR_RTS);
-					ch->ch_bd->bd_ops->assert_modem_signals(ch);
+					ch->ch_bd->bd_ops->
+					    assert_modem_signals(ch);
 				}
 
 				/*
@@ -966,7 +969,8 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 				 */
 				if (ch->ch_digi.digi_flags & DIGI_DTR_TOGGLE) {
 					ch->ch_mostat &= ~(UART_MCR_DTR);
-					ch->ch_bd->bd_ops->assert_modem_signals(ch);
+					ch->ch_bd->bd_ops->
+					    assert_modem_signals(ch);
 				}
 			}
 		}
@@ -978,7 +982,8 @@ void dgnc_wakeup_writes(struct channel_t *ch)
 		if ((ch->ch_pun.un_tty->flags & (1 << TTY_DO_WRITE_WAKEUP)) &&
 		    ch->ch_pun.un_tty->ldisc->ops->write_wakeup) {
 			spin_unlock_irqrestore(&ch->ch_lock, flags);
-			ch->ch_pun.un_tty->ldisc->ops->write_wakeup(ch->ch_pun.un_tty);
+			ch->ch_pun.un_tty->ldisc->ops->
+			    write_wakeup(ch->ch_pun.un_tty);
 			spin_lock_irqsave(&ch->ch_lock, flags);
 		}
 
@@ -2720,13 +2725,15 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 				if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
 					ch->ch_tun.un_flags &=
 						~(UN_LOW|UN_EMPTY);
-					wake_up_interruptible(&ch->ch_tun.un_flags_wait);
+					wake_up_interruptible(&ch->
+					   ch_tun.un_flags_wait);
 				}
 
 				if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
 					ch->ch_pun.un_flags &=
 						~(UN_LOW|UN_EMPTY);
-					wake_up_interruptible(&ch->ch_pun.un_flags_wait);
+					wake_up_interruptible(&ch->
+					   ch_pun.un_flags_wait);
 				}
 			}
 		}
-- 
2.7.2


