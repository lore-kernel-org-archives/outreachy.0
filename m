X-GM-THRID: 6212181078592978944
X-Received: by 10.112.184.170 with SMTP id ev10mr3522898lbc.4.1446386121396;
        Sun, 01 Nov 2015 05:55:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.173.146 with SMTP id w140ls460751wme.38.canary; Sun, 01 Nov
 2015 05:55:21 -0800 (PST)
X-Received: by 10.28.170.203 with SMTP id t194mr1371717wme.1.1446386121060;
        Sun, 01 Nov 2015 05:55:21 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id t18si349878wme.0.2015.11.01.05.55.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:55:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id c75so41769874wme.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=81x1Og0rqt5tPvsCUzxLP/VbKCfOkhGexymelc+PY7M=;
        b=d/dV6kYWrGyHcbqHc53Q5lVI+twEPdyTxvXxS+IqBwK9vOKKhnXxKVQYDjhIKTIBLC
         /5zL/GGH/y82X/HX8JdIOcIhlq5kXVJDgVODhtMfbnmIGqHaVqS+JsPi8vOXHorCb85x
         tJFctGP8jHEdsY/mKz2mwVk07x4ytclAmR48FZi7AtHYFk/n6Wzm3TORFFP02tosoSIH
         knW7TJI0s22IC9dESna2KufMAX/mCkIW/7fNziGS3bjOo95hUCiOan8VTFIkL4C3aQJi
         4mJLqgDy553L8NKAd3lgz+2DP8kA8pS6H4EsXSSBzuz4ElIF+6UZ6r/7VEndHImxZsCX
         uY9A==
X-Received: by 10.28.212.70 with SMTP id l67mr8715662wmg.66.1446386120980;
        Sun, 01 Nov 2015 05:55:20 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id u126sm12968830wmd.3.2015.11.01.05.55.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 05:55:20 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 1/5] staging: android: replace explicit NULL comparison
Date: Sun,  1 Nov 2015 15:55:07 +0200
Message-Id: <e0854596f6fce2512ddfd9118a87003b36139350.1446385932.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>

This patch replaces explicit NULL comparison with !
operator in order to simplify the code

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/android/ion/compat_ion.c |  6 +++---
 drivers/staging/android/sync.c           | 18 +++++++++---------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/android/ion/compat_ion.c b/drivers/staging/android/ion/compat_ion.c
index a402fda..9a978d2 100644
--- a/drivers/staging/android/ion/compat_ion.c
+++ b/drivers/staging/android/ion/compat_ion.c
@@ -137,7 +137,7 @@ long compat_ion_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 
 		data32 = compat_ptr(arg);
 		data = compat_alloc_user_space(sizeof(*data));
-		if (data == NULL)
+		if (!data)
 			return -EFAULT;
 
 		err = compat_get_ion_allocation_data(data32, data);
@@ -156,7 +156,7 @@ long compat_ion_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 
 		data32 = compat_ptr(arg);
 		data = compat_alloc_user_space(sizeof(*data));
-		if (data == NULL)
+		if (!data)
 			return -EFAULT;
 
 		err = compat_get_ion_handle_data(data32, data);
@@ -173,7 +173,7 @@ long compat_ion_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 
 		data32 = compat_ptr(arg);
 		data = compat_alloc_user_space(sizeof(*data));
-		if (data == NULL)
+		if (!data)
 			return -EFAULT;
 
 		err = compat_get_ion_custom_data(data32, data);
diff --git a/drivers/staging/android/sync.c b/drivers/staging/android/sync.c
index f83e00c..5413f28 100644
--- a/drivers/staging/android/sync.c
+++ b/drivers/staging/android/sync.c
@@ -43,7 +43,7 @@ struct sync_timeline *sync_timeline_create(const struct sync_timeline_ops *ops,
 		return NULL;
 
 	obj = kzalloc(size, GFP_KERNEL);
-	if (obj == NULL)
+	if (!obj)
 		return NULL;
 
 	kref_init(&obj->kref);
@@ -130,7 +130,7 @@ struct sync_pt *sync_pt_create(struct sync_timeline *obj, int size)
 		return NULL;
 
 	pt = kzalloc(size, GFP_KERNEL);
-	if (pt == NULL)
+	if (!pt)
 		return NULL;
 
 	spin_lock_irqsave(&obj->child_list_lock, flags);
@@ -155,7 +155,7 @@ static struct sync_fence *sync_fence_alloc(int size, const char *name)
 	struct sync_fence *fence;
 
 	fence = kzalloc(size, GFP_KERNEL);
-	if (fence == NULL)
+	if (!fence)
 		return NULL;
 
 	fence->file = anon_inode_getfile("sync_fence", &sync_fence_fops,
@@ -193,7 +193,7 @@ struct sync_fence *sync_fence_create(const char *name, struct sync_pt *pt)
 	struct sync_fence *fence;
 
 	fence = sync_fence_alloc(offsetof(struct sync_fence, cbs[1]), name);
-	if (fence == NULL)
+	if (!fence)
 		return NULL;
 
 	fence->num_fences = 1;
@@ -215,7 +215,7 @@ struct sync_fence *sync_fence_fdget(int fd)
 {
 	struct file *file = fget(fd);
 
-	if (file == NULL)
+	if (!file)
 		return NULL;
 
 	if (file->f_op != &sync_fence_fops)
@@ -262,7 +262,7 @@ struct sync_fence *sync_fence_merge(const char *name,
 	unsigned long size = offsetof(struct sync_fence, cbs[num_fences]);
 
 	fence = sync_fence_alloc(size, name);
-	if (fence == NULL)
+	if (!fence)
 		return NULL;
 
 	atomic_set(&fence->status, num_fences);
@@ -583,14 +583,14 @@ static long sync_fence_ioctl_merge(struct sync_fence *fence, unsigned long arg)
 	}
 
 	fence2 = sync_fence_fdget(data.fd2);
-	if (fence2 == NULL) {
+	if (!fence2) {
 		err = -ENOENT;
 		goto err_put_fd;
 	}
 
 	data.name[sizeof(data.name) - 1] = '\0';
 	fence3 = sync_fence_merge(data.name, fence, fence2);
-	if (fence3 == NULL) {
+	if (!fence3) {
 		err = -ENOMEM;
 		goto err_put_fence2;
 	}
@@ -666,7 +666,7 @@ static long sync_fence_ioctl_fence_info(struct sync_fence *fence,
 		size = 4096;
 
 	data = kzalloc(size, GFP_KERNEL);
-	if (data == NULL)
+	if (!data)
 		return -ENOMEM;
 
 	strlcpy(data->name, fence->name, sizeof(data->name));
-- 
2.1.4


