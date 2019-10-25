X-GM-THRID: 6751743425868988416
X-Received: by 2002:a0d:f8c4:: with SMTP id i187mr2810677ywf.122.1572016759464;
        Fri, 25 Oct 2019 08:19:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5986:: with SMTP id n128ls922149ywb.7.gmail; Fri, 25 Oct
 2019 08:19:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy1eYPyfrfUTANo2KZds0vGt7o50yVK5XywEOx/iizPEgKT4u9CbxaysLYC8BXGzynY8jtT
X-Received: by 2002:a81:9952:: with SMTP id q79mr2801793ywg.89.1572016757917;
        Fri, 25 Oct 2019 08:19:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572016757; cv=none;
        d=google.com; s=arc-20160816;
        b=eV/NPs4h8B1FOMZQGzTw16RcVM3vNsRd3ESejOU5/diJz8COH1vDnsVDNwBnXC8ZeW
         w3macydWHjqO5oj6tppbOb206+TxXDt+JCrohxMxiVhS3iL5Dtez2EACPo4czVgRAdN3
         JCcCDcEatbLWKO8j2tLfKWt9n0VfKvls/veKKl2GD4pdhpeD6sieSoLVnsrp4qN7quHz
         QkbiaoDgfKvc8tGvpQ3NB/BUh0fRhYlhvK+btlQBix0uJkXaLhpg01v8Q4C3BKis1mgJ
         Y9LGGu7qSlTp2zjHcmdyrydybGkhQb95CAGoClEzdLTa4JYCxr3ZzM6QCI+n4NQ8X5Et
         J+6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zt5aCiz15+loMlGNkzBIrHfGb4vgaMCHvSQtYFRY/lc=;
        b=Y7xz3wa/geyIl3t3FYriTDoTpRDA3kGyGYX0bT77PAyJQ1w2H1ulOTBcrKvZ3ZzaQU
         OM2YwF2j19nn3nvETg8/R/A0m9D+TaunoekFMJMdZoyRCLyiP009adQxW+YLwYogmIBp
         7LWAOJo7ez2BxeVipilJv9/smipxSLYAAtGlql7+X6v9+TFznc8+wR3JxVQyvyuKtlOy
         EeujycK4OpLNvuuhCihCAKZ3A3+vcQorfno4C07z5YBXP2J4kZKAoY61rkMP99Etkrcq
         Hvytxv7EzGrbSzG3tVupGZT/5+ZA1lr4ORw82yJay2mBQvQvIgZDy/eM8KBBZjd3iyNi
         Lfvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=szZenpXd;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id l3si195678ybj.5.2019.10.25.08.19.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:19:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=szZenpXd;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id 15so2090264qkh.6
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 08:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zt5aCiz15+loMlGNkzBIrHfGb4vgaMCHvSQtYFRY/lc=;
        b=szZenpXdIs/Qs42rZTp/K4o3qvlwWfhC1FGKTVDBmpy6uK3a1nmAwYu+ZK/dnGpg7D
         FghmmktB5w49CHh0iAAkyYXYT8fNDeDaUZu7H2SUc3vgZjPoprLYoT0gv0bDN0FUyGyS
         yqVLhKTFXCzVe/Vt+ZfzxHUvK1GwdN1kq6Jh/sj8YOKFWK7f7TolA63Yj9AVVJvcnpNE
         5Wbjvy3SrDyEkFp1eeWLZc9216uW0Cf++2qcH9486UNtLvZyAz+6ef8APewaUq6z32n0
         +EfX3OFqvSAU485tUejlHjdfVW2KJ17iDTFe6ixbEe2iEq8BvF81ZdHE36K5OdjwQoLn
         1oEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zt5aCiz15+loMlGNkzBIrHfGb4vgaMCHvSQtYFRY/lc=;
        b=dIuJEm4XrnfUbg/tRUtc0zPn0HRcHe643606itMGfgJLHbBDeOX07Huo1bsEebxW5S
         /moLlBtHC8kQC+BjJdC/g7O29UuTTh0ASr2DHkLMPh7d7JAc0t2QBAl9mdC15tr482XD
         cVnsoNoKCPyYk79C1Cm6hA3KxRwwq2XJ+/ZezBCYvcnEymkAtqPX1cgtjbEdjeMCBaBb
         Ah9hvgG9N10a0OE7ZStatvhNAPQH05jRzYkGDeXXEU1HpWxLwy+yhky8fIAFVh/iSGld
         coSI08UrIOQyQTtv631HqoxKievHfcCjh6bgtU24tTOby2vmynI3noQaljvNEVhz6OV1
         NobQ==
X-Gm-Message-State: APjAAAVKBPMIBQst6h9OGyDc0owvMN59CKNNhv6TbXstvrnHAYJgn03x
	gATp/k7M0QQgbcuy8Rtnf1PSP2idEMD3Uw==
X-Received: by 2002:a05:620a:200f:: with SMTP id c15mr3046095qka.263.1572016757433;
        Fri, 25 Oct 2019 08:19:17 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id f21sm1788749qte.36.2019.10.25.08.19.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:19:17 -0700 (PDT)
Date: Fri, 25 Oct 2019 12:19:12 -0300
From: CristianeNaves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
	Greg KH <gregkh@linuxfoundation.org>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Joerg Roedel <joro@8bytes.org>
Subject: [RESEND PATCH] iommu : Remove var of return
Message-ID: <20191025151912.GA30952@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the variable of return. Issue found by
coccicheck(scripts/coccinelle/misc/returnvar.cocci)

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/iommu/virtio-iommu.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 3ea9d76..d8f29c8 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -153,7 +153,6 @@ static off_t viommu_get_write_desc_offset(struct viommu_dev *viommu,
  */
 static int __viommu_sync_req(struct viommu_dev *viommu)
 {
-	int ret = 0;
 	unsigned int len;
 	size_t write_len;
 	struct viommu_request *req;
@@ -182,7 +181,7 @@ static int __viommu_sync_req(struct viommu_dev *viommu)
 		kfree(req);
 	}
 
-	return ret;
+	return 0;
 }
 
 static int viommu_sync_req(struct viommu_dev *viommu)
-- 
2.7.4


