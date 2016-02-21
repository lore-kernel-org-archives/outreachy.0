X-GM-THRID: 6253832977021665280
X-Received: by 10.66.191.230 with SMTP id hb6mr23999729pac.25.1456083957137;
        Sun, 21 Feb 2016 11:45:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.199 with SMTP id n7ls410441igv.11.canary; Sun, 21 Feb
 2016 11:45:56 -0800 (PST)
X-Received: by 10.50.183.39 with SMTP id ej7mr8200816igc.3.1456083956826;
        Sun, 21 Feb 2016 11:45:56 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id 12si2733960pfb.1.2016.02.21.11.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 11:45:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fy10so78749079pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 11:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AyDxBr+CcIB6wWs9DnGr0O1FVCW0G8abENP9SgwPczk=;
        b=bheEC283/sdtjwSkCYWsUOToyvIwfRq01rsl3bBV/WFx+Ka6YunnUQEF3S+jRSaBg+
         irZ+gePIW3zJqzcMSIHxX9EP9YIzpS3vJB9Rba2ygSzsnxB23jmscj7LuDLey3wM/BSp
         YwaZoAPryn8vM2p8Py73NKX128UB1XqZXKkaW8GgAlDrTobIoqB14bp5rLCWOxFUlHGS
         ZpSYaBp9C3Fw4HfgNIoffHH8vMpuQ1r6v+S6xK5DzuYYJzIEQSx/OsSQOvOH4DP4ABUw
         1ahw8vjWU5rVuW1JJh4YwmJecTKcg9VzqbzNhMMfTz4AthAMWuIMo9KrrmbP2Jta/MhW
         mbBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=AyDxBr+CcIB6wWs9DnGr0O1FVCW0G8abENP9SgwPczk=;
        b=IAFQYs+esEltG6eT4gJZ1W74PRLzhl3ByuWV2chea1Qd8iVHteLFG7WUY9Up7y38ic
         ofmlpf4jre0Jn+Rpw3+lopZLy7fkQKBsKuwWyZtXmGsawWAkVCxfJejfHgIPYOQHE6CZ
         dO2SiP7b7ye2RijN917f0h3SYBzNsIlfNZt7nxN/KqiZrQgu79bb1JrpI5O2F7RmHNMk
         iJhG2awfpc1othTuHsJyqlaW+acDiyuThn5dtQzBNkSm0fWdO5fDT6r2S+W06+ZC0EQn
         niFbGFTLzEm4JItCnFy3DU98ehxxyMzquBFIk2az8pcaafy8Aml3tMfrsCTV95cI+ra+
         M7dA==
X-Gm-Message-State: AG10YOSUlKzUuU+wJ3KK19y2z6HzW0kqX5wCjw7vCu22Oi0IZ4LXCQco3RjjvHyrM64d2w==
X-Received: by 10.66.65.109 with SMTP id w13mr33040491pas.142.1456083956679;
        Sun, 21 Feb 2016 11:45:56 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.76])
        by smtp.gmail.com with ESMTPSA id o184sm31508928pfo.36.2016.02.21.11.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 11:45:56 -0800 (PST)
Date: Sun, 21 Feb 2016 17:14:38 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgnc: Add space around '|' operator.
Message-ID: <20160221114437.GA3816@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Add space around '|' operator.These issues are found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 21a50a4..c90a458 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -2524,12 +2524,12 @@ static void dgnc_tty_flush_buffer(struct tty_struct *tty)
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
 
@@ -2721,15 +2721,15 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
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


