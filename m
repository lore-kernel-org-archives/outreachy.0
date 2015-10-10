X-GM-THRID: 6203951800553308160
X-Received: by 10.50.114.2 with SMTP id jc2mr3313243igb.5.1444470193461;
        Sat, 10 Oct 2015 02:43:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.215.162 with SMTP id oj2ls905597obc.15.gmail; Sat, 10 Oct
 2015 02:43:13 -0700 (PDT)
X-Received: by 10.182.65.134 with SMTP id x6mr15019586obs.14.1444470193190;
        Sat, 10 Oct 2015 02:43:13 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id uv4si702766pac.0.2015.10.10.02.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 02:43:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so108905979pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 02:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=V5eUJtclbYB7yIro3z1WyKXxu208YuLZET7wf9tgUag=;
        b=FGCCLaXzekekldiK6s95wF7/W1wz0XguIsrNeuDoZBAFLPIOUKnIwRBz2BBGQjTvDL
         /aKc1eynQWd0gbIhahoGtl8Pqf8sVS2HY+2+g8bOeknVPhX9LQkUh4+CUs9eZrEoPQ3Q
         s1TY7u9j9CZFLpW97/lWTe1uaQ7oszfi6G2G7rBZueqzVz4xD4ifR7wtB62q0/fg1lds
         06jib9gTvP9lKefjcATP0o/Mja0ChvXHqJPzSziAgGJSVnXNcrbo0YPHTKGS8YSroqyL
         EEDtOz1dfc8aI08+c2Tj61xSl//yVaqmgK6BhkBLKlYsuswSTigdy9tA+quDil8UB7sj
         viZw==
X-Received: by 10.66.119.135 with SMTP id ku7mr21027613pab.21.1444470193069;
        Sat, 10 Oct 2015 02:43:13 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id es4sm7153867pbc.42.2015.10.10.02.43.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 02:43:12 -0700 (PDT)
Date: Sat, 10 Oct 2015 15:13:01 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] Staging: vt6655: rxtx: Remove unnecessary parentheses
Message-ID: <51568e63d435c09f0bda2a066d3bf15d8db38a8a.1444469447.git.shivanib134@gmail.com>
References: <cover.1444469447.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444469447.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove extra parentheses around if test expressions.
Fixes checkpatch warning : unnecessary parentheses

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Make the commit message better and clearer.

 drivers/staging/vt6655/rxtx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index a909128..3eb8f29 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -566,7 +566,7 @@ s_uFillDataHead(
 			return buf->duration_a;
 		} /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
-		if ((byFBOption != AUTO_FB_NONE)) {
+		if (byFBOption != AUTO_FB_NONE) {
 			/* Auto Fallback */
 			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
@@ -1008,7 +1008,7 @@ s_vGenerateTxParameter(
 			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11A, cbFrameSize, wCurrentRate, bNeedACK);
 		}
 	} else if (byPktType == PK_TYPE_11B) {
-		if ((pvRTS != NULL)) {/* RTS_need, non PCF mode */
+		if (pvRTS != NULL) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
 			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, wCurrentRate);
-- 
2.1.0


