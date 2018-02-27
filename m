X-GM-THRID: 6527220059011547136
X-Received: by 10.107.58.68 with SMTP id h65mr10608280ioa.132.1519736847917;
        Tue, 27 Feb 2018 05:07:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.53.69 with SMTP id k66ls329868ita.8.gmail; Tue, 27 Feb 2018
 05:07:26 -0800 (PST)
X-Google-Smtp-Source: AG47ELvbtuJwX1LUyDL+Z2lNcf07iboX1XKCH757Rrky2ErXO6w4dNa+CNr1GWt1Sr3M1iQmUNrk
X-Received: by 10.36.98.138 with SMTP id d132mr8252710itc.27.1519736846518;
        Tue, 27 Feb 2018 05:07:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519736846; cv=none;
        d=google.com; s=arc-20160816;
        b=uyLE9Xswpr7EjHg8/oim5E9VO4WwuBTLvTyAF6/boGIErx0eLYbru+VqEWnH22ofBD
         SuchFmPHfxBl3Gbb79tMup/DqaNbkH9YnZoQS/e0d6yfG3DG8zq76PsAL/rQo9sgco79
         Y/1yYKnDvPhP3LFc3qJ8yioH7io8xHMrrnRIw+x7qhu/V0pZxWj067MSsWDqDCCwkolA
         IThnZvTMx8yWklqURAYZeIpPlHWNwvZok3sT25dfOHJtd2r32p7qaZCgrVhDCuHPUQBk
         sCCYUlf1nKv3Hon/SfnY/10PTJTy62K+ONO3AhzSpReJ5TXa/WmNRy/C4ET32MalX3sG
         pI1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=E+dc3dW1CMWrdbyhKROQBmRTbefA0X5AS1FH2/QA81Y=;
        b=F4ylaONI5pqemKYfj4Zas7tn9vLj5LA9nRA4Qug+uBlHBpMDR//4ReChFQ8HATsTOk
         9U05r04JE7ikiq/TxQJk0KxufaHGiChGVgWSsAzQ3Y5CTsZh7FjHrsPH1D6AcTuNW/nw
         yuqalk0fmDL247i+JS26+B2HGfaFZwD3usJzTxWNh23famY7WetaadK6nCjFt5veuXhx
         SPbeNlkmPyZ6FLWlKz33AGOppJUfYJsjpZd04YGRkjDrwI0oJEC8bgotx1G10wn5iq58
         mijbotC07fqVnk2VNKqyO8ZG0XTCnztpEymkPFw7ZNdaG/5oc/mb6YMSX7LmNz3lDk7u
         vgng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Xt7Xg8xK;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x231.google.com (mail-pg0-x231.google.com. [2607:f8b0:400e:c05::231])
        by gmr-mx.google.com with ESMTPS id 192si474249itj.0.2018.02.27.05.07.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:07:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::231 as permitted sender) client-ip=2607:f8b0:400e:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Xt7Xg8xK;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x231.google.com with SMTP id l24so7485894pgc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=E+dc3dW1CMWrdbyhKROQBmRTbefA0X5AS1FH2/QA81Y=;
        b=Xt7Xg8xKfQQTzo5QxRcobQUBfreywTN7XpGcPkC+AiUlm+fbF2ZweRYsP5fDjCX9Vy
         EtJU6yiQGG3zRJGQz3lhpOuS6Gm+FUmvgadvqRBK4sCnxdujNofLYaD0tYLPWb/q2egF
         3j8+Q8PLqfKBV0vl0ERd7vRnumDkMSOpwg+DQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=E+dc3dW1CMWrdbyhKROQBmRTbefA0X5AS1FH2/QA81Y=;
        b=LoMu4hBpIF1aUA3xqtDtcChB22TRGgH1dhUE9BEfx7KA5yq8nJkSdxyakgwnYSkH62
         lUyXOL8CJvljQTCmDdzzW2A9elSmzxVGRnfdBbE6cqIR1q3bpNq7v7QCbEQTG3de91yi
         dg/CEFzzxn3ap6KJwzA58Ton5wuhVU6fXM2FgG3TgqsOVzcR6PvUu89hfVx2j+/mTCxO
         vDZCqF1akXdyU/ARPUrOZTM0U6MOkWknYtdPTCmh9HKaDVX2eDD2SJodWg2DJRkwcgBN
         J7DoL3MoO/DGoEBeonGzwkeMiTBFsJspXv0kIIe5hjQ/dupqdLZ9mFKcGry2D767t8UJ
         U15g==
X-Gm-Message-State: APf1xPD/l7yNKVQr79VEGwHqp6n9I5BMZCwBquNj+R9w9p3ctBKb+o+z
	6GiQDMUGsRBe6qc4P+NsgSWI5fcC
X-Received: by 10.98.237.12 with SMTP id u12mr2304285pfh.72.1519736845605;
        Tue, 27 Feb 2018 05:07:25 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id q24sm19816992pgn.74.2018.02.27.05.07.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 05:07:24 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: ks7010: Fixed unnecessary typecasting to int. Issue found with checkpatch. Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Tue, 27 Feb 2018 18:37:09 +0530
Message-Id: <1519736829-4672-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/ks7010/ks_wlan_net.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index e48c557..69cd8347 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -201,6 +201,8 @@ static int ks_wlan_set_freq(struct net_device *dev,
 {
 	struct ks_wlan_private *priv = netdev_priv(dev);
 	int channel;
+	int a2412 = 2.412e8;
+	int b2487 = 2.487e8;
 
 	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
@@ -208,7 +210,7 @@ static int ks_wlan_set_freq(struct net_device *dev,
 	/* for SLEEP MODE */
 	/* If setting by frequency, convert to a channel */
 	if ((fwrq->e == 1) &&
-	    (fwrq->m >= (int)2.412e8) && (fwrq->m <= (int)2.487e8)) {
+	    (fwrq->m >= a2412) && (fwrq->m <= b2487)) {
 		int f = fwrq->m / 100000;
 		int c = 0;
 
-- 
1.9.1


