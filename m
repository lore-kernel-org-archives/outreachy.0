X-GM-THRID: 4475579269120
X-Received: by 10.152.37.200 with SMTP id a8mr2035443lak.5.1425041445149;
        Fri, 27 Feb 2015 04:50:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.18.225 with SMTP id z1ls161161lad.109.gmail; Fri, 27 Feb
 2015 04:50:43 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr2041385laa.2.1425041443599;
        Fri, 27 Feb 2015 04:50:43 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id o3si103568wib.2.2015.02.27.04.50.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:50:43 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id w62so20191380wes.9
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=cGO7tNMpbNMqVECP1QkzfSbmvZSRcc+uhytq9ht3u0Q=;
        b=sIQDFoOen2I+FqogaMneUqT65Gib3CELGlwWr4sVfQqOqWBiV+iwct63iROr7qRWzF
         oFllyC06ODlRFKTYN/8dNyNK1a93gnrwqeCH75vpSJGZjuj+MlKQmMhfKq0dA2+KvYBj
         AeHQlng6AjjkjQsuc0jaQ3S7nIwqvkgDuN3bQ96FwPfW26aohHqaPLps8BuLSRUJVFy5
         iuhmkJNOM5GqiRpTsI48rHccPalGlhP7lDlyH0Bw3gBB6jrIFEso+X17efuh2kMRPCDv
         T6w/0A5/DkI8IvCRnPSFAvC1nOlZfDXNxsJ4ieow41DIcZuvobeEMnfAmRkLatt00ZZA
         uVZw==
X-Received: by 10.194.21.137 with SMTP id v9mr26889242wje.140.1425041443391;
        Fri, 27 Feb 2015 04:50:43 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id b4sm2717660wic.2.2015.02.27.04.50.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:50:42 -0800 (PST)
Date: Fri, 27 Feb 2015 14:50:34 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 02/24] staging: wlan-ng: remove unused variable
Message-ID: <55680493f6ed9772f3fb444f39812f587c2e5b1a.1425035004.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes variables that were simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 0163e06..b4a15ef 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -582,8 +582,6 @@ static int prism2mib_privacyinvoked(struct mibrec *mib,
 				    struct p80211msg_dot11req_mibset *msg,
 				    void *data)
 {
-	int result;
-
 	if (wlandev->hostwep & HOSTWEP_DECRYPT) {
 		if (wlandev->hostwep & HOSTWEP_DECRYPT)
 			mib->parm2 |= HFA384x_WEPFLAGS_DISABLE_RXCRYPT;
@@ -591,9 +589,7 @@ static int prism2mib_privacyinvoked(struct mibrec *mib,
 			mib->parm2 |= HFA384x_WEPFLAGS_DISABLE_TXCRYPT;
 	}
 
-	result = prism2mib_flag(mib, isget, wlandev, hw, msg, data);
-
-	return result;
+	return prism2mib_flag(mib, isget, wlandev, hw, msg, data);
 }
 
 /*----------------------------------------------------------------
@@ -628,11 +624,8 @@ static int prism2mib_excludeunencrypted(struct mibrec *mib,
 					struct p80211msg_dot11req_mibset *msg,
 					void *data)
 {
-	int result;
-
-	result = prism2mib_flag(mib, isget, wlandev, hw, msg, data);
 
-	return result;
+	return prism2mib_flag(mib, isget, wlandev, hw, msg, data);
 }
 
 /*----------------------------------------------------------------
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

