Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792762884;
	b=WNZJ8KjlWTs1LbXwdu4J5p6ci4XZh8H4ZXg9TxTa85I3byg4JwOjFqj/b3DQzZS3Hu+b
	 43vFkJmNhrkVnAveNfklBF5HcW+i18GT+nG1PeyjhqbnKnpvXwkcCvww3su4rmYYw60i8
	 XHzGf7yEdJ+sRRKtn5BuWCGxbpEpFyBF/WaGFGh/S7IdV4mUOMpZrVxVb3oQh3yTRdQIc
	 LdMaRuTC1xfo/sVNVrLuhlGrFesEED5ezcrnrSA3PrErvHezbhAOEvKu6QCrde2lDoEYl
	 wVoeN8WGP5mf7rwK61ddrLPBlSifK+bzhMsEq2obqlX6qIuJTvGz6NHbWX9Ry5VVVbw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792762884;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=phqTuEqnO8394NIPr/NdZ5rgqT1yFhgq/z9vwQO+5D8=;
	b=3jQo2WtuOMo6gtcrFmhnrJbs4Z7UGghEqomcVI7+kagXxoy7rSdwk8+4HLqEgrpFJP1y
	 XOpw4ZKOdk57vXkFqboyabPhHmOAVDLUsY4ejsRoSF+mZ3n0tBXeVqqC2bU1yj2iursdQ
	 0VxOpb22K+DgO9GeUQVaG0GgBWxnM91/ZeChvsAqDzcD52+zBOY9hX0QPFIP8ZY023HcH
	 Y/GoNHPx6MFZVF7mbRwp5W2+tvCKabc+n/V5k7RTFDJNJVirEhSRMJclm0UywZxDJNhk4
	 twzPYRn3ypvJ+kQuPuXK9s0B4GlGk8VhYPjUH1ikOgzzgcp33ZZcbbg+SUE0+1JD87g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=kobN2e1b;
	arc=none smtp.remote-ip=74.125.82.44
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5179E606A324
	for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 13:41:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5179E606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=kobN2e1b
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1517bda04a0so991476c88.0
        for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 06:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792762883; x=1793367683; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=phqTuEqnO8394NIPr/NdZ5rgqT1yFhgq/z9vwQO+5D8=;
        b=kobN2e1bUxY44ctXeeuQhlTx1kSdfpLgPOIcc3pj4x0uNMdgBorBm3eg9WGW2+7uJw
         mdBywkE3vOQ1tyivnG80iAO97svHNYc3az0G/a46cxVRFJnzFqv8NHnPlqkOEOZDJB7G
         wIDDUxkKZFo6LnKKl04Bqg/u3MClOlibnT/2XY5nY6STyfwWrU6afLKCylgqFkTSAztE
         qH0u9XI3PJtonDHo/SPrkvj+ehDlcmdCfIfy5XQm1ukWx79SQnSDw2Lx3gNovfjBopJa
         eK4cqESQr4ayu/wyrYVVyuc1HHWsyoFZlNUIFpgXAcEQU3LtRaEGUKce5ybRdEPhpaJw
         sG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792762883; x=1793367683;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=phqTuEqnO8394NIPr/NdZ5rgqT1yFhgq/z9vwQO+5D8=;
        b=JJc7O/p9mI2SWK5AxToulsOqrDQMXCH1Sz+F1KATtZobpFU+QybKwjO8C+c7fyvT0d
         7/WCwhLXnLhqbNHbNuhl1R87m6rVsS4NNaDSyIp7/6HGPxLqel33p/taNCG/riq/yV0A
         ww9gaFFJLedSx55u1cN80P/Y9TTPR4UAvnNZGP4M2Aj8PPTBSmBFdy53wxlhrVbE3jil
         Xo06PqOl5lNFrofV0l+05Fbk4xK7rTyFwXCnbJds4IuoIKMN4fd0WC2fT5zF+NcfNf/o
         r7kl/831tUTUwH6OBpcg24z3WdMOht3KUC3qoZB/4ItUB+msUph/qicA774L9b/vumYT
         9dfg==
X-Gm-Message-State: AFq9FYJw2wrfa/KNfueNsjpQEs+j7mpVsC/5ZFS4sXJzG3diChXYWRVB
	SLyOxywrfSoOvEI5QuHagm64FyFX1SFiClU5WZKcl3MDAQXsmByiHfW+TcRoolj2Gpg=
X-Gm-Gg: AYBFou2ubRJ/Ec5Lx37bqebrH9t1cJ61Lc778iboIRQsRuYkHYMEHg/iNfGN28WCQci
	o+OFf7h+pXyg8w59k6zRUa9R314ZKZcxhh2o5EGToxRnDwj60AvX/d4Gc3LLeeknVvi9MoZOyit
	jXsoeYQIf7bc8j7jcZhgXDYD2S77jP7M3LLDLZKQpLhaG4pDmSpV1sQPvw3YoTHZxWuseG1oEa3
	fLvyps2Dh4dD2EN5S5w0vly9FG2xa0b93BdYCMGnbmxOhtZW6lwbxufZQuch7u8LSSbXcF2yn6f
	Yx4D972QD2X8sqiST7HpoSfdRJO25FoJ1fxlxyRKsXtJbp/HG/Uqi31GffIMQOetwnNeviq9cpP
	i9p6XAIzcCVueN74z4u4bwUhqf3caecC5etCxFbMVZNtOl7b+AGPjYElv/IXFTtno2qpgRmIJE8
	N+0bPa8MpiUMDIq1aFzWpc/HMJ7XvVqykXseVxA1VgGS9IUwntxU2uWyYcto5wa5As/haMDPqur
	Br5ijZ4KO2pmrFr1hwUJia3QA84hRka6EtEE157fbSQCgpeQnpz8KRVnw6CSsUCMFey97Frj9cL
	RvpvKopW01IAqmJm3RTXbZys/zS9/0szabdeQF54mnQe76vHzwNtzKbZJBcKWC0TUnoNf/0DNw=
	=
X-Received: by 2002:a05:701a:c96d:b0:14d:c7ae:85df with SMTP id a92af1059eb24-195c4f4f87amr2459003c88.12.1792762883170;
        Fri, 23 Oct 2026 06:41:23 -0700 (PDT)
Received: from localhost.localdomain ([2409:40f0:d0:6f0d:26f5:851c:4268:6984])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-197ecb65989sm222494c88.18.2026.10.23.06.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 06:41:22 -0700 (PDT)
From: Torra Sowmya <sowmyatorra@gmail.com>
To: outreachy@lists.linux.dev
Cc: vaibhav.sr@gmail.com,
	mgreer@animalcreek.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: greybus: Use GFP_KERNEL for audio manager allocation
Date: Fri, 23 Oct 2026 19:10:46 +0530
Message-ID: <20261023134046.9678-1-sowmyatorra@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The audio manager module is created in a context that permits
sleeping. Its caller, gb_audio_manager_add(), already uses
GFP_KERNEL through ida_alloc(), and module creation subsequently
calls kobject_init_and_add().

GFP_ATOMIC is unnecessary in this context and restricts memory
reclaim. Remove the explicit flag to use the default GFP_KERNEL
allocation.

Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
---
 drivers/staging/greybus/audio_manager_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
index dc90cc2d2308..8a9f7e7d1766 100644
--- a/drivers/staging/greybus/audio_manager_module.c
+++ b/drivers/staging/greybus/audio_manager_module.c
@@ -187,7 +187,7 @@ int gb_audio_manager_module_create(struct gb_audio_manager_module **module,
 	int err;
 	struct gb_audio_manager_module *m;
 
-	m = kzalloc_obj(*m, GFP_ATOMIC);
+	m = kzalloc_obj(*m);
 	if (!m)
 		return -ENOMEM;
 
-- 
2.47.3

