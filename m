X-GM-THRID: 6330194437741740032
X-Received: by 10.36.124.80 with SMTP id a77mr682230itd.1.1473912511131;
        Wed, 14 Sep 2016 21:08:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.1 with SMTP id 1ls79373otv.45.gmail; Wed, 14 Sep 2016
 21:08:30 -0700 (PDT)
X-Received: by 10.200.53.133 with SMTP id k5mr4851642qtb.25.1473912510666;
        Wed, 14 Sep 2016 21:08:30 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 142si2047737pfx.2.2016.09.14.21.08.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 21:08:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so1576490pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 21:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PTKfVRrqT6uVuQklSZhDslmER3TnC48Xq35gUQGjixg=;
        b=ZKJ4yO8Bk3Sj3beAzYYu8DDYZkbaovPG3WzQoB1fnREo1fv75adyNBMt7m0GCQ71+5
         munbLSuXDLeNXfMYv+v5CfSpEkOhCqSOvFMJHZVohsQ4R/aPIXsGgXgQj3Luyz+c1hkF
         +ullPSLalef8rYGXqsMiYAaWvFv95A5oiCJuPgmr/0/h+TSb2wuhkAj0eE0N1qUUKwNN
         aEtL+VE/f2I/6EUymOyWS9aqlOwNhbalquRA+dWfc5OTCCFvILo4ZhKSZp9y2dbk9Sc/
         yABcJzdpWjE9m9nBwItRybnuKA2ZZbquJdwn89iv7x+KQts9r0Y5y4/FPQiIC/HrFmHo
         PJ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PTKfVRrqT6uVuQklSZhDslmER3TnC48Xq35gUQGjixg=;
        b=MOz/7ngv7YWiPuC1M9klpeYRB3p+TWsAAAQjAltZ0SFmskLbx4oeTAZ7cIl3t3RMZF
         mD+9QtXWuy+kxVQJFautr8+plb5SQeVppGX3fuFd/KyjxnKao5xJY6UQ0PxQSKo7WLG6
         uA6Jy2W3eqR/seatp0K4vIOGvVxzOOJo5Y6x00qtz9e/qUX2BTkQZFPGCKgFAIaz0sJC
         mq2dDPXE43s38up1jCr0u2s3rfkaGWi22uHwq1OzIngXnceiLmhIK16bnfnzBhU35ymF
         3AUskw+rsw9f3LICcfgJg363u4rsJ9KWYISPuK+s88yc1GW6nEKCuR1CBMmZE1h9sAOt
         +RqQ==
X-Gm-Message-State: AE9vXwODQakLmYGS30xkpwC5AN/FMc9Pvscq327B5gChJ3u8kudd/nL3pb6UBRnCPqyz7A==
X-Received: by 10.66.0.99 with SMTP id 3mr10844377pad.109.1473912510311;
        Wed, 14 Sep 2016 21:08:30 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w63sm21203494pfk.43.2016.09.14.21.08.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 21:08:29 -0700 (PDT)
Date: Thu, 15 Sep 2016 09:38:21 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: dgnc: Fix long line and spelling mistake
Message-ID: <20160915040821.GA5441@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning: Line over 80 characters.
Also, the word 'because' was spelled as 'Becuz' and has been corrected.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Changes in v2:
Format the commit message to not have too short lines.

 drivers/staging/dgnc/dgnc_neo.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 5ef5b3e..fe071e1 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -107,7 +107,9 @@ static inline void neo_set_cts_flow_control(struct channel_t *ch)
 	/* Turn off auto Xon flow control */
 	efr &= ~UART_17158_EFR_IXON;
 
-	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
+	/* Why? Because Exar's spec says we have to zero it
+	 * out before setting it
+	 */
 	writeb(0, &ch->ch_neo_uart->efr);
 
 	/* Turn on UART enhanced bits */
@@ -143,7 +145,9 @@ static inline void neo_set_rts_flow_control(struct channel_t *ch)
 	ier &= ~UART_17158_IER_XOFF;
 	efr &= ~UART_17158_EFR_IXOFF;
 
-	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
+	/* Why? Because Exar's spec says we have to zero it
+	 * out before setting it
+	 */
 	writeb(0, &ch->ch_neo_uart->efr);
 
 	/* Turn on UART enhanced bits */
@@ -181,7 +185,9 @@ static inline void neo_set_ixon_flow_control(struct channel_t *ch)
 	/* Turn on auto Xon flow control */
 	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_IXON);
 
-	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
+	/* Why? Because Exar's spec says we have to zero it
+	 * out before setting it
+	 */
 	writeb(0, &ch->ch_neo_uart->efr);
 
 	/* Turn on UART enhanced bits */
@@ -219,7 +225,9 @@ static inline void neo_set_ixoff_flow_control(struct channel_t *ch)
 	ier |= UART_17158_IER_XOFF;
 	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_IXOFF);
 
-	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
+	/* Why? Because Exar's spec says we have to zero it
+	 * out before setting it
+	 */
 	writeb(0, &ch->ch_neo_uart->efr);
 
 	/* Turn on UART enhanced bits */
@@ -260,7 +268,9 @@ static inline void neo_set_no_input_flow_control(struct channel_t *ch)
 	else
 		efr &= ~(UART_17158_EFR_ECB | UART_17158_EFR_IXOFF);
 
-	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
+	/* Why? Because Exar's spec says we have to zero
+	 * it out before setting it
+	 */
 	writeb(0, &ch->ch_neo_uart->efr);
 
 	/* Turn on UART enhanced bits */
@@ -298,7 +308,9 @@ static inline void neo_set_no_output_flow_control(struct channel_t *ch)
 	else
 		efr &= ~(UART_17158_EFR_ECB | UART_17158_EFR_IXON);
 
-	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
+	/* Why? Because Exar's spec says we have to zero it
+	 * out before setting it
+	 */
 	writeb(0, &ch->ch_neo_uart->efr);
 
 	/* Turn on UART enhanced bits */
-- 
2.7.4


