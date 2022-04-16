Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D4B17C9
	for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 01:19:25 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id w4so12291089wrg.12
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 18:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2Bf9ok3qqr2tkNhXNTndNo5u+WE3bYamPKOf2o8UuHw=;
        b=XjCVFe5nIUhZlq4sKzILLAUdIcxaTYQDznCGjtGrbpXRwwYQ3M8wUeCXPgk46XJoD3
         7XUMZmoK8UrtKecT8Y4P1PpUGnksBn1GcIkLrYuB5duFNp4tu+okUQL5HFRmNCfKaXgi
         AROzOsRZwhOvzwFhvzB5+VEakpDbJgKQpIyqZBU/mdmOVForkW8DJxB77ZwkUU6mLgTV
         xNMz+I9FdONbz1R7D9cLrbg1hjv1pyfrumrlSK/pq9FtBDXN0GuLtcFYw5uhO4X8xWWL
         baktCX0XpEarzZNDA0oFU7Z6Y3n6t38iYUYym5XOLmYW1oRVzJN8q5QFZI9sHQ+FGdXm
         1cvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2Bf9ok3qqr2tkNhXNTndNo5u+WE3bYamPKOf2o8UuHw=;
        b=BF3Byqqe3ZqNK8CIjsa1pO9Nt8pShAGhkQhKTSeqjG+V8xMBXNVF9U1GdOivY7AAx9
         WXchvvoC14VswwKpugqZ8tFhdU19MQJg+oaB3mhPnlfw9HZB4QK77Gfnt9C2wCaRRpIO
         1Q94rh5i94SsVrcmrGC8fDSYt815G5QcS+zjBVKEDOdyKZseDxMZ+lNkvT4mTIswafbT
         pHNFVRkwiA3GZmP+5XxbrTx4BZoCnlU46MEfi0DZikZfTZlkRLyy0CiXjYwora4o8G5c
         SLFCpJuioqRX+MG1YqAMP2tqStnhlgHmTU8ANcCsO2ytBU4gbSJD7cHIYa7RYPDMgP3k
         YUTA==
X-Gm-Message-State: AOAM530f4r5mPOSZDWImVepbm6hgB0EvAwVPhRPdBIpzkf5mlN9httEb
	qLC3zEMcej2d2Ajd4dMMlmk=
X-Google-Smtp-Source: ABdhPJzVIQW3hTUxtbFojN9M9UGqtaIuMj0zU3SmMQ6W/p3T3CkqpwCpZtc9yxr9eRL4LR0bx7nWAA==
X-Received: by 2002:a5d:48d0:0:b0:207:a861:dcc9 with SMTP id p16-20020a5d48d0000000b00207a861dcc9mr1022300wrs.490.1650071963568;
        Fri, 15 Apr 2022 18:19:23 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163])
        by smtp.gmail.com with ESMTPSA id x3-20020a5d6b43000000b001e317fb86ecsm4998374wrw.57.2022.04.15.18.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 18:19:23 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Cc: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com,
	davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com,
	intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ira.weiny@intel.com,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH v2] intel: igb: igb_ethtool.c: Convert kmap() to kmap_local_page()
Date: Sat, 16 Apr 2022 03:19:20 +0200
Message-Id: <20220416011920.5380-1-eng.alaamohamedsoliman.am@gmail.com>
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
globally visible.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	fix kunmap_local path value to be address
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2a5782063f4c..c14fc871dd41 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
 
 	frame_size >>= 1;
 
-	data = kmap(rx_buffer->page);
+	data = kmap_local_page(rx_buffer->page);
 
 	if (data[3] != 0xFF ||
 	    data[frame_size + 10] != 0xBE ||
 	    data[frame_size + 12] != 0xAF)
 		match = false;
 
-	kunmap(rx_buffer->page);
+	kunmap_local(data);
 
 	return match;
 }
-- 
2.35.2

