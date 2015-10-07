X-GM-THRID: 6202887067130658816
X-Received: by 10.129.123.85 with SMTP id w82mr646582ywc.39.1444222193308;
        Wed, 07 Oct 2015 05:49:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.7 with SMTP id f7ls323013qge.39.gmail; Wed, 07 Oct 2015
 05:49:52 -0700 (PDT)
X-Received: by 10.129.70.6 with SMTP id t6mr715982ywa.5.1444222192936;
        Wed, 07 Oct 2015 05:49:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id zg1si5108009pbb.2.2015.10.07.05.49.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 05:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hy16so20950746pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 05:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=lQvTAROBjUqfqPEqySp2qQ6h1+bjyXZs0nuIIyQsEhk=;
        b=LTANuaPmTxOXZud7EnRzXDSuhYVVtEuvDAMt7rpE8Nk9pN2wdpVUlitgGq47bsGCzZ
         Lv80gvsKPp0XgC3nqwwznQh+BhCUzygoVInNHzO1r86bInbF515R234Uwz32xZgTIpd+
         NELS5bbuXCGfZoUz9ktgwyr435IaTGUE48uDqVqENRkf40GAGHu9mTlnR2eDgANq86mm
         zIk1Yzb45DGhRC7HayGoubgF6hGTDpojn6E16NzgfZ9mLtAqBfzxEDE0Dy/V0gmMaBQY
         i7bCHnSzF548v5WHKOG6RDta3/0zl5Rds4bboOm43P2NrSLbsg0sHvHYv+GQnsCtyPkz
         sSUg==
X-Received: by 10.68.238.130 with SMTP id vk2mr1022689pbc.114.1444222192770;
        Wed, 07 Oct 2015 05:49:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ci2sm11668110pbc.66.2015.10.07.05.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 05:49:52 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: speakup: Use ARRAY_SIZE macro
Date: Wed,  7 Oct 2015 18:19:37 +0530
Message-Id: <1444222177-11153-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444222177-11153-1-git-send-email-shraddha.6596@gmail.com>
References: <1444222177-11153-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561514EF.0187,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

ARRAY_SIZE is more concise to use when the size of an array is divided
by the size of its type or the size of its first element.

Changes made using Coccinelle-

@@
type T;
T[] E;
@@

- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index f061747..12f880e 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -389,7 +389,7 @@ static struct msg_group_t all_groups[] = {
 	},
 };
 
-static const  int num_groups = sizeof(all_groups) / sizeof(struct msg_group_t);
+static const  int num_groups = ARRAY_SIZE(all_groups);
 
 char *spk_msg_get(enum msg_index_t index)
 {
-- 
2.1.4


