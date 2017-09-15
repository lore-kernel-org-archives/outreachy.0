X-GM-THRID: 6465879632669310976
X-Received: by 10.129.46.150 with SMTP id u144mr14303183ywu.240.1505457515776;
        Thu, 14 Sep 2017 23:38:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.36 with SMTP id 36ls2376443iog.52.gmail; Thu, 14 Sep
 2017 23:38:35 -0700 (PDT)
X-Received: by 10.129.75.88 with SMTP id y85mr15179657ywa.108.1505457515296;
        Thu, 14 Sep 2017 23:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505457515; cv=none;
        d=google.com; s=arc-20160816;
        b=g1hG5XopyVc8o9qDvFxGXaLYb/WDH9ZMreWnwOdrmSB3VAMVjUPxYS/Wyo9G5wJb14
         QqSqNEV3G7+urLEXEqjfvijyrNLc2BK7IT0SdAjJQGojZgrbn/lQI+ZAqRG9Y2dQikgY
         Qq62Rn36XCoHLTMGC9JsUs/XivuAplPors1L1XfKKQdKgoVEFVC0IZTSuhaytVTy3wXK
         TXhoxVM4OJDyHiYIBoJynaoz6FU69NsrRsEIlOTyfGy5TPuJYSvlW2g/raq3HeQCAKQs
         KslCZqsaWuT0OVF6UawaiFLeO3XeMYjK01YF5T3uSmCd203l7kcw4q80ASuoyE/q52p4
         fOEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=LxC7VcTYabaABXo1fYD51ltlASVNB/p3I7imX5dncxY=;
        b=yTosUy6xZ6wJM3hS3GRpu8Fq1nklRHEw5CM971sPGAbs0RQESBEONLjJDJozd4kMi+
         bnGgMboKnLRmdgUTVEIwBLlb5J8Xrvs+MXCCMLQzO5cyh8xtasbmPglHwVhv2sPVQVoE
         Kre/6uXtr1j/yVkfMdzJDm4m0L7//LvFGGDSC72FakH2lf1dcBrwMC2JgwXosdAyu9co
         qhteS0tIHgxDuIOxBOyiopzQ8O1ukTKXpvqhXooIooNw7CFnm4Tkqyw/puUlPtkbhGKk
         9tZ5ggvFi9Ky3Ptmm8mjTeR2VTHSx+0MqXczYaM7HswTnO+WX45q1ulnx0ImZqubtseJ
         5buw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ltjvq04u;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id q65si21563pfj.8.2017.09.14.23.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:38:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ltjvq04u;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i130so893100pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 23:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LxC7VcTYabaABXo1fYD51ltlASVNB/p3I7imX5dncxY=;
        b=ltjvq04uVTy4giywhSN4/L5h67bexZT+Tn/gAFncu9+R9txRGYxeZfLjnQNcwKzNiz
         edT0cUGdK2Bjm9X41jiYzDjcXJoQKXdRGqv6zFQNy1242hONt8B3Hk24BIeuFmLp+IAt
         zGDA6dhq+ReOgmrGwwW0izy7CPQm4jZ0jDefZZ/+QzemqigY/zt3Do8zwni+M4wEU4//
         62rtb0I+9dXaYG1PG7AysH/vefPaSG9Qth0v0XTwH331Lv1dOgdN+i6CTlDKvPOHznfP
         NGtcLFNZBzm/t57jxvWvDlF+h1rpIoDRZW87z5rPY1/Y04orboiGfAtqMXQYSysvSPVD
         BBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=LxC7VcTYabaABXo1fYD51ltlASVNB/p3I7imX5dncxY=;
        b=RY8YNj6+QgUZboim3wFN1HnBC5t7IlSZDv6nh1QL0lOBDmDtKWGN9nHt9J8IkxEmbL
         /4uZbTO5CYmw77Dd9X976BHk2siBYxLJL7pKcIDUajSDhkYtzTjqEGDw9vq5PB3rJgEP
         Me9nsBwHyEXwyFH5d1Ark+gZUdOjLSQh+DpYuGQSK+qP0maVZhzTSTx9qocMYYFBQG04
         z6rwNlmnSPMnHn5wRWhDx2ICWKlIJ8pY7UtdOU0j3hYtKVBbtBlwgWYE79g3jt6REYan
         hhrzRGb12r5WAUtOeiyK89U+urqiUdO+1KA+gVJLwS9zJx3RSNHuXRzitaKSyode7UsH
         osmw==
X-Gm-Message-State: AHPjjUgrf1BUMJoEwA4MCXbz/igsnVv8YIKZZyRmI+YfuUaqd7Zos5SJ
	1d8eq8ZBzhyCTELMGJo=
X-Google-Smtp-Source: AOwi7QC7+GJXzL4zIMpGB7BkdAWRzZ8m9coGCQ0ckQhF0naSHdL1FUsdqzknvgE/Spl7peOynrJBrg==
X-Received: by 10.84.149.197 with SMTP id a5mr1852188plh.55.1505457515025;
        Thu, 14 Sep 2017 23:38:35 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id 72sm702120pfj.102.2017.09.14.23.38.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 23:38:34 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 1/8] staging: lustre: ldlm: fix line over 80 characters in ldlm_extent
Date: Fri, 15 Sep 2017 12:08:16 +0530
Message-Id: <8cdd5b82963163e107bc7d73b5ed22145cbb5903.1505456961.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709150814460.2287@hadrien>
 <cover.1505456960.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505456960.git.aastha.gupta4104@gmail.com>
References: <cover.1505456960.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
index 2cc6dc2..f9b4c0a 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
@@ -207,7 +207,8 @@ void ldlm_extent_add_lock(struct ldlm_resource *res,
 				continue;
 			if (ldlm_extent_overlap(&lck->l_req_extent,
 						&lock->l_req_extent)) {
-				CDEBUG(D_ERROR, "granting conflicting lock %p %p\n",
+				CDEBUG(D_ERROR,
+				       "granting conflicting lock %p %p\n",
 				       lck, lock);
 				ldlm_resource_dump(D_ERROR, res);
 				LBUG();
-- 
2.7.4


