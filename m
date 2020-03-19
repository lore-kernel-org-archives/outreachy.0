X-GM-THRID: 6805851811362111488
X-Received: by 2002:a1c:a345:: with SMTP id m66mr2781764wme.114.1584610857656;
        Thu, 19 Mar 2020 02:40:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls836962wmc.0.gmail; Thu, 19 Mar
 2020 02:40:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsGNza4spt5M4SLY9bONmF6TRR14VGdVKdCT5TmV1ys9jC6eokoEgd9lmJu/vYFIJgZOqcd
X-Received: by 2002:a05:600c:20c9:: with SMTP id y9mr2774193wmm.83.1584610856269;
        Thu, 19 Mar 2020 02:40:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584610856; cv=none;
        d=google.com; s=arc-20160816;
        b=Qq7OfqqWy5SgOWfc0u2ainK6osp9IxKth8LdNjzg/eQ5BssdqWssalPY342B/4vCZN
         Xpdfv0/XRX8obWs3uzzEGG3i7D1p7DsdeHf76e+CIxWE/2NVMOb09P3oT87tlrzKQr8f
         NoGK/5npxVF9Fkg+3kNSI6Z7HZTzp/D30k0HVt2QiT82ECqN4nu9MxUuGSZVugPFHoNY
         g1bFZLbQL5YCKHKZcMUtkiacgDvlOAgKoEmx9Y5Vys+XKQoeAFxcYYVXxvZiW6SsqMev
         Ki+mFirWCr5Iu4FUFgkBJ3hIX4BdGxc7fRdao698fOs13PcNN4ELpVaA6/sTXmBK0z68
         CnCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Tf2Tcoa4Uq+Sd3A/rViri9Ixv4qtK+5ocn4aEgIrznw=;
        b=wtPdNxvuf90HDsOJNKlrA+T4jGuRY7z4J291TSPKXBDlyWnJchAPD35xT/NdR7xc0S
         9kDQVctgEisVcXlpw3Kanda3VXICqOABodpLhLrYZBhDdwKLp0VM4ZwY7dJKpB8ZXvwK
         /pJhxjVhaT4OjK3JQKWzrLZjFnbhkuWW550xe+eR2nneGDy5gyvdWuSvTxSG4SHEam18
         0zEutZ/xWYpfxNR9afqbARJTzcEysCE/3aYxq46OztRe+ENQNai8n+xF5xDAapVnuv+R
         sRydwLMG6DFOkutIisxAOrne49/c3QGsSg263lO7hwbFsWFv3y53lUpvmpWALTi8AZVD
         jSBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id m2si264893wmi.3.2020.03.19.02.40.56
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:40:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26597 invoked from network); 19 Mar 2020 09:40:55 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:40:55 -0000
Date: Thu, 19 Mar 2020 15:10:49 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH] staging: rtl8192u: ieee80211: Correct a typo in a
 comment
Message-ID: <20200319094043.GA2669@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index 5cee1031a27c..3aabb401b15a 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -380,7 +380,7 @@ bool GetTs(
 				}
 
 				IEEE80211_DEBUG(IEEE80211_DL_TS, "to init current TS, UP:%d, Dir:%d, addr:%pM\n", UP, Dir, Addr);
-				// Prepare TS Info releated field
+				// Prepare TS Info related field
 				pTSInfo->uc_traffic_type = 0;		// Traffic type: WMM is reserved in this field
 				pTSInfo->uc_tsid = UP;			// TSID
 				pTSInfo->uc_direction = Dir;		// Direction: if there is DirectLink, this need additional consideration.
-- 
2.20.1


