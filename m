X-GM-THRID: 7650196586496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d5f5fa2ef5938719,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.72.98 with SMTP id c2mr39091353igv.0.1426068392010;
        Wed, 11 Mar 2015 03:06:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.221 with SMTP id r90ls397692ioi.73.gmail; Wed, 11 Mar
 2015 03:06:31 -0700 (PDT)
X-Received: by 10.42.80.133 with SMTP id v5mr28102624ick.8.1426068391814;
        Wed, 11 Mar 2015 03:06:31 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22a.google.com (mail-pd0-x22a.google.com. [2607:f8b0:400e:c02::22a])
        by gmr-mx.google.com with ESMTPS id ni4si605095pdb.2.2015.03.11.03.06.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 03:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) client-ip=2607:f8b0:400e:c02::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbft15 with SMTP id ft15so10032488pdb.6
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 03:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KBj3/sUAJFTvPwq6CXapjk+BJc2SQ8u4pE1Pl7HsLbk=;
        b=arC0V8j0i14CnK+yM6ONiUS4DnDQLi+ajKYeCp1xsmAQ4iyilcIgSnCnvxilnFjJUb
         ySApVtBGzvdjmh8qUrg8fpLrYQL4TAkxmhJPpo3475VqJEAECAmzBntTSNWia2uIB7vT
         TRn2j3utbeyrsX3itSVJVymxjMa6Plf6qt7FVtNu72MisCoP4vLxSm7iU6b82uFgTeqR
         pPzy6fNKfmIiddHCDFI9fLGj0zwWPWh462lFkaR3C8b3MrygQuDQqK+8vCX/c/1Gu2bi
         fEVzm3kGmiM8TScljyvoYVbEw5pJ3zygsGKxNj+CR0TuekpmOGw55tto/XS/s1Z0YKet
         g9oQ==
X-Received: by 10.66.161.161 with SMTP id xt1mr76474063pab.35.1426068391676;
        Wed, 11 Mar 2015 03:06:31 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([27.62.203.100])
        by mx.google.com with ESMTPSA id qa3sm5297711pab.16.2015.03.11.03.06.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 03:06:30 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 1/5] Staging: dgnc: Remove redundant parentheses
Date: Wed, 11 Mar 2015 15:34:48 +0530
Message-Id: <1426068292-20348-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes the redundant parentheses inorder to make code
simplified. While doing this, the precedence order of the operation
is taken into consideration to keep the logic of the code intact.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index c9a8a98..99cc025 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -119,7 +119,7 @@ static inline void neo_set_cts_flow_control(struct channel_t *ch)
 
 	/* Turn on auto CTS flow control */
 #if 1
-	ier |= (UART_17158_IER_CTSDSR);
+	ier |= UART_17158_IER_CTSDSR;
 #else
 	ier &= ~(UART_17158_IER_CTSDSR);
 #endif
@@ -127,7 +127,7 @@ static inline void neo_set_cts_flow_control(struct channel_t *ch)
 	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_CTSDSR);
 
 	/* Turn off auto Xon flow control */
-	efr &= ~(UART_17158_EFR_IXON);
+	efr &= ~UART_17158_EFR_IXON;
 
 	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
 	writeb(0, &ch->ch_neo_uart->efr);
@@ -155,15 +155,15 @@ static inline void neo_set_rts_flow_control(struct channel_t *ch)
 
 	/* Turn on auto RTS flow control */
 #if 1
-	ier |= (UART_17158_IER_RTSDTR);
+	ier |= UART_17158_IER_RTSDTR;
 #else
 	ier &= ~(UART_17158_IER_RTSDTR);
 #endif
 	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_RTSDTR);
 
 	/* Turn off auto Xoff flow control */
-	ier &= ~(UART_17158_IER_XOFF);
-	efr &= ~(UART_17158_EFR_IXOFF);
+	ier &= ~UART_17158_IER_XOFF;
+	efr &= ~UART_17158_EFR_IXOFF;
 
 	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
 	writeb(0, &ch->ch_neo_uart->efr);
@@ -185,7 +185,7 @@ static inline void neo_set_rts_flow_control(struct channel_t *ch)
 	 * RTS/DTR# output pin (MCR bit-0 or 1 to logic 1 after
 	 * it is enabled.
 	 */
-	ch->ch_mostat |= (UART_MCR_RTS);
+	ch->ch_mostat |= UART_MCR_RTS;
 
 	neo_pci_posting_flush(ch->ch_bd);
 }
@@ -197,8 +197,8 @@ static inline void neo_set_ixon_flow_control(struct channel_t *ch)
 	unsigned char efr = readb(&ch->ch_neo_uart->efr);
 
 	/* Turn off auto CTS flow control */
-	ier &= ~(UART_17158_IER_CTSDSR);
-	efr &= ~(UART_17158_EFR_CTSDSR);
+	ier &= ~UART_17158_IER_CTSDSR;
+	efr &= ~UART_17158_EFR_CTSDSR;
 
 	/* Turn on auto Xon flow control */
 	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_IXON);
@@ -234,11 +234,11 @@ static inline void neo_set_ixoff_flow_control(struct channel_t *ch)
 	unsigned char efr = readb(&ch->ch_neo_uart->efr);
 
 	/* Turn off auto RTS flow control */
-	ier &= ~(UART_17158_IER_RTSDTR);
-	efr &= ~(UART_17158_EFR_RTSDTR);
+	ier &= ~UART_17158_IER_RTSDTR;
+	efr &= ~UART_17158_EFR_RTSDTR;
 
 	/* Turn on auto Xoff flow control */
-	ier |= (UART_17158_IER_XOFF);
+	ier |= UART_17158_IER_XOFF;
 	efr |= (UART_17158_EFR_ECB | UART_17158_EFR_IXOFF);
 
 	/* Why? Becuz Exar's spec says we have to zero it out before setting it */
@@ -272,11 +272,11 @@ static inline void neo_set_no_input_flow_control(struct channel_t *ch)
 	unsigned char efr = readb(&ch->ch_neo_uart->efr);
 
 	/* Turn off auto RTS flow control */
-	ier &= ~(UART_17158_IER_RTSDTR);
-	efr &= ~(UART_17158_EFR_RTSDTR);
+	ier &= ~UART_17158_IER_RTSDTR;
+	efr &= ~UART_17158_EFR_RTSDTR;
 
 	/* Turn off auto Xoff flow control */
-	ier &= ~(UART_17158_IER_XOFF);
+	ier &= ~UART_17158_IER_XOFF;
 	if (ch->ch_c_iflag & IXON)
 		efr &= ~(UART_17158_EFR_IXOFF);
 	else
@@ -312,12 +312,12 @@ static inline void neo_set_no_output_flow_control(struct channel_t *ch)
 	unsigned char efr = readb(&ch->ch_neo_uart->efr);
 
 	/* Turn off auto CTS flow control */
-	ier &= ~(UART_17158_IER_CTSDSR);
-	efr &= ~(UART_17158_EFR_CTSDSR);
+	ier &= ~UART_17158_IER_CTSDSR;
+	efr &= ~UART_17158_EFR_CTSDSR;
 
 	/* Turn off auto Xon flow control */
 	if (ch->ch_c_iflag & IXOFF)
-		efr &= ~(UART_17158_EFR_IXON);
+		efr &= ~UART_17158_EFR_IXON;
 	else
 		efr &= ~(UART_17158_EFR_ECB | UART_17158_EFR_IXON);
 
-- 
1.9.1


