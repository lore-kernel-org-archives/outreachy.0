X-GM-THRID: 6209555630081966080
X-Received: by 10.182.79.70 with SMTP id h6mr26363486obx.22.1445774844941;
        Sun, 25 Oct 2015 05:07:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.10 with SMTP id s10ls2767556qgs.8.gmail; Sun, 25 Oct
 2015 05:07:24 -0700 (PDT)
X-Received: by 10.129.154.205 with SMTP id r196mr22568634ywg.48.1445774844157;
        Sun, 25 Oct 2015 05:07:24 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id sm2si1725929pab.0.2015.10.25.05.07.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 05:07:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so159950906pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 05:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=pxvzcGhEW3ji34g4O6PiR6/l2e/Mx5sTcGEO4m6mehQ=;
        b=N8caIZ/5wAEPSQX9EhGWcZX7Se+6uFvyV2SbX3Q5hRwvAKIIh7K4Su/gfVEll2V5+/
         k2PVZjze0vdyWm+JTIdQZTPqNgaaV8zHPDDmRaIY4yf9qKj/Htqybh3V6fqDIvCdKusK
         yF/GbLO+ZvIxIWSTnkMHtCRabCrHmBmqNYDZas45ZQ1td8XCR3kDYSlSuTU7UqkKQBRt
         /2Q9JkeB8YUsxjgMuqn7lgoKm4wQMgQcVUpqolL+0vHfWKK0h0SSWl0S+FAQ/2wTs+v/
         j7R6vwnEj7Wf8PeDclyeUGWRa5sKG63a6shv2V90wh7IcePosKW0d8PzjIFYq31qgiQ5
         Mp8A==
X-Received: by 10.68.161.226 with SMTP id xv2mr16128731pbb.21.1445774844034;
        Sun, 25 Oct 2015 05:07:24 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sn9sm28505944pac.16.2015.10.25.05.07.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 25 Oct 2015 05:07:23 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/4] Staging: lustre: ptlrpc: Remove EXPORT_SYMBOL for sptlrpc_rule_set_expand
Date: Sun, 25 Oct 2015 17:36:59 +0530
Message-Id: <1445774820-9184-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
References: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.562CC5FA.0110,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Since sptlrpc_rule_set_expand is static, export symbol is not needed
---
 drivers/staging/lustre/lustre/ptlrpc/sec_config.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
index fca9aa1..7ff948f 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
@@ -257,7 +257,6 @@ static int sptlrpc_rule_set_expand(struct sptlrpc_rule_set *rset)
 	rset->srs_nslot = nslot;
 	return 0;
 }
-EXPORT_SYMBOL(sptlrpc_rule_set_expand);
 
 static inline int rule_spec_dir(struct sptlrpc_rule *rule)
 {
-- 
2.1.4


