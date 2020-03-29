X-GM-THRID: 6809536824595185664
X-Received: by 2002:aa7:947c:: with SMTP id t28mr7066386pfq.239.1585468841649;
        Sun, 29 Mar 2020 01:00:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6455:: with SMTP id s21ls9790402pgv.9.gmail; Sun, 29 Mar
 2020 01:00:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsGNA+TI8AoVvBmVYfWHOq2FDNGLJeuNFY3VCxN0JePDe4I7KdhLLYrAHavuW9XPcDTWx79
X-Received: by 2002:a63:fc62:: with SMTP id r34mr7797654pgk.437.1585468840082;
        Sun, 29 Mar 2020 01:00:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585468840; cv=none;
        d=google.com; s=arc-20160816;
        b=nIaAQTBK7+SiZRgIvAyNXKnnNspZnW+sI3gBZbAJOe+1KUyYTuPXhM+UAHjsNqtHzv
         P7FSM0y5IOWUg0m4qzMS5EwvoQBkl26VY0jIUOk0WZmyN/TjI4PgxE8uob16DizIadBU
         /MuroYvoh0cLoAK3ysSk0vPfJ0eMhdUwLbu6fxB08IjIddpjos7KfV44ZprG7ww7hF+9
         MlRxVNgIYRQ3F8z7gxPt01NzuM8qF4UehmtCGqKh+W/jgTpYbgqb+zkFCJoRwzQFV9nD
         +RElwYFv8l7XV76iByIqVocZTil/7tyvf0ccX8gg70E6yiTRI7Km+9J8p/iGNiAg1FG+
         KGgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=J3ZAjhfAjbpc1SpUxKGuM3h2mw+hmKumUjyn4AqVQjA=;
        b=0jBDuv4txphQkTNlV8zX+xHXz6ZnctjBv/3eh1gFu2JAMzK/w6xugiH744dcyMbHrb
         FeEL3SCO505NPZVIOhPKD4Stxo48p1ikjXVKnYFeydM7FtNAil5P9rg6aygEwrJXbAMX
         VIJiOYgwJ3cSTL0xu9z3WWQOOGNVHLqw+8BUCVTYJZR7B+7HDzwTASVyljQ4hyF7kS4n
         538HUzrTVCFxDCNEE7hHqahwunesJ0zJ2OlbdulJZePTXE3KDhmap9Z+Ci2QEC0Xdi2W
         owN6AkwQYtAUMUECdq2GQElYTV4e+OzzebR259+HYfivugwkVFOi/rlZY25JnkcJvrTw
         OlxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iHTHFpA0;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id y1si801174pjv.2.2020.03.29.01.00.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 01:00:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iHTHFpA0;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id np9so6073127pjb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 01:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=J3ZAjhfAjbpc1SpUxKGuM3h2mw+hmKumUjyn4AqVQjA=;
        b=iHTHFpA0YWFcALGSb0DxiacAWooqR1mcUKf/daVBH7kJM3jZfb2FzEHZ0zj8AvXny/
         /k06U+zhH4eziz56Vk8XLRCD+JZr8DMyDYvhYUegnsHk7ZNkjrCn72DW632QU5WXQjFT
         TmVF+qfTQueULmp4vsdXhrrQZrqaWMvKpvIn5YFiKXQZVn1J3mJKXdh0z1JMcLi/42Kb
         U9VE1FIBBHf+ea/2tP8zvo0DG+98UZn0rZYJVI5NbnjNuEfxQ4rk0Ebzxbvo1L9oLm/v
         /BWal+DZqsYVIfjzGt8T+QN9EfhoQmaX1jxhL9egj9e0mxINostVQIX9X2DtFJmSjzWh
         J9/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=J3ZAjhfAjbpc1SpUxKGuM3h2mw+hmKumUjyn4AqVQjA=;
        b=LvcwiiMN1leZU3gZM7iW1jxdo6RmdxeoJGC83f9rdZ4fvTIYJ8gX3H9bee/BsND/dx
         83tzrYcYB4yn6hVWSQcgRDeZd1qN/yyfw6MGu6Q3BYPo+l15G02GKJUA8U5HJdEOgqzK
         pkBLG6ROL6r7yRoMQ14Ns1BnxKRvLsOTFStFtaOUcDCI03ttH3eHW8plAgM/MiyI4NGy
         JL4AxSBgMSGs5v+17i1BxP9t6XpVMkLp82sTcrHuGjYwPo2OP/8/Z/f+Iv48zlf1VYBx
         t4ZNcuYupTkmzJfi/pbKdX1JC2WjczGd69DMCqBTrypuR9QGNSnfRmEcIIlmQKWydlnI
         8DOw==
X-Gm-Message-State: ANhLgQ1g//zIGIN2bMv21RcG94xq2k39B7DSjBtyRhtLQg6z+5vXoY/V
	9v/MQXAcRUWe0cArVqVLfhBt2MHXE+1vcw==
X-Received: by 2002:a17:902:82c5:: with SMTP id u5mr7438775plz.254.1585468839850;
        Sun, 29 Mar 2020 01:00:39 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id n29sm7202487pgf.33.2020.03.29.01.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 01:00:39 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: comedi: Fix line ending with a (
Date: Sun, 29 Mar 2020 01:00:31 -0700
Message-Id: <20200329080031.511959-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix style issue with declaration by adopting the same style as the
function defintion in drivers/staging/comedi/comedi_buf.c.

Issue reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/comedi/comedi_internal.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_internal.h b/drivers/staging/comedi/comedi_internal.h
index 515f293a5d26..1d54a0dba347 100644
--- a/drivers/staging/comedi/comedi_internal.h
+++ b/drivers/staging/comedi/comedi_internal.h
@@ -32,8 +32,8 @@ void comedi_buf_map_get(struct comedi_buf_map *bm);
 int comedi_buf_map_put(struct comedi_buf_map *bm);
 int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long offset,
 			  void *buf, int len, int write);
-struct comedi_buf_map *comedi_buf_map_from_subdev_get(
-		struct comedi_subdevice *s);
+struct comedi_buf_map *
+comedi_buf_map_from_subdev_get(struct comedi_subdevice *s);
 unsigned int comedi_buf_write_n_available(struct comedi_subdevice *s);
 unsigned int comedi_buf_write_n_allocated(struct comedi_subdevice *s);
 void comedi_device_cancel_all(struct comedi_device *dev);
-- 
2.25.1


