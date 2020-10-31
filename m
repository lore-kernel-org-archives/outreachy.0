X-GM-THRID: 6889706616955863040
X-Received: by 2002:a17:90a:bb8d:: with SMTP id v13mr7503437pjr.181.1604134847564;
        Sat, 31 Oct 2020 02:00:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd95:: with SMTP id q21ls3938422pls.5.gmail; Sat, 31
 Oct 2020 02:00:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXIwBt661I00J7hmKDqMxskIzLWy2buVFH+YPrgWzT97i1IOiF3D0tteo4kWU0+KrOO/tG
X-Received: by 2002:a17:90b:305:: with SMTP id ay5mr7586160pjb.129.1604134845992;
        Sat, 31 Oct 2020 02:00:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604134845; cv=none;
        d=google.com; s=arc-20160816;
        b=CrKBzY8FqR7FbGR8QA+kglcR87w2SK5deWZM3ZfVQxQ939EWm6Cs7MyfZcjJ4zs+IA
         ZPWlxSMzdsy7ej5GHx+hxOoX+yCvjriSeqEy2ft1T5tH0dEqsBQ3O7gjhlA2sVa7hW93
         wBLH5UjCtHfAjdhHkfmjImcEdrc4afL/G5YhxetRXRGq0lX2r87lSQBZsTXfuU9FOBWf
         ShqYxK8QX2G6js5KC8rlp5RPy6fYqnOkczFuHujM61f6BHnVAk0Gx6kLs58m5TY3K7GC
         apXLzhtVMB7T2OVegzfGLl7qfoZJDBB+9vFb04S7KrDvFEseKlws4xfTjYEOs2HwNhYQ
         4v0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=0sUeiItyQ9f8gG1gr5wGpUzTkeD8M+bhNCEPqlVyPXo=;
        b=GqWk0Ppd97Uxv/0+SMn0ZcAjKqW/HrIT1B1voWQPR9hNgSzyLNBpQYEZJBSvhRl5Wq
         D8OWNIbUR6d1xiJngM8wiXqbdz46Avnt6/eW/s9gFwDOqlwnwFweij1E+PgFYJmjhXkt
         D9+G1TJVRwNC8hxMF28j2PMxFUlgpvVgZcgcjaIsSWtpckWPdeljK41uL8VrE69fBQe0
         XRhk6yekJLTwPzeDl45P8+ZvrVMqTLy2ZuQkC4Gt8LAbITw8RLtKq+cykNPzBvRPlLHu
         iLVnHNhehuWJZzAG9v0v5Xl71vIrD/9fahOtSR9GjuOPeoBHXv9qS6eLHmNT/l7KQeg2
         fekg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B+PBwnFy;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a22si111605pfd.0.2020.10.31.02.00.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2020 02:00:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B+PBwnFy;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id h4so587944pjk.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2020 02:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=0sUeiItyQ9f8gG1gr5wGpUzTkeD8M+bhNCEPqlVyPXo=;
        b=B+PBwnFyyxtWvLoDfFc8vbuNLzq/YSNFnivPWhCvfs9DBhgdF2nVEb9sTtwaayDDut
         a1evUSYxXAPJ/ZTJpBTWaM+gNGo5i5c2xPFni6+gtK1XPixLr3ufNeCCMQIbKvnCIf46
         Qa5eRYL9VmM74ZkLtUh6Kr6yaaDm1FiJqeIoXZ2wwyaeEwqo2K2piA0ZhqTBLF7rQrtY
         vUnBv9fuewNkf1AEITLfQZU7nPaqbgb9DhDXditsmpm6zCl62GTR5BP/aTN/bcVcQ1vx
         4ntdDWmIgAwns3qlO+XFNPUh5aVLFTQt56LjjPzga7NTWGVXxvRcUh4+i+zitv7yyUtu
         lrEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0sUeiItyQ9f8gG1gr5wGpUzTkeD8M+bhNCEPqlVyPXo=;
        b=JCayKXIB2RZImTx/N/rmGPqthLZBTyEsi3YRu9UnDcG/Eq/8UMl4b1WpKyQyFic0sd
         9QGphFYhsFfz3icwzftjHV6bCFwSLw8siH7uQ68GjnnwPvlm+9VQhOCsbGRtFyTPGQyZ
         e37bHQPYta3TjPTb1jlz+dKFPT04kmerxlQ4SKw3vHGCc0HFs9lwGn4QorVkE4TBYa3x
         D7HnBdP9sibwnq+GDs64E5lS5Wm895ZvLGwdSqi4w5K/p6sbITZzvgto4c/TvB92YsWH
         eknyPh4E06ZPoRz9Ema+gkNaC3XZtRsEuJEu0l7j7elB2zduN5VOpeEqcvH7afLCZ0QF
         sbwg==
X-Gm-Message-State: AOAM5335heDky1GVAH6iIt8H4hIqUgOBbVWWa3Eb3e3WNtCz+3UxcP1R
	UP2DARXRz76IgOwgN7KhQok=
X-Received: by 2002:a17:90a:5b02:: with SMTP id o2mr7104220pji.221.1604134845696;
        Sat, 31 Oct 2020 02:00:45 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id ng7sm5734332pjb.14.2020.10.31.02.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2020 02:00:45 -0700 (PDT)
Date: Sat, 31 Oct 2020 02:00:43 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: vt6655: Remove useless else
Message-ID: <3334304a96e9c303d541bae4240eefb4a83184e4.1604133727.git.mdejesusfilho@gmail.com>
References: <cover.1604133727.git.mdejesusfilho@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1604133727.git.mdejesusfilho@gmail.com>

The else statement is not useful due to the presence of a return
statement on the if block. Remove the else statement and adjust the
indentation of the code. Reported by checkpatch.

Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 48 ++++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 477d19314634..c1da54314fbd 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -444,6 +444,9 @@ s_uFillDataHead(
 		return 0;
 
 	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
+		/* Auto Fallback */
+		struct vnt_tx_datahead_g_fb *buf = pTxDataHead;
+
 		if (byFBOption == AUTO_FB_NONE) {
 			struct vnt_tx_datahead_g *buf = pTxDataHead;
 			/* Get SignalField, ServiceField & Length */
@@ -477,31 +480,30 @@ s_uFillDataHead(
 			buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
 
 			return buf->duration_a;
-		} else {
-			/* Auto Fallback */
-			struct vnt_tx_datahead_g_fb *buf = pTxDataHead;
-			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
-					  byPktType, &buf->a);
-
-			vnt_get_phy_field(pDevice, cbFrameLength,
-					  pDevice->byTopCCKBasicRate,
-					  PK_TYPE_11B, &buf->b);
-			/* Get Duration and TimeStamp */
-			buf->duration_a = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									      wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->duration_b = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, PK_TYPE_11B,
-									       pDevice->byTopCCKBasicRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->duration_a_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
-										  wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
-			buf->duration_a_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
-										 wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+		}
 
-			buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, wCurrentRate);
-			buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
+		/* Get SignalField, ServiceField & Length */
+		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+				  byPktType, &buf->a);
 
-			return buf->duration_a;
-		} /* if (byFBOption == AUTO_FB_NONE) */
+		vnt_get_phy_field(pDevice, cbFrameLength,
+				  pDevice->byTopCCKBasicRate,
+				  PK_TYPE_11B, &buf->b);
+		/* Get Duration and TimeStamp */
+		buf->duration_a = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
+								      wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+		buf->duration_b = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, PK_TYPE_11B,
+								       pDevice->byTopCCKBasicRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+		buf->duration_a_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
+									  wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+		buf->duration_a_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
+									 wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+
+		buf->time_stamp_off_a = vnt_time_stamp_off(pDevice, wCurrentRate);
+		buf->time_stamp_off_b = vnt_time_stamp_off(pDevice, pDevice->byTopCCKBasicRate);
+
+		return buf->duration_a;
+		  /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
 		if (byFBOption != AUTO_FB_NONE) {
 			/* Auto Fallback */
-- 
2.28.0


