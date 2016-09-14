X-GM-THRID: 6330194437741740032
X-Received: by 10.107.10.167 with SMTP id 39mr2519534iok.14.1473863245747;
        Wed, 14 Sep 2016 07:27:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.178 with SMTP id h47ls1077646otc.37.gmail; Wed, 14 Sep
 2016 07:27:25 -0700 (PDT)
X-Received: by 10.200.54.228 with SMTP id b33mr592001qtc.28.1473863245104;
        Wed, 14 Sep 2016 07:27:25 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si1199697pam.0.2016.09.14.07.27.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 07:27:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so866737pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 07:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OEkqFGRRaIs7ysjmU11eCc6Db9a3lJ1ppwGnmj0K7ks=;
        b=v1nEJd1Qi5kXeJyzSOeSa0H0G/vt08cdCjwVfba2FZ8oUiYX6C3EkgGZt9i7QpMCOW
         t1mA0RWHSzIHDYe+bK9QA1rsWf6V27XigNrr22ewS0yuT85ocW3b3NYrp7ADygvFW3e5
         cKw7OdfGcdH8BX9hlE2OvzOOxvx3ozcDTu8y3lN9TwfbEpob5/5YhmIIvs40SbLNK/Xs
         HdQkgbBGNNEM7ONb/j81muSNxFYIRl4z3OrSuOOtY+gN7tF0ONSi+njbppbjZ1O0AcX5
         qR1t98gp7RroO3GR8hXhglJrN93ZXuZ9ktQdl6tfzxud/KWfAcRc6sRBedyDahRF5SoR
         FFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OEkqFGRRaIs7ysjmU11eCc6Db9a3lJ1ppwGnmj0K7ks=;
        b=eUsPLU31XLv4kNVLrqAx6pHgx9+p7mD4u++s+tItHf9QY/l6ZEkoUwkUuJNN/TLXGe
         9ofTxqK78Dl9iVJ5RNs+DC3LV03P8C5JNvam/xMawxEPOJl1s5AVqEi3oshy4D65kubz
         VcHBuHP2ypbBYr8kW0h961gCSAoVVp+hr1w+ss8HYZ9NSh/C+t3HPW+xWslVAtg9pDb0
         URPZ8CwL8gLy8Be8w5v6ueEo69XRSGHcNDfj/DZhUKr3QuDsd1P+5JLQM6Ws59OlsQf8
         ggvUVoumpNEXz0TJ2KvMXl/tSydEIdzcWYQfJDY7sPgHxc1KP5SARfZi4w2IgQdjD/KZ
         5/kA==
X-Gm-Message-State: AE9vXwO0BHMgqofPOc2zbEf16YjG+/zrlbFTub3z5aY9RkE3FuludePEO3GgEWzaPVKS2Q==
X-Received: by 10.98.97.7 with SMTP id v7mr5049264pfb.49.1473863244661;
        Wed, 14 Sep 2016 07:27:24 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o5sm38758187pfb.9.2016.09.14.07.27.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 07:27:23 -0700 (PDT)
Date: Wed, 14 Sep 2016 19:57:07 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: dgnc: Fix long line and spelling mistake
Message-ID: <20160914142656.GA3298@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:
Line over 80 characters.
Also, the word 'because' was spelled as
'Becuz' and has been corrected.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
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


