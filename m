X-GM-THRID: 6801918498465382400
X-Received: by 2002:a62:ea08:: with SMTP id t8mr21173034pfh.163.1583828619068;
        Tue, 10 Mar 2020 01:23:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls4580018pff.0.gmail; Tue, 10 Mar
 2020 01:23:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuvdOQymVlzyFMffK6x467yfJEM4NUgETTWWRP58A+idhD2lGCDBjj6Anm9eGmFO6OjmTjy
X-Received: by 2002:a63:c850:: with SMTP id l16mr19961428pgi.290.1583828617521;
        Tue, 10 Mar 2020 01:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583828617; cv=none;
        d=google.com; s=arc-20160816;
        b=YiXxkAoX47ZqHsIGnTLbfYPAYNwYMuc6ZZrHkm+pR1u7vm+G7jeGPUhWF8ba+poSx5
         PftdViX/bu6itwkB6dLN1nSpNUT3rmi/boSa4v4b+Sl97cboZhjF3GJmju9BKMvP0S55
         psDzbziF6Of1/o9kPKZ0lILWpL8Qw7CNFue1Wl3ZYfyn18g32AwaqiHyyBcvI6lZ7jAB
         XMxH4qp3DZZOl3fs7K5ydvX8inUAmHcElotidZSr7t/zXciOnQDIIKSEDL7Pig3cIpB+
         eIAnzUn7usjApywqvNlIEWu5sltW4Eu3X8kU3eChkDOV6c2tc9SdOizjlA63TYzYWyO5
         p9dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=OkC4EApUUzGpiQMYHqsbyb3QF+FxwURdtMc8TSLqxZE=;
        b=oqSdMs5UiliqTGPAx236meUnB4nuBiirNN4A6SXy9YZQUdiNuOb6Fh/KAhgvmKY4h4
         +s/6vIhXj7HWdhX7p7rzfJQIqC3URK4G8ICVanbeMox05sSU+YvMTt953zVRfDZpt88r
         za8zYNVv7L7Flmt+dzOiGaLvK4r4NIVn82NDaWEcwnl4TfyNB6xXplDFyX3a58P4ATT/
         VKpBHWz5pAjQ3f7FLtUBQ9UQ8GYai+az3bhg4/AK5zoaQkslpy85c39bIGL+EUcgEEeH
         PuceAsmhkPvvfvp29FYHNouH+LWJtNRkgY1C3OY2f+M+DuHbgJ79qs0vm7jPa79Pxhzi
         BpYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oQyZ0gk1;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 74si336382pfy.0.2020.03.10.01.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 01:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oQyZ0gk1;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id d8so107348pje.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 01:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OkC4EApUUzGpiQMYHqsbyb3QF+FxwURdtMc8TSLqxZE=;
        b=oQyZ0gk1GJ4M4XhmRCbppXLPl8CRWth9Zpmd0KO4d7MdkmOW1uiPGfQ9+VxZ16coWh
         xvfac+CBsI87LUkSWVQHgLU6B0tu6T11Xdsz5BV3QILAK727FcQLufUXNUtzjFVrKiqz
         JISM9Zr5Qlj9eASHB8yxt2wfksh/4moMlQSAmuMP7S7BmnhrnGajac32LtJnOGGLiNu1
         ij+cToAxpUXb2NwdlB8i1SaHn19UKV4uoOPMn4Pb886McMG1Ff3va60IH55vlwrktSFP
         qWPQssOfYPHZV5SYANu3mlbT0meCZYqqjypmVfgD6gx0gX8xTb5Vcx2Uc7AjjXqKcMMr
         IE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OkC4EApUUzGpiQMYHqsbyb3QF+FxwURdtMc8TSLqxZE=;
        b=mJouwMKqJPtDYnILm7wdXxk/ix7HQSmtlbTUSF2GPmtYwJ4rikREZsrJ6mh0m25LvB
         fazj0PtSmaLrzp0pvuD2P8Z969M6xwwE7IhUztopZ54mpFuO3NpI2M3SSluKLelpw7kx
         NOdjiiRLiaYqKAKAXlfEiLaO2WFixzzz0Jm1DPyelvP70w9Rwl6aVQVlPuFJje3740Z3
         k+MWK+ogWd3BJW2zIFw1lenTBSyjoIZhzKniDbHiST7ZDE2P1+6qkvUZ7/GMXaGKywAa
         OqHIxQbzAhUrxJTu+iI1ff/6AxM3t6pAzaZ4/SRRF0bN7b8ive2o4jb32OI6pDPDwSJV
         AgVQ==
X-Gm-Message-State: ANhLgQ1In0pQaLV4qtvVIWehyytCifBQQ8kHnZQ9QBLP4zrh58/wFxQj
	qN03AlE4VBqkq5PqXAXHckJzfXsx7PU=
X-Received: by 2002:a17:90a:fa93:: with SMTP id cu19mr551930pjb.166.1583828617082;
        Tue, 10 Mar 2020 01:23:37 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.142.106])
        by smtp.gmail.com with ESMTPSA id t6sm15218810pfb.172.2020.03.10.01.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 01:23:35 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2] [Outreachy kernel] staging: vt6655: remove line over 80 characters
Date: Tue, 10 Mar 2020 13:53:29 +0530
Message-Id: <20200310082329.3274-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove line over 80 characters.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
Change in patch description from "Fix" to "Remove".

 drivers/staging/vt6655/mac.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index c7888c4e96f2..eb56e16637f6 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -884,9 +884,11 @@ bool MACbIsIntDisable(struct vnt_private *priv);
 void MACvSetShortRetryLimit(struct vnt_private *priv,
 			    unsigned char byRetryLimit);
 
-void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
+void MACvSetLongRetryLimit(struct vnt_private *priv,
+			   unsigned char byRetryLimit);
 
-void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
+void MACvSetLoopbackMode(struct vnt_private *priv,
+			 unsigned char byLoopbackMode);
 
 void MACvSaveContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
 void MACvRestoreContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
@@ -913,7 +915,8 @@ void MACvSetCurrSyncDescAddrEx(struct vnt_private *priv,
 void MACvSetCurrATIMDescAddrEx(struct vnt_private *priv,
 			       u32 curr_desc_addr);
 void MACvTimer0MicroSDelay(struct vnt_private *priv, unsigned int uDelay);
-void MACvOneShotTimer1MicroSec(struct vnt_private *priv, unsigned int uDelayTime);
+void MACvOneShotTimer1MicroSec(struct vnt_private *priv,
+			       unsigned int uDelayTime);
 
 void MACvSetMISCFifo(struct vnt_private *priv, unsigned short wOffset,
 		     u32 dwData);
-- 
2.17.1


