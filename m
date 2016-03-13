X-GM-THRID: 6261584556721176576
X-Received: by 10.13.230.75 with SMTP id p72mr14711745ywe.45.1457890937464;
        Sun, 13 Mar 2016 10:42:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.83.73 with SMTP id o9ls608144igy.5.gmail; Sun, 13 Mar 2016
 10:42:17 -0700 (PDT)
X-Received: by 10.50.65.69 with SMTP id v5mr10008839igs.13.1457890937112;
        Sun, 13 Mar 2016 10:42:17 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x243.google.com (mail-qg0-x243.google.com. [2607:f8b0:400d:c04::243])
        by gmr-mx.google.com with ESMTPS id i133si1019247ywe.7.2016.03.13.10.42.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:42:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) client-ip=2607:f8b0:400d:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x243.google.com with SMTP id 14so10783332qgg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Aj3BCarGOT6C13FC0Pwf6kv3jco7BT1++oH4Q3l4cdY=;
        b=ei4QMD5266OQu37rUugIna/PaTIdueqbqg38ck41VIU8kyWd/+lgflonUbwvRmP3as
         QpRTa6xWxSPA/sCb/fkWYIugbYzS6sQZpY8efOoJInHFXCRdaDhH0kFCZE8etCW0Pls4
         boOmUIo+HkXm2yI8cufEd0WBovEkfjruKMk5K90drb5OWdizVWbiAzPHZj3pP9oGmALd
         /lTDy11ZT+jIxLc4tDpVS+jGofB6J5Qy+0lnwlFq5gRybbcjafx37COCfwzSaODf8kfI
         Tp+SD1O6S5IwpTofYJFDHQAmCBgA7lTuw7bFaQHIlNV8rSEdx5KkCzk3bEmI1QLgcrJJ
         4xNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Aj3BCarGOT6C13FC0Pwf6kv3jco7BT1++oH4Q3l4cdY=;
        b=PTrIZes8e6M0qMRwMzludjyiVvYD3qJxZHIhZRc1tgQJPrnyt0cpLwKZuVXdPsSFMT
         WhJf8IzCX8sXuw4UTiW5E6VyKfvxLKsIOr6NhfPnTtxfJfgIMU/Zpf0BZUJn9u9qapGf
         wBVVSbWB8a3UP+ws444BGuUp7dwg9N9hzPF6Qt405Z570DrSgsWbKLLEZQJtM3U5uSlj
         7LW77GEMau53De6pWUme9a4odN1aQWsAzwbi/kcI2LwO8o/l7ITWWLeMBhhmcPl8k44Y
         sfnpxKV98lmYnQEULdRgiRbvwY8JoHUKLrgUkgQTD6il7nl11BRPhaDKyT5q8V7Zr9js
         80Fg==
X-Gm-Message-State: AD7BkJJgY5l9gHRfiACqW9JoxmzwXDqLHe4jfqufVb7Grmj9gJaFR18xgd6/SF/mN1fDFA==
X-Received: by 10.140.97.202 with SMTP id m68mr24972655qge.102.1457890936791;
        Sun, 13 Mar 2016 10:42:16 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id h64sm8499533qgh.39.2016.03.13.10.42.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:42:16 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:42:13 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/8] staging: dgnc: fixed multiple line over 80 characters
 warning
Message-ID: <a7633646502f8a4c6d05aca486077fd85620846a.1457890698.git.juliana.orod@gmail.com>
References: <cover.1457890698.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457890698.git.juliana.orod@gmail.com>
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


