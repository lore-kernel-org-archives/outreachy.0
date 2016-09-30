X-GM-THRID: 6336162776541560832
X-Received: by 10.66.127.11 with SMTP id nc11mr2191205pab.106.1475253391053;
        Fri, 30 Sep 2016 09:36:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.133.70 with SMTP id r67ls737779itd.6.canary; Fri, 30 Sep
 2016 09:36:28 -0700 (PDT)
X-Received: by 10.107.174.12 with SMTP id x12mr2401276ioe.60.1475253388218;
        Fri, 30 Sep 2016 09:36:28 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ua1si395522pac.1.2016.09.30.09.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 09:36:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so5187483pfj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 09:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NOZGAeeDekgC0Dzz4STadStjZd/6rmt69lB43YukJ5c=;
        b=behHLfi0/zBo123O6ZAIl4O2X5+z7dPMWlnxmqleSyc0/oZWzRss1YGg+JwQryneee
         YB8vblYTTrE45KFfSV+7FJ4Z6sJbnje66wzZe9GD5pT5MV+hwiW9GzehqKdnJyi3Ki97
         KcH9fvJ3j17Ryruea5NZJo3NPUf7uZwq4xegI7R35ws/ytF0MW032aeuY3JxQCvZSW5d
         YdTIK9a/7N15Vxp4WLm9X8HtiSf07+ImzIyKPtCrS8BShqfd2Ao+6XaiW97p8TIpgF9R
         +ZSAHZBWnsf2Pv5/gZvSd8AM1GVLxG/VYyOnlJUi90EihSXkRbpP201pZR1CtDvn6fuE
         PrJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NOZGAeeDekgC0Dzz4STadStjZd/6rmt69lB43YukJ5c=;
        b=KefyGJw5CvbzcMoACQkbnCA1zd2coxqtMKSjFVnRepWraZuf31umD3D+8QzG9C3XEW
         5HZNAweOJCEuAxVfWZ+W3Ujo104J6YjBSIhMCgyXjAMGbTqXnnIDVnEW6QcZY2Efe9Hp
         jG6y8jIXsujQo41zxGGHiPpOJTL183Ag+l65zjyeQQlV+/Venv/RMpqst4O+5uDvHIfB
         WQt7apFK/p//VW1Ic1gHndDcY3M5YkocAxVSkCNVyvoQu+IZgFavfGO6GN0kCX0BLMR3
         qdbIf4+1gV/7PtBl1hQvdRMJPP3WW3gDtL99Gvq0be0AqP91sInA8bXbUQG8KKV1nT0x
         xgkA==
X-Gm-Message-State: AA6/9RkjuotMSbMLV4YBot6npjG7HHbAbPhPKl3mGzhv34fM4ErF7qhs293aO8q0K4btRg==
X-Received: by 10.98.11.6 with SMTP id t6mr13524187pfi.46.1475253388028;
        Fri, 30 Sep 2016 09:36:28 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id 85sm29107991pfw.92.2016.09.30.09.36.25
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 30 Sep 2016 09:36:27 -0700 (PDT)
Date: Fri, 30 Sep 2016 22:06:18 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, arve@android.com,
	riandrews@android.com
Subject: [PATCH 2/2] staging: android: ion: Replace structure with the
 *pointer of structure in kzalloc
Message-ID: <2d05b9d8c7873fa3e04438f4deabadc372e132df.1475252219.git.anchalj109@gmail.com>
References: <cover.1475252219.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475252219.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace structure with the *pointer of stucture in kzalloc 
Use pointer instead of structure to save memory and run faster because it 
doesn't have to duplicate the data.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/android/ion/ion.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index 7ff2a7e..5f94aee 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -184,7 +184,7 @@ static struct ion_buffer *ion_buffer_create(struct ion_heap *heap,
 	struct scatterlist *sg;
 	int i, ret;
 
-	buffer = kzalloc(sizeof(struct ion_buffer), GFP_KERNEL);
+	buffer = kzalloc(sizeof(*ion_buffer_create), GFP_KERNEL);
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
+	client = kzalloc(sizeof(*ion_client_create), GFP_KERNEL);
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
+	idev = kzalloc(sizeof(*ion_device_create), GFP_KERNEL);
 	if (!idev)
 		return ERR_PTR(-ENOMEM);
 
-- 
1.9.1


