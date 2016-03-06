X-GM-THRID: 6258969747023462400
X-Received: by 10.98.75.75 with SMTP id y72mr7437024pfa.10.1457279954572;
        Sun, 06 Mar 2016 07:59:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.139 with SMTP id j11ls1473426qgf.54.gmail; Sun, 06 Mar
 2016 07:59:14 -0800 (PST)
X-Received: by 10.140.176.6 with SMTP id w6mr13407252qhw.23.1457279954048;
        Sun, 06 Mar 2016 07:59:14 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id y20si2531198pfa.2.2016.03.06.07.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 07:59:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hj7so6210310pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 07:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XSNGJBFCdfCVKQ4aM6UvlEtr4TrARfB8N0GXSWx30xk=;
        b=lpdrbd65hJ2qTjKrukK+lzhlWhyHWn5N4hfLySp60ccJ5aN1gurKXSvPxg6T4TeaOL
         883OPOjHCBBt0QibVQzpy2ufxWGjBOct9ALnYsN/PUacfGYizPXdavRjnOUric8WUjj0
         7CEG5WL2VyPzOA3SSK4bVm60gyGK10nT4BHlKiyV9anH0ooMvIcNVmh34sM84HDAMCP2
         Nh6IuCK/Bwuc0//DNzOdiLJMsjBr55LqJMBixVDgCuUtOorRlV3GAMk3T40nMlyI9CRM
         jEfXHg/iegvebHzZrhnE5aWZ2kgafgY/SuiPDJWP5J+YXvb2icZoF8Hfsx/Ajvye79SL
         fhlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XSNGJBFCdfCVKQ4aM6UvlEtr4TrARfB8N0GXSWx30xk=;
        b=MXyDZ5Ke05kyGrk0lazKnNN6k7Vxx/zq0VkX5EKSWQ7L8QB9/us0LcUm6brz3VP43P
         WTU9bLgXAZ4oLMG4A7FrZQ3f1cR+JOrvXZTSlZf5PggFWyX+HcIz2ogdNbFhGeB5ahD5
         180tisqayCkRvXPZIioJDAjuNgcYbcwJchn1F2+uMNdMf14R0s+jv0XkrZZ/OxMEyMe9
         BLfWyM9n2ywH0k+Tg9aM1Y5lJG6YMtahBMpkbDyE4UUngRGhpNoubO5CPq0hMPd40jE0
         qLdp7RBqO1llOTwcwe26/kTC4cKxqDUO1VoisN+ZumpcRi/oDcg9YctIJcgBwm7nCmpR
         0cyw==
X-Gm-Message-State: AD7BkJLaq1dGVoEBTpDJcSJrD83NFlm4/frL60P/vPh/EsXi3G1ZE0tIWERkVbv2i94y6Q==
X-Received: by 10.66.158.232 with SMTP id wx8mr27549971pab.159.1457279953873;
        Sun, 06 Mar 2016 07:59:13 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id s21sm18521814pfi.29.2016.03.06.07.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 07:59:13 -0800 (PST)
Date: Sun, 6 Mar 2016 13:29:37 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: dgnc: Add space around '|' operator.
Message-ID: <20160306075937.GA497@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Add space around '|' operator.These issues are found by checkpatch.pl script.  

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/dgnc/dgnc_tty.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79eab0..0c0a26f 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -2520,12 +2520,12 @@ static void dgnc_tty_flush_buffer(struct tty_struct *tty)
 	/* Flush UARTs transmit FIFO */
 	ch->ch_bd->bd_ops->flush_uart_write(ch);
 
-	if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
-		ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
+	if (ch->ch_tun.un_flags & (UN_LOW | UN_EMPTY)) {
+		ch->ch_tun.un_flags &= ~(UN_LOW | UN_EMPTY);
 		wake_up_interruptible(&ch->ch_tun.un_flags_wait);
 	}
-	if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
-		ch->ch_pun.un_flags &= ~(UN_LOW|UN_EMPTY);
+	if (ch->ch_pun.un_flags & (UN_LOW | UN_EMPTY)) {
+		ch->ch_pun.un_flags &= ~(UN_LOW | UN_EMPTY);
 		wake_up_interruptible(&ch->ch_pun.un_flags_wait);
 	}
 
@@ -2717,15 +2717,15 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 				ch->ch_w_head = ch->ch_w_tail;
 				ch->ch_bd->bd_ops->flush_uart_write(ch);
 
-				if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
+				if (ch->ch_tun.un_flags & (UN_LOW | UN_EMPTY)) {
 					ch->ch_tun.un_flags &=
-						~(UN_LOW|UN_EMPTY);
+						~(UN_LOW | UN_EMPTY);
 					wake_up_interruptible(&ch->ch_tun.un_flags_wait);
 				}
 
-				if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
+				if (ch->ch_pun.un_flags & (UN_LOW | UN_EMPTY)) {
 					ch->ch_pun.un_flags &=
-						~(UN_LOW|UN_EMPTY);
+						~(UN_LOW | UN_EMPTY);
 					wake_up_interruptible(&ch->ch_pun.un_flags_wait);
 				}
 			}
-- 
1.8.3.4


