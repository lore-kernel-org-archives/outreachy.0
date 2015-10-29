X-GM-THRID: 6209878523959574528
X-Received: by 10.112.136.99 with SMTP id pz3mr606784lbb.11.1446134056341;
        Thu, 29 Oct 2015 08:54:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.131.147 with SMTP id f141ls370415wmd.12.canary; Thu, 29 Oct
 2015 08:54:15 -0700 (PDT)
X-Received: by 10.28.55.135 with SMTP id e129mr868205wma.7.1446134055833;
        Thu, 29 Oct 2015 08:54:15 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id t18si257003wme.0.2015.10.29.08.54.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 08:54:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x235.google.com with SMTP id g8so26809972wme.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 08:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=E1P9dSStB2zbPVo+WL3J88FVWIzsCDZQgTfCvt5DG58=;
        b=Omo9Taq/ATmc9hVoHP8ynWNmlN+N93f0VRlteHB2a73LJA65+ojxkBPPdYue/f/ZVc
         he63VYBYaz8pBP4RXXWCkvSEeRBngCu8e5gOoOcGUFcriMcuRnchbYWK2l0VFlr3PCDb
         6eUSv1+l2q7V+zJFc/lIHFJs3XVUprCW5SsC//jEz8KDPCm6AW9MUMq7KYTAh9VSYepS
         F8cE6voy6rP4NKrnvACKE9wUgUcWzHrFxusSr1Tf3OO3MiQXhdDtViWEpAeedtEy61e2
         KLP15LAGjaTU0edE85aZOLC7Zs6MmJ1sYth3yj7QlZd5rD+hm9NW0mv4BylmLpUKnEmr
         6+Lw==
X-Received: by 10.28.131.84 with SMTP id f81mr4482769wmd.57.1446134055702;
        Thu, 29 Oct 2015 08:54:15 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.182.227.7])
        by smtp.gmail.com with ESMTPSA id bk2sm2458654wjc.3.2015.10.29.08.54.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 08:54:15 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: vt6656: Do not use multiple blank lines.
Date: Thu, 29 Oct 2015 18:54:06 +0300
Message-Id: <1446134046-27283-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines"

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/vt6656/key.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6656/key.c b/drivers/staging/vt6656/key.c
index 181745d..1898fef 100644
--- a/drivers/staging/vt6656/key.c
+++ b/drivers/staging/vt6656/key.c
@@ -163,7 +163,6 @@ int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
 		key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
 	}
 
-
 	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE) {
 		vnt_set_keymode(hw, mac_addr, key, VNT_KEY_PAIRWISE,
 					key_dec_mode, true);
-- 
1.9.1


