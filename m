X-GM-THRID: 6465599179763744768
X-Received: by 10.202.182.139 with SMTP id g133mr1409656oif.86.1505389618808;
        Thu, 14 Sep 2017 04:46:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.104.1 with SMTP id d1ls4994710ioc.4.gmail; Thu, 14 Sep
 2017 04:46:58 -0700 (PDT)
X-Received: by 10.55.162.203 with SMTP id l194mr10723381qke.26.1505389618053;
        Thu, 14 Sep 2017 04:46:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505389618; cv=none;
        d=google.com; s=arc-20160816;
        b=vBQwi5TVQvPbl5i075/XTDObLFr5sP9RlbgywbxnltI3RVxmmu68nQ+3GGmQ3P+YkY
         hCQo5potN0eFdhuYy5JkEuIy1wi6zv4OkhximLVk28WvEPVaGykP5Yar0/FQczplgRDZ
         bz2u7v4EPbteH+nZHlC6D5aN3eFZIt8dKT3wzek/eiFQNmWmDDY5rSfjdKSU5zIvP46d
         FxjLeDsUgExn3wdBCKB0mDOXKzo3SxzqHhujCIWWYq3RY0YnRw2Px4RLVmqpadt2tp4J
         OTGO7r/n2CSMUwhrpon1MC+72Bf7tGtI5Ucr1bwIv17wF3WheWFTpxY65C8kCw3Q5Xut
         ujmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=jryAxx2p/xiuauFYNPtJaNiMCyowKXFoWP5DbK9LfiKECBcSnFNB4l7mUmzbwY+9IE
         OXGBdFx/Z1iWulCc5dUQKtooKgCiTA06WIEmf146wSwnAFGnn+QdbiW+JmT388XVGRGk
         2ppwwW88HqtoBtcH9RgXbh3COJEJsZ1xVeU6kyS2/M9xWN8cejsYKJMOmeTNQYqImMY0
         Qzoh4q0Da4Y9tIC6s+T1ZYOi2j4ZSJbtVzxguiGlYD1RsDLLACO2WlqoF9oBFqU4AHhf
         NLoAzWmNDZPKRJGGPTAAQwiAkdShORE7U9XKBPS9CiRkFuzbfD/ioPn8GfQQ2XqzeIlQ
         qCFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VzhRv0qb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id e63si643247pfm.12.2017.09.14.04.46.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 04:46:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VzhRv0qb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v82so1572940pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 04:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=VzhRv0qbWS8TnLWA6dIUGvWmyC/Y2Gc8Eg1BBT2l4cIR6hQfb3mh4QdX+KI6EjfsOz
         GlC++NFxQb6WpqW66NNPK/g86B3XLOQuYKOeWNf5bUZXzPY25eN2BIx8OhjZ8rZ21nmM
         hrbYsXtmjL24Su8XYIYkGJrb6vfw9vZbzKK50MyFTGUGcHsdo3vbKJ7N+iH2ReCc0L6r
         7uZ9QWdert5ymEoo+hyrHruDYXvIaHGVSnn4LA0Kn0+HGGr2no+kn3Y/tr5KIfnez3DO
         I/juzdElAwWj2eAs/7acjNnOsnxfBj8vjTbyxNEbg8UFdolKou8Bdh+Sq639vMM2x70h
         +pbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=Lc6JTosvmpk/bkcWV5aMHkuO9MfLclPjax6CnrH8zlGF3VPGPxa+lWpnxk97aS5RcU
         lAp8fGcPn1RWgvqMBe4gW+2XJtmjABMmSlB2NkVtfRlnVAw/C0WiN/3Zjox+aaGOGk1+
         xWjFqb1CNKGBC2lj30kjKdA/rLox0HzwunCotZuEX2GbaDzMDZPqh4yS0XrJuOUyc0D5
         J75t7dCL4b3kS49k5g06ZE2wM58xIl52ObNh+LvBrdP+6lkK5a4fA6ykH4lQTxTHLygh
         88IbxhsuoXz8d6j3pmarfnLeAUt+E3DVcIV4b9YggDF5j/TP77TCsv2w3sPXPwejqFQ0
         Anfw==
X-Gm-Message-State: AHPjjUiHaJP6Qcvbrxvet7frgWyLcxsDZsEW/hLmptvy+FU1hnmczIuv
	XY8ns2KbiccgX/X3s8mFgQ==
X-Google-Smtp-Source: ADKCNb4TkjXyHUZfztyERtPLQ9D69LDimtPy++UIQ0hXZEl+VYJW0FlrKuMlzFXPfS5n9ewvzBhrgA==
X-Received: by 10.99.163.65 with SMTP id v1mr21318769pgn.310.1505389617786;
        Thu, 14 Sep 2017 04:46:57 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([122.176.131.114])
        by smtp.gmail.com with ESMTPSA id a6sm24837378pgq.17.2017.09.14.04.46.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 04:46:57 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: lustre: fix comparisons should place the constant on the right side
Date: Thu, 14 Sep 2017 17:16:43 +0530
Message-Id: <1505389603-8642-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes checkpatch.pl warning:

WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index 4f213c4..a3c0481 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1130,7 +1130,7 @@ struct lu_context_key {
 	{							 \
 		type *value;				      \
 								  \
-		BUILD_BUG_ON(PAGE_SIZE < sizeof(*value));        \
+		BUILD_BUG_ON(sizeof(*value) > PAGE_SIZE);        \
 								  \
 		value = kzalloc(sizeof(*value), GFP_NOFS);	\
 		if (!value)				\
-- 
2.7.4


