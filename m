X-GM-THRID: 6810515093003960320
X-Received: by 2002:a65:6712:: with SMTP id u18mr24045024pgf.93.1585764239544;
        Wed, 01 Apr 2020 11:03:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:3087:: with SMTP id w129ls251873pfw.1.gmail; Wed, 01 Apr
 2020 11:03:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtmaCXKomcLXKKtSzq+euIyBzQIMLoX+Fcvtfw16ZdeT2XxlbvUafOr0uU2U5iU/Jm+EsbV
X-Received: by 2002:a63:3505:: with SMTP id c5mr23802684pga.347.1585764238020;
        Wed, 01 Apr 2020 11:03:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585764238; cv=none;
        d=google.com; s=arc-20160816;
        b=EKZisyOra+ZcViNT2wQ11n0rKbeGPkE/0YccU+gmJ+yNQUUJlmldM/hnDQGoY4yake
         jQSY5fY12i0LhSTSuo9IFhIAK5l0rlunzrDWBtffPO5NLUfa8BeVRBIM6Jsfja6c6JnT
         o778l02DZ3aX4CcaaipSEUWSfBEIDokcy3yHZFQ5gooSb2U9wtzm6D6QD5bnyNLz2Mjw
         t8w4ucF5xITE1SdyfAKLF41iy7yHKppRPKMEC0A4YrNofzwRrS+sRdpF0PlMsmb9qFOj
         0szF95RZn/MQAXbDf/520jzCbWpYZqNwwF50NvomTKNknBRo5SulqjtGVy7i0aUIIkqn
         NPtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4w8rdv5UzTbw/JzX2VEVaxctMS4PwZybG9tssy7iXSA=;
        b=cJBNRdJvefdvrXH1FXTSk+GzZBou10NZ0C6PIhcVHe+MCDoqMRL7RmzhQtOiTvFo3J
         GfurtVvuZ5pz35tD8cyo33IRh3/OvxWgpcVHmiHjmBo04a6F6VTWTKPPh1XDAhESK7qh
         Pv9w4CrbWo55xHEQRTDVnGDfn20p/0+gtQsE917DWp4hWrhKoeGwAA5Q2onRjQk2EXbT
         /6RteqOzOhu82h5KR/Ail3qRYr5LQSHQQedE9Im7ZbA4JaHOCnAkwlfNSqHFXbqNMMbX
         J799kkarPJDr90QPA39UxB7SoixHyv4j1yAygfWj4jPzfG2I3EfndhBImHRYFfDrjY4/
         xdlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K5m0cn6Y;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id r76si139609pfr.2.2020.04.01.11.03.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 11:03:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K5m0cn6Y;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52d.google.com with SMTP id d17so491876pgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 11:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4w8rdv5UzTbw/JzX2VEVaxctMS4PwZybG9tssy7iXSA=;
        b=K5m0cn6YIwo5VMhAt+306Azth37YNGkqW8wfiP0MzdMl67n+M7ESiudgnq0KSeigyc
         qvYR6SOI/WbPV5BQWnITpMVAZ9/goy8vcAtsZDJieFCKkn6H1Lo3qJdhadAQG0FKYr7S
         +RBtMx28xzKEgJrrfgE3lvCymLzyDEoekf22p+ROnkaOx8KkNgolZKdbb53pXoQ6FqlC
         rX0Cj5uLd1rdEdDGYNmfFl4mMGPCSt/dNctuH8q6ThJZi+h0BsKj9HZgZJn/tI2MRF5f
         MJo8lNT/muQMldWJIg7gbWIVUct5rIl0l/juRR+ePlAJSvfTdJ4LS+5SFNznFvJB83Og
         RoXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4w8rdv5UzTbw/JzX2VEVaxctMS4PwZybG9tssy7iXSA=;
        b=SRAbH96BF0HbGL2B2FoFdkgyThecDNbzVqEM3lcQAPxpcgZYENPg7k05z2TDR+gPOZ
         foQyk4Ia93D9Xuhbw/WxYleLOrwurZbedNPn8BUyVsUvOEwfjmtlgWu+jKxJIcQahdGs
         2wj3c8xRlFIDz+JQBzr2dA1H5tS4NYSwkNSQCfeEgskTDtHi2yfD0hb+WfHuBwGwnYVi
         +EnQwQfpedDTVQsRGEBaLsB2YNFL4cBC7tyA1tdFKhrqbVqOwybAtOuxvFyC6+n8K6jt
         InOmip5KjOsKOxwLReepD/zzlNK52BPWuOyt5AS4+WJGRPQnht6H6b7FfKtA8fn0880s
         aK/A==
X-Gm-Message-State: AGi0PuY8pbnSSemZNcz3z1m5ElRoNX5XQCE4Ti6bM7qoFdyPLsuMa62n
	mmqT0g7MDuXoePt/sw4xp7kh+SnsIHhBnQ==
X-Received: by 2002:a63:2a97:: with SMTP id q145mr10075299pgq.22.1585764237684;
        Wed, 01 Apr 2020 11:03:57 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id ci18sm2131896pjb.23.2020.04.01.11.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 11:03:56 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	julia.lawall@inria.fr,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 4/4] Staging: vt6655: Format long lines.
Date: Wed,  1 Apr 2020 11:03:42 -0700
Message-Id: <e1c9fc822f1576f9896799fea6c467457cf0f6da.1585763457.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585763457.git.briana.oursler@gmail.com>
References: <cover.1585763457.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add whitespace around '-' operator and wrap long lines. Issue found by
checkpatch.pl.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

Changes v3:
	- Add curly brackets around if-statement.

 drivers/staging/vt6655/rxtx.c | 51 ++++++++++++++++++++++++++---------
 1 file changed, 38 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 0548c48385b9..f142dd26f111 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -261,8 +261,11 @@ s_uGetDataDuration(
 		} else {/* First Frag or Mid Frag */
 			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
 
-			if (bNeedAck)
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
+			if (bNeedAck) {
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopCCKBasicRate);
+			}
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
@@ -276,10 +279,14 @@ s_uGetDataDuration(
 				return 0;
 			}
 		} else {/* First Frag or Mid Frag */
-			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
+			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
+						       wRate, bNeedAck);
 
-			if (bNeedAck)
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+			if (bNeedAck) {
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
+			}
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
@@ -299,13 +306,22 @@ s_uGetDataDuration(
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
 
-			if (bNeedAck)
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+			if (bNeedAck) {
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
+			}
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
@@ -325,13 +341,22 @@ s_uGetDataDuration(
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
 
-			if (bNeedAck)
-				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
+			if (bNeedAck) {
+				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
+							   byPktType, 14,
+							   pDevice->byTopOFDMBasicRate);
+			}
 			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
-- 
2.24.1


