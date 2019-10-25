X-GM-THRID: 6751774609571315712
X-Received: by 2002:a81:5408:: with SMTP id i8mr2778170ywb.385.1572020028010;
        Fri, 25 Oct 2019 09:13:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:68cd:: with SMTP id d196ls1567202ybc.13.gmail; Fri, 25
 Oct 2019 09:13:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz3AvRhpEjz9aE7xAak64wxNHK3X88nCxcG4yL/Ea7KoF3YMVSd/Qbb14bt89KTmKBRNIt1
X-Received: by 2002:a25:e649:: with SMTP id d70mr3938891ybh.455.1572020026270;
        Fri, 25 Oct 2019 09:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572020026; cv=none;
        d=google.com; s=arc-20160816;
        b=Yl3OZbmoLQnYsoG4D+6jcZSp40Y4Kk8oScg1NTyyAKLZxRxzq9JoIGU800llp6ZbWT
         Ke1DMCIQEvMRitTFhEGbMkFcvbWEDChjTU4fGHx0RAcvTWkfRmNfpkB/32ZzlFF4oEIY
         sff568P+z9UrptORVxrYqAQbNpSWnvOgxAK+XO4RShMWgIaBom/nLZJmlIecICoJLe52
         FL3CEvIW5WNSlJn7J89nx7IjDbr9EEkM76DjHNMHQ1rKk2vTVv2OP/xrVFbb+ErgZyic
         0BOtFELXaRmxU2z/LJwxbPI+cfLDM6fyw8wg/Oc6K9FMrqjXjyZRLgOWwKuMao5xn6C8
         /k3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zt5aCiz15+loMlGNkzBIrHfGb4vgaMCHvSQtYFRY/lc=;
        b=kX7YcEmqTZy6zXrNJFSbU5+QDv4tYuH0h2g6WsfQGmPJBtwnJQoPm7hcNv3hThqDGN
         u+6FvBeoe3nfHcdZYBBo5L4BfNMpWeEuLZadJpDonM0dcJbIwp43kagoUoMQe2XoIlv+
         8igaMqLwOd2vCGc9KuIyMakYKF9+vKFzfDfQDb+KMQWllWdgSn4DnwANEYaAPkhwEOrx
         HIp/2ycdffbls4F9xLPhBYwYLDzhyeS7mPLrzhwtnQVX9QDaWFzl65dAMtbjLA4sY2Vf
         IZk0XuKpzJLjkO10KJpOvG6jx1cHsUm56DvlM8e7QsWnlOP75FbyOu8TzZPD+EZgKLTL
         6tUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSqSQdFp;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id x7si182711ywd.5.2019.10.25.09.13.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 09:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSqSQdFp;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id a194so2245842qkg.10
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 09:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zt5aCiz15+loMlGNkzBIrHfGb4vgaMCHvSQtYFRY/lc=;
        b=RSqSQdFpzftnwwSvyCqfqI9kI9R1Gea4uZu/7c4HcLOEenQLvD6CNyY5ApaP3r8LOg
         Jt3rIUOFP0gv10p9j27BeHWQskLlx/bqhFgIcJGilqsGmOA+G/LMMDhQekmzaUqhGDKV
         F3R0k6+e3D7ZXZcZXHb1X0qkfjr35s/KVZK3Gcf45bXvQAuWDpDFsdVb29fnYlGOjrcy
         sFGCX8CtSZqkj+UWFYO22haL9lRb6hk16PffKamRtudK31D1i4jLKE6qzKQSsmpVjAvm
         jILjuKOYKQRsTFExw+Kq+idBK/QAgVDny4LFGejnKA3MRr2ui0QiHQVon+z7TOIhjWVO
         KeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zt5aCiz15+loMlGNkzBIrHfGb4vgaMCHvSQtYFRY/lc=;
        b=rX8Sbt++/CUcLi0rdLAh4ciU7ccO7eq3jQ4COJ8Gqez+5f2WC7I4zs4ZqXCzQQvwFx
         0cNW0RbjcSRP25bAvzQzL7wd34NwdusLnJBQTIWzg/Xqzy6UN5MtcCGKGACr1moU7UWw
         LXlG8QJ1Id31Hhcj1Q63MNc6gAAAtM+2ItvBL7Mo04GTM8WORf+RUqWydNZbyJ1A8TgS
         oLnCyV3d5/SIOALqFBu0TmqLzYJEndJgAjcPQac7WevaTQK/yORPYH1Fg70XI3V1Yxs4
         4ruJzS2IahAnyuapOOAH5ZAKsYVnJK5hubfTib3TjcbNPTtGnl2mupSWRcEVcJNM0wn9
         h9ew==
X-Gm-Message-State: APjAAAVv71Hy5erwDezoBzNUca5uQsTjYbaunFlCMwHwp8K8uhNlwcev
	5/F37G5zrseutg1MAhjd6z/XLd6vKaWz2w==
X-Received: by 2002:a05:620a:1321:: with SMTP id p1mr3595050qkj.272.1572020025716;
        Fri, 25 Oct 2019 09:13:45 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id q17sm1383695qtq.58.2019.10.25.09.13.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 09:13:45 -0700 (PDT)
Date: Fri, 25 Oct 2019 13:13:40 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Joerg Roedel <joro@8bytes.org>,
	virtualization@lists.linux-foundation.org,
	iommu@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@lip6.fr>
Subject: [PATCH] iommu/virtio: Remove unused variable
Message-ID: <20191025161340.GA31368@cristiane-Inspiron-5420>
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


