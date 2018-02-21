X-GM-THRID: 6525083396428791808
X-Received: by 10.107.133.31 with SMTP id h31mr2852186iod.83.1519239370264;
        Wed, 21 Feb 2018 10:56:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.78.26 with SMTP id c26ls455944iob.17.gmail; Wed, 21 Feb
 2018 10:56:09 -0800 (PST)
X-Google-Smtp-Source: AH8x226eNthGa9kUCIKi+DVW5MHut9CGAYvEAB2DgVdWR/Oq8aDhwMxm04gGSru/RvNlgMeNcwqs
X-Received: by 10.107.47.7 with SMTP id j7mr1273517ioo.31.1519239369276;
        Wed, 21 Feb 2018 10:56:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519239369; cv=none;
        d=google.com; s=arc-20160816;
        b=DT7FOlzQuKAAOnmPVmRj6B2gALvI8PSIIWRZ7S1G8a33G+8JqYQwfYQpFRER9B8ki/
         Kqui084UC+95e1XsVOwvFH3Uwq+d8f+pWjNB3hVusH2LKkZv57RT9zwyLNVvuIfxAZXz
         DpkIPsfBXg2XQu1VRPkIdIdKkwmhFXAUekcEjVQjXTsaOUwCWz7P4IbRCCRG7VIx/YJr
         2OPSX5cO7FxOCrqN1VSVhIr3IRM+N/Gk8Z7fqDWEkIVFZCoYE2rn+DaC6U1y39twrBUd
         1Dse2o7376xez1mg3khQJIarbPb1/axJXivcVuh5eSoUw/zsQIXYT3mb0XiH9aWq/fpm
         H+AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=08K0VMNgMA3Q8ROJwvdvOpP7z+xWsWB2N5ho3L0ZRhA=;
        b=F+qhTh/7bJyBRdxSH5/X7i5IuvwX/6TYZ1G4Xmk5Nr48/qu4SeD/4We/+bdDRB4hFb
         jw7jYIgZX8yTCGA3lKIu2LkjHnlnokgtnpVPbq9uc3LLipk/7QXbeBe4MqY4WNH8xQp4
         d+bweWT+8wML/8SYmxwSKrM0hC1bulirem7n1/pbgktudR26kp/7PhvM0ZZGTjn3TxoF
         KZEqT0U/mlJN7UM7kJuUSX/r5eM5Th48+uiqRtzxcg2HzBgzcE964sOqzoaj/weCPab1
         qJWncWFtTHuTP/jP9gA/Qwq553ybRuf6crHihguebNuCE9jjGfRnKp/UqfXAtvoCkcdn
         a6PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CEiwUEah;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id n15si533932ith.0.2018.02.21.10.56.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 10:56:09 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CEiwUEah;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id w17so1000308pgv.6
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 10:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=08K0VMNgMA3Q8ROJwvdvOpP7z+xWsWB2N5ho3L0ZRhA=;
        b=CEiwUEahTB62jUtfWiKbXOBQGGkReORkURKwqmxtNHvAOzxCmWwHbFKgEDU4D+PrWa
         9uWR3mEYJ92etaJfAPCu1BMbOIqqsNq3jF8QpRezZvsP2V7hm1UBn/xNNkIx+8ejzdJa
         6NGDMOqJubpcEaVRHej5kIc06BevgV6pQ2ZgvwM3SuUqZrox+jdPPrISRSNr9XPkehcP
         RTG6RI9vKuxVv6zdI2AgCzamfmup7RhLXnGvHAMkpbprcg2M+1noQFgdT1rJhonAn/M7
         Kb1zR4T/PZUiOuNDrApq4uSYNrTXoGnbiv53YmQY1GQPPg4gRc+M6K8RsQKNjc1zBAD9
         f50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=08K0VMNgMA3Q8ROJwvdvOpP7z+xWsWB2N5ho3L0ZRhA=;
        b=f+mIzPFIMGJR8uout50NtgOm2vYKUv9sPeFt/r++xMUgbxNMSbadTAMWsCJthp3o0d
         1w4sliY98mEAD4ZKU63utebBeIV8fNHaVWTqCKoALW2Kt6iRdX3aHKZqLuVunmk2fA9I
         IYXwZDoNeJtaxcOmOIlwg+4baFxkK1E2afQoVd9McuQOqhnjFTWPo2cRh4IOCIsGq2vL
         NgqPrC0EbUjYc1qPVQLlba0eWpR0WhHuPVj6HSs510MB+aFDGVbTyz7nxeQ4gODQRnIn
         aKW8fOMhJ3hlOk73Vn3dkCiQGpBeMGG67DXwGg+ravd9lIfBRTFVzxRdOh2NwR23hEQo
         ayaA==
X-Gm-Message-State: APf1xPApcn4UmCdYE0jozQ8+kMAaL7x/mtssuvNmzMT65F4C/QUyGcRW
	c1Hop8rSLrH9xMQu3Mo6Qy757ggP
X-Received: by 10.167.129.67 with SMTP id d3mr4232432pfn.108.1519239368635;
        Wed, 21 Feb 2018 10:56:08 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id r29sm998352pfj.99.2018.02.21.10.56.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 10:56:07 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH 2/3] staging: speakup: match alignment with open paranthesis
Date: Wed, 21 Feb 2018 10:55:56 -0800
Message-Id: <1519239357-9527-3-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519239357-9527-1-git-send-email-santhameena13@gmail.com>
References: <1519239357-9527-1-git-send-email-santhameena13@gmail.com>

Match alignment with open paranthesis to conform to Linux kernel coding
style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/speakup/speakup_dtlk.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index df31f8b..f109b51 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -323,11 +323,11 @@ static int synth_probe(struct spk_synth *synth)
 	if (port_forced) {
 		speakup_info.port_tts = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
-				speakup_info.port_tts);
+			speakup_info.port_tts);
 		if ((port_forced & 0xf) != 0xf)
 			pr_info("warning: port base should probably end with f\n");
 		if (synth_request_region(speakup_info.port_tts - 1,
-					SYNTH_IO_EXTENT)) {
+					 SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -336,7 +336,7 @@ static int synth_probe(struct spk_synth *synth)
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
-						SYNTH_IO_EXTENT))
+						 SYNTH_IO_EXTENT))
 				continue;
 			port_val = inw(synth_portlist[i]) & 0xfbff;
 			if (port_val == 0x107f) {
@@ -345,7 +345,7 @@ static int synth_probe(struct spk_synth *synth)
 				break;
 			}
 			synth_release_region(synth_portlist[i],
-					SYNTH_IO_EXTENT);
+					     SYNTH_IO_EXTENT);
 		}
 	}
 	port_val &= 0xfbff;
-- 
2.7.4


