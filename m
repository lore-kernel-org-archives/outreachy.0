X-GM-THRID: 6812288372522876928
X-Received: by 2002:a1c:5541:: with SMTP id j62mr6152372wmb.155.1586109486041;
        Sun, 05 Apr 2020 10:58:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:67c2:: with SMTP id b185ls4483649wmc.1.gmail; Sun, 05
 Apr 2020 10:58:05 -0700 (PDT)
X-Google-Smtp-Source: APiQypK8n73YBDvFpGJta/Hk/ra3Gc57QUuhy+ybcwk92TluhDmEXyPzgbVVE+VqOpAuKP3+gdDD
X-Received: by 2002:a7b:c8cd:: with SMTP id f13mr19237587wml.181.1586109485047;
        Sun, 05 Apr 2020 10:58:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586109485; cv=none;
        d=google.com; s=arc-20160816;
        b=g8hTpQ/Tdik/J50JuZJGLi5pdX0ePvVhGKRRAaHCeYjN2wbMrUr5TqzTF9s9WQaxPb
         n5NrmZbhnZ65yrlGBuTpIETBRl/PmR7feYknqjnjOfvL71PZ7/gI+ojkHlEOiEys1bRt
         xcPBk0PB5bty0BzGVip3NMxbbWAxM+X67XGUqyRtcsG6wSF9S+fd30FQed9wAIJSmpv0
         5eTvpN9em+9b7+Kv0hUTQ2G79VsPa91qFczw9UzcMOX/rd48gYDbZLBnp7StbTCQGHME
         HQLAcvn1o+9va0cqY/mF5p0Q669Jg5gF3olkgZBySvqpcj/6lEEG5gIhy8ifnBD6CAM5
         9Ebw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=tJ3XskqAiyiVTHUNDUQ4NN0MVYv1cvqKuDlEqpqtOGU=;
        b=xEkKL7JtshIXy2L2s8Yu11JCFqHJS9JG9QUu/PufFFKrow+eVNvuOrUCc/6VLSUk6K
         ZwVjJZuogSZXCT2yxICDVYiZb2BuqSVAPRybpKwjnquB611pjg0TtSqZvE0jLD8E/XzV
         DFsutp2dsax9nZ0cyLTj977FajZCCfOsHC38VTCwKHE7adNgebllMu9nipq0SLoZK0Sh
         gEQb14zhW/xY0TijiMKmEgtfm5S4aG/minUo+Ag0LdqKTiOw340IhcKlOgNWVSv+9/Ws
         n21wCMKbu0IMW9pA7e3Lbo/Hq4f6nAGff9KY7QGS+SqaLTZG7DEtohRGddOrituJCO9S
         FYNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id l16si991855wmg.1.2020.04.05.10.58.04
        for <outreachy-kernel@googlegroups.com>;
        Sun, 05 Apr 2020 10:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 18309 invoked from network); 5 Apr 2020 17:58:03 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.220.21)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 5 Apr 2020 17:58:03 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	David Kershner <david.kershner@unisys.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: unisys: visorhba: Correct a typo in comment
Date: Sun,  5 Apr 2020 23:27:22 +0530
Message-Id: <20200405175722.8188-1-vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a typo in comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/unisys/visorhba/visorhba_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index dd979ee4dcf1..99c57ceeb357 100644
--- a/drivers/staging/unisys/visorhba/visorhba_main.c
+++ b/drivers/staging/unisys/visorhba/visorhba_main.c
@@ -292,7 +292,7 @@ static void cleanup_scsitaskmgmt_handles(struct idr *idrtable,
  * @tasktype: Type of taskmgmt command
  * @scsidev:  Scsidev that issued command
  *
- * Create a cmdrsp packet and send it to the Serivce Partition
+ * Create a cmdrsp packet and send it to the Service Partition
  * that will service this request.
  *
  * Return: Int representing whether command was queued successfully or not
-- 
2.20.1


