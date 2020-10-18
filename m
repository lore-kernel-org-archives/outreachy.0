X-GM-THRID: 6885024139738873856
X-Received: by 2002:a17:90a:ae12:: with SMTP id t18mr14463854pjq.147.1603044602218;
        Sun, 18 Oct 2020 11:10:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:709:: with SMTP id s9ls3899691pjz.1.canary-gmail;
 Sun, 18 Oct 2020 11:10:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxzAIc2aC4XdopBlV2J1Ri87yzqs8Dd0+/NX0SNbgHgZog/o5N5J6dql8/kggStk+BqU6cD
X-Received: by 2002:a17:902:b18f:b029:d5:e3d3:9b87 with SMTP id s15-20020a170902b18fb02900d5e3d39b87mr2627237plr.78.1603044600791;
        Sun, 18 Oct 2020 11:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603044600; cv=none;
        d=google.com; s=arc-20160816;
        b=oud0QYfI0eeqh1+/+3Pe4IFEXVDXL26oRQy6FamwN+onWJPrdaB76nQlJ6szB0/Fzu
         bfgX7uDIcSITCChcuu8NaDBTjuASTA37bT/RUrErm2pZUEjQf8/Krij2WXW2sr49SZb/
         ujHGknBoN2PorDBzFVoSJj5LSNOgcpEd4iz8NHABWyDoMfK//6rvkYQFIis7uiafFzLH
         ju0xna/p1/APdr/UH6zXn8xmunA8ibsl3HpWCXKD0BlLEDVbPoKQ5xqLX5ZgL0Et8m9X
         JP4PcPdUEL5u3i/XOQU7qWXyNHpMWJd7IQ0pJgreC98seGACqdcal1WAolIro8NoDKyX
         qAbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=6IV1UegD7i0NkuDYVmXcB2wmQ6rD43D6zVCkjbc0Rks=;
        b=D8rGcyRLIjNF9ihAdLTW9UZvq6Lo+8oM/PR1Fx3yObbIDTtaMMIOkPojESEljKF+NS
         Mn7RsPo1g7BEw3952uCVhu/650FAhlS0pZQw2TjWmlGo9cldusszSkV8Voru2esnLjt2
         MfJ5eJHLz2g5Fmpc4wBKh9+H9+NOuAxrvxb3sTRoFeJfyJ2Qo3ETAPwFEBNKlBvFZTYI
         fiKy2L75x/D71zZUhV+kUjwwP1KykMwjhd6kLADu1rNEFZc2KODu9NT3zjFTmUxBWuu1
         MBHcDKkE+/5arnTwWhVv9XneXVmIu5LCu2/SF3MaSGnNnLjFflSk+h04sRP7kv4EjKnw
         4CeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=suBBoApd;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v24si465268plo.1.2020.10.18.11.10.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 11:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=suBBoApd;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 10so4629205pfp.5
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 11:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=6IV1UegD7i0NkuDYVmXcB2wmQ6rD43D6zVCkjbc0Rks=;
        b=suBBoApd3OiLb724cldZkpqxTWwI9pWJ4AinRj4RjiW4K8VARPFF0jVbgoNKqXIxiC
         jz4sMXOJ+HUSsO6tfSilfbtOtYJs0hdmX336TFMV57PqLnM/iJj2vxhRUVjQytqnnNzX
         b8GMJfObYQ88HdUlu1EWOqoAF7eWjS7QoTgnrHmCn+2Vnixrkzv0Uy2AldaJeZsOj54l
         JgXI+MgFDbJVI7+zS4QdBdTlaSshL9if2wYcszy/Pev84YNBxGNMJAorYhBXyJO7Azv1
         X1fmiH+8iqrZVyEwHvJHT/UE4opCot1wcMRwz2ehwjaOkxOVzf9n4BUmxG7xRv8db5Uz
         VjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=6IV1UegD7i0NkuDYVmXcB2wmQ6rD43D6zVCkjbc0Rks=;
        b=EC0RqE1hyQD1WjVgkoMxxqY86CDKFZBHq4fahcToDusEtWLAydln/TQ63SBCOC+hYi
         Hmw61u0sj5Tf0t0eXCK41uIrMoH6FptknRkRxdqn9CQt7CH3oi9T+oFY4AJhLi02e6V4
         x7h3dQ6YSX4c3ThzeKHFfhfCfw84u+ueUL7G2yENRnG5F7t7KGh/1i1gnh32O5M4NJ0t
         hsQM5IEWag5uPaTSFweFJDK50MqSS73eXePDuRRcJkWQl9r+d/ZVtKKHLNrEwuOcYzqD
         nKMfj9nfatVZwcBG7TlTIpLtTyO+HdNMcLmShGFtJjrBDwhF/W9r2VDTLGHHN6F/1XsM
         ihCg==
X-Gm-Message-State: AOAM533tOc+uDvc/h2sIDJf0bGNj3fWfiRwhczuCBYl5PjM7x9LrZA+b
	YJYQrJ9zMQetKkjm/g//G1jk9Bhoj6hmNg==
X-Received: by 2002:a63:e703:: with SMTP id b3mr11037974pgi.265.1603044600369;
        Sun, 18 Oct 2020 11:10:00 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id n203sm9941683pfd.81.2020.10.18.11.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 11:09:59 -0700 (PDT)
Date: Sun, 18 Oct 2020 23:39:54 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: mh12gx2825@gmail.com
Subject: [PATCH] staging: comedi: Use sysfs_emit for show(device *...)
 functions
Message-ID: <20201018180954.GA39024@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Convert snprintf calls in device show functions to sysfs_emit
for PAGE_SIZE buffer safety.
Warning generated by: scripts/coccinelle/api/device_attr_show.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d99231c737fb..5b8ba0c84a8e 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_show(struct device *csdev,
 	mutex_unlock(&dev->mutex);
 
 	comedi_dev_put(dev);
-	return snprintf(buf, PAGE_SIZE, "%u\n", size);
+	return sysfs_emit(buf, "%u\n", size);
 }
 
 static ssize_t max_read_buffer_kb_store(struct device *csdev,
@@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(struct device *csdev,
 	mutex_unlock(&dev->mutex);
 
 	comedi_dev_put(dev);
-	return snprintf(buf, PAGE_SIZE, "%u\n", size);
+	return sysfs_emit(buf, "%u\n", size);
 }
 
 static ssize_t read_buffer_kb_store(struct device *csdev,
@@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_show(struct device *csdev,
 	mutex_unlock(&dev->mutex);
 
 	comedi_dev_put(dev);
-	return snprintf(buf, PAGE_SIZE, "%u\n", size);
+	return sysfs_emit(buf, "%u\n", size);
 }
 
 static ssize_t max_write_buffer_kb_store(struct device *csdev,
@@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show(struct device *csdev,
 	mutex_unlock(&dev->mutex);
 
 	comedi_dev_put(dev);
-	return snprintf(buf, PAGE_SIZE, "%u\n", size);
+	return sysfs_emit(buf, "%u\n", size);
 }
 
 static ssize_t write_buffer_kb_store(struct device *csdev,
-- 
2.25.1


