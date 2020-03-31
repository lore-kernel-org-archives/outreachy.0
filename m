X-GM-THRID: 6810515093003960320
X-Received: by 2002:aca:c608:: with SMTP id w8mr945025oif.163.1585696617374;
        Tue, 31 Mar 2020 16:16:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls9295275oib.5.gmail; Tue, 31
 Mar 2020 16:16:55 -0700 (PDT)
X-Google-Smtp-Source: APiQypIs62vpt6v/pFZ7quLWJW5iS4Cf/QPPNBnrThqhokJBsfjKpE+xdlMdE07gr8f1nLSUFT2D
X-Received: by 2002:aca:c7c5:: with SMTP id x188mr963365oif.130.1585696615689;
        Tue, 31 Mar 2020 16:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585696615; cv=none;
        d=google.com; s=arc-20160816;
        b=HOhBZNM4MNFgCa8H9sKo7U5hUJOEXGRqaPkvDTyAlxoavjPpkmEIUOzD38aXuEJvFL
         imTMQSp3yq7xmvWIKW8ay5xpXR3pPc4ee/ciHq6ZSFHsyiZQ2nBbYijrSKlW4O+OsNqz
         vlK9NHZAmc1xY28BDFlEVkoxb9SKWpmmhrB1z/LOkDhqriqlu6SzF+A2aVtUiKlbYBAR
         tJ32eJvh1sIzoSQXAKvnc1qyzAASkSkathF4YWPHgX6txmTLzHV6Mt2XKZ5+gT+6G3GW
         I9qWTXXiZxuOgnxRQmG7rTgsTm47+rkYShoPHuRtyniFDDKKhP+GNL/eU2ycis4G//2x
         wZNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=h7deIcdclpRVvNuVGYN2WRt+o+QSDqccuF1him2vUgs=;
        b=iYCKRmtP1aztgpatbmVzhY7fESO98jqDRfKAtj0Keqe7nE65QPBKJDWUYOLEJFgs6G
         PAktHgllkv4gWXQQGcfK8bpUBgf1gT8s8R7ZMQoq1UHRTw6xSkyqizKQY0WpOT+hL1Og
         PE7T14FVmchTDyXYzojk6wLBF6BvF4v+s/0hUtv4mfmcqWLTb3PAN3thK42tBHPhUe/N
         Ux34czC8AhfoiRLL22HclNmEvKyhqfI6PvmIH6MXlHZzJMPsDWsy8IdJrgTwmGoh0JIw
         g19WPlaMVmPIfOXqO+Iuemf63PAriZn+hRORZn+b+e2hfjoeCu5N/vsQjEuqS2Y+bdNK
         DiLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gU0GVl12;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id d11si25026otk.5.2020.03.31.16.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 16:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gU0GVl12;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id b1so11116893pgm.8
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 16:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h7deIcdclpRVvNuVGYN2WRt+o+QSDqccuF1him2vUgs=;
        b=gU0GVl12xK+9NYR7FYno7NfirvNAS/fxsrDwV+8ElIUycgKLIuHISUgZgj2oYS8zKe
         5Ey8kvv5TUkZnnT1U/6/QnzrX/TCzUsxzmDkQF5/CJ31T3viT115ib10/yZj+qZmU4Bu
         MXl+jLJB4y1zaHN5Rk42HjMxN5/wIlGngtNzRUUQ4LPyN+0FTTVK4v2GuLpIidghxvxp
         bjqLsfQ1joMosjzCrvN6txvtjneSgkZ0RiQYYyfH+ZXYAfRjqjAc6x7wCYSeedWju7vn
         x+vOHwSG9+xKhWAE5ZGJGs5x7YzfB2MitU1vzyZwbCfO+TTya3kx3yWnKnB119FR0g7J
         kE2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h7deIcdclpRVvNuVGYN2WRt+o+QSDqccuF1him2vUgs=;
        b=idQU7AUkygoacqMVdch+FNh4MLK8mPxamedlHcqcbZ7bCCycjKrMIX/5Gxtw48ethI
         0ofnVRTYiXgWmjTDfQXg7LXHt5UHfbNY+Oq/k0aAQGLnxzrexa4ds3ldSF0GTM2Fkzqh
         /3bLgnYU5NcvB88W1O8l5cvX7IvnD7izu7nHwCo2cGK6cwfzdOO9Mya/Hc73kySivUha
         MwfXaQhj/XoKyPVYw6BZjjYtn19fke/6R81jLVPANpuCWPlfaNs74qWTqcsn4wmr25c+
         dMxgTD6wdnSMIqt/5aWUVwrqX+LN+xjt4vne2wElukeKFZdOPrR4vEOTkOlJ7MeoyetF
         247A==
X-Gm-Message-State: ANhLgQ1ylNv9aG+HUZ2eojHITUnGjfDJZyRekp4vCnvjWUOv/JLXsZPk
	dmmpL2NVn7qHRf4oCnOkWEs=
X-Received: by 2002:a62:687:: with SMTP id 129mr21546902pfg.209.1585696615209;
        Tue, 31 Mar 2020 16:16:55 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id b17sm180529pff.81.2020.03.31.16.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 16:16:54 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 4/4] Staging: vt6655: Format long lines.
Date: Tue, 31 Mar 2020 16:16:46 -0700
Message-Id: <75ceb6161a835d51bf9da1ba4f7b04173fa9fe7c.1585694821.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585694821.git.briana.oursler@gmail.com>
References: <cover.1585694821.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add whitespace around '-' operator and wrap long lines. Issue found by
checkpatch.pl.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 39 +++++++++++++++++++++++++++--------
 1 file changed, 30 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 27f4b710baea..2ca7acac88d6 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -262,7 +262,9 @@ s_uGetDataDuration(
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
 			if (bNeedAck)
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopCCKBasicRate);
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
@@ -276,10 +278,13 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
+						       wRate, bNeedAck);
 
 			if (bNeedAck)
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
@@ -299,13 +304,21 @@ s_uGetDataDuration(
 				wRate = RATE_54M;
 
 			if (byFBOption == AUTO_FB_0) {
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			} else {
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			}
 
 			if (bNeedAck)
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
@@ -325,13 +338,21 @@ s_uGetDataDuration(
 				wRate = RATE_54M;
 
 			if (byFBOption == AUTO_FB_0) {
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			} else {
-				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
+				uNextPktTime = s_uGetTxRsvTime(pDevice,
+							       byPktType, len,
+							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
+							       bNeedAck);
 			}
 
 			if (bNeedAck)
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
-- 
2.24.1


