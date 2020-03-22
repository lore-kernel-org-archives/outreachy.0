X-GM-THRID: 6807107593039773696
X-Received: by 2002:a05:6214:138a:: with SMTP id g10mr17808214qvz.231.1584903242945;
        Sun, 22 Mar 2020 11:54:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls5356576qtd.1.gmail; Sun, 22 Mar
 2020 11:54:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtLp2If67D0HFGclGyC8ulLIJEGM4zKhtqzNt+6U8I5vJqbzjRFSe0VzwHl/dikbsWjHubl
X-Received: by 2002:ac8:46c2:: with SMTP id h2mr18457335qto.2.1584903241806;
        Sun, 22 Mar 2020 11:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584903241; cv=none;
        d=google.com; s=arc-20160816;
        b=RWnIAA/aEcRRD55C9eegzTEOLCQ+elaiw2fAuKrSQmL/u+Ceaa5lZCxrrziDh+sUwx
         XUO8YC12iTu1Udh1r6WutCeGcSKVFNgIkqRc55bDuxdQwHP8WvrsCy+2xXK61xcq/PQ6
         McLMk7r46lTnv4H+LcTJBQi32UcY2s3wS77/Iza6seQlrbLHi33kJGOqaAZMFbuuCzSi
         4s2roadBVY4jau5pxOxH2MPZXbcMYxMM0hme7TEGpWb7gryQslHCEDY56NuGIjUpLqW0
         Pr01sVbNDKj3N0VbuxHm52dhWCvlWdxcxuKtSqgVCjT2rbn621h0uD7+477uDQfiM8Sa
         yU7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=GzAdrrDgmXF04zvOwecqKqiHvp5ekxd5xXJLLEjB6Pk=;
        b=Vd5B2t9iBx552VaUQCCKALHjdi7nBiB0dUSsInTfMNJc9Akrihr7WU+UIiIvW8AZqj
         m+CrOU/reCdXImjucooK/cW/sHELcQUrxlMMNlRoTj2P5W/koJm0y2HEmFGPSmyBImJG
         ga01+xFWnFWvx+fzL3JDjGTf3ds8ZqVQY52rG2FOILIIpb1nRfjBTgqq25FdrJ13/EGW
         uI1X3BBVa0/3/FSTll7pJOHlXMp2MoiKAalCo5ysVc02Xpi9N3snj82lxEqFITG9UqRb
         2mXozZjMuIVTInG1xk6bZDWy3g6cPvsqxeZDIWSP7naP/uKBa1Smy0VZ5BkNU2qlhgRH
         OHGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQ3s9pIt;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c194si689749qkb.0.2020.03.22.11.54.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 11:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DQ3s9pIt;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id a32so5992877pga.4
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 11:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GzAdrrDgmXF04zvOwecqKqiHvp5ekxd5xXJLLEjB6Pk=;
        b=DQ3s9pItU2cD3Vi2u2L5WP64TX1tEmq+m28estfLzLEDHgLWcn6UgWrjjvh2pHM0pd
         Sat6tnL3iZ7es2wmtbAl4QB3zHo/cMSUWTnAI61pQlcbRz17TLTqG8WPEBZj1KArlIGq
         FeqgpL7Md+fZqPQ1MoKXH+TkeVMGnPlwhZp8b9/eX5F+bIXNDJYVpzIesSgOPqLJreEe
         zQPuc7kb3xCraF1/6/i9GUo836wI02dyM2IHFgssLCfFJ1mhZtVTkPwxXumscOKHI8Xr
         q5HSZzuUESHhMKjwjZmoEN4hTIXH4rHDt72cY4PSw7xKoEaD6V2wD4rxqf3eSAQlbnqR
         rcrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GzAdrrDgmXF04zvOwecqKqiHvp5ekxd5xXJLLEjB6Pk=;
        b=dgvrkZb7u0W9RcgQGMC1PePAaqBvwjncEramiVgUW5XKwNoGKb9RyQMx00O9mUraDX
         Ld3ALIBVymzfHu6Jq3uAZQJbSG2mq5Neh/P8FkS3vi9lam2KKLhPdtalEOYPHnki/1dk
         iNAO9VeGE/NbeOLAb7ISrYPbWJr05jDcXF5XMHdYQ3beweFP2nB1113ldT4KmIf/Yjr9
         RIIitiHGlLpn9mHtRKVpRFcucptcPiTr41FMEQIIbBhI+LGvJXz4W5hhLj05gXwIZFbH
         OggGgYwwRfyYZ0V6apWKcziMa7fh1+KzIQnMyL/VEoWhGyEPy6oTW57p0Tu4tJ02R95l
         lbBA==
X-Gm-Message-State: ANhLgQ3I8v6KzmXVbmNTsNihwDrt7xR6XrO6sClq4AU/9eYc1RrbSnfG
	o/0lc0/7SYueZv13rMdkZD/VTzHc
X-Received: by 2002:aa7:9a01:: with SMTP id w1mr20405287pfj.256.1584903240771;
        Sun, 22 Mar 2020 11:54:00 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id a2sm10046555pjq.20.2020.03.22.11.53.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 11:54:00 -0700 (PDT)
Date: Mon, 23 Mar 2020 00:23:54 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v2] media: staging/intel-ipu3: Reformat pointer initialization
Message-ID: <20200322185350.GA12377@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat pointer initialization to make it more readable as per the
coding standards. Problem detected by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Changes since v1:
    - Correct commit message and description as advised vy Stefano. Its
      pointer initialization and not declaration as mentioned earlier.
    
 drivers/staging/media/ipu3/ipu3-v4l2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 569e27b824c8..52826fad6f42 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -485,7 +485,6 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 	if (r < 0)
 		goto fail_return_bufs;
 
-
 	if (!imgu_all_nodes_streaming(imgu, node))
 		return 0;
 
@@ -1013,8 +1012,9 @@ static const struct v4l2_ioctl_ops imgu_v4l2_meta_ioctl_ops = {
 
 static int imgu_sd_s_ctrl(struct v4l2_ctrl *ctrl)
 {
-	struct imgu_v4l2_subdev *imgu_sd =
-		container_of(ctrl->handler, struct imgu_v4l2_subdev, ctrl_handler);
+	struct imgu_v4l2_subdev *imgu_sd = container_of(ctrl->handler,
+							struct imgu_v4l2_subdev,
+							ctrl_handler);
 	struct imgu_device *imgu = v4l2_get_subdevdata(&imgu_sd->subdev);
 	struct device *dev = &imgu->pci_dev->dev;
 
-- 
2.17.1


