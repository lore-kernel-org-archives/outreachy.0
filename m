X-GM-THRID: 6332127696455204864
X-Received: by 10.129.78.134 with SMTP id c128mr56524ywb.50.1474523397351;
        Wed, 21 Sep 2016 22:49:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.182.197 with SMTP id g188ls4238428iof.6.gmail; Wed, 21 Sep
 2016 22:49:54 -0700 (PDT)
X-Received: by 10.66.161.130 with SMTP id xs2mr57353pab.40.1474523394344;
        Wed, 21 Sep 2016 22:49:54 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id m82si10076ywm.2.2016.09.21.22.49.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 22:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id u82so4289471ywc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 22:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=y+eJCahU00kT6y8eQo6fGlVgwelxgSs1JjpqsJg5Be0=;
        b=fYcWK7urEia3Fjbz9g8PR7JGcc4Q1haLun6TtrwdD5RlA6pmzSfKkcdKYbu3UB6TlA
         OvpMdpP9tvXouFRT6JDrikTp9HJNWdU9X8r+zfGMR5d425ZSdNi7ZT/7G1qtRJuSSyMj
         LavBp13tU3A+McNG3wPo0GDvorQfxOKidONPjcw+6ho1CIzTybbi7CY8s1mpYDIYLUTh
         iqT2oL604Qtvy0loGKgypmOg+oc1yLbYLFFtVTY683hrg/ijMnTevTZF0EImM1yPJN+1
         JyyveyqwjTfXU6ZBb1UQsD1BqvkpqDx8tEFf8S5i07tEfc1lmLbH6rK2WeOiwfitEuj8
         dq4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=y+eJCahU00kT6y8eQo6fGlVgwelxgSs1JjpqsJg5Be0=;
        b=bVUgBSgLO/tmbGxoDk3vN1lCU5RaiwjJAUIKv+e4NX0o2AiIEM7thCkfry1QZrBTZJ
         7N0+dHyMzBKnFgK95tbuV6uDKnKemkkBv0pYJVy/DO4RjTgKJ2YvDYsqNwAdt3oLcL+O
         EfGTAXHt6o2AyS+epkrg6YOkBpThPOYfTMiWzjA5P567qkJAmIdM34igzzYrZMi+qg/E
         w5mCRWBW7ppSyHr3fZqHhJAcKKUVGdj8IK39L9l1ymsFb/HlV6ndOl5vjzahtriss34v
         KI7cnoOFtUvmonAwpuPzIe/xtdycNWJMwuD5cV0zj5ktzkukU6ntModBfWkmf3Z5207T
         T3bw==
X-Gm-Message-State: AE9vXwNVi+i5ZFvD8+ZVXYpJ3N47V5PwJM6XRLkTYE8iUFWtQBfVEjawFKBX1rcfLVwTDw==
X-Received: by 10.129.27.10 with SMTP id b10mr121590ywb.316.1474523394123;
        Wed, 21 Sep 2016 22:49:54 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id u73sm80010ywc.6.2016.09.21.22.49.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 22:49:53 -0700 (PDT)
Date: Thu, 22 Sep 2016 02:49:50 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: wlan-ng: fixed alignment not matching
Message-ID: <20160922054950.GA32009@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes a checkpatch warning by moving
arguments to the right and aligning them to their open
parenthesis.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v4:
   - Fixed commit message line length

Changes in v3:
   - Fixed patch author's name

Changes in v2:
   - Make the commit message clearer.
---
 drivers/staging/wlan-ng/cfg80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 8c592be..bed4672 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -334,7 +334,7 @@ static int prism2_scan(struct wiphy *wiphy,
 		msg1.scantype.data = P80211ENUM_scantype_active;
 		msg1.ssid.data.len = request->ssids->ssid_len;
 		memcpy(msg1.ssid.data.data,
-			request->ssids->ssid, request->ssids->ssid_len);
+		       request->ssids->ssid, request->ssids->ssid_len);
 	} else {
 		msg1.scantype.data = 0;
 	}
-- 
2.10.0


