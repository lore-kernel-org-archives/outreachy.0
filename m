X-GM-THRID: 6339123844405526528
X-Received: by 10.98.97.193 with SMTP id v184mr3797123pfb.10.1475942284920;
        Sat, 08 Oct 2016 08:58:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls4404925ota.40.gmail; Sat, 08 Oct
 2016 08:58:04 -0700 (PDT)
X-Received: by 10.176.3.206 with SMTP id 72mr6607467uau.9.1475942284543;
        Sat, 08 Oct 2016 08:58:04 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id d11si2913219pfl.2.2016.10.08.08.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 08:58:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id r9so4305583paz.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 08:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=kFtH8Aawr0o2FE9HOvNipzAUCPkQMiKe5mxcptQrs2w=;
        b=0lDo21m2v5XlHrCCDqs9cbiyE69YaNpjFXkVwJFDEa6ZUoozbIdJsoFfXc25qrUNsM
         G5QYiRQVB7Wkx2NED2520rbpHOSB/wBWUbarZYAjKnAIaLst+4TR8q+LcY+/aTur5brS
         lS+f44AFE9s0rDVWy3YbjhWx8pASgp33lRHLo8kVUEd+sCuq23cx33UJgfaH1kL4W6Rn
         RFrejD2FNshtdSNldWg6VtxtYiSgRwOCDtSbeROWryf4ofH0qh/go6a7vUmilZwE33vH
         yaT36sb7IRs4Kj2PMjW5//OER0dM9PENG0cWJGnndSEAmaLpmQkIBQFpo19q3lJ1CbmT
         1+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kFtH8Aawr0o2FE9HOvNipzAUCPkQMiKe5mxcptQrs2w=;
        b=bLkvdkKOyjmNQfscaf70AsJtU+Pz0Vq/Nyw/A41FC50BCA+BfO0jriFVDRaBS8PZuI
         P1SIOV7Xxg0puBk0HeywK70JJhS7hBkzC34cStq7nPRMkikz9uVVsmJ1fj39f+hKzqjt
         2RjcmCOe26M1QpnNtiEv3PRYtEfJQuSJE5NCARWyqh3qJLGQFV782x9m/2RHakEQVkZl
         CywfUn3k3TSDie98Uwrjql/pdjry9a7wXBmcgVx//Y2diWLCfNvwSRjxp/PP9UYICbde
         4hSRwHK5bqm5pJ1z6PcWD7sLRt6GB8Oi4SEh8rdd4h0wA7kqDgUP2L9fCj1Q8ty0c4/L
         5W3Q==
X-Gm-Message-State: AA6/9RlotCnHGSygERm3hzyRfRf7YC9AwQ2pTVKaVMvcO4e+KHelZIomlMYytprSYQ/vOA==
X-Received: by 10.66.228.226 with SMTP id sl2mr38913731pac.131.1475942283904;
        Sat, 08 Oct 2016 08:58:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.183.145])
        by smtp.gmail.com with ESMTPSA id id6sm39284461pad.28.2016.10.08.08.57.52
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 08:58:02 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 08 Oct 2016 21:27:45 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	lidza.louina@gmail.com,
	markh@compro.net
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: dgnc: Remove useless type conversion
Date: Sat,  8 Oct 2016 21:27:44 +0530
Message-Id: <1475942264-552-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some type conversions like casting a pointer to a pointer of same type,
casting to the original type using addressof(&) operator etc. are not
needed. Therefore, remove them. Done using coccinelle:

@@
type t;
t *p;
t a;
@@
(
- (t)(a)
+ a
|
- (t *)(p)
+ p
|
- (t *)(&a)
+ &a
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/dgnc/dgnc_mgmt.c | 4 ++--
 drivers/staging/dgnc/dgnc_neo.c  | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_mgmt.c b/drivers/staging/dgnc/dgnc_mgmt.c
index 683c098..ecfd1df 100644
--- a/drivers/staging/dgnc/dgnc_mgmt.c
+++ b/drivers/staging/dgnc/dgnc_mgmt.c
@@ -143,8 +143,8 @@ long dgnc_mgmt_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		di.info_bdtype = dgnc_board[brd]->dpatype;
 		di.info_bdstate = dgnc_board[brd]->dpastatus;
 		di.info_ioport = 0;
-		di.info_physaddr = (ulong)dgnc_board[brd]->membase;
-		di.info_physsize = (ulong)dgnc_board[brd]->membase
+		di.info_physaddr = dgnc_board[brd]->membase;
+		di.info_physsize = dgnc_board[brd]->membase
 			- dgnc_board[brd]->membase_end;
 		if (dgnc_board[brd]->state != BOARD_FAILED)
 			di.info_nports = dgnc_board[brd]->nasync;
diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 5becb37..c6b2c37 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1267,7 +1267,7 @@ static void neo_copy_data_from_uart_to_queue(struct channel_t *ch)
 
 		memcpy_fromio(ch->ch_rqueue + head,
 			      &ch->ch_neo_uart->txrxburst, 1);
-		ch->ch_equeue[head] = (unsigned char)linestatus;
+		ch->ch_equeue[head] = linestatus;
 
 		/* Ditch any remaining linestatus value. */
 		linestatus = 0;
-- 
1.9.1


