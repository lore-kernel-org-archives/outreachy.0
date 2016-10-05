X-GM-THRID: 6337857687216193536
X-Received: by 10.200.33.233 with SMTP id 38mr1906085qtz.13.1475647484199;
        Tue, 04 Oct 2016 23:04:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.132 with SMTP id l126ls48704ioe.34.gmail; Tue, 04 Oct
 2016 23:04:43 -0700 (PDT)
X-Received: by 10.98.154.1 with SMTP id o1mr580510pfe.9.1475647483288;
        Tue, 04 Oct 2016 23:04:43 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ua1si2353875pac.1.2016.10.04.23.04.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 23:04:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so5831088pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 23:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KB08igL+o5UgFroZvukBlEfO3ubQz/C/YETpK5Pv7Ks=;
        b=GMyvw4ODcpuE93wWv9WTdiU4sA8pDUrutzIJiNJsgcG8+0ClrQTU3PD1gpSCH1z5t9
         Zlbmv8KMw2WUPXiiweENSeHBgiRL9QYCofpEf3wM1j4V8WtoMt6JqUOIjOlKWYV5WxVg
         j1/tNuJWEOTcWsd1bv5hJ3VHExsqBsgPxHywVEDfj3/58pzTUWD7iCQxuUD0XATFou2+
         4v8aI2X+I4b5TAmT87eFh881qyw3WoWusEGLkDDFAflNQNU6SrZm9kfq7s4khByCG+B1
         8cN2QSqn3a2lIR86m05MZ8sy24Ead+TqBSmRBKzEK6sOJcOFMg3d6mgcx3YauN63yP88
         rFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KB08igL+o5UgFroZvukBlEfO3ubQz/C/YETpK5Pv7Ks=;
        b=N1UG12PK9rdAyzEeeepLM85mr3Z2cdD6dae+Atw+n8kPpfLYxc7zRIkx/RchCBgDIp
         JsSwLnKmxArOq5ewiGuOwZOLovmsmjbKxQ8EabebkgtVgut0xTO1j1NIxYwWxGaV6k0S
         cxFbw2fpyq8YaMbbNTsd3K6pzrwZn6OtbY5K6zgoni264CzvKC2r0uOdkk79rmHmGmSB
         O/tA4iD1Nxepa5wI6NuSiNxTwCHFiigXmfWAfEe6M5JusNrGVyBvAWE2G6TPJ4RJzjir
         5fBJOlDYtHS+64n+2dKlauYjbsHejP9Gp1YXApsYcBMLgqDyMYe/iao5cbx7717UNSVr
         2lpg==
X-Gm-Message-State: AA6/9Rm3L0MxejdJ5vaZdhBiXdH8cewWhlYEAW+lSIj2EczDIEIU1aCYLPU3dzMz0tdO6Q==
X-Received: by 10.98.198.144 with SMTP id x16mr4871049pfk.42.1475647483109;
        Tue, 04 Oct 2016 23:04:43 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id n19sm59584718pfi.50.2016.10.04.23.04.40
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 23:04:42 -0700 (PDT)
Date: Wed, 5 Oct 2016 11:34:32 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: arve@android.com, riandrews@android.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: android: ion: Use sizeof type *pointer
 instead of sizeof type.
Message-ID: <20161005060424.GA5750@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use sizeof type *pointer instead of sizeof type.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2-
		-modify the commit message
		-modify the patch 
 drivers/staging/android/ion/ion.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index f8708c7..cd40ef7 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -184,7 +184,7 @@ static struct ion_buffer *ion_buffer_create(struct ion_heap *heap,
 	struct scatterlist *sg;
 	int i, ret;
 
-	buffer = kzalloc(sizeof(struct ion_buffer), GFP_KERNEL);
+	buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
 	if (!buffer)
 		return ERR_PTR(-ENOMEM);
 
@@ -341,7 +341,7 @@ static struct ion_handle *ion_handle_create(struct ion_client *client,
 {
 	struct ion_handle *handle;
 
-	handle = kzalloc(sizeof(struct ion_handle), GFP_KERNEL);
+	handle = kzalloc(sizeof(*handle), GFP_KERNEL);
 	if (!handle)
 		return ERR_PTR(-ENOMEM);
 	kref_init(&handle->ref);
@@ -802,7 +802,7 @@ struct ion_client *ion_client_create(struct ion_device *dev,
 	}
 	task_unlock(current->group_leader);
 
-	client = kzalloc(sizeof(struct ion_client), GFP_KERNEL);
+	client = kzalloc(sizeof(*client), GFP_KERNEL);
 	if (!client)
 		goto err_put_task_struct;
 
@@ -1010,7 +1010,7 @@ static void ion_vm_open(struct vm_area_struct *vma)
 	struct ion_buffer *buffer = vma->vm_private_data;
 	struct ion_vma_list *vma_list;
 
-	vma_list = kmalloc(sizeof(struct ion_vma_list), GFP_KERNEL);
+	vma_list = kmalloc(sizeof(*vma_list), GFP_KERNEL);
 	if (!vma_list)
 		return;
 	vma_list->vma = vma;
@@ -1621,7 +1621,7 @@ struct ion_device *ion_device_create(long (*custom_ioctl)
 	struct ion_device *idev;
 	int ret;
 
-	idev = kzalloc(sizeof(struct ion_device), GFP_KERNEL);
+	idev = kzalloc(sizeof(*idev), GFP_KERNEL);
 	if (!idev)
 		return ERR_PTR(-ENOMEM);
 
-- 
1.9.1


