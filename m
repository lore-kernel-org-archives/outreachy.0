X-GM-THRID: 6672001868710805504
X-Received: by 2002:a05:6638:258:: with SMTP id w24mr15242163jaq.85.1553446489408;
        Sun, 24 Mar 2019 09:54:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls3968044itg.0.canary-gmail; Sun,
 24 Mar 2019 09:54:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwsC3pxvZxdavKp5V2A0LSU3lsoMgLD7edWHESAUWpMre2cq6Ylbfl6DIdPz2qGmvMZ6E/L
X-Received: by 2002:a24:3449:: with SMTP id z70mr5811783itz.169.1553446488236;
        Sun, 24 Mar 2019 09:54:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553446488; cv=none;
        d=google.com; s=arc-20160816;
        b=OgULvVKMznXsn+rObH13K3pfuYIoAaK3YvLDlHZrw+ojW0MrVtdvASRPGffaS7H2H+
         5BYIdLw08Im7/YUm2d7qWFyFB4KDeoeWMycwACMGMOfC0lmWXqz/Ocxqjrun9GAc9T6H
         grqi2EvXuNpC4RfBb98LAfylJAcIeG4MHYIlpOPprmiTprHd7De5VgUPjxvuIZgYO/T5
         +5WRQual8rl9+fEr1586plwpL5kTC0ZOASUJ7ybdlosFOXUELQmWRy2rvWpaRr1wYvVU
         AopTwAU6G6mU7FG2StKING3IuVk2y4rIaEC6I5lIbgWg2pfbvu8kQ+pMODCYFE9Guxg8
         WOyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=32aOm7VzzHeXZn9flMvx9CEu1Qu+m/o6X1pjibCthoc=;
        b=H9w2/i8AcCv2Dn2tZAtrywyWwGkcq6xc1UvXUrrKeTEiAN/MJ7q9g7TG8m24OG8eRj
         JLNOkgoGxFMOw2A7o2HeBTMMWe3v1vIVvT6VwBfk2fQoet2TqPuHT4U8u9eyjlRX5Tln
         R84T4g0pN/wBO+Cmx18So86+y24Kb1AXUluWs4Xn8x7PotK+P9tx488v0n7TP9U7UYot
         wQJ4IjyTn+MosqIszf0W1bt/2vd5hU1RbHemcib2WHAo2k+aZXck03mzY8KQWOjsSS+Z
         6HokInVWNzvnNHKtf1ftaSr+U/VvA4kEJywqAFQ9EmW/J1fn3BXrv0NuE6uZf+GMjcBZ
         LYCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQrjQ8VS;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f13si749343iok.3.2019.03.24.09.54.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 09:54:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQrjQ8VS;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id t21so4723726pfe.2
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 09:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=32aOm7VzzHeXZn9flMvx9CEu1Qu+m/o6X1pjibCthoc=;
        b=iQrjQ8VSz+ps4Ux0xaE9eEDKBGm5jAmLjOLybpatQ0D0ycIQ7rGovNyaJ/omg1yP/K
         S9wbwhtlznFMKM7qxZUOhYCSq/37PYpdk6p6UBuG4Doq2xtxb3QfLCqGeJQyje+zt9eD
         x3Ec5WYg5CZAY2dr1xcu3sgCdu+simt46gDySH46V4ZjxfQ82CLcS7w1eKppGfFt4EsM
         l7k0YNVgA3TvYeaUNn4qn51BgZe4j8n3KN05nbDIFgR0u96uCDL5AxTB6BMxfQ9rJrRU
         CH0gF+P8c4j1WsZZFpDcuzMxgsNIrQ/2h+OKyUQvhjn0tQaLaOErmf6VLD2Dq53kza1C
         rMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=32aOm7VzzHeXZn9flMvx9CEu1Qu+m/o6X1pjibCthoc=;
        b=cj7jnglLjj/o6ujx77JGWbKcsp22p70x8HA6CPlEn0RGIbQWPa0HYRQJmjVuei0PRv
         pCrN3/N88jschsUtzdSuPm/maeP4e5WQzRWiicGDMJFInEueHKoIrQDGnfkSAoMN2+eJ
         l6golhLSUpKYLRN295UUJnRGkv9gT09iagIJPZ2aN+vqhakHVeqoPeM8ZIWt1XuNQA3l
         7xo4GY3YQI3hl0pW6RBQkLdMjBIiXY87858RjDhbxxNVfkk+DChbvoU1taBAqXMcBONL
         orLDRSyIPePn+Rcng5/fglNZs0jHiTa7HoWC4Dim6TecGNFkzD35JfOULJANzkXcPLmv
         lNyg==
X-Gm-Message-State: APjAAAWJ/d+Z3O+Gc3pGODNk8yP7DA5ZKUzgf2zP7GXggJdY+OEixW7l
	BbaPG6sntjreLKgurkfKTuc=
X-Received: by 2002:a17:902:bf07:: with SMTP id bi7mr14201876plb.87.1553446487402;
        Sun, 24 Mar 2019 09:54:47 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.91.166])
        by smtp.googlemail.com with ESMTPSA id j14sm18761473pfn.77.2019.03.24.09.54.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 09:54:46 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: media: omap4iss: Use list_entry instead of container_of
Date: Sun, 24 Mar 2019 22:24:33 +0530
Message-Id: <20190324165433.95833-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Use list_entry instead of container_of for lists iss_buffer and
iss_video.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/media/omap4iss/iss_video.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
index f22489edb562..e8d27b7ac329 100644
--- a/drivers/staging/media/omap4iss/iss_video.h
+++ b/drivers/staging/media/omap4iss/iss_video.h
@@ -118,7 +118,7 @@ struct iss_buffer {
 	dma_addr_t iss_addr;
 };
 
-#define to_iss_buffer(buf)	container_of(buf, struct iss_buffer, vb)
+#define to_iss_buffer(buf)	list_entry(buf, struct iss_buffer, vb)
 
 enum iss_video_dmaqueue_flags {
 	/* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */
@@ -170,7 +170,7 @@ struct iss_video {
 	const struct iss_video_operations *ops;
 };
 
-#define to_iss_video(vdev)	container_of(vdev, struct iss_video, video)
+#define to_iss_video(vdev)	list_entry(vdev, struct iss_video, video)
 
 struct iss_video_fh {
 	struct v4l2_fh vfh;
-- 
2.17.1


