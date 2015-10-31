X-GM-THRID: 6211547369470689280
X-Received: by 10.112.138.66 with SMTP id qo2mr3070938lbb.2.1446332231069;
        Sat, 31 Oct 2015 15:57:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.143.143 with SMTP id r137ls356683wmd.10.canary; Sat, 31 Oct
 2015 15:57:10 -0700 (PDT)
X-Received: by 10.28.216.206 with SMTP id p197mr938744wmg.3.1446332230615;
        Sat, 31 Oct 2015 15:57:10 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id g18si284259wmd.1.2015.10.31.15.57.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 15:57:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x230.google.com with SMTP id f134so34133951wmf.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 15:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=G4MvPBH9S33CypnglB92zE/fk4qqTC0CgTbwkxRTkps=;
        b=iY+Gg6pWRQcCajKO6OT0HG+FgSRD/k1CCCW3z/LJXPXGXPQr9ucZJKEEDg4LNtmVX7
         k22fwnpdO/EVjLmque5TBAPCws0iSz7DjCvAQKlPMyKmXEIcjkamcW0YQaIWVox2HxAv
         MTsyA7Cd4RLQlBRADRYD4BkvYIT+fb/qqkpv5G9QVp/g9R1RbJgt3cX3KrxMSejvn/m1
         uOSWlI7nZMGv7RvKrpqe20lg6pYs2kE1XKZ9458B3idTL1u8m9BQwqADr0nrOmcOU49N
         RoD2Ugsh+E5eL+gQE1zrhb4KYw+ReJoLvBDi1gOI/QZy1toH3YwyP/oGPqb/t/iTzrDe
         89Qw==
X-Received: by 10.28.178.210 with SMTP id b201mr5537987wmf.78.1446332230499;
        Sat, 31 Oct 2015 15:57:10 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.191.81.47])
        by smtp.gmail.com with ESMTPSA id r13sm9981804wmg.12.2015.10.31.15.57.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 31 Oct 2015 15:57:10 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH 5/5] staging: gdm72xx: Add space around '>>'
Date: Sun,  1 Nov 2015 01:56:52 +0300
Message-Id: <1446332212-10079-5-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>
References: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com>

Add space around operator '>>'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '>>' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/gdm72xx/gdm_qos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index 182ffab..6c5fae5 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -193,7 +193,7 @@ static int get_qos_index(struct nic *nic, u8 *iph, u8 *tcpudph)
 	if (!iph || !tcpudph)
 		return -1;
 
-	ip_ver = (iph[0]>>4) & 0xf;
+	ip_ver = (iph[0] >> 4) & 0xf;
 
 	if (ip_ver != 4)
 		return -1;
-- 
1.9.1


