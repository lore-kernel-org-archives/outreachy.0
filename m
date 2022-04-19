Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE35184E
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 23:43:33 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id m14so24442226wrb.6
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 16:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HKQLOdPaQ3Mw3cBSPXtTxWv22p46uaNKqi/2UnH+TaU=;
        b=W+DL2plQDmeF6M+8AnbzgopnqINjz5xpZNqMbikOKgoHFPRR+2r5EWaHfQkEeeyh8Y
         4x3B0Cqy4qQjSieeCV93kllUXHcH1UEDOyJ4H3wi3nGkncyyG69gMCxdhJrYyUgoMASs
         byoRivqsbbPGEE5WgsXzZwjw4W9tp8cTrS2PGq8BAEhXE767YJOJn1HZSX0oG6fO7+gi
         xLn3V8FkF2M8NwqWPNExwEjR/LxGIsYI7oaOyzgmVo32APXgz+OmYl1Y48HnpBXCupPQ
         yXxgbu5sru6YT/MpEjkix0vIoBcBKYwhlN6gKA5aSrgKRu9UJZxn3uW2VAIeWPPrevdr
         3hHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HKQLOdPaQ3Mw3cBSPXtTxWv22p46uaNKqi/2UnH+TaU=;
        b=PJZ6xFqiTSu7+HON90mHpxtCar1iTtyBKqaB6LTRe94GGnJ3SoYCEO9NbgSrkQYt7H
         Gy8NHgKJnA+4R8zd+AoVV4jwY9GmWtW3BNKCgHtO//he07CGVAswVub/TDuI0FYvx43q
         p20MvVNZjOokhQSM7BIX+Hng8AlRFj9DvLBZzA66cdRdZaXEbwkwTGp4jiQLUSmcZ7wT
         UZeZVWddAf8Na7e0nK0ZO8vxGpxOnpn4gIiXbgFDjFwDRkCoIyg3sITsgHNXaAR2epE+
         1eYZcnpGLZjiwyLWpxo3o0ys8MNyskGG9xJAW9JUKZTMV+NnykqUfGTk1qY0To0yk9Xs
         oowQ==
X-Gm-Message-State: AOAM530z4LnCbAfXbqHI+OiCcpkliKV2OsnPRIwSTht3rp7hixZj3a59
	pDmAznTbzoQetL3u62z0bWk=
X-Google-Smtp-Source: ABdhPJwAIcFXMCqod1EDSxcxDLBq3kQdWuUNKRazc7JRrvo6vjc1W5NvWFPzXoUkm5DwO/gOBUTKUg==
X-Received: by 2002:a5d:45ce:0:b0:207:9e7e:9a4b with SMTP id b14-20020a5d45ce000000b002079e7e9a4bmr13248177wrs.559.1650411811661;
        Tue, 19 Apr 2022 16:43:31 -0700 (PDT)
Received: from alaa-emad ([102.41.109.205])
        by smtp.gmail.com with ESMTPSA id x4-20020adfdd84000000b00207b60ed68esm13255849wrl.100.2022.04.19.16.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 16:43:31 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Cc: boris.ostrovsky@oracle.com,
	jgross@suse.com,
	sstabellini@kernel.org,
	xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	ira.weiny@intel.com,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH v2] xen:  Convert kmap() to kmap_local_page()
Date: Wed, 20 Apr 2022 01:43:28 +0200
Message-Id: <20220419234328.10346-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

kmap() is being deprecated and these usages are all local to the thread
so there is no reason kmap_local_page() can't be used.

Replace kmap() calls with kmap_local_page().

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	-edit commit subject
	-edit commit message
---
 drivers/xen/gntalloc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/xen/gntalloc.c b/drivers/xen/gntalloc.c
index 4849f94372a4..55acb32842a3 100644
--- a/drivers/xen/gntalloc.c
+++ b/drivers/xen/gntalloc.c
@@ -178,9 +178,9 @@ static void __del_gref(struct gntalloc_gref *gref)
 	unsigned long addr;
 
 	if (gref->notify.flags & UNMAP_NOTIFY_CLEAR_BYTE) {
-		uint8_t *tmp = kmap(gref->page);
+		uint8_t *tmp = kmap_local_page(gref->page);
 		tmp[gref->notify.pgoff] = 0;
-		kunmap(gref->page);
+		kunmap_local(tmp);
 	}
 	if (gref->notify.flags & UNMAP_NOTIFY_SEND_EVENT) {
 		notify_remote_via_evtchn(gref->notify.event);
-- 
2.35.2

