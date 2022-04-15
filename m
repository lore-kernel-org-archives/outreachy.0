Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9BC7A
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 20:53:12 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id u3so11856061wrg.3
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 13:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZyOgwEJ9l8EA5lTTda7+EsCqxDSAHYk8KWdTQlUMJjs=;
        b=hURxvbcmXHZE0cQH3he2QePF/JGuwU07L7NGIqE/2niCHabgXwWqBKJKSoyZOLoD7u
         sz3kg9MLB33erxci1PiAerJBsobmblASO5dM6QkSEdatwtp9cYp/a7/Eh1MvKxZptgql
         aKud9nAnTNe2KL+vZidB4WUXvykVT8eoPBPEsx5wApTLFqievy5rjge9ym8ILqBBYMl5
         zrYkDoubRBWNgQ5SFhp+FaIpbqA7aUXtfS9IUD5uMvL3V5bWGEJBk0F60dhKqEaAHMH+
         G1BfjyOAQ6tQy/YEjoiNZ9iiLkwqYf6RrRc5OVrG4CGOuIJDF5v0r3MxQ5wwfaWXJaML
         ABcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZyOgwEJ9l8EA5lTTda7+EsCqxDSAHYk8KWdTQlUMJjs=;
        b=Z9OhTdGmTS8DIRkRYOeYCOV6z/MhOJIisuhIjY7qcv0Xr6hn0jC8utuxWtF49xOSLn
         +03Cvg7+pToaMmcf9oTA9elbDSVDS+KLmlW7n2zH6mf+JnOmSaIilkBIE3bO9/G+dnc0
         RaOp0bcyr8YerRAeWtmXUt0e1JnH5JrDeuLf5YM8s7ImVLJ/4J0dIlOmzJ/ZFww8EZn7
         3T/aJ4UvPgD2wP+AjiQTCRCF258gMtdEU1iNHhL2D0dDoLuhgMgNMSWOtESEscuf3veZ
         uRz7fvC/k8c44z+czkUl1FE7LeS32VuhoMYAfdIxEWiiTsNnoxJSPV3Qsjkf3fukCm5D
         mwrg==
X-Gm-Message-State: AOAM531RMN+yrJqQ+90CYk+tIFa4KsD7NsfdzQEwThy2AhFMWJP+mW1o
	D+Gryzz20FUHit1pr5qtf3Y=
X-Google-Smtp-Source: ABdhPJyIDzuWNU+lgGyISF0WOPX13KdzXq4i1qTNAc+fd86+SmAMO+2T2lNd4SeTSq93uytVO66I+Q==
X-Received: by 2002:a5d:4085:0:b0:207:b13e:e8dd with SMTP id o5-20020a5d4085000000b00207b13ee8ddmr538897wrp.557.1650055990836;
        Fri, 15 Apr 2022 13:53:10 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163])
        by smtp.gmail.com with ESMTPSA id v5-20020a5d6785000000b0020a792848eesm3181988wru.82.2022.04.15.13.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 13:53:10 -0700 (PDT)
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
Subject: [PATCH] intel: igb: igb_ethtool.c: Convert kmap() to kmap_local_page()
Date: Fri, 15 Apr 2022 22:53:07 +0200
Message-Id: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
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
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2a5782063f4c..ba93aa4ae6a0 100644
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
+	kunmap_local(rx_buffer->page);
 
 	return match;
 }
-- 
2.35.2

