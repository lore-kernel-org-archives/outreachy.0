Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8394A7E0
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 06:14:36 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id r64so8213916wmr.4
        for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 23:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e8ZuwAsZvFhjWYjd8yTG5wsLv6buaB3HfTucRNG+UqI=;
        b=WBAxuBJojSU2AxQ868FqVcQ6bk55DcVrjS+gy3jAnt3nvDlRlbljqO97Jz3Cz5AMiT
         rA4ZZ5BibfwSetqgnPmUrzvxgW5Rr3ceJV5T4gk8DGbjt369zJGMLqsD8d7D8Sc2b1Wt
         fJPj/M94vOwbducPtV5E9Ih0H1Ei+Oy623kbixxJycErlhhEub46YERI5B0USCLjqV9p
         pvq4FJxxKKN4YNjvfDQwT6GLNuqnymE6X7+nDqcD2WjR/4u3vAx8degW1ZL9ouFlwHW+
         t24S0hCJL4SePnhvBYckJXIkD5weNDMB2sTTJwICx+uvdewNGWsguBuV5ZFlwtHGzKlc
         m02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e8ZuwAsZvFhjWYjd8yTG5wsLv6buaB3HfTucRNG+UqI=;
        b=ErJpld8Dmno0txIaaBpdajDTQjh8voFP9Kub3WmNliibzfZzrOb7bzKPbk/NZ2XjXg
         B9mD8rIEPnMjG1ZCq4B9UhvlMXC9mxzv8MiiwKJN++qJT+pgHd7YOSyhKfsN4rHzbLW6
         TFjSHr6bB6EP5fdRfaBb+k5Bzw18USh1v4DuEUJD1KjInTqZYnwRgB9wWA8Wl2zLxvaB
         pAfabRKRSLNz2G4DStmB5csoqGSP+pxCcKlAeCgRW9+PN41D5OoA4XmS1XeyZW3YoaDE
         uYmPspXco/xobGM+enCVvK0+3KMD0FGLly6tsxgymAdzTmexcqpg0vdKHeI790+e/pJh
         vPVg==
X-Gm-Message-State: AOAM5333fTYZT1KZ7E4q+tZIE+3z4e+2p2QK0KwJITVBPnTEWil5Mu8d
	Tz5IB8U/MwVor8zG5TtPKKA=
X-Google-Smtp-Source: ABdhPJyPTRA13mBsIiG+RM0ugphkP3LSbXaCVQcb4zssDaNxL91RgVJA7llncwPOS67rRpAbsu7dxw==
X-Received: by 2002:a05:600c:5114:b0:38e:bd9c:9cb0 with SMTP id o20-20020a05600c511400b0038ebd9c9cb0mr13433157wms.153.1650262474907;
        Sun, 17 Apr 2022 23:14:34 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163])
        by smtp.gmail.com with ESMTPSA id z17-20020adfec91000000b0020a98f5f8a7sm1654811wrn.6.2022.04.17.23.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 23:14:34 -0700 (PDT)
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
Subject: [PATCH v4] intel: igb: igb_ethtool.c: Convert kmap() to kmap_local_page()
Date: Mon, 18 Apr 2022 08:14:30 +0200
Message-Id: <20220418061430.6605-1-eng.alaamohamedsoliman.am@gmail.com>
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
globally visible. Therefore igb_check_lbtest_frame() is a function
where the use of kmap_local_page() in place of kmap() is correctly
suited.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	fix kunmap_local path value to take address of the mapped page.
---
changes in V3:
	edit commit message to be clearer
---
changes in V4:
	edit the commit message
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

