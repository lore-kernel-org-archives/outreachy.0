X-GM-THRID: 6807924039035650048
X-Received: by 2002:a19:f606:: with SMTP id x6mr1046894lfe.44.1585352717290;
        Fri, 27 Mar 2020 16:45:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:91d5:: with SMTP id u21ls2558403ljg.5.gmail; Fri, 27 Mar
 2020 16:45:15 -0700 (PDT)
X-Google-Smtp-Source: APiQypLp48lUD97u3qI+XYFyfghY5a+WSBwDIwyUcCc62Y3V0M+TmDrdLtSwH5TEVd0fwDp9jqXX
X-Received: by 2002:a05:651c:2c7:: with SMTP id f7mr787057ljo.152.1585352715794;
        Fri, 27 Mar 2020 16:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585352715; cv=none;
        d=google.com; s=arc-20160816;
        b=VV5j2FtSuBVQMcpEQOSOea+W/LMYj7qdum8n3XQlHN7G68ob/YQDFr9aLC1ae4alMw
         n6LLihnq4UTCZwdY+lZqXsfZU9FpyydpfgLsSkiZoGoh61yoCC7wlKQyOeBvcLYT3NxN
         MDXARpaYgRqMt4p/GADBPL91EwuLSgB6DH2lDqBM348IIsRasa6nw9j1cAHMutOniv7i
         Z9q+Jv+eM9z9T0EtJYyNk2JqrfQf5L7MZV+szUWE7+7wMZBi2DQ3IZg6rUY6SS8oAQDV
         qqJ35o4k56fiUZc+xfpy6MSF5d9w9ruFiO/WLFZdlNJhoMKHg66oZvG3ooSS4fJ0so4U
         5cnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SBczSG4lK/fqKaOZPzlzr3AqB5kjKGlQQdk6GGbVsng=;
        b=G8B7/3nXSiosw3J8twukHWhS9m4g7VFx/1+OvfFDR774nzXkIM3OJ3CI//GlYtRN5r
         hz/OTbdeT9by60UXiSZ+bH60c56R6ReoMIJmPAORnSJbA5NPNzsvwJBIuaQKFTqF1ITK
         EzOToWZg5g2ZE/wROd7FBKRy4kN232nNprmkcbb6j65MkXvQPhb0XbfpbhpQWsdKvKyN
         rAQBS6+OBjg/laKi6Jq33aSm3Be0fWnmQ3V4P0e5btcAa2g/IA/Iuq3uUX7/51VWohtf
         AxqtBRCyr3lPs4c9IwyDKhJuPjF/KngzY4tXcbeC7nJa81+KwUoo85E4oAjK6LvzG7jq
         Ov8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X4WQSP6d;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id s17si485211ljm.5.2020.03.27.16.45.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 16:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X4WQSP6d;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id q5so9262767lfb.13
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 16:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SBczSG4lK/fqKaOZPzlzr3AqB5kjKGlQQdk6GGbVsng=;
        b=X4WQSP6dKm1XlU7wMxGBv3M1KgddyehHNWjYBomOjZwgc189zqR1BTRM0glW89QWPR
         N+n6a15pnIJ7HBVApiieztotQK9Rer8waqUL0k0C5YQYGjVKSZiD0kdGnvaF/uD8p90P
         YQOYE3fEA+zX/TL/YMvw3d3NlgVAr6FU1rJ5TPZ4vVDFRFMBb5y/sW7wF8oCSqcP2XiD
         XU6CKXDpbVKtmhrpi0CUaP3ldhApF5q5ESZhhLlvozJlrlpSaxmmjhxRrKXayQ3KYBsE
         2dlvs/B8/HPiq3ERnWEJVGe7X75iaR6xz1TIW64ku2BTb50/GOPIuGtjZ92OKNIcEXj5
         5EsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SBczSG4lK/fqKaOZPzlzr3AqB5kjKGlQQdk6GGbVsng=;
        b=bcyfIcouYvuOZJ5wuvZU9wCVWhbyIBMvHRdHykPHO9gC9KxuYAW0+i+/Vi3gt7GjDu
         CJ9kYJvPQ42ciJcRpVvUJuJYUmVthcTPjTzP/Z99uYQZM64BQfDMP8cjOB14MzZR8Km3
         I0mWB6xZaCnWcuA9QZOSHpYlB+F3XePntjSwKP90HAsniph+QVEmFPq+d8RcoYsz27PJ
         oMDJpve1rdWC5vQ43zkd+YEJ8V0XBc+85s0x0rHBS9WLVKegvcECSyo7di+KP96fUbhT
         lsu/1g4zsTYSVti4eAZ4FrtShKNFtv4O/2kdEQntn+lgeESm+acV6j1xo1/FG6S0i2cl
         PYhQ==
X-Gm-Message-State: AGi0PuZYwbhemXb13NSGkWHKhqo7IMS++hnDXUOVFG0g8CgxvXufg87Z
	t+JKHayYa1i/czcL36oralKxsV6VKl4=
X-Received: by 2002:ac2:46ed:: with SMTP id q13mr1062411lfo.176.1585352715576;
        Fri, 27 Mar 2020 16:45:15 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.149])
        by smtp.gmail.com with ESMTPSA id i190sm3640913lfi.7.2020.03.27.16.45.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Mar 2020 16:45:14 -0700 (PDT)
Date: Sat, 28 Mar 2020 02:45:13 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net
Subject: [PATCH] staging: vt6655: line over 80 characters
Message-ID: <20200327234513.GA11857@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move to bottom lines from comma for 80 characers limit.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 85 ++++++++++++++++++++++++++++++++++---------
 1 file changed, 68 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index e91d320..dcc8fd9 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -968,50 +968,100 @@ s_vGenerateTxParameter(
 			/* Fill RsvTime */
 			struct vnt_rrv_time_rts *buf = pvRrvTime;
 
-			buf->rts_rrv_time_aa = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, wCurrentRate);
-			buf->rts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 1, byPktType, cbFrameSize, wCurrentRate);
-			buf->rts_rrv_time_bb = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, wCurrentRate);
-			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rts_rrv_time_aa = s_uGetRTSCTSRsvTime(pDevice, 2,
+								   byPktType,
+								   cbFrameSize,
+								   wCurrentRate);
+			buf->rts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 1,
+							           byPktType,
+								   cbFrameSize,
+								   wCurrentRate);
+			buf->rts_rrv_time_bb = s_uGetRTSCTSRsvTime(pDevice, 0,
+								   byPktType,
+								   cbFrameSize,
+								   wCurrentRate);
+			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice,
+								byPktType,
+							       	cbFrameSize,
+							       	wCurrentRate,
+							       	bNeedACK);
 			buf->rrv_time_b = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, pDevice->byTopCCKBasicRate, bNeedACK);
 
-			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
+			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize,
+			               bNeedACK, bDisCRC, psEthHeader,
+				       wCurrentRate, byFBOption);
 		} else {/* RTS_needless, PCF mode */
 			struct vnt_rrv_time_cts *buf = pvRrvTime;
 
-			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rrv_time_a = vnt_rxtx_rsvtime_le16(pDevice,
+								byPktType,
+							       	cbFrameSize,
+							       	wCurrentRate,
+							       	bNeedACK);
 			buf->rrv_time_b = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, pDevice->byTopCCKBasicRate, bNeedACK);
-			buf->cts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 3, byPktType, cbFrameSize, wCurrentRate);
+			buf->cts_rrv_time_ba = s_uGetRTSCTSRsvTime(pDevice, 3,
+								   byPktType,
+								   cbFrameSize,
+								   wCurrentRate);
 
 			/* Fill CTS */
-			s_vFillCTSHead(pDevice, uDMAIdx, byPktType, pvCTS, cbFrameSize, bNeedACK, bDisCRC, wCurrentRate, byFBOption);
+			s_vFillCTSHead(pDevice, uDMAIdx, byPktType, pvCTS,
+				       cbFrameSize, bNeedACK, bDisCRC,
+				       wCurrentRate, byFBOption);
 		}
 	} else if (byPktType == PK_TYPE_11A) {
 		if (pvRTS) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
-			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 2, byPktType, cbFrameSize, wCurrentRate);
-			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, byPktType, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 2,
+								byPktType,
+							       	cbFrameSize,
+							       	wCurrentRate);
+			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice,
+							      byPktType,
+							      cbFrameSize,
+							      wCurrentRate,
+							      bNeedACK);
 
 			/* Fill RTS */
-			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
+			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize,
+				       	bNeedACK, bDisCRC, psEthHeader,
+				       	wCurrentRate, byFBOption);
 		} else if (!pvRTS) {/* RTS_needless, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
-			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11A, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice,
+						              PK_TYPE_11A,
+							      cbFrameSize,
+							      wCurrentRate,
+							      bNeedACK);
 		}
 	} else if (byPktType == PK_TYPE_11B) {
 		if (pvRTS) {/* RTS_need, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
-			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 0, byPktType, cbFrameSize, wCurrentRate);
-			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rts_rrv_time = s_uGetRTSCTSRsvTime(pDevice, 0,
+				                        	byPktType,
+							       	cbFrameSize,
+							       	wCurrentRate);
+			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice,
+							      PK_TYPE_11B, 
+							      cbFrameSize,
+							      wCurrentRate,
+							      bNeedACK);
 
 			/* Fill RTS */
-			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize, bNeedACK, bDisCRC, psEthHeader, wCurrentRate, byFBOption);
+			s_vFillRTSHead(pDevice, byPktType, pvRTS, cbFrameSize,
+				       bNeedACK, bDisCRC, psEthHeader,
+				       wCurrentRate, byFBOption);
 		} else { /* RTS_needless, non PCF mode */
 			struct vnt_rrv_time_ab *buf = pvRrvTime;
 
-			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice, PK_TYPE_11B, cbFrameSize, wCurrentRate, bNeedACK);
+			buf->rrv_time = vnt_rxtx_rsvtime_le16(pDevice,
+							      PK_TYPE_11B,
+							      cbFrameSize,
+							      wCurrentRate,
+							      bNeedACK);
 		}
 	}
 }
@@ -1183,7 +1233,8 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 	uDuration = s_uFillDataHead(pDevice, byPktType, pvTxDataHd,
 			            cbFrameSize, uDMAIdx,
 				    bNeedACK, 0, 0, uMACfragNum,
-				    byFBOption, pDevice->wCurrentRate, is_pspoll);
+				    byFBOption, pDevice->wCurrentRate,
+				    is_pspoll);
 
 	hdr->duration_id = uDuration;
 
-- 
2.7.4


