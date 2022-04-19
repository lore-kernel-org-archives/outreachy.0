Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F09B2C9C
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 23:43:18 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id p18so23615323wru.5
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 16:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jpkNlHRMQuG+lJdQ+TUaFjLfxZlD8sn5DIiknsBbDyg=;
        b=FHAUUHCg0T3/vQIQ/bRF+okFzhmCwTsm49QMr/HtsZY8D9NoBitjzbzAPlvKWo66mA
         yUnvDeEbuMhjeA807IQhUI8Ctj3s439/+etFMhsfgrAA4Smy1dcxpn/EJH6TyW6FEAXR
         0qJYEt8SkyFHjGdFjWy9fFJFKT0wFvbTjlg+365GEgIVkIXwPnyr3W3h9VMyJMureiGc
         fIHdnE6wXYFzj2+u0dkSRs8aoLp39jBwBr3S6YvvhjCJvDa/XZxCiBjH6txwEF+AhdOm
         fLy55B3TJrSbtkusmN4BB31KPN4I8UbQ8lMsuSCLDa2Kr87s9Q4E3TeaX1denTp6psgF
         mEsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jpkNlHRMQuG+lJdQ+TUaFjLfxZlD8sn5DIiknsBbDyg=;
        b=IeWPocPoeswPHb4NTM914FHofB9SWHR4+F7rjv1SBO5qRmU9wZnkJTly57K4UZeXmL
         pPXSOKg0CoXDgJVCQ8QgBd5vTOqI+G5/lMuq6Uepoe6WY8UKtOr0SXQq39fsYdo1Fkgr
         UCsQQE0Wdr5uUKThOrLCd4ex4TcBvCvIx95xJjXMUSwWOmLR+wxbMdI2OeqaeS3wKwfJ
         1YTj9GM8k53pBMTNCcoHcJRRwePA74bxV2mGXXfWqO94K4LClO8wb25exfnPT4kXptI2
         eouOoi0Ofy+RXWLOk3NbjxT2cNKGcwUFQMvHY7DCdV4i1+OhLpEdWv+Y4l+7fz+Vj6f/
         ia/g==
X-Gm-Message-State: AOAM53201WaJcWn+6t7o6A6uIKYvQK5aKofjuOeAXW0tzryHP7ewHdnf
	JPurwNdFZrFBo0Pcwoq1dBE=
X-Google-Smtp-Source: ABdhPJz1SgnnztC1b+XjTbtAXZve8DQ0RYcKvnNS+M9/iIN1yJ4iCUjDKX3GZOoZrrU6LsOZfnM1eQ==
X-Received: by 2002:adf:de90:0:b0:20a:8e73:aff1 with SMTP id w16-20020adfde90000000b0020a8e73aff1mr11180895wrl.151.1650411796437;
        Tue, 19 Apr 2022 16:43:16 -0700 (PDT)
Received: from alaa-emad ([102.41.109.205])
        by smtp.gmail.com with ESMTPSA id z17-20020adfec91000000b0020a98f5f8a7sm5623982wrn.6.2022.04.19.16.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 16:43:16 -0700 (PDT)
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
Subject: [PATCH v5] igb: Convert kmap() to kmap_local_page()
Date: Wed, 20 Apr 2022 01:43:13 +0200
Message-Id: <20220419234313.10324-1-eng.alaamohamedsoliman.am@gmail.com>
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
	fix kunmap_local path value to take address of the mapped page.
---
changes in V3:
	edit commit message to be clearer
---
changes in V4:
	edit the commit message
---
changes in V5:
	-edit commit subject
	-edit commit message
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

