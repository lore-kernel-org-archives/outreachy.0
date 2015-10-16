X-GM-THRID: 6206285490616795136
X-Received: by 10.129.157.18 with SMTP id u18mr13061686ywg.28.1445013636705;
        Fri, 16 Oct 2015 09:40:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.18 with SMTP id x18ls825574iod.65.gmail; Fri, 16 Oct
 2015 09:40:35 -0700 (PDT)
X-Received: by 10.50.82.98 with SMTP id h2mr4990387igy.1.1445013635854;
        Fri, 16 Oct 2015 09:40:35 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id el2si2091789pbb.0.2015.10.16.09.40.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:40:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fv9so27273801pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=7/oyDeL6Nj2n2oL/m1sPWQtMx8/GXuUGGGu1DwlvkD4=;
        b=PieTKWPsPTmPPwBRMQ3T8Pr3HtWhpl6rtXpD0Fv0AY7Zkyiefz54RjeosqdgCW/qn2
         OEwDytK1ZCvwnYnEdKHeDS10fNHmU7DgIcmHZNh1VgGB8/GbW/e59ZK7zTRmtthXTt+O
         N8H+eyiC8jgQ7yJuOWrdR2VYs1WPQW6jIru6J4a+C5JeT+v9vN07FrUhYLq4qIOuyoXi
         vi6OXtFfL/Ilryrb8Vs1B/4rLDtLuNOlIEkmpgJOl8AhyYEcMP0rTBQxBedLBhqpjuoN
         lEXpNnifAHPYh5pjEl0ktIe7FHLY63akvRIckmZk7zKQs1BsrqAOZKtF7drmyowEaNQU
         xN/w==
X-Received: by 10.66.221.104 with SMTP id qd8mr17896616pac.155.1445013635673;
        Fri, 16 Oct 2015 09:40:35 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.108])
        by smtp.gmail.com with ESMTPSA id hq1sm10516877pbb.43.2015.10.16.09.40.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 16 Oct 2015 09:40:35 -0700 (PDT)
Date: Fri, 16 Oct 2015 22:10:25 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: rdma: amso1100: Prefer using BIT Macro
Message-ID: <ebd718343062889180eed4aeb42a65230dd2140b.1445013271.git.amitoj1606@gmail.com>
References: <cover.1445013271.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445013271.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace bit shifting on 1 with the BIT(x) Macro

The semantic patch used to find this is:
@@ int g; @@

-(1 << g)
+BIT(g)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/amso1100/c2_provider.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/amso1100/c2_provider.c b/drivers/staging/rdma/amso1100/c2_provider.c
index 956d76b..e44ad22 100644
--- a/drivers/staging/rdma/amso1100/c2_provider.c
+++ b/drivers/staging/rdma/amso1100/c2_provider.c
@@ -372,7 +372,7 @@ static struct ib_mr *c2_reg_phys_mr(struct ib_pd *ib_pd,
 
 		total_len += buffer_list[i].size;
 		pbl_depth += ALIGN(buffer_list[i].size,
-				   (1 << page_shift)) >> page_shift;
+				   BIT(page_shift)) >> page_shift;
 	}
 
 	page_list = vmalloc(sizeof(u64) * pbl_depth);
@@ -387,7 +387,7 @@ static struct ib_mr *c2_reg_phys_mr(struct ib_pd *ib_pd,
 		int naddrs;
 
  		naddrs = ALIGN(buffer_list[i].size,
-			       (1 << page_shift)) >> page_shift;
+			       BIT(page_shift)) >> page_shift;
 		for (k = 0; k < naddrs; k++)
 			page_list[j++] = (buffer_list[i].addr +
 						     (k << page_shift));
@@ -408,7 +408,7 @@ static struct ib_mr *c2_reg_phys_mr(struct ib_pd *ib_pd,
 	       	(unsigned long long) page_list[0],
 	       	(unsigned long long) page_list[pbl_depth-1]);
   	err = c2_nsmr_register_phys_kern(to_c2dev(ib_pd->device), page_list,
- 					 (1 << page_shift), pbl_depth,
+ 					 BIT(page_shift), pbl_depth,
 					 total_len, 0, iova_start,
 					 c2_convert_access(acc), mr);
 	vfree(page_list);
-- 
1.9.1


