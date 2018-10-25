X-GM-THRID: 6616604280773148672
X-Received: by 2002:a1c:9902:: with SMTP id b2-v6mr702069wme.4.1540548233291;
        Fri, 26 Oct 2018 03:03:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5081:: with SMTP id a1-v6ls115402wrt.13.gmail; Fri, 26
 Oct 2018 03:03:52 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f5vT/BdtOwZ5J4Y5nJY75znE9ITdyEfXLZ7odmfYUBDqAJGkJkkfwIIbBA6GdEKQdtysOS
X-Received: by 2002:adf:db03:: with SMTP id s3-v6mr659932wri.9.1540548232286;
        Fri, 26 Oct 2018 03:03:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540548232; cv=none;
        d=google.com; s=arc-20160816;
        b=HAhtNrHh321MpWyJy9rjPuOwgEHkRYANYJbW6HkzrmgMVveyAuaYvbRmVyRG/faIce
         9TBFk1G5kHgCHGeolZB/hlm/AfC6sQOrwX/ZGdS0nK1SAJU4eyW2alLwaFFw/aMG3WaK
         L58YlWXvivKpl4FrAcR5NgqNjhnedGD/DTgUfmfwKkzuwFeu+WXS1/BVroEdGriCtZW5
         JCS7f5n3wCiBlrd6Bc9ZwQEiMGDK9Ols4iCIPypZ1+oZJblkHnJLMK744dZ3oEQ3YO3S
         1mdFNBnEhCQyAK2xitiyQo1dp8YvkzF8w6Mkrjhh3q/dOev7j88K3NpG4/bcY26JT9lU
         6kwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=m4i46Slwi0Xdj59+vKd2eVo0ftZ0M4AGYgm7jCJg3Ig=;
        b=xkDmJre/afS5mOC/OEsuoFA0KLAplUNKHx5AzW7Q/2hX5EUlv8cjcOye13h+VDgVa2
         F5v4Gh8DrO2tfBP9BgBO0E/BKKEC35HG691+ljKLehsZYtFFhZpZK2bQFXhtzZNHmJd2
         Eu3tjD9g6zzR5I7PBZTAfvMpVgRuKHhYv6XwUShlfgs8aZyNvopuCIlyN4Vg2+tgQ0e9
         LpnhIj1oIo0Fsys0b/d1xDkOy86uJ8w4gMhPyv3UfSgEb4CODDeynd+BiVgKCJhOTEwD
         esMHwOv4pzH+LDu2FKibhb6j5JLVmTq5YBWv/y0+ALCM1INr7OWwifaiCwfT++ChL2yl
         S5sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6+Nf3uq;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 191-v6si190511wmv.0.2018.10.26.03.03.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 03:03:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6+Nf3uq;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id x12-v6so708426wrw.8
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 03:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=m4i46Slwi0Xdj59+vKd2eVo0ftZ0M4AGYgm7jCJg3Ig=;
        b=E6+Nf3uqp8MdpsGhuS5feWuSovjs5TqqA65zuxcfAkQGUCmzlXWwHz1Q4M0JwalSLS
         pLeQkXg99hIc7g/76b5AYbsWW6Vw86lr7yhLV3bdzonCh6EPbao/mb27+dW6Cu7PmI3k
         nzg3BY7gjzdoNokvcgqRyp+NkIZgNa9a3KjS2yPV4X0DQLGXWNNJXmQaEse0tHkudRck
         ay/aIwgl1ktam4Th+4F/OjX93d0zTvyVl1DCbaYFN/HljuqHZiYteevt/uPx/L9jIVIr
         vnvmQjscj+NnbQdifN3MwdvmrIQgdgrCAlraICN+lfaCKt5Db+ulSoUPYZ5RuRgbzHLO
         pA2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=m4i46Slwi0Xdj59+vKd2eVo0ftZ0M4AGYgm7jCJg3Ig=;
        b=seqXCCw7nZZVWD1BRf1WmeL/vfdBjA/F35z8xA+Ut7f2ObqNCZXqZ8Uy78l16z+31I
         aAJtwLhp1kBJJk6Yc2gq/O8pYgL+dDA3YrEM7uZHqCHDRp4HSwTSbKrY3ATdiGHakQ+n
         Wn14Rm48Td6zQobmcECyJYAbWbKGg98KABW+tkMZRj/WAO3AIa6ZyRGJhQrIilfwmbeL
         fvTSbgG1il9b6WUyp/cc78DXnarAYg8mU05lKHUpQ289vqz8TxQQOm9OZS1oKpUXSNYr
         HVvHDaUKjJZqssGvqQwj51diIDCgXd1WPXn07VUXXxFo54a/yYUcKLmiXXfkteZh/NtD
         i85A==
X-Gm-Message-State: AGRZ1gLp2crTCjfzN/Cw02rzF9qqC3iBM6VDf1WXMZ1C2QAYJeQx2Jn5
	3RRSsIC4v9LEYhUjP6FwG7Vegrrua3o=
X-Received: by 2002:adf:8281:: with SMTP id 1-v6mr5284706wrc.252.1540548231263;
        Fri, 26 Oct 2018 03:03:51 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id 82-v6sm5080246wms.17.2018.10.26.03.03.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Oct 2018 03:03:50 -0700 (PDT)
Date: Thu, 25 Oct 2018 18:29:52 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rts5208: Shortened lines > 80 chars and aligned
 function args
Message-ID: <20181025172943.GA7157@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Reducing lines to < 80 characters and align function arguments
wherever possible. Most of these issues appear due to the long
function name 'wait_for_completion_interruptible_timeout' for
which a TODO is noted.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/TODO             |  5 ++++-
 drivers/staging/rts5208/rtsx_transport.c | 28 +++++++++++++-----------
 2 files changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rts5208/TODO b/drivers/staging/rts5208/TODO
index 57bcf5834c0c..67f0c8372d96 100644
--- a/drivers/staging/rts5208/TODO
+++ b/drivers/staging/rts5208/TODO
@@ -1,7 +1,10 @@
 TODO:
 - use kernel coding style
 - checkpatch.pl fixes
+  --> Consider renaming 'wait_for_completion_interruptible_timeout'
+      function in rtsx_transport as it causes many lines to
+      overflow past 80 characters and/or alignment issues
 - We will use the stack in drivers/mmc to implement
   rts5208/5288 in the future
 
-Micky Ching <micky_ching@realsil.com.cn>
\ No newline at end of file
+Micky Ching <micky_ching@realsil.com.cn>
diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d7895608..de9d9eec963f 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -257,8 +257,8 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 	spin_unlock_irq(&rtsx->reg_lock);
 
 	/* Wait for TRANS_OK_INT */
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
+	timeleft = wait_for_completion_interruptible_timeout(&trans_done,
+						msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
 			chip->int_reg);
@@ -284,8 +284,8 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
 	return err;
 }
 
-static inline void rtsx_add_sg_tbl(
-	struct rtsx_chip *chip, u32 addr, u32 len, u8 option)
+static inline void rtsx_add_sg_tbl(struct rtsx_chip *chip, u32 addr,
+				   u32 len, u8 option)
 {
 	__le64 *sgb = (__le64 *)(chip->host_sg_tbl_ptr);
 	u64 val = 0;
@@ -394,7 +394,8 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 			*index = *index + 1;
 		}
 		if ((i == (sg_cnt - 1)) || !resid)
-			option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
+			option = RTSX_SG_VALID | RTSX_SG_END |
+				 RTSX_SG_TRANS_DATA;
 		else
 			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
 
@@ -420,8 +421,8 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 
 	spin_unlock_irq(&rtsx->reg_lock);
 
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
+	timeleft = wait_for_completion_interruptible_timeout(&trans_done,
+						     msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 			__func__, __LINE__);
@@ -445,7 +446,7 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
 		init_completion(&trans_done);
 		spin_unlock_irq(&rtsx->reg_lock);
 		timeleft = wait_for_completion_interruptible_timeout(
-			&trans_done, msecs_to_jiffies(timeout));
+					&trans_done, msecs_to_jiffies(timeout));
 		if (timeleft <= 0) {
 			dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 				__func__, __LINE__);
@@ -542,7 +543,8 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 				(unsigned int)addr, len);
 
 			if (j == (sg_cnt - 1))
-				option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
+				option = RTSX_SG_VALID | RTSX_SG_END |
+					 RTSX_SG_TRANS_DATA;
 			else
 				option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
 
@@ -566,7 +568,7 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 		spin_unlock_irq(&rtsx->reg_lock);
 
 		timeleft = wait_for_completion_interruptible_timeout(
-			&trans_done, msecs_to_jiffies(timeout));
+					&trans_done, msecs_to_jiffies(timeout));
 		if (timeleft <= 0) {
 			dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 				__func__, __LINE__);
@@ -593,7 +595,7 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 		init_completion(&trans_done);
 		spin_unlock_irq(&rtsx->reg_lock);
 		timeleft = wait_for_completion_interruptible_timeout(
-			&trans_done, msecs_to_jiffies(timeout));
+					&trans_done, msecs_to_jiffies(timeout));
 		if (timeleft <= 0) {
 			dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 				__func__, __LINE__);
@@ -679,8 +681,8 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 	spin_unlock_irq(&rtsx->reg_lock);
 
 	/* Wait for TRANS_OK_INT */
-	timeleft = wait_for_completion_interruptible_timeout(
-		&trans_done, msecs_to_jiffies(timeout));
+	timeleft = wait_for_completion_interruptible_timeout(&trans_done,
+						     msecs_to_jiffies(timeout));
 	if (timeleft <= 0) {
 		dev_dbg(rtsx_dev(chip), "Timeout (%s %d)\n",
 			__func__, __LINE__);
-- 
2.19.1


