X-GM-THRID: 7021822549853995008
X-Received: by 2002:ac2:5dc5:: with SMTP id x5mr10505933lfq.424.1634895478724;
        Fri, 22 Oct 2021 02:37:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:1a4:: with SMTP id c4ls1637582ljn.1.gmail; Fri, 22
 Oct 2021 02:37:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxT0w9Wy1+9NKHGcG77PvEZH2D3rq+AUKGSjeO+ITN/Yg6dvRmi9QHoNXf6+DKrbduJ4KLl
X-Received: by 2002:a2e:b895:: with SMTP id r21mr11927605ljp.206.1634895477103;
        Fri, 22 Oct 2021 02:37:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634895477; cv=none;
        d=google.com; s=arc-20160816;
        b=dzPjoB9QObWkuHDEl6hDTPn+Xpc6CboTDUqHNap416bEszJyFyEnhrMyDMJn9DpxH+
         NLpb3qmlU4AnyjyeYIml7DGoxrkhOyofwI/8IfgVwe1pbJwes3uUEz4/QjxBvfyr6HMO
         4h9mjNTO5bvDv4tGAxReL/EVkhttNkULQ9lDpHNROKbDrAOFZKe2DZmTBfcpXjFoBuEZ
         vT/1N5B9sLOT1DsZVJ8mkRS0u1zewiGQXfFbvTFDSG5oOcV4SN7HNIRDXgoiEk+YuAfr
         Ng/Ra+n0bhNgk2DII2Gmc+SCgXv6YqPBUvSWtu3WbQP/Bxvfyk1Hm6TWqcwgzgIcUVA4
         7xqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d7RhWPpiRn/6eZuKuWb4Qykp0WF6NU3VTuWhWe9FJ/U=;
        b=Qy42xbEzgZPqeuel4zHSmwA2jrUoRuZ4w0ndux16ua7l/IL3IkeWHXUS8HW4u0A5Nu
         Rt68Rqw8s62EB1U18LQJjR+OTkGv3cejgsCLfKX9BQk0MXVbsqcqt7O4rpWpOTV5qHhv
         duswIAenpwrb/7ThdU5B1mzgO5hlstzJ1glE71XEVZdr5X8HIaJNmHlptUWJWesgy0Gt
         yVXg9XKN+NVx4BazmIuGLcFjO7dIwxyi4Jg2IM5KulZ2/FyiCbGaIEnRR+x8t4hJ4hTp
         VbF9vHAoFFe6s5Tet9FLg1KzdNfZwAqSrGyYTn7zfIYFkD8xX0sFlMQS8lseRuTjjQp7
         x4xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aEiwYxvH;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id d19si525707lfa.0.2021.10.22.02.37.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 02:37:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=aEiwYxvH;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id 67-20020a1c1946000000b0030d4c90fa87so1979860wmz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 02:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d7RhWPpiRn/6eZuKuWb4Qykp0WF6NU3VTuWhWe9FJ/U=;
        b=aEiwYxvHkMqgB/wRsY+LIGPnCe88NCRnXH9E+51HXkCDsYrk6Tzg9YiFqae1LplibJ
         YEYKKydIb3hqz0IFnemc/4jAd8mzTfXJ+tNtLA3uS60oF3SVxx2jvWPY5aEgWRgWo4Pu
         n1XJZVeeQfUs5WMoloq8gvNir2osPFl1hj9oBwVPfSN9/LMSy9RF/gv8wjxesYrw+Jix
         nvz/KJFvIXtYuOBLBRHECnu4PpU9uwf9iY0K73LjhXfe3E0JDEqd33aNzBB21KwFv8+F
         va6QqlVcmsfLrE8VXPUc0XGzPp5TD8k914RcMn2Zw60ZF9cLUWgv7HIIozUDiITt3+SB
         Bcbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d7RhWPpiRn/6eZuKuWb4Qykp0WF6NU3VTuWhWe9FJ/U=;
        b=lgR9Ldmm4pM2QiC6orfH80nf9Hphw9uUvDEqDJxsIuX7A7DWquntsch9vIcA2IpWcg
         hYJBGzUQTV/o4lLKqDA6jNeWSIqNjAYSNZxXLtXexGThS9OCDjJl79L44ZnFYiqIsmSq
         hqvnMhUNNcdqC3VMBA7N9g39+CylJn6Aqij8LTxB2kiaMMvBzfR24i9/FSxq9qNnd/K6
         Vj2RqGEFXiYT9hEWjfEPKQkxcqHZoK4b1/Yi9iOPZgmMADJEOR0Hp+HJz8xk4kOVCpSe
         omSPQyhAp/nO7MSGFPbZuGqoJxXbmaDh5SetCsehCEwtYKNKMMiDJRE24e7vqrhllAXo
         eCIg==
X-Gm-Message-State: AOAM530jwcbiSTWXOC0/sZK2kIEy2FUQBBO86nRP4SuC2OTgo4NJj1zV
	n6h8HEnWoOjJ+wBDBh6wzbbC+OeCKwV3vAmI
X-Received: by 2002:a05:600c:1990:: with SMTP id t16mr13231229wmq.124.1634895476586;
        Fri, 22 Oct 2021 02:37:56 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id r15sm1643602wru.9.2021.10.22.02.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 02:37:56 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 5/5] staging: vt6655: Rename `byRFType` variable
Date: Fri, 22 Oct 2021 10:37:18 +0100
Message-Id: <f0b6818d2b15982081bebaf14f830f4646f61fe2.1634826774.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634826774.git.karolinadrobnik@gmail.com>
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop Hungarian notation in `byRFType` variable in
`RFvWriteWakeProgSyn` function. Change it to use snake case.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <byRFType>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 4 ++--
 drivers/staging/vt6655/rf.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 0dd91b0433f6..3f57834901a6 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -676,7 +676,7 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
  * Return Value: None.
  *
  */
-bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
+bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			 u16 channel)
 {
 	void __iomem *iobase = priv->port_offset;
@@ -685,7 +685,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 	unsigned char sleep_count = 0;
 
 	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
-	switch (byRFType) {
+	switch (rf_type) {
 	case RF_AIROHA:
 	case RF_AL2230S:
 
diff --git a/drivers/staging/vt6655/rf.h b/drivers/staging/vt6655/rf.h
index d3f2b8dd6afc..0939937d47a8 100644
--- a/drivers/staging/vt6655/rf.h
+++ b/drivers/staging/vt6655/rf.h
@@ -60,7 +60,7 @@
 bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData);
 bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType, u16 byChannel);
 bool RFbInit(struct vnt_private *priv);
-bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType, u16 channel);
+bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type, u16 channel);
 bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH);
 bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
 		    unsigned int rate);
-- 
2.30.2


