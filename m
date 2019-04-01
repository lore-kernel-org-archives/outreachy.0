X-GM-THRID: 6674918167097114624
X-Received: by 2002:a17:902:29ab:: with SMTP id h40mr1769207plb.133.1554125493295;
        Mon, 01 Apr 2019 06:31:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b495:: with SMTP id y21ls3059210plr.5.gmail; Mon, 01
 Apr 2019 06:31:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw1gaoi0yatjzOoQmGZB5ji5Y8igNBGj912XidCIefbp0AHy6VT/ebt93cJSQ90ilQCgWBL
X-Received: by 2002:a17:902:7885:: with SMTP id q5mr215675pll.134.1554125492529;
        Mon, 01 Apr 2019 06:31:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554125492; cv=none;
        d=google.com; s=arc-20160816;
        b=vjaNvt6WkqXlQIA/CBcde8DHeVNXY+XfUAVV+gxRNsMd8W6j1nMnlfW3zBoWR11MWB
         dyXihUoN3jBk0X5t45rQ2jss6IEjmGaMXbhI0IhrkQ37k0klwMqTaj+RIvmaopfm7nIU
         Yab3TeZ8iDxsWOElN2rqRTZLD+n6ndGjkNJEIvu155Fl66nG8jVicNGvhXncMwsni+ko
         PzcH9HS1Zn14FiUgPWGxZKIY+wCnZ6DoS8uGGvqPAm7UJOgBJdbRv2LXO4xaiku2Hx5g
         04wXLEuEFIoSnqUnRGKkv/1cKITi+i5T/KtHIriQ5bBn/Jd/sFOwUK0zGkY0dSzA0Q/K
         98lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=BF3FWNAvTxbrESsKFodVrlTVZn88Y8LjursAFufoD4o=;
        b=Rbtdnxw5hN0pyorMXM/YjYXSW0XcZS1vkFI+wHGAoct2w8ezh4FzSydLryxfFSOpyL
         XLJHFohGFHGIDM8NAkB3II6YaaM+79BrG+g+n53ueJXXXOM6xBTYWmmQciaQ7IYdc3yW
         ZplJY5bWqb3CQ1X3FMsTRjbMjNZZ2aj0h1pZOhn+YJAoo+i/m8fLnFZYyPE0p0YvVkDb
         bdRB1SaQQAyHeO0+PUHLLQ2RjE+wYHuYClGvAc/q4DOdT7OqZ84CJGK8471Va0Hfshg2
         pMuCFnpUO+rTVKf+kle3+t2O/apsl6horOauyneAPz8yuClXQ9uLe0gtNz7XjTRzvQ2x
         X0Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tYCh9gHC;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id i67si139821pfj.0.2019.04.01.06.31.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 06:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tYCh9gHC;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id m10so4503985plt.10
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 06:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BF3FWNAvTxbrESsKFodVrlTVZn88Y8LjursAFufoD4o=;
        b=tYCh9gHCc2Lch8cSj38M07175vNlmr+zD0c45G6LfRl5Et4H4AUtKlOOWW4jRZsMkR
         /jgb8FuMoWOI7idebrtlSMgHFNJPR3hAW9GLhoOT9PT3mL/4uHZr1n+JQYShMnERdoM4
         aBlJ4u7OtPGONSYBBDeJLzK6kULSDORrAWYr46iajZK4+z+KMsEuw+61/83vzZuC1IM1
         6soxbDm1873oCsARMM655BBSZwOvPHfVdHLPm6UDVkg/yS7d2qfnAEwQYzVsbzqpa+SA
         nLdbk1YwhpxrkfeANoZwkheaS8uZdyNStX5QYZohB1WHjbb/l2JJxqclxI7igCJemy9n
         stMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BF3FWNAvTxbrESsKFodVrlTVZn88Y8LjursAFufoD4o=;
        b=YmAJVTqfsLS0p60O/dhhBfgZxAiD70Osj6VkY8kPrfk4+BqjkcfrNfXMwA80IClMTl
         2toWVqdTJWOWBq38jS800mrmBdAmrkpadeffA5Aj2kiMURHg8YEZsyoqzG+lzTxKlvAk
         gDAzbhzZ/mjEWU8zryO0eO65AFBSE57cpl7PDAvjsNS5Orn7cjx1GD2ab90aRLwIxeb+
         al7o/xFgxopjZl6tBGZa1QvTkQwDbsTloqZbU5DyXS/ZHVcxFD0XzlZ2Zd9xRVjpWf5Q
         U9AoF951V2B0TOatvMEFM7I9Ww6y1+JNqv7VLq98V/KEOq7yzQiOn4chyzHwn01dBqM9
         9YCg==
X-Gm-Message-State: APjAAAU2E0h2wx7OO2jYloL80aeLQ7VC+9t7m+s/dDL/WdHuQDWx7Zol
	ZcGfT9ceGZSCDuOh4zva4ksdMIae
X-Received: by 2002:a17:902:aa85:: with SMTP id d5mr39361664plr.251.1554125492177;
        Mon, 01 Apr 2019 06:31:32 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6628:6470:9524:528f:f662:5d77])
        by smtp.googlemail.com with ESMTPSA id q10sm10043091pgh.93.2019.04.01.06.31.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 06:31:31 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: zoran: Modify return statement.
Date: Mon,  1 Apr 2019 19:01:18 +0530
Message-Id: <20190401133118.4490-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 95 +++++++---------------
 1 file changed, 30 insertions(+), 65 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 04f88f9d6bb4..8ae106ae26a1 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1739,7 +1739,6 @@ static int zoran_s_fmt_vid_overlay(struct file *file, void *__fh,
 					struct v4l2_format *fmt)
 {
 	struct zoran_fh *fh = __fh;
-	int res;
 
 	dprintk(3, "x=%d, y=%d, w=%d, h=%d, cnt=%d, map=0x%p\n",
 			fmt->fmt.win.w.left, fmt->fmt.win.w.top,
@@ -1747,11 +1746,10 @@ static int zoran_s_fmt_vid_overlay(struct file *file, void *__fh,
 			fmt->fmt.win.w.height,
 			fmt->fmt.win.clipcount,
 			fmt->fmt.win.bitmap);
-	res = setup_window(fh, fmt->fmt.win.w.left, fmt->fmt.win.w.top,
+	return setup_window(fh, fmt->fmt.win.w.left, fmt->fmt.win.w.top,
 			   fmt->fmt.win.w.width, fmt->fmt.win.w.height,
 			   (struct v4l2_clip __user *)fmt->fmt.win.clips,
 			   fmt->fmt.win.clipcount, fmt->fmt.win.bitmap);
-	return res;
 }
 
 static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
@@ -1773,8 +1771,7 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 	if (fh->buffers.allocated) {
 		dprintk(1, KERN_ERR "%s: VIDIOC_S_FMT - cannot change capture mode\n",
 			ZR_DEVNAME(zr));
-		res = -EBUSY;
-		return res;
+		return -EBUSY;
 	}
 
 	settings = fh->jpg_settings;
@@ -1859,8 +1856,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 	    fh->buffers.active != ZORAN_FREE) {
 		dprintk(1, KERN_ERR "%s: VIDIOC_S_FMT - cannot change capture mode\n",
 				ZR_DEVNAME(zr));
-		res = -EBUSY;
-		return res;
+		return -EBUSY;
 	}
 	if (fmt->fmt.pix.height > BUZ_MAX_HEIGHT)
 		fmt->fmt.pix.height = BUZ_MAX_HEIGHT;
@@ -1910,7 +1906,7 @@ static int zoran_s_fbuf(struct file *file, void *__fh,
 {
 	struct zoran_fh *fh = __fh;
 	struct zoran *zr = fh->zr;
-	int i, res = 0;
+	int i;
 	__le32 printformat = __cpu_to_le32(fb->fmt.pixelformat);
 
 	for (i = 0; i < NUM_FORMATS; i++)
@@ -1923,20 +1919,15 @@ static int zoran_s_fbuf(struct file *file, void *__fh,
 		return -EINVAL;
 	}
 
-	res = setup_fbuffer(fh, fb->base, &zoran_formats[i], fb->fmt.width,
+	return setup_fbuffer(fh, fb->base, &zoran_formats[i], fb->fmt.width,
 			    fb->fmt.height, fb->fmt.bytesperline);
-
-	return res;
 }
 
 static int zoran_overlay(struct file *file, void *__fh, unsigned int on)
 {
 	struct zoran_fh *fh = __fh;
-	int res;
-
-	res = setup_overlay(fh, on);
 
-	return res;
+	return setup_overlay(fh, on);
 }
 
 static int zoran_streamoff(struct file *file, void *__fh, enum v4l2_buf_type type);
@@ -1963,8 +1954,7 @@ static int zoran_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffe
 				KERN_ERR
 				"%s: VIDIOC_REQBUFS - buffers already allocated\n",
 				ZR_DEVNAME(zr));
-		res = -EBUSY;
-		return res;
+		return -EBUSY;
 	}
 
 	if (fh->map_mode == ZORAN_MAP_MODE_RAW &&
@@ -1980,8 +1970,7 @@ static int zoran_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffe
 		fh->buffers.num_buffers = req->count;
 
 		if (v4l_fbuffer_alloc(fh)) {
-			res = -ENOMEM;
-			return res;
+			return -ENOMEM;
 		}
 	} else if (fh->map_mode == ZORAN_MAP_MODE_JPG_REC ||
 		   fh->map_mode == ZORAN_MAP_MODE_JPG_PLAY) {
@@ -1997,16 +1986,14 @@ static int zoran_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffe
 		fh->buffers.buffer_size = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
 
 		if (jpg_fbuffer_alloc(fh)) {
-			res = -ENOMEM;
-			return res;
+			return -ENOMEM;
 		}
 	} else {
 		dprintk(1,
 				KERN_ERR
 				"%s: VIDIOC_REQBUFS - unknown type %d\n",
 				ZR_DEVNAME(zr), req->type);
-		res = -EINVAL;
-		return res;
+		return -EINVAL;
 	}
 	return res;
 }
@@ -2014,11 +2001,8 @@ static int zoran_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffe
 static int zoran_querybuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
 {
 	struct zoran_fh *fh = __fh;
-	int res;
 
-	res = zoran_v4l2_buffer_status(fh, buf, buf->index);
-
-	return res;
+	return zoran_v4l2_buffer_status(fh, buf, buf->index);
 }
 
 static int zoran_qbuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
@@ -2033,8 +2017,7 @@ static int zoran_qbuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
 			dprintk(1, KERN_ERR
 				"%s: VIDIOC_QBUF - invalid buf->type=%d for map_mode=%d\n",
 				ZR_DEVNAME(zr), buf->type, fh->map_mode);
-			res = -EINVAL;
-			return res;
+			return -EINVAL;
 		}
 
 		res = zoran_v4l_queue_frame(fh, buf->index);
@@ -2058,8 +2041,7 @@ static int zoran_qbuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
 			dprintk(1, KERN_ERR
 				"%s: VIDIOC_QBUF - invalid buf->type=%d for map_mode=%d\n",
 				ZR_DEVNAME(zr), buf->type, fh->map_mode);
-			res = -EINVAL;
-			return res;
+			return -EINVAL;
 		}
 
 		res = zoran_jpg_queue_frame(fh, buf->index, codec_mode);
@@ -2093,15 +2075,13 @@ static int zoran_dqbuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
 			dprintk(1, KERN_ERR
 				"%s: VIDIOC_QBUF - invalid buf->type=%d for map_mode=%d\n",
 				ZR_DEVNAME(zr), buf->type, fh->map_mode);
-			res = -EINVAL;
-			return res;
+			return -EINVAL;
 		}
 
 		num = zr->v4l_pend[zr->v4l_sync_tail & V4L_MASK_FRAME];
 		if (file->f_flags & O_NONBLOCK &&
 		    zr->v4l_buffers.buffer[num].state != BUZ_STATE_DONE) {
-			res = -EAGAIN;
-			return res;
+			return -EAGAIN;
 		}
 		res = v4l_sync(fh, num);
 		if (res)
@@ -2124,16 +2104,14 @@ static int zoran_dqbuf(struct file *file, void *__fh, struct v4l2_buffer *buf)
 			dprintk(1, KERN_ERR
 				"%s: VIDIOC_QBUF - invalid buf->type=%d for map_mode=%d\n",
 				ZR_DEVNAME(zr), buf->type, fh->map_mode);
-			res = -EINVAL;
-			return res;
+			return -EINVAL;
 		}
 
 		num = zr->jpg_pend[zr->jpg_que_tail & BUZ_MASK_FRAME];
 
 		if (file->f_flags & O_NONBLOCK &&
 		    zr->jpg_buffers.buffer[num].state != BUZ_STATE_DONE) {
-			res = -EAGAIN;
-			return res;
+			return -EAGAIN;
 		}
 		bs.frame = 0; /* suppress compiler warning */
 		res = jpg_sync(fh, &bs);
@@ -2163,8 +2141,7 @@ static int zoran_streamon(struct file *file, void *__fh, enum v4l2_buf_type type
 	case ZORAN_MAP_MODE_RAW:	/* raw capture */
 		if (zr->v4l_buffers.active != ZORAN_ACTIVE ||
 		    fh->buffers.active != ZORAN_ACTIVE) {
-			res = -EBUSY;
-			return res;
+			return -EBUSY;
 		}
 
 		zr->v4l_buffers.active = fh->buffers.active = ZORAN_LOCKED;
@@ -2182,8 +2159,7 @@ static int zoran_streamon(struct file *file, void *__fh, enum v4l2_buf_type type
 		/* what is the codec mode right now? */
 		if (zr->jpg_buffers.active != ZORAN_ACTIVE ||
 		    fh->buffers.active != ZORAN_ACTIVE) {
-			res = -EBUSY;
-			return res;
+			return -EBUSY;
 		}
 
 		zr->jpg_buffers.active = fh->buffers.active = ZORAN_LOCKED;
@@ -2216,8 +2192,7 @@ static int zoran_streamoff(struct file *file, void *__fh, enum v4l2_buf_type typ
 	case ZORAN_MAP_MODE_RAW:	/* raw capture */
 		if (fh->buffers.active == ZORAN_FREE &&
 		    zr->v4l_buffers.active != ZORAN_FREE) {
-			res = -EPERM;	/* stay off other's settings! */
-			return res;
+			return -EPERM;	/* stay off other's settings! */
 		}
 		if (zr->v4l_buffers.active == ZORAN_FREE)
 			return res;
@@ -2247,8 +2222,7 @@ static int zoran_streamoff(struct file *file, void *__fh, enum v4l2_buf_type typ
 	case ZORAN_MAP_MODE_JPG_PLAY:
 		if (fh->buffers.active == ZORAN_FREE &&
 		    zr->jpg_buffers.active != ZORAN_FREE) {
-			res = -EPERM;	/* stay off other's settings! */
-			return res;
+			return -EPERM;	/* stay off other's settings! */
 		}
 		if (zr->jpg_buffers.active == ZORAN_FREE)
 			return res;
@@ -2288,8 +2262,7 @@ static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 	if (res)
 		return res;
 
-	res = wait_grab_pending(zr);
-	return res;
+	return wait_grab_pending(zr);
 }
 
 static int zoran_enum_input(struct file *file, void *__fh,
@@ -2332,8 +2305,7 @@ static int zoran_s_input(struct file *file, void *__fh, unsigned int input)
 		return res;
 
 	/* Make sure the changes come into effect */
-	res = wait_grab_pending(zr);
-	return res;
+	return wait_grab_pending(zr);
 }
 
 static int zoran_enum_output(struct file *file, void *__fh,
@@ -2488,8 +2460,7 @@ static int zoran_s_jpegcomp(struct file *file, void *__fh,
 		dprintk(1, KERN_WARNING
 			"%s: VIDIOC_S_JPEGCOMP called while in playback/capture mode\n",
 			ZR_DEVNAME(zr));
-		res = -EBUSY;
-		return res;
+		return -EBUSY;
 	}
 
 	res = zoran_check_jpg_settings(zr, &settings, 0);
@@ -2683,8 +2654,7 @@ zoran_mmap (struct file           *file,
 			KERN_ERR
 			"%s: %s(%s) - buffers not yet allocated\n",
 			ZR_DEVNAME(zr), __func__, mode_name(fh->map_mode));
-		res = -ENOMEM;
-		return res;
+		return -ENOMEM;
 	}
 
 	first = offset / fh->buffers.buffer_size;
@@ -2699,8 +2669,7 @@ zoran_mmap (struct file           *file,
 			ZR_DEVNAME(zr), __func__, mode_name(fh->map_mode), offset, size,
 			fh->buffers.buffer_size,
 			fh->buffers.num_buffers);
-		res = -EINVAL;
-		return res;
+		return -EINVAL;
 	}
 
 	/* Check if any buffers are already mapped */
@@ -2710,16 +2679,14 @@ zoran_mmap (struct file           *file,
 				KERN_ERR
 				"%s: %s(%s) - buffer %d already mapped\n",
 				ZR_DEVNAME(zr), __func__, mode_name(fh->map_mode), i);
-			res = -EBUSY;
-			return res;
+			return -EBUSY;
 		}
 	}
 
 	/* map these buffers */
 	map = kmalloc(sizeof(struct zoran_mapping), GFP_KERNEL);
 	if (!map) {
-		res = -ENOMEM;
-		return res;
+		return -ENOMEM;
 	}
 	map->fh = fh;
 	atomic_set(&map->count, 1);
@@ -2740,8 +2707,7 @@ zoran_mmap (struct file           *file,
 					KERN_ERR
 					"%s: %s(V4L) - remap_pfn_range failed\n",
 					ZR_DEVNAME(zr), __func__);
-				res = -EAGAIN;
-				return res;
+				return -EAGAIN;
 			}
 			size -= todo;
 			start += todo;
@@ -2772,8 +2738,7 @@ zoran_mmap (struct file           *file,
 						KERN_ERR
 						"%s: %s(V4L) - remap_pfn_range failed\n",
 						ZR_DEVNAME(zr), __func__);
-					res = -EAGAIN;
-					return res;
+					return -EAGAIN;
 				}
 				size -= todo;
 				start += todo;
-- 
2.17.1


