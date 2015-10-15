X-GM-THRID: 6205781635135176704
X-Received: by 10.140.135.5 with SMTP id 5mr6447768qhh.11.1444897479281;
        Thu, 15 Oct 2015 01:24:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.41 with SMTP id 38ls636248qgk.10.gmail; Thu, 15 Oct
 2015 01:24:38 -0700 (PDT)
X-Received: by 10.140.238.83 with SMTP id j80mr6478106qhc.2.1444897478843;
        Thu, 15 Oct 2015 01:24:38 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id vy6si1271685pbc.1.2015.10.15.01.24.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:24:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by payp3 with SMTP id p3so33148604pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=QJEPdOeeuZUq32rnamHYvsABvDNOJZeiGLUx3g3a6Ug=;
        b=NbDWqBRlHeg0vLXgcYds79dJ4ZsJw+pdkhnyyos8TiNNAr2cWaKfkYM4g68x9dqTjw
         yRj3/PALkQNNPCnWfJ7u0U4MGlJYmccS7yTL9ZvJClh/+sq0YY7qPygvsDj7s/4/lRLG
         6Cc6C+EmNpg44IPQnHRoIpS6AOKYxuL8jBrjJNhdFbIzMTn/w779umcITuPgEBICN1cn
         8doUthq0aPEa+SlycBCx7BLB7nCUZpkROxX4VMwg1ler6BJjBMEUTNjD9trR5wBoSYDH
         qkJpqYf+xE4RARYLpP7kv+SXcuXi6lZZIsgvlZwT0tushA6XF7JDm+MM34NMryly+TmC
         imJA==
X-Received: by 10.68.222.163 with SMTP id qn3mr8843229pbc.54.1444897478589;
        Thu, 15 Oct 2015 01:24:38 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id xd10sm13931544pab.25.2015.10.15.01.24.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:24:38 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:54:35 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 16/18] staging: rdma: hfi1: sysfs: Remove useless
 initialisation
Message-ID: <63f53817d8fa2d805e50bc6d38b781b925dfb5f3.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/sysfs.c b/drivers/staging/rdma/hfi1/sysfs.c
index b78c728..1dd6727 100644
--- a/drivers/staging/rdma/hfi1/sysfs.c
+++ b/drivers/staging/rdma/hfi1/sysfs.c
@@ -555,7 +555,7 @@ static ssize_t show_tempsense(struct device *device,
 		container_of(device, struct hfi1_ibdev, ibdev.dev);
 	struct hfi1_devdata *dd = dd_from_dev(dev);
 	struct hfi1_temp temp;
-	int ret = -ENXIO;
+	int ret;
 
 	ret = hfi1_tempsense_rd(dd, &temp);
 	if (!ret) {
-- 
1.9.1


