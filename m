X-GM-THRID: 6251387013409275904
X-Received: by 10.13.216.150 with SMTP id a144mr14029229ywe.52.1455514469167;
        Sun, 14 Feb 2016 21:34:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.208 with SMTP id 77ls1403695ioq.71.gmail; Sun, 14 Feb
 2016 21:34:28 -0800 (PST)
X-Received: by 10.50.183.39 with SMTP id ej7mr10678527igc.3.1455514468900;
        Sun, 14 Feb 2016 21:34:28 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 79si3206973pft.0.2016.02.14.21.34.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 21:34:28 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so7051388pfc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 21:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=37APA4/NvIm+kcn9s5Bqm9n5DrVfrcnHiwSFMXmEovg=;
        b=GzhnxEDGp1XV+KQwJVI0Q/HMvMrbWC6Tk0CU2ScQvXIuE2Q1mk1vpAOZbBxXwZmplr
         J8gh5l9yEdqcHs0Otyq0rZemAvSSh7NBxqYi8oGRgyhjwAr5U6sfXHtLuUmdOWbUgsUq
         leoS1BMENjlMDE3QURsDOtuRkhwGH6KbTqUMjdgsEcTCzopYmV06S7Sqk+kdnJMt7kjM
         /d0UK3FIfeAwSH2RknDSf2N1dNKXRitv0HDKDJaTYMu2Vv/4KC06cNNS6eKZrwAQQUYY
         LQcFY8I1fJg6Bt2XNR7OL3Arw0w7kR0scmmkt5duydl/7aDC0I5JUKJ+ztyFRMO5HI6k
         q/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=37APA4/NvIm+kcn9s5Bqm9n5DrVfrcnHiwSFMXmEovg=;
        b=R0iVDaf1rlIXesMZLrNzeaIc3tujUCscdKzaOtmBway9FQ9oyiBzZcUgr3ZfwWTRC4
         6PXgpRZD7IHaCvbNtvB7hmEkhFGgfuG4NGT45QO37/GNspdHf6M4IaSvEDhJLwa5EQ2u
         AdKbXa8gIoQxiMqcUzzz32e50eGDnkD1epo1XSXGK3c+eD1UPHg0rBdGnZChSCoNEZWf
         f03fbF8aR+S7Goj9PKSkWVaO6kDEnDNyxGCH0e2KINNSCAuFSll/0fpv9QEOvmJ0JtPD
         /Q8jxG5uK/vOPEqVLyedH1sML7Hbo5lW3ctscuTkKl5rgXdwVpoxaI8gIZGpEh0dl49u
         hCxg==
X-Gm-Message-State: AG10YOT35hQQ35u+RKY+rUbxK+UE4NS2Lxhl/tyNHzuVoQCt/q+VEOGGs1RCramdwUQajg==
X-Received: by 10.98.10.139 with SMTP id 11mr21086731pfk.87.1455514468792;
        Sun, 14 Feb 2016 21:34:28 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.36])
        by smtp.gmail.com with ESMTPSA id e1sm35169504pas.1.2016.02.14.21.34.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 21:34:28 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 2/2] staging: wilc1000: Remove initialization of static variables
Date: Mon, 15 Feb 2016 13:34:17 +0800
Message-Id: <2a7d1d0ace67e58216c57b120c644e3a1bafc714.1455513866.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455513866.git.eraretuya@gmail.com>
References: <cover.1455513866.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455513866.git.eraretuya@gmail.com>
References: <cover.1455513866.git.eraretuya@gmail.com>

Address the following checkpatch errors:
* ERROR: do not initialise statics to false
* ERROR: do not initialise statics to 0x00

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 drivers/staging/wilc1000/wilc_wlan.c              | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 46c6e32..5649476 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -157,7 +157,7 @@ static u8 wlan_channel = INVALID_CHANNEL;
 static u8 curr_channel;
 static u8 p2p_oui[] = {0x50, 0x6f, 0x9A, 0x09};
 static u8 p2p_local_random = 0x01;
-static u8 p2p_recv_random = 0x00;
+static u8 p2p_recv_random;
 static u8 p2p_vendor_spec[] = {0xdd, 0x05, 0x00, 0x08, 0x40, 0x03};
 static bool wilc_ie;
 
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index a396ac9..ef65e8e 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -325,7 +325,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
 	return 1;
 }
 
-static bool enabled = false;
+static bool enabled;
 
 void wilc_enable_tcp_ack_filter(bool value)
 {
-- 
1.9.1


