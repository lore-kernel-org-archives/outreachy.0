X-GM-THRID: 6465604246954835968
X-Received: by 10.99.158.17 with SMTP id s17mr13395395pgd.143.1505390798070;
        Thu, 14 Sep 2017 05:06:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.84 with SMTP id m81ls4799021iod.44.gmail; Thu, 14 Sep
 2017 05:06:37 -0700 (PDT)
X-Received: by 10.176.30.2 with SMTP id m2mr4461552uak.41.1505390797420;
        Thu, 14 Sep 2017 05:06:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505390797; cv=none;
        d=google.com; s=arc-20160816;
        b=ALcccJFLOuOAsQ+/DzsrUCrQsGXoZ/qXp4EZalxgZIhDuxSBPckNKdOFOdk4l8aUZj
         iqCPdz/8ALMzV+3teiWVpuC9V+uw3pTXM1BBSdAi9dP2dmgOKgR02DTDFYeMyVOR/n5p
         dvhPL8L5GLXjAzqfU8tdDLTLFhdA2YXSLqlxYk9E68UhS4dNeJnRFuYtqhHvn3KzW8kB
         uYRs+4vuIkc9J4Fh4katN996E4xVgsS0nCKosots6GTMtXeSkmS4Q6kKD044+97a0UNA
         Q80IWaZxokTh+ldyTrBp0/RfpPB/F3zmJTCBTTjc9DdxBOHyVKQTWFzNJS7Vaja46bVK
         j6oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=l4rlQr8ZXc9HfroK42BEAgxbBffOJHLQUpoqgd8znF8=;
        b=H1ZjZHm5J33Fwxjo/eTkoSlrCQJPx4ZiEAuKrCweIzz1+UWa657Xqo4EvXz/dFiMSu
         tHBkpw637HV5FmT3zdl8xG9yakwxEpCqB916MplXp/lIVWl9L+6U43YbCjLOvFfgO/8k
         onN25VAN93QHPc9PYvAAB2pDyY0MLTTdxnvtDYZlLt5m8M2W/Ps9yjqbqu8zzUO9x2Bo
         EwHPZv1UWKFtkutKOOUe9Qp7ljccqgoTsQdrfVe3g36QoyY1r6Qq2YdeQVvn7/Qtusoz
         Lv1lqTk+RfseYHmrkQu5zkVBeNIkQWLYrdIoN4YK8NyJl3zFOR+lw4ZdVzbxiIfURuKs
         Q0vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Is57XNh3;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id v25si1617609pfg.11.2017.09.14.05.06.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:06:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Is57XNh3;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so1418158pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 05:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=l4rlQr8ZXc9HfroK42BEAgxbBffOJHLQUpoqgd8znF8=;
        b=Is57XNh35jN7TijA1vRuY0VQQPhLwlEsHbPaxao6HACE32rKu8atVLP+xej517ksU+
         eVR8SNce5i7/alr9S2yMakaUT4xoHbDcc790+1zrZUFS11uNghjc6HhfF8NU+wd527Ys
         3WtdYjBTPLkVXFToCzZsb+v3XXi24vo8Nl+Dc+nW1vHowPfOo9MaueT6/FcBje9wqHqh
         LtI3vl2GLjupgiDs0Wruq880++N9y+i/yvxY2Qvl/YcN2PYyIOKBoTIUqq+2XSTrOf20
         SOqalCCPqHyS4dFxNxXRL0V8qtCmxNE57mfrNV2vgu7bG0C24JFm3deJMJIz+/Ar3R+U
         Eung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=l4rlQr8ZXc9HfroK42BEAgxbBffOJHLQUpoqgd8znF8=;
        b=eFVarz3al0NTnNmAyle2Zv9wNJvApI/UHpdo7DgcZLooDD4phgR5A/jz3yKtG/gR+E
         TOrSNWs0JynniqQoL9nK9jMxQJMzBs0ZJ/dUj9Eru7sUI3zzyLV6NpJ1mjxV6mV3ADcZ
         5AW9dU9qsig9k89PRYYgKxyw8b7IABBgB8iz8SYUJSIkrW4wgpijWE+hNSmXght0+nGh
         3DUtwHqa+5xOSfLBOcFSZvpeCI7lvt1hJCUC0Z0dvMSAiF89ZuMnZVow/SM8W6k8/D57
         uoiTDWekuipT/bCcKvZPc33NJBSpxj1WpBSFrKuEtu7dFDPpU1Lxs/9lzlNkpRMRPrvY
         Oq/Q==
X-Gm-Message-State: AHPjjUiqBLxqvFbguCwHJR30lUsmLmldf5pScgQeKVisvBeACnExYuna
	L2CY855mv+uKwg==
X-Google-Smtp-Source: ADKCNb6deLS7pHVwzcGjCF64uDAcIwYIb7JziVAPKq7xx10ii9uTeF8Xd0C5cOtE9y9nRk0JQbbWaA==
X-Received: by 10.98.7.212 with SMTP id 81mr10933070pfh.146.1505390797173;
        Thu, 14 Sep 2017 05:06:37 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.49.157.170])
        by smtp.gmail.com with ESMTPSA id b75sm29081777pfc.29.2017.09.14.05.06.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 05:06:36 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: lustre: obdclass: Use kcalloc instead of kzalloc
Date: Thu, 14 Sep 2017 17:36:29 +0530
Message-Id: <1505390789-3814-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use kcalloc instead of kzalloc to check for overflow before
multiplication. Done using the following semantic patch by
coccinelle.

http://coccinelle.lip6.fr/rules/kzalloc.cocci

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_object.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 95c7fa3..28cb8489 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -1016,7 +1016,7 @@ int cl_global_init(void)
 {
 	int result;
 
-	cl_envs = kzalloc(sizeof(*cl_envs) * num_possible_cpus(), GFP_KERNEL);
+	cl_envs = kcalloc(num_possible_cpus(), sizeof(*cl_envs), GFP_KERNEL);
 	if (!cl_envs) {
 		result = -ENOMEM;
 		goto out;
-- 
2.7.4


