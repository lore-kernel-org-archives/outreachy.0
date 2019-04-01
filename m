X-GM-THRID: 6675008112137601024
X-Received: by 2002:ac8:34c3:: with SMTP id x3mr7567073qtb.18.1554146440184;
        Mon, 01 Apr 2019 12:20:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e21:: with SMTP id p33ls180720qve.7.gmail; Mon, 01 Apr
 2019 12:20:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyTjMn8rOmOsoCj0v+bg3R1g6tqhiTHKhKuUdXwuM3l7vDyYEE2BgKGDcCSjmFzfteM8n9b
X-Received: by 2002:a0c:99c1:: with SMTP id y1mr6335831qve.45.1554146439586;
        Mon, 01 Apr 2019 12:20:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554146439; cv=none;
        d=google.com; s=arc-20160816;
        b=qcx8fzQ4I67E/Zl0F/9ZuKMtLIxPcp5f7DShOk+rKjLok602lTkZAKcq4hecHFd+2v
         axiqBrOFaWs8WMpMbz66QZ0TtkZ9nJpbhhfRByAmXnImTMf5py5UfUELN9OIawxdybTO
         dBWmHPcaBbVaZ1MR73qcquab5UC+gno2MTlaBfe5yZLC0s8shyz1s5fiDO7fb2kWuLtc
         nlIQrJA2Mvif+x6LLT0xXTt/Vhf+g2bK3ZVALlJV2FUoRe4oc3X/ugJncmwg6/tEWDNG
         xuGsvRSwzA0OzY/H68CsVE/QPp4+lWtMuMfREo+46CUupLHQeHG3Waw39aCaqK91PfBB
         ZXGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=UQQH33vqw+CCePCE/KBfd4OXNZJuWkWcKFYHJenDd28=;
        b=JnvhtNQYi+R5K+Bypm83ZswEpiQZFyBFYBX+13Jm4SrJbTQwuXk4cm2pIszMLAjrDI
         z4t9vOR0q7sUQqbX6CY5QM7u1jETQIOBxHP7+XhR1CuLpfbLEE8pLTpBEx9E8ZKkg/fJ
         uYkUKAo+ewCTcwViHGn/+D6dD56DcRNquqqZU0ejlLF5qSHCH3OnfDyMcoRJ1HXHiEGT
         3U7mArW1R+XpQvqrpHkfkOAAzW6SEp0h28XCQJxi9rVf/jb4uCnb2+ebfZGKqxOWkce5
         SlcqxbN03ACYlwhfXh5Jtf+ZHqZt3p0lJsPGm3ejby70Mh8eiK1cADAu5Ans+1MI5qpA
         x5CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LtAtGJUf;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v65si225443qki.4.2019.04.01.12.20.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:20:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LtAtGJUf;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id g8so5262266pgf.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 12:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=UQQH33vqw+CCePCE/KBfd4OXNZJuWkWcKFYHJenDd28=;
        b=LtAtGJUfymzgfuyNKO7vRumiKcs4B5g3uW7bTh+aU02rK4PwPTDfi+1PW6/CJ1MU/u
         IVN4mLtxBvxckC+ihxZPXMNuh8nvsxJfI9WmqcitK8Q3mo0H5anqBnydcAqPlMfHU8r+
         SAxyRCP9jGzcffKTQ1gzJgdVikGFjBeULGU7Ms5xvP0YJSAHp7HKm4CeI1OBNZSXEkpc
         9zm6ZqxKTXFRQsMWVpFtUUKPAtFZwhYHk6//UJPJjhIo4orShsCk5TmOgEPdXEnDUa+Q
         6Piy6E2iLixJ0Fy9k1V3ttNU+8+9tOe5Vxac5qnsYs++EUIcocKQ7XvMxTXmN3iTr8br
         7tKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=UQQH33vqw+CCePCE/KBfd4OXNZJuWkWcKFYHJenDd28=;
        b=qBdJyfIA/uPfXctdcguu6zD+0zya90XnddcNtPKxyAznDxtX80hUXKsZMiotKwRoVS
         hwA442huOILbQd72RJS+FYgqHpXuVy0IihPE3BhZGhjVaPPSPEKFRPCQvftRfu3/7zwY
         +JmVTer4Ig6CJVsmQcZwYrj+HMcBk/pIpK450rwXrQ9JjLE0f/pQzHrLLXlkKNPujp50
         8Zzw0+HahAimUP6vkOWqEULq8oVaY/2DLMfC2oE9mfTkJvWJkdM+PiTdynnCyzpNPQh4
         0nzscUWed+OtSkBuUqHXqvL8hx8RZNHX3feXHA7mrpNx1gmiegFXGSF43zRv5gTBc5w4
         5psA==
X-Gm-Message-State: APjAAAWkozn8Vc+f4iyWVr8EPsJkrGMOxR7FRGOVkNrdjokmYTYkcDwF
	kzJXP5wB2xexQCbSAxZwMTtCk90m
X-Received: by 2002:a63:e14e:: with SMTP id h14mr61166688pgk.184.1554146438632;
        Mon, 01 Apr 2019 12:20:38 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id c1sm14246172pgk.44.2019.04.01.12.20.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:20:37 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 2/2] staging: media: omap4iss: use to_iss_buffer instead of container_of
Date: Tue,  2 Apr 2019 00:50:15 +0530
Message-Id: <20190401192015.96166-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190401192015.96166-1-himadri18.07@gmail.com>
References: <20190401192015.96166-1-himadri18.07@gmail.com>

Use inline function to_iss_buffer which converts vb2_buffer into
iss_buffer.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/media/omap4iss/iss_video.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
index c2c5a9cd8642..cdc10f5ffe2c 100644
--- a/drivers/staging/media/omap4iss/iss_video.c
+++ b/drivers/staging/media/omap4iss/iss_video.c
@@ -318,8 +318,7 @@ static int iss_video_queue_setup(struct vb2_queue *vq,
 
 static void iss_video_buf_cleanup(struct vb2_buffer *vb)
 {
-	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
-	struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
+	struct iss_buffer *buffer = to_iss_buffer(vb);
 
 	if (buffer->iss_addr)
 		buffer->iss_addr = 0;
@@ -327,9 +326,8 @@ static void iss_video_buf_cleanup(struct vb2_buffer *vb)
 
 static int iss_video_buf_prepare(struct vb2_buffer *vb)
 {
-	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 	struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
-	struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
+	struct iss_buffer *buffer = to_iss_buffer(vb);
 	struct iss_video *video = vfh->video;
 	unsigned long size = vfh->format.fmt.pix.sizeimage;
 	dma_addr_t addr;
@@ -351,10 +349,9 @@ static int iss_video_buf_prepare(struct vb2_buffer *vb)
 
 static void iss_video_buf_queue(struct vb2_buffer *vb)
 {
-	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 	struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
 	struct iss_video *video = vfh->video;
-	struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
+	struct iss_buffer *buffer = to_iss_buffer(vb);
 	struct iss_pipeline *pipe = to_iss_pipeline(&video->video.entity);
 	unsigned long flags;
 	bool empty;
-- 
2.17.1


