Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA067E0
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 06:19:32 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id r19so2333548wmq.0
        for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 23:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TpWXWlsIiwFWqITQBBmHqt+ptX9YU3vyMz2FKFbBljI=;
        b=KVf+4C/PtpEfuB/Nxd/EYlIv9rV9YIYR3O2bMQguZFWKge/IUlTq8vQWAZQe8oiaVp
         tSbS/pFY1PvpYzcU3FT9E8BRiWtfFu5LHlsOjEmoAi7ACi+Iy1ESCvvP4miqPbcT8X8j
         fFiFpDshwNnmiXZ11QLg/k9C528xaqqbPLvtDAIxe/C2/xIV1DalMdAup68C2N13YvlV
         +Euy8Huqd/3jlzskYYaJTeN7QjGP7T0lPwSx0WQmyKkF0TicIgSgJVnDmChDfq/cmVJu
         wBFN3wCYNC2QFtJ8ZvakpGXI6GS2j/tdOF/sDc/nVPvMpu2Xh1aU376/LhlyUkX967ky
         Psrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TpWXWlsIiwFWqITQBBmHqt+ptX9YU3vyMz2FKFbBljI=;
        b=6SgpLrLRgXjoRPxNWw2KS9keRLHF2lKhLCPE8m2PKVfLlpjnkrVU2JUFFuacz+rmYg
         tAQlOKOPE/Zy8Pwnrv/LLvrtMGHUXrdQ32B8WF+BkR3ou3CHYj54gHKvU27E9l7zquPZ
         JDNQmCjEtYzLhEwX8FFMXR7kfD6y3kcOQPyEiJr2LlLum2CmtJ2rBQYfF54zwNa/gxqj
         T8LOy8iYxIcHlrKKlp0jHzY69g8pCuu2XA2ibmVahsGsvNHAblsHF5fzR+qRiFeaPv31
         ATyXV3QkclnbPgJE6ys1am8lyoTEuRp3sQPa/FZ5Xn3sgRudAcGMV3b7RJBGhn+j0URm
         y0Ug==
X-Gm-Message-State: AOAM530WrLELTMlJg1snXJS5v63LKu/lVmtwO15g++GhbrKysL+14Ny7
	15IcH7kJAa+l5GSZBO9yWWThmP0pz88M1A==
X-Google-Smtp-Source: ABdhPJyZ1HNParLvvy4rzpznCl7QS81uDSoiwV8fB4OIS0XVE5dQ8FZK+15fz5DY06IYoRqXJpCRHw==
X-Received: by 2002:a05:600c:4f87:b0:392:9236:3c73 with SMTP id n7-20020a05600c4f8700b0039292363c73mr5367903wmq.158.1650262770786;
        Sun, 17 Apr 2022 23:19:30 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163])
        by smtp.gmail.com with ESMTPSA id q16-20020a1ce910000000b0038eabd31749sm13992199wmc.32.2022.04.17.23.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 23:19:30 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Cc: boris.ostrovsky@oracle.com,
	jgross@suse.com,
	sstabellini@kernel.org,
	xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	ira.weiny@intel.com,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH] xen: gntalloc.c:  Convert kmap() to kmap_local_page()
Date: Mon, 18 Apr 2022 08:19:27 +0200
Message-Id: <20220418061927.6833-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The use of kmap() is being deprecated in favor of kmap_local_page()
where it is feasible.

With kmap_local_page(), the mapping is per thread, CPU local and not
globally visible. Therefore __del_gref() is a function
where the use of kmap_local_page() in place of kmap() is correctly
suited.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
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

