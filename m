X-GM-THRID: 6204471677993091072
X-Received: by 10.68.165.5 with SMTP id yu5mr20887133pbb.1.1444591186537;
        Sun, 11 Oct 2015 12:19:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.213.6 with SMTP id no6ls1201945obc.23.gmail; Sun, 11 Oct
 2015 12:19:46 -0700 (PDT)
X-Received: by 10.182.191.34 with SMTP id gv2mr21088102obc.40.1444591186178;
        Sun, 11 Oct 2015 12:19:46 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si1267720pac.2.2015.10.11.12.19.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 12:19:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy16so133674073pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 12:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qQt6kzNXbUzuL9hRzOHIXLTYODpuzufJ5qXEM+s8cmQ=;
        b=UD3OmdpfQOGh4+76Bp5YQnYp0O+6B0DmUZ5fqMpmRqXHljdsqwfRVIxF3txV9heLAV
         AeSVpBHpCN87KIj1FdNZVCkUWPhQnatvrnlrGM/hRaklO6vflk2aPJ52CkqH7qxA1ZyJ
         COOriy1msQBr8kyhl25x9cUaDwBk7EgtutZH/C6OkSi9dpmFruYK2O4uEFbBYfXyMF1L
         bTkMG9UrNnBoAR+bY2XGs129CkmIX/nyykdKgkwY6Qa4OwJIEZbfibhWvFKxjDDtZzyI
         UQACXOSwrqI8DJ3HoEwr3dxdofg22VVjccn/qBApLWilqcANHhcpBJGgezGAIy+DElGb
         Rnpg==
X-Received: by 10.66.136.39 with SMTP id px7mr29380350pab.23.1444591186066;
        Sun, 11 Oct 2015 12:19:46 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id dt1sm13918991pbc.96.2015.10.11.12.19.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 12:19:45 -0700 (PDT)
Date: Mon, 12 Oct 2015 00:49:34 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] Staging: vt6655: rxtx: Remove extra parentheses
Message-ID: <3548df77fb2d76f1339c4088e3d59125a1cee9b7.1444590771.git.shivanib134@gmail.com>
References: <cover.1444590771.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444590771.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary parentheses around if test expressions.
Fixes checkpatch warning : unnecessary parentheses

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v3:
	-Make alignment of variables better.

 drivers/staging/vt6655/rxtx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 0c1f6a1..b668db6 100644
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


