X-GM-THRID: 6255332457317400576
X-Received: by 10.140.239.3 with SMTP id k3mr15612452qhc.25.1456433082402;
        Thu, 25 Feb 2016 12:44:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.101 with SMTP id k5ls311915igv.20.gmail; Thu, 25 Feb
 2016 12:44:40 -0800 (PST)
X-Received: by 10.66.228.102 with SMTP id sh6mr31973752pac.12.1456433080859;
        Thu, 25 Feb 2016 12:44:40 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ui7si1508130pab.0.2016.02.25.12.44.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 12:44:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id yy13so37892535pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 12:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=uZ4CgL2Dut1H0DBONNr4D56bAg3AYksD0cvBuCjqsoE=;
        b=s+g7YYZMGZ86Cw8kB9bSNGzBVQ0tycBJtF6i07NiOoRgBHfErk+fbfd4eY5ZkRAflx
         X/ITBPsU7USU5CtBgdWjPEm593BrvP0Fq9hEA40Yt9IfQbpcxHoOvO50HGFfpypSjVi9
         3iVKqvevZzKbmbvzRpUtNvOt4kdh3Fz+wJ5F8bkMM2OeXi+QG6epEALzNntPTa22ckbq
         Iwaj6tITPwqNAXqHL9ih6x/5ZC8xgZUUK6L/2HO47tqp01NNx6wsmYLq3FGfwRuDMgDd
         8Qhv7FGukQMkKJdMhDAe4lRsptnXhiJLoeIA5ldEJSgASih3qnJYvMwSe46o3nUhqgeN
         jc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=uZ4CgL2Dut1H0DBONNr4D56bAg3AYksD0cvBuCjqsoE=;
        b=WB2Fb2nKP1cdaoXofbozDCbsTdwnE2FtGEQjxdb1lBRaR9v9uvcJz7JJX6xC6S4KoH
         YXioOIdpV9upKMQl3AZQV+nD7aaiE0I9dSMR8KcsEqFsW1xyfApJnefPQizr2Ftg+f/2
         vAwwsMpP/qtgA2IcbEjp+pKQwPizX8toOTw470SdH71AzoVET7nUlGFeVUCS26M7S7JX
         d2GsJK3VJubQJjsjXtuQC/uwsjZ0aNiQK2yeRv0MszmdEokF48xF1BsTQb6tjJneThYd
         HIMflCGw06DuJLYqKxecV9LmnkT6tTjZpv6LAQaYZYOJhM4Yt/e18rEXq+RoY8N60VUy
         8haQ==
X-Gm-Message-State: AG10YOTqJT7v6fUNuIbajVI4KMacX2FpiuWbHtDNi+4R3+oW0PBSc1wuGkzLHhiY22hDhA==
X-Received: by 10.66.171.169 with SMTP id av9mr49353060pac.36.1456433080720;
        Thu, 25 Feb 2016 12:44:40 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 3sm14165929pfn.59.2016.02.25.12.44.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Thu, 25 Feb 2016 12:44:40 -0800 (PST)
Date: Fri, 26 Feb 2016 02:14:43 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: Break line after boolean operator
Message-ID: <20160225204443.GA29868@Toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The preferred way to break up long math lines is to break after
an arthimetic or boolean operator.
This patch fixes the checkpatch.pl warning:
Logical continuations should be on the previous line.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.c | 12 +++++++-----
 drivers/staging/dgnc/dgnc_tty.c |  4 ++--
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index ee3155b..b68b758 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -351,8 +351,8 @@ static inline void neo_clear_break(struct channel_t *ch, int force)
 
 	/* Turn break off, and unset some variables */
 	if (ch->ch_flags & CH_BREAK_SENDING) {
-		if (time_after_eq(jiffies, ch->ch_stop_sending_break)
-		    || force) {
+		if (time_after_eq(jiffies, ch->ch_stop_sending_break) ||
+		    force) {
 			unsigned char temp = readb(&ch->ch_neo_uart->lcr);
 
 			writeb((temp & ~UART_LCR_SBC), &ch->ch_neo_uart->lcr);
@@ -1783,9 +1783,11 @@ static void neo_vpd(struct dgnc_board *brd)
 		brd->vpd[(i * 2) + 1] = (a >> 8) & 0xff;
 	}
 
-	if  (((brd->vpd[0x08] != 0x82)	   /* long resource name tag */
-		&&  (brd->vpd[0x10] != 0x82))   /* long resource name tag (PCI-66 files)*/
-		||  (brd->vpd[0x7F] != 0x78)) { /* small resource end tag */
+	if (((brd->vpd[0x08] != 0x82) && /* long resource name tag */
+	    (brd->vpd[0x10] != 0x82)) || /* long resource name tag
+					  *  (PCI-66 files)
+					  */
+	    (brd->vpd[0x7F] != 0x78)) {  /* small resource end tag */
 
 		memset(brd->vpd, '\0', NEO_VPD_IMAGESIZE);
 	} else {
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 8a7508a..320ef25 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -1800,8 +1800,8 @@ static int dgnc_tty_write(struct tty_struct *tty,
 	}
 
 	/* Update printer buffer empty time. */
-	if ((un->un_type == DGNC_PRINT) && (ch->ch_digi.digi_maxcps > 0)
-	    && (ch->ch_digi.digi_bufsize > 0)) {
+	if ((un->un_type == DGNC_PRINT) && (ch->ch_digi.digi_maxcps > 0) &&
+	    (ch->ch_digi.digi_bufsize > 0)) {
 		ch->ch_cpstime += (HZ * count) / ch->ch_digi.digi_maxcps;
 	}
 
-- 
2.1.4


