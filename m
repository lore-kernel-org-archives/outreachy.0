X-GM-THRID: 6387984774735069184
X-Received: by 10.107.167.149 with SMTP id q143mr2190303ioe.67.1487318606201;
        Fri, 17 Feb 2017 00:03:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.78 with SMTP id u75ls1057937ioi.50.gmail; Fri, 17 Feb
 2017 00:03:25 -0800 (PST)
X-Received: by 10.36.81.17 with SMTP id s17mr662333ita.33.1487318605349;
        Fri, 17 Feb 2017 00:03:25 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f7si571742pfk.5.2017.02.17.00.03.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 00:03:25 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 5so4315185pgj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 00:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=puU5hcKccQe1PryapVVkrrI2V9f5rf3++J8jmIxK7w4=;
        b=HE01byD1IjSYAlvrmiMejIzz9zw7TX7u7w6OwVHW2zi7uTUXn5BpwvfU8S20kpUhg/
         G+WT1JOE2B4HTHtYwCfxrceN+q/Da8WnllwKQ0OKGT4CBtoIyWbrPitEWMzot0SYDHYK
         z7QaIkIXhheRmvy9jfHLAs1S/VyRj97+YCN0kZf1i7YSQRuBjbGYkYKLQvQ/RSriUK1J
         CsnnbdQjwWhp8WCiU6aE3scToPv+wN7QuWUojMhtO4SP2Ank/Cmb9/lateY9uORxKxvB
         WTwOq05rTxXfmMwf6ceNAokOuExEVKRrKCbXl0zxuGN9xBh0+IL6FAO02GwqW/LrflkW
         UXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=puU5hcKccQe1PryapVVkrrI2V9f5rf3++J8jmIxK7w4=;
        b=dWDYtUKVky/RjhRjTUUQHbIH5EJUh8vKDGA3KxQupwpPrEcGjyEltYjt3rZWGWhTLh
         wEMLXRifd9iDJfjPhgwyjqRIw/0ra1DLmqDZXztwkexYkbPT0THeJa2CYYKgOwH2qKNU
         81JmzBDuIhOydCA1rV2FRlwdoLQ4/jnQgUsMPPUdnMfm/tIaWa7XcaMljx7BbJoxWnyk
         2NVOOdNmWqvosIyhuecZTbHwIm1ZWoNYiCyrL/Yd7ImlstkyD86sUYk1m4TGwg53P7e5
         C8Aj3WA1rpQtZQeR2xVCSae7m1bIGmCeCp2oHzN8MbbXj/UR+c0zeJkcp7fbawgaiCQv
         5Vyw==
X-Gm-Message-State: AMke39lE6nGAEUD4Pwh83J8D9IISSJ0ne3dA36jFDK3TsPUzhmBLJBqAzzlpWtF1iUV/qw==
X-Received: by 10.98.75.16 with SMTP id y16mr7811357pfa.23.1487318604867;
        Fri, 17 Feb 2017 00:03:24 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.201.59])
        by smtp.gmail.com with ESMTPSA id l3sm17866922pgn.10.2017.02.17.00.03.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 00:03:24 -0800 (PST)
Date: Fri, 17 Feb 2017 13:33:09 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192u: ieee80211: Remove typedef to the
 tx_pending_t structure
Message-ID: <20170217080309.GA13492@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. So remove typedef from structure tx_pending_t.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Grepped to ensure no other usage of the typedef variable.
The driver does not use the typdef variable anywhere, it declares using a
structure variable when required.
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 0d24705..7de3a78 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1456,10 +1456,10 @@ enum ieee80211_state {
 
 
 
-typedef struct tx_pending_t{
+struct tx_pending_t {
 	int frag;
 	struct ieee80211_txb *txb;
-}tx_pending_t;
+};
 
 typedef struct _bandwidth_autoswitch {
 	long threshold_20Mhzto40Mhz;
-- 
2.7.4


