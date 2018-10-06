X-GM-THRID: 6608897994052861952
X-Received: by 2002:a62:23c5:: with SMTP id q66-v6mr6871047pfj.50.1538825405003;
        Sat, 06 Oct 2018 04:30:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:c90a:: with SMTP id o10-v6ls2155118pgg.19.gmail; Sat, 06
 Oct 2018 04:30:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62OGLLvrOhpwS9RSRyEtt7XciHOMIuyJrKaQBnjWE84NibyUCElUBlM/ksuf8hKDQ6sARWO
X-Received: by 2002:a63:f707:: with SMTP id x7-v6mr6248731pgh.71.1538825404211;
        Sat, 06 Oct 2018 04:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538825404; cv=none;
        d=google.com; s=arc-20160816;
        b=gUT+y0gkuGmK3i6MTfgNrLmc4S/TW5dsE56jogztTUWTDqkj6+Udy0yXQTyJzvV+4F
         8+bgvY0nBFue8lj9u3kashHQ63DS4B0I2wTe3PYKZux4E0d4Wt+TLJ5/g9RIT1TZ+8E/
         2N9axPZoj4z1VAljhFWQ7YyUJrDVMYdeSRQaOxIfujPsTukp5cERX9uy/sdcRqNjz9yP
         oA2cQ1sO2tbCCrlRr4bP0CooEuT9PeAWssCA8QU9U5Lhc/ER31EBI69ZD0WfNPjsEpIn
         vwvDJK5rrG3Mbimrenib4sZYOjben3uJB7CSt3FEw8Z4QBTESEvBg24kiMEamJLLHiLM
         PR/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=o49Dtl4mHJQhWSx1Y6kg8lrF6NkRYOdSPS+fOfw431I=;
        b=FABET9mGKrCXLVyIscCnW/zamMBZT5nUBzEUfEC9gO91lTDysOnM1M1pMcqfvyIdNW
         pJp+FjBtrj2fZd+UNWqnhjwE8VyOFWWJEdHtfmlOYMMoaH/8B4EhoQrR2fe6KItGYTKA
         6n05wrkXpyB0a5HgOjPVfdg2RwHC2ZQtp6x2K2f309jAAC98+d4U4xy+GDCMhxG4A1Yy
         s29PFmISToElpVghPVXsGURfvOhG3wh3rNP1Yc6hOcNWGsvaG+kakYN7I7H7UZTv8Gax
         EuUsZsMqgLrNobhySvVKKcWycLXg0HOe9FB0vAye8tJy9ZQ092XBDxvqbfBbLQAttFfO
         PoCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eN2zB4bq;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v186-v6si543490pgb.4.2018.10.06.04.30.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 04:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eN2zB4bq;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id r9-v6so5839976pgv.6
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 04:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=o49Dtl4mHJQhWSx1Y6kg8lrF6NkRYOdSPS+fOfw431I=;
        b=eN2zB4bqltPfa6gkvjH6/4tuj3ckv6XTeCuZ5mFEXTtvmaA7xBkICaF5wj4ESb4GQ/
         fylkDWIj7axIcOQOCK/mcNuvPJ4yE+AzsMQ00tsvv0owrmsgx6JlSRpAhLMGAn5S/T/g
         dBUC6jXwUF5GKvxnEfySAwe+mWwJymDh+6CACSrpZQnJm1IsvnGN00Fy0XPrMOmW61kS
         YE86sqD3BvwzSynYnqKO8O7b++XJ7CdBRg1rCU4W5WVYXQkPZ6syDbzTXtuuzimIy9UM
         6FrVPsJ2tM15pgTwvkNtPVya8cRg2gWiqjk3HjZiVVYZllqMm9qDju28psd39c/+n69u
         SKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=o49Dtl4mHJQhWSx1Y6kg8lrF6NkRYOdSPS+fOfw431I=;
        b=cSuRnFHft72xT8lTQ7DltlZmDiA9XvS2Rxhq6cofJjH9EfDIqFmNLEVtOSokbei0TV
         9sjLIIiF/MTrUGDiIdobpDW1WGeUppXV+pJo3UalFMOvDIb1ylXNIxc8XVf3OPM3L0I7
         nuZ0RfdCQu71q3lGAx7p4D3CwB8UJ5CqTU6Wv+pYQFtLykl8HWtPBc90ZWRNJBph24I7
         32TtUQlE3EN6iEhj2aD/8o7Rr9W/pZrZ15h7ngrZKXLN5RKVsGbjqAUk5BZrjOpM9dl9
         AasU0qWiCREqGJGDDKJRJazj4gGHDbgv5XeDyI6X5+ea68hSw+jAC3lI2sTmoPUw5+FF
         ueVQ==
X-Gm-Message-State: ABuFfohKZXA2dPRFVBBZK0ItjoFM4dl3su/c6/UNZv0F3RzmrHMxzbTq
	wlRf0OstfZuROtn0K2+IyAk=
X-Received: by 2002:a63:2ad4:: with SMTP id q203-v6mr13384781pgq.356.1538825403708;
        Sat, 06 Oct 2018 04:30:03 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.64.93])
        by smtp.gmail.com with ESMTPSA id y1-v6sm19503517pfy.89.2018.10.06.04.30.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 06 Oct 2018 04:30:03 -0700 (PDT)
Date: Sat, 6 Oct 2018 17:00:00 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH v2 2/3] staging: vt6655: Add spaces around operators
Message-ID: <eb334e41286c10e2350603e2de51da22255aade6.1538823377.git.mamtashukla555@gmail.com>
References: <cover.1538823377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538823377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '*' and '-' to fix checkpatch issue.

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---

change in v2:
-Merge patch 2 and patch 3 and submit this as 
a new patch in this patch series.

 drivers/staging/vt6655/rxtx.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 8ae9c68..1eb8cea 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -213,12 +213,12 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 	} else if (byRTSRsvType == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-		uRrvTime = uCTSTime + uAckTime + uDataTime + 2*pDevice->uSIFS;
+		uRrvTime = uCTSTime + uAckTime + uDataTime + 2 * pDevice->uSIFS;
 		return cpu_to_le16((u16)uRrvTime);
 	}
 
 	/* RTSRrvTime */
-	uRrvTime = uRTSTime + uCTSTime + uAckTime + uDataTime + 3*pDevice->uSIFS;
+	uRrvTime = uRTSTime + uCTSTime + uAckTime + uDataTime + 3 * pDevice->uSIFS;
 	return cpu_to_le16((u16)uRrvTime);
 }
 
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


