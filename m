X-GM-THRID: 6250694897245880320
X-Received: by 10.129.159.131 with SMTP id w125mr5562818ywg.26.1455353316344;
        Sat, 13 Feb 2016 00:48:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.8 with SMTP id f8ls985247obh.55.gmail; Sat, 13 Feb 2016
 00:48:36 -0800 (PST)
X-Received: by 10.182.255.203 with SMTP id as11mr5929752obd.49.1455353315986;
        Sat, 13 Feb 2016 00:48:35 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id tn7si1935903pac.1.2016.02.13.00.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 00:48:35 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c10so5027035pfc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 00:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0UBpdy4qmtcmYOO6ksuPrPj5D283AyyjflBxWvXx018=;
        b=JH+FJf+VK1Dops3B1gUOLBYMCi1hlqvrbvUOiFQNpUaCA2j0BjdVWu+KuQ+CyT1PO/
         m4MoQQODtt73ZVwBNsHKWMaPd/OR9Y3GU2Ax96z9LwIdcqBdRrJH/tVOQYXpGdWND6oB
         RypbRdkIh/53FbmGqEpx08lif3sdklFeEWg3Y9IDBBOKeD7rn26EcOwB9MWWT+6NTInX
         loddd/n2uJhfGbLQbgLCxK1yNZIpyvow/ovs8bpW6uZnTNbxid045RMroEBDhCeA8PDF
         +SyrRhtbHk+swtJmFqAet7OpaKyOmm49BNtCQxp4EUdPH+TGidn9a6Zxk5sp5OxIETTt
         YxxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0UBpdy4qmtcmYOO6ksuPrPj5D283AyyjflBxWvXx018=;
        b=EO9Y2MGLHhNaR7iyP0A7epeBBt2QtZRcwJwtEnnXsxslX5rcvj3xW/cW/J/bykfAr0
         jFdmN8MA5Wg9cDiRoSqBwhJnff+4HKCC0EySesqz5wSa5AO8bcRSfPzIinWmTnDaPsEM
         H3mb3ouT8Q2mkPK5R579Wn6M+3QWK7ZJVbV0JEwZSoMhtSJbpIAMwa+xnhCl+F+1aKM3
         YPmUo/wK1VjYRSJSem6CVYWSB2kH5ngIM9c0y7IAVAzKZVm6ZIuUlbEY7dNct58nldOV
         1vQE2A+dUbMdURGjNYtuZOuSwy1cuEQZgONwUw2LEZELbVZr0uassMsMgfOSdHQbjZAx
         79+A==
X-Gm-Message-State: AG10YOSQOBejPoiYYgWdwrtKrD8K3nJ8v1slfDDkAhGKwSNsMpPmsy/ocSu5eGCbOvAAMQ==
X-Received: by 10.98.12.8 with SMTP id u8mr8443450pfi.36.1455353315835;
        Sat, 13 Feb 2016 00:48:35 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id xv2sm24615250pab.10.2016.02.13.00.48.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 00:48:35 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH v2] Staging: wilc1000:Use __packed instead of __attribute__((packed))
Date: Sat, 13 Feb 2016 14:18:18 +0530
Message-Id: <1455353298-10863-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following warning: "__packed
is preferred over __attribute__((packed))" as
reported by checkpatch.pl.
Fixed by replacing __attribute__((packed)) over __packed.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
Changes in v2:
  -Modify the subject and commit log.

 drivers/staging/wilc1000/linux_mon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index e550027..284dfb0 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -15,14 +15,14 @@
 struct wilc_wfi_radiotap_hdr {
 	struct ieee80211_radiotap_header hdr;
 	u8 rate;
-} __attribute__((packed));
+} __packed;
 
 struct wilc_wfi_radiotap_cb_hdr {
 	struct ieee80211_radiotap_header hdr;
 	u8 rate;
 	u8 dump;
 	u16 tx_flags;
-} __attribute__((packed));
+} __packed;
 
 static struct net_device *wilc_wfi_mon; /* global monitor netdev */
 
-- 
1.9.1


