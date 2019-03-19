X-GM-THRID: 6670149254252593152
X-Received: by 2002:a9d:7a89:: with SMTP id l9mr1833152otn.2.1553015144482;
        Tue, 19 Mar 2019 10:05:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls1044172oia.4.gmail; Tue, 19 Mar
 2019 10:05:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz+O7WEqOVTwJjbcFYCJYZmdkhukxhs/5+7uqgUoLGV4HdurskKkTnTqxIENp55yXV0Ws8x
X-Received: by 2002:aca:3409:: with SMTP id b9mr1114406oia.29.1553015143263;
        Tue, 19 Mar 2019 10:05:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553015143; cv=none;
        d=google.com; s=arc-20160816;
        b=K3h8Pt0o0XTMCc++v5F45UVbc3mMXi/k/tEZHd7U8paHH15SS3u+o1aYRIcj/1EAO5
         MSLzfn0hqbyfAxFI8GulvSxLOMSTdAByGFe7b9d+Es3y3oNf1qeOTorp/gik50LUlAh+
         Pe7fOMbV84yCYUq0CefwqbOEvmPxlou6nBvzD9jE7xIyWyjO2w3DiOqhniu+vErp5ZJT
         lueUfO5/RQ9lCrEtKslhf3CAgH4o4XqYiTEikev1emCunZ5XRQ4bTmWO2P1lSm85QJ1M
         IH7bG4EpDS59v/e32bZRAbtZMegBmJJ4O9RGXPk3A0iDI03TsNhzNgdW601PnWU4FvgC
         ZArQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ayrqOdTdwZ2YVVb8FOwhYQI5b3k2+C6lYR6mu9VIs2o=;
        b=eVTzP/pZniwOtUfYmhwTIJIvB3kNm2DKq+79iGoqrWHBVNHMw6kFczjAw3B679eKnb
         Z40LERj73upmTZpO72ldW9INU+UhexshrAxlc8sJdBcZKE7SDRnCFUTaw6SEKN7X73cs
         bajuFamPmUo8fwlgJg68VzUaaqQ6hRrtCDv/aeGnrMeLYZeFXj8VbeEZtCPVyUsgbc3N
         sGIjSVYt1MxoW/CrCi+lIMgkFv9/8MjSwM6dEMpGQELCVol3ZqqDL+Ln0uw0vPlJ83+B
         nzd8wHOo8MwfhjEILaYoXq1jcwlIraciZ70kG6kB6F6vgxB2LJ8FQKkLSuPYPw068/k3
         /XSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jczB5oqG;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x31si643260otb.1.2019.03.19.10.05.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 10:05:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jczB5oqG;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id j5so14156861pfa.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 10:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ayrqOdTdwZ2YVVb8FOwhYQI5b3k2+C6lYR6mu9VIs2o=;
        b=jczB5oqGci+OnutP71L6QI5p7oFy8EkgyV9MTl23LuGPdP+0BwHVxKZS57nbPj7pbW
         vioDBg/DUHjVKW+t8SbYmlPJOMh7BmlsJAzBZfZULM8AlVer+cdJscl8YTthPwJpSHZO
         BLsA6ZniR9WYOlYB4zsVIBXIKzWfUbSKY8u6IHJIaTBtSx9yUMgyMVBPM9LwSJE7HB+I
         4LiJvuxsHytkTQLIx2Zi2TKRzup5PS1PbmdO6TXZf3SUlIKUqfIO5nbsrGMfbp94ysVy
         7b25M2+uQ09FA3rRRxKshwla8wNZ6vIIrHUbYTJuWtCFjr8TxRUm0IDFa+s+zW8G+YvH
         mL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ayrqOdTdwZ2YVVb8FOwhYQI5b3k2+C6lYR6mu9VIs2o=;
        b=IRNW/2407/PmzgHB1wAJRGgnYwd2fwmuivNpG9xsUKN1tDqKE11ihp29516zjjo9Aw
         7y1NtnCBPHs8veyo3yc9Xvr+9VKsQc7zeNr0trbsTTRloGxG0GuqUa3cOPNnMS2QCpY0
         pGuIHJblEVljjnPwq5RrQZ7RH5QnadoGdsSQt3ysF3APQaqwl9lN/JHs/c6hH8B42qkA
         GrY7Kg2FbBip+IclM5G/PmuyMo0X+yu4Z/lFRTe6gFrjS2Tz+FRB1Fi6wP4Sva0GmfJm
         QxRRK4+RctqTYs/BJkmTx+dXN0FBJcKTSwVjuNVZ/+8U2w2OnSYREUJE7ZcvkaLvGOqF
         gzvw==
X-Gm-Message-State: APjAAAVWGkuDnjdn4AIgEItsbQgXE6e07PJooSDFVp8sQ2OTgXDZXPwq
	sZJyp/DY6wLsMrO0XCy8WU9+Pi++9no=
X-Received: by 2002:a63:e801:: with SMTP id s1mr23960063pgh.378.1553015142519;
        Tue, 19 Mar 2019 10:05:42 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.64])
        by smtp.googlemail.com with ESMTPSA id 140sm8477332pfb.55.2019.03.19.10.05.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 10:05:41 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: ieee80211_rx.c: Fix NULL comparisions.
Date: Tue, 19 Mar 2019 22:35:26 +0530
Message-Id: <20190319170526.4337-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace NULL comparisons in the file.
Issue found by checkpatch.pl

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 5147f7c01e31..1cbaf8a4ee1b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -151,7 +151,7 @@ ieee80211_frag_cache_get(struct ieee80211_device *ieee,
 		 * should have already been received */
 		entry = ieee80211_frag_cache_find(ieee, seq, frag, tid,hdr->addr2,
 						  hdr->addr1);
-		if (entry != NULL) {
+		if (entry) {
 			entry->last_frag = frag;
 			skb = entry->skb;
 		}
@@ -190,7 +190,7 @@ static int ieee80211_frag_cache_invalidate(struct ieee80211_device *ieee,
 	entry = ieee80211_frag_cache_find(ieee, seq, -1, tid, hdr->addr2,
 					  hdr->addr1);
 
-	if (entry == NULL) {
+	if (!entry) {
 		IEEE80211_DEBUG_FRAG(
 			"could not invalidate fragment cache "
 			"entry (seq=%u)\n", seq);
-- 
2.17.1


