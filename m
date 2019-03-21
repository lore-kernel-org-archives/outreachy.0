X-GM-THRID: 6670800416333103104
X-Received: by 2002:a0d:cd81:: with SMTP id p123mr555202ywd.13.1553166754488;
        Thu, 21 Mar 2019 04:12:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1b07:: with SMTP id b7ls1929074ywb.6.gmail; Thu, 21 Mar
 2019 04:12:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy1LUj/ID1zChJIGUBYHzOZXggilM7M7UTWCOY2zE7UFmpvKoo005zbXb/99Oy994EELavV
X-Received: by 2002:a81:8a46:: with SMTP id a67mr565962ywg.26.1553166753966;
        Thu, 21 Mar 2019 04:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553166753; cv=none;
        d=google.com; s=arc-20160816;
        b=nBPVXlSlZewSQScAE0HFa1Ggueb4zSXagfr7g2g5EqqUJ6S77/LNNmW55Yok3QGOj0
         b+x4qmpJy4SImZK0/4nYDzliB2cKPis6J4LlxqG2B0C1XX84G4ybXi0HASO4qHv4+uR8
         s5IIPifYIqjX2GHhqONylZPmMSmTyMCiredWcJxz8w8L5SKRh4RBRzZNeq+WwS84aMuc
         XOMVY+jSbmUuJJDkdKROA28K/VR9DaVmJHBjkoAOgefqTg4TZWHZOTKLTveio4iy+b5n
         BA0hk7KPtw04MTta5MjH+H5VKAHvWRNMSa0wAl2AnJbOU8nMMiQl0UZwOmLYSuvOVdkj
         2pKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=eYL1Sfno8oJBnpnB1iXjj7SeuBrA5SA3gN0/JrxUBqg=;
        b=ptCgEVMnjjn937EtBno5l2wYsrhEg+VdRufhPzENpsA5N+cEZc4R8MmmIR+/nCiftn
         2PAUlI1YZQuslnuTPB3nHXb/SqMxqXPSmDOKFzxElk8zXzwu9TPDz2AOyH89ahraYC16
         T6fKLG4gqoGX0qXDrq0yyiK5fBzBlFcRUWceWZbuV5SVDNdUo0IA3wK2sXS9slvztVr2
         2Ckvudloq29IuhpfLGsVvnSi7xf8hu1gf6rVBUIdLKbzmJ+36Q13QsS5ihph3x8F+B3Z
         pp2ialfj8hjUFND6obCmB/Xp1O+Hw2MW/UOlwIJh3O7wJi3wNf6uzDnAL3nMXpGkgybc
         yGog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M0ADITHn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r128si466940ywd.0.2019.03.21.04.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 04:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M0ADITHn;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id r15so4068331pfn.9
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 04:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eYL1Sfno8oJBnpnB1iXjj7SeuBrA5SA3gN0/JrxUBqg=;
        b=M0ADITHnAT4Tbzuybq2d4oGl3DQqm8QHfpPffPdyGII0QOXE0C2I+SsXJPpFbGSBzm
         5ap8twh/H2POGV8TpfRdKs6DC4jz5JNaExTrr6aKLCQSrN8UpeggJH3mEBjRJSchyRyI
         uvn4qVxMCGvzOu/cEvHPCM0zL6bWo5gXvisMiTzzl3GBFaIWi8OusHiwh0jFGWTKB230
         H7xXVowbuhmn9RyVh7d9BBRHx6HDrn12NbyR0rxeIncAv9MDp1al+wpmeAsqozB804vo
         A1wLd2ZC6z62cF3WcFXs2qzCtTMQFv8E5IGhMu0UxSlXUv6Fzc/tFDytop1emEvAaRCJ
         6gJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eYL1Sfno8oJBnpnB1iXjj7SeuBrA5SA3gN0/JrxUBqg=;
        b=kdD75Skl8Owlgl1A5ND98jxT6TPK6XKqec+PMyuu2q2aRc9S8lZGo6bT3e96CwbXdJ
         tcs1GzpMOkgQ+agIkjwfzn7Mm0yQKb7389GWgeVLCNqkavGBYkBYbblPM/PCCKfnom+M
         d7Hjba2D0CKQO2n2CVMbu5PkQoV9MCLH4wcAtI0u5WybPrU7e6JyngysQ9doPISJ5dF/
         cq0GgmiwvWO85bQXeeFDraO3aL/dHzII4Izl+b/IL7vFgNiPWNGKMzAM4/uGPrjDsBjk
         qoYS9wM8psua6UH3Gx3U3CpBdYgiV1IfhCV4GI4OwagW/uvFOrpiDahIAo1mZS1V9Ci0
         eV0A==
X-Gm-Message-State: APjAAAVJYOcTWjq6KAU6OkM6sSWoWgwl+cQZPk1mCiaF+O464X5x7WLm
	Hq6jZLFcqKHRHmXAyROCHvsfjh2pyK8=
X-Received: by 2002:a62:6306:: with SMTP id x6mr2707610pfb.244.1553166753407;
        Thu, 21 Mar 2019 04:12:33 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.81])
        by smtp.googlemail.com with ESMTPSA id h64sm3612693pge.7.2019.03.21.04.12.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 04:12:32 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: rtw_wlan_util.c: Modify return type suggested by Coccinelle.
Date: Thu, 21 Mar 2019 16:42:22 +0530
Message-Id: <20190321111222.11964-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

The last two lines in the function could
be compressed into one. Avoid usage of local variable.
Challenge suggested by Coccinelle using ret.cocci.
The below is the script for ret.cocci:
@@
local idexpression res;
expression e;
@@

-res =
+return
     e;
-return res;

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 4480deef95a1..70776f8e19a6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(struct ieee80211_ht_cap *pHT_caps)
 {
 	unsigned int mask = 0;
 
-	mask = (pHT_caps->mcs.rx_mask[0] << 12) |
+	return (pHT_caps->mcs.rx_mask[0] << 12) |
 	       (pHT_caps->mcs.rx_mask[1] << 20);
-
-	return mask;
 }
 
 int support_short_GI(struct adapter *padapter, struct ieee80211_ht_cap *pHT_caps)
-- 
2.17.1


