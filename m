X-GM-THRID: 6257097986909667328
X-Received: by 10.129.159.131 with SMTP id w125mr17132677ywg.26.1456844151726;
        Tue, 01 Mar 2016 06:55:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls3165674qgm.97.gmail; Tue, 01 Mar
 2016 06:55:51 -0800 (PST)
X-Received: by 10.140.150.210 with SMTP id 201mr13672196qhw.28.1456844151023;
        Tue, 01 Mar 2016 06:55:51 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id 12si4476866pfb.1.2016.03.01.06.55.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 06:55:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id yy13so113249617pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 06:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tPAuCCQZ3n5psZcjHXGuCsyB7Qfmxc7gkyDPyTI4XYc=;
        b=O3Fltnq5FZAbTVnDsdAli5kzvngUDA1gU/uDfYsOc/V/SvETXiGe1iZXjyPs7Dvyz1
         K15znDBVUS8PC6DqxFEVICnphM9Qa7cHD6D7kHdoSmV+pAgagGfrEGMDe3tJkyqr4VCb
         l1Fs5mY2TiiddZ61oRW7/jQK3wVNvHHsI/MhRsQ6N97C6BplFtGeXqgf9m3C5tHeJSNb
         CVosWZQMOHkd3uIKqZ12Sf3QbyJsed8oPejJ/Kq0YRyPJmW+AQPqgUC8qRs7VBeRI6iU
         cyqTFUj4wlxcrQt+yySCD2A7PE/kM6uoH4aO4xzHUF/qxLn7omjXNsDFcG33zRr3OaUY
         6zcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tPAuCCQZ3n5psZcjHXGuCsyB7Qfmxc7gkyDPyTI4XYc=;
        b=Ok8Bxu8m2kDarDuzW1zNZUXa6E3UBLfsa3WpoIMdnUXpQ+w+axdaQYac3wPsu2iByr
         CrMRsOqr0/QS7aFzThXbqHTX6DxLLVL2LlV1CC9nypZalwzSEnvxtWA0mnqP7kqaGNgN
         iPVSvNufSz+MbIvwVEfcwVFqv2AvxbWAu0i6TwUvxOkcR8nx2CfFHt6O/efLLp/XZhsy
         Bzm++6YjBKlg21f4dNNxEt+ABMKTS4s0YsOXYFR+YBUiqcfNhOmw+EuKANNUFIuzvTPQ
         NsBayJlCIySdWv4jbiDaxsepqFqVpov8M9LkKtcXOCClKF8ovTS99m7/3HIkQpCm+FKH
         eg/g==
X-Gm-Message-State: AD7BkJJFZwEmXVmAtupKIWAmlLogxJNqvfhJpZTwsblUiYLktgejPX0l/f1wPJtHXWNaAw==
X-Received: by 10.66.244.233 with SMTP id xj9mr30613173pac.19.1456844150843;
        Tue, 01 Mar 2016 06:55:50 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.154.42])
        by smtp.gmail.com with ESMTPSA id u5sm46257284pfi.15.2016.03.01.06.55.47
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 06:55:50 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 01 Mar 2016 20:25:40 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Use kzalloc instead of kmalloc and memset
Date: Tue,  1 Mar 2016 20:25:39 +0530
Message-Id: <1456844139-29008-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The code in this patch allocates some memory and then clears it. The
function kzalloc does the both so replace kmalloc and memset with
kzalloc. Also sizeof(struct ieee80211_txb) can be written as
sizeof(*txb) as txb is a pointer of type struct ieee80211_txb.
Done using coccinelle:

@@
expression e,e1,e2;
@@
- e=kmalloc(e1,e2);
+ e=kzalloc(e1,e2);
if(!e)
  return NULL;
...
- memset(e,...);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 1ab0aea..8662137 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -242,13 +242,11 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
 {
 	struct ieee80211_txb *txb;
 	int i;
-	txb = kmalloc(
-		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
-		gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags),
+		      gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct ieee80211_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = txb_size;
 
-- 
1.9.1


