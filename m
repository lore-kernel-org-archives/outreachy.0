X-GM-THRID: 4409240059904
X-Received: by 10.194.161.194 with SMTP id xu2mr1970613wjb.1.1425035566574;
        Fri, 27 Feb 2015 03:12:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.101 with SMTP id a5ls100316wix.6.canary; Fri, 27 Feb
 2015 03:12:46 -0800 (PST)
X-Received: by 10.180.160.176 with SMTP id xl16mr385527wib.6.1425035566404;
        Fri, 27 Feb 2015 03:12:46 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id ew5si98563wid.1.2015.02.27.03.12.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 03:12:46 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id l18so19464666wgh.8
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 03:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pVvBB2VSoM8y+WaBlyyYgRqqgrecDgQKC2jmnzRYyg4=;
        b=WQcZXV9yhopeSCUDAn9R6ni1RAiB1a+VMpkgv/dtM//ZSuU88b8FlYD7ViVWiVPDA5
         9ZsPMGhsWsSMPEQDV0rC+2oRXaj08V+oQzNiYaAjOM0ygTOqjVsIMauR+87mut3+xXJi
         NEuCN47qUhUFrCLgN5pBd63hqdHGrgc2H7kBWnsUP1o+aDo2q7OVE74S7RMCV8XGRA3Y
         ShDGSNX6cPEKLvwKcY3q5DE8RBubaJ8xg8MKfaR5sG+u9yoghngIbXawabk6PCzlUV3F
         nbjEaTiZAUZxHuI7FErDsrv/XR2AKThwG1kce3s6vhvyRd5zS+m0FPcgwNKRnjpBAHA/
         Q6+A==
X-Received: by 10.194.62.198 with SMTP id a6mr27042569wjs.90.1425035566313;
        Fri, 27 Feb 2015 03:12:46 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id cf12sm5497234wjb.10.2015.02.27.03.12.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 03:12:45 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: media: Add blank line after declarations
Date: Fri, 27 Feb 2015 13:12:38 +0200
Message-Id: <1425035558-11326-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/media/tlg2300/pd-video.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/media/tlg2300/pd-video.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/media/tlg2300/pd-video.c b/drivers/staging/media/tlg2300/pd-video.c
index 8cd7f02..5afcc90 100644
--- a/drivers/staging/media/tlg2300/pd-video.c
+++ b/drivers/staging/media/tlg2300/pd-video.c
@@ -494,6 +494,7 @@ int alloc_bulk_urbs_generic(struct urb **urb_array, int num,
 	for (; i < num; i++) {
 		void *mem;
 		struct urb *urb = usb_alloc_urb(0, gfp_flags);
+
 		if (urb == NULL)
 			return i;
 
@@ -557,6 +558,7 @@ static void pd_buf_release(struct videobuf_queue *q, struct videobuf_buffer *vb)
 static void pd_buf_queue(struct videobuf_queue *q, struct videobuf_buffer *vb)
 {
 	struct front_face *front = q->priv_data;
+
 	vb->state = VIDEOBUF_QUEUED;
 	list_add_tail(&vb->queue, &front->active);
 }
@@ -1098,24 +1100,28 @@ static int vidioc_reqbufs(struct file *file, void *fh,
 				struct v4l2_requestbuffers *b)
 {
 	struct front_face *front = file->private_data;
+
 	return videobuf_reqbufs(&front->q, b);
 }
 
 static int vidioc_querybuf(struct file *file, void *fh, struct v4l2_buffer *b)
 {
 	struct front_face *front = file->private_data;
+
 	return videobuf_querybuf(&front->q, b);
 }
 
 static int vidioc_qbuf(struct file *file, void *fh, struct v4l2_buffer *b)
 {
 	struct front_face *front = file->private_data;
+
 	return videobuf_qbuf(&front->q, b);
 }
 
 static int vidioc_dqbuf(struct file *file, void *fh, struct v4l2_buffer *b)
 {
 	struct front_face *front = file->private_data;
+
 	return videobuf_dqbuf(&front->q, b, file->f_flags & O_NONBLOCK);
 }
 
@@ -1432,12 +1438,14 @@ static int pd_video_release(struct file *file)
 static int pd_video_mmap(struct file *file, struct vm_area_struct *vma)
 {
 	struct front_face *front = file->private_data;
+
 	return  videobuf_mmap_mapper(&front->q, vma);
 }
 
 static unsigned int pd_video_poll(struct file *file, poll_table *table)
 {
 	struct front_face *front = file->private_data;
+
 	return videobuf_poll_stream(file, &front->q, table);
 }
 
@@ -1445,6 +1453,7 @@ static ssize_t pd_video_read(struct file *file, char __user *buffer,
 			size_t count, loff_t *ppos)
 {
 	struct front_face *front = file->private_data;
+
 	return videobuf_read_stream(&front->q, buffer, count, ppos,
 				0, file->f_flags & O_NONBLOCK);
 }
-- 
1.9.1


