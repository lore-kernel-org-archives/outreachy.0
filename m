Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498277A
	for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 11:15:02 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id n40-20020a05600c3ba800b0038ff1939b16so5082853wms.2
        for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 04:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uEhSMDHJtiuwdrj4dJJyu97KIVJOOD+nk/JiQfVUpZY=;
        b=dAvG/VUOiUi0sXwkQHoF+5NVAuiQMfKZcP1vqgjbrBMkds32W4S/eU8nfu9IqtPPMh
         RAk15ZLBRCzkyRWKkGVGJpTDzaSReBgjw+tB0S7YEMHgWwyGmXlgdNTTvue7wzattbWH
         6/vvwJXkAwZvshn54gexQbZcinhpcI4xzvXg3WLmsxJL7y0INjgfbhPUZKVTWaVHWPZs
         hUMyU6iVTLqHlA8iSHqeZj8/wn8dBw8KYI6VkbA5YMmL7AkLk5GoX42GmWcNeitGY8lq
         2LT9Kqd1NhYAjJYGdAgPh9rKu9HOKoKFVzLMflSZnl+3U1TQg8kn1sKUX7Tgj0kUP149
         66lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uEhSMDHJtiuwdrj4dJJyu97KIVJOOD+nk/JiQfVUpZY=;
        b=bexrL4NXorUrnl70lLIaySnoUFRdDfUFljHjF0ldnCiOHueplehFKp2n/0W0n84v6m
         JL5EdEA3Q/1iij1AZb1j0xJiEKpP1SJ6To7IBLbob0CzCVv/UvI8PJUb8FtgW0gE6o5l
         O7ld3nLgRAo6NtnMpTnLoqGJ9Tz/VOvZS1pVbKphJ8fuKaGcvPphfzlk+oJDEZPa8yV7
         oHX+M4HilrDiMVOLvnCjZ5JgNC3ndZA3OdeZmG+Ugd4mjz2aHLxvA0rui59MfGbcenYv
         Y5PWNabNyKZvBKvigf/6lfTYKqEWHfuU97/5YshLWCN5GaRSSwEmwXlA+hJDRHNmykfX
         uezw==
X-Gm-Message-State: AOAM533Lma8WGwzvQqbTrzqLZ7lrxnXXaKtaxV9zDI8wWcqiW41sF+Xx
	Qd6rZOvIl48rHj46tO79FEw=
X-Google-Smtp-Source: ABdhPJxpvZFQaoNKdlYwE8qfxCxznE1bYGAnUYXCQP5HCgyf90I8tzuMZa59kHFBG+rR05HyfPdo7A==
X-Received: by 2002:a05:600c:1e8a:b0:38e:d57d:a3fe with SMTP id be10-20020a05600c1e8a00b0038ed57da3femr7027147wmb.59.1650107700553;
        Sat, 16 Apr 2022 04:15:00 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163])
        by smtp.gmail.com with ESMTPSA id 2-20020a1c1902000000b00380d3873d6asm7344196wmz.43.2022.04.16.04.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Apr 2022 04:15:00 -0700 (PDT)
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
Subject: [PATCH v3] intel: igb: igb_ethtool.c: Convert kmap() to kmap_local_page()
Date: Sat, 16 Apr 2022 13:14:57 +0200
Message-Id: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert kmap() to kmap_local_page()

With kmap_local_page(), the mapping is per thread, CPU local and not
globally visible.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	fix kunmap_local path value to take address of the mapped page.
---
changes in V3:
	edit commit message to be clearer
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

