X-GM-THRID: 6608897994052861952
X-Received: by 2002:a17:902:6a8c:: with SMTP id n12-v6mr6034572plk.13.1538754222016;
        Fri, 05 Oct 2018 08:43:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:851a:: with SMTP id u26-v6ls154016pfd.14.gmail; Fri, 05
 Oct 2018 08:43:41 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61Ux2ruUTgLvo+2W3njk7XPFQbHnADNAshTXNqG5IaituGxAflkCYLNhk+Cl3b8/fGdWqQ6
X-Received: by 2002:a63:2b96:: with SMTP id r144-v6mr166134pgr.61.1538754221338;
        Fri, 05 Oct 2018 08:43:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538754221; cv=none;
        d=google.com; s=arc-20160816;
        b=f4ZSUChi7F2HfnjrdiUmVatGCM5Q/JfSsBBvoq6EpoV2ElarqmAVp83wKU3/m6s2Gq
         9hE1z+o/btUbENA2fONZeXTHbuzNdzPAuhAG7lrSUkHf5QYO8SkmIE+3a6XPwg4xV8as
         PSflATcSeYuL2qiDqdjbS/yl0Aq81MlxCUZc90n0NVu04Ra+dqRa8EEoiDFtjNS8WEhQ
         3JUdtxQzJajwyJfMcnrHhi2uD63kRbwoayUzUAYYEsC6wBWQ6Iu4WGiFjV1AnIwLPEWr
         m2WBfxFMThezzsYlIRKzqFXff3LJyZ++sBAnbydu91cUkGoY3HVJBlwVj5sRm0cLolJo
         Zx2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vvp+8tCFWP2Vfqw/khEElbzWS+ECo3rTL7Wjox1IHKc=;
        b=VP3lQwTjFWxQatLQdDBbUruXm5l1xIfffubxFuOdaX+shO0f0rRj8iCgrjEf4u2RW0
         yoiXrboQ3C5mEeo1QccYfc6wkbYaapYc2TDBCYSsBy+E6Qbwl3hlFpvAbck0wvnGUtBH
         1WPZNmP11oTIBe/8bK3IRi7+9j62vplDECiDU83Nyw+FgFxKdHKVESR/zIkxneqrbAi3
         6TejPVsRDTaJsKtQOvVsBZVPNjFuwGwtYSqZSvQcbijOsArXDgauLK5rRtm6xHlxaGy9
         lG70n5Ybf4AbcvLYAU24uqjKjjg9VzesmsytmtI1aBdNt2m8DSUJTXf5BhBo/cBQY96o
         Q+gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvkFJPTY;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q199-v6si425054pgq.0.2018.10.05.08.43.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 08:43:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvkFJPTY;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id y15-v6so7017600plr.12
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 08:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vvp+8tCFWP2Vfqw/khEElbzWS+ECo3rTL7Wjox1IHKc=;
        b=MvkFJPTYRn+nF6s+LxR/Ch0HphnI8jCm53c7cvytGSOPVZvz2RHtkoL3gROykuEBex
         aIAcMVO5FQmo5gyaetL0koIogROE1pReqUrOTcfIYphybJpOYvqoNJN3kEfIFGnqGCCX
         gLOAzN+1XdkY2ifgGae/Xo3SZPSjw6mBZ0R31NWPrCjVHB9mrZL3L6dUfDsm5GUKFMIf
         4Jk6pvQU3hFXoAsz2GCm2hJe63rLoaAHnTDQ/Jep5s5/vX0HU3HdAccPWr7aqts5chKl
         sWgzICZP0MreGWdVPEUuoN9rNDXN8WJfx5V+EMhKOIABB1UquSxF1piuv+USzMe6x6x9
         YAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vvp+8tCFWP2Vfqw/khEElbzWS+ECo3rTL7Wjox1IHKc=;
        b=crLcUHuz1aI9sDlfLnNhORJUNPqnZh1V76iFX2QF9gCTmwnkRBGJhWG6m0MAQB84gZ
         An/s06pVzDuUMcG/ZXjuaNt8qOnJ7RhIJUquQJ92Jk4YC9SVjD/2ynzXiSkcSOfrhqo4
         W1snwAoGDHLDZVyDPK/pG/SbhyTLuAj8agJnynHvtsMX4HEkc4/+doNuiCKfIU8WjeJk
         DsL5jMH5xwus60Ko4V7m+Vm77jKThW8gIXvpOZ0f6R4snMIDFofV3pACuZRvWSVhCvWQ
         hBueWsX5LyaVAo2xYHhuMZrdeVwsbzTAaB0b/i6jtso6zypQly1olKdRigaPKeGx3ZO8
         fErg==
X-Gm-Message-State: ABuFfoigbEYZV5C8VEkzYAa5CGqxRMiQJJ2oThCfvFVUY0yvLqLUkdWo
	o0RNUuSPhEE7KR5qpbEtse0=
X-Received: by 2002:a17:902:b907:: with SMTP id bf7-v6mr2299243plb.259.1538754221005;
        Fri, 05 Oct 2018 08:43:41 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.105.99])
        by smtp.gmail.com with ESMTPSA id f1-v6sm14207796pgc.4.2018.10.05.08.43.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 08:43:40 -0700 (PDT)
Date: Fri, 5 Oct 2018 21:13:37 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH 3/4] staging: vt6655: Add spaces around '-'
Message-ID: <e32547996c8f2a6c6e75557d204d69bae922fdc9.1538752705.git.mamtashukla555@gmail.com>
References: <cover.1538752705.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538752705.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '-' to fix checkpatch issue.
CHECK: spaces preferred around that '-' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 596d5f8..1eb8cea 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -241,7 +241,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 	bool bLastFrag = false;
 	unsigned int uAckTime = 0, uNextPktTime = 0;
 
-	if (uFragIdx == (uMACfragNum-1))
+	if (uFragIdx == (uMACfragNum - 1))
 		bLastFrag = true;
 
 	switch (byDurType) {
@@ -254,7 +254,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum-2))
+			if (uFragIdx == (uMACfragNum - 2))
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
 			else
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
@@ -277,7 +277,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			if (uFragIdx == (uMACfragNum-2))
+			if (uFragIdx == (uMACfragNum - 2))
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
 			else
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
@@ -306,7 +306,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 				else if (wRate > RATE_54M)
 					wRate = RATE_54M;
 
-				if (uFragIdx == (uMACfragNum-2))
+				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
@@ -317,7 +317,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 				else if (wRate > RATE_54M)
 					wRate = RATE_54M;
 
-				if (uFragIdx == (uMACfragNum-2))
+				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
@@ -347,7 +347,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 				else if (wRate > RATE_54M)
 					wRate = RATE_54M;
 
-				if (uFragIdx == (uMACfragNum-2))
+				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
@@ -358,7 +358,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 				else if (wRate > RATE_54M)
 					wRate = RATE_54M;
 
-				if (uFragIdx == (uMACfragNum-2))
+				if (uFragIdx == (uMACfragNum - 2))
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
-- 
1.9.1


