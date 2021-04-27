X-GM-THRID: 6955860329873014784
X-Received: by 2002:a17:906:858:: with SMTP id f24mr17832267ejd.347.1619546376270;
        Tue, 27 Apr 2021 10:59:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:acb:: with SMTP id z11ls4159615ejf.2.gmail; Tue, 27
 Apr 2021 10:59:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+87m18biPUZDklKQWoPlB5QowKcjX1z8NI3nLYAPziWam1O/zsTY8rxZJOO4k5UMQGzxR
X-Received: by 2002:a17:906:7191:: with SMTP id h17mr12164757ejk.192.1619546374782;
        Tue, 27 Apr 2021 10:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619546374; cv=none;
        d=google.com; s=arc-20160816;
        b=M87eCpK2EXug4Plbr3SOiZI7qFbFDq3rUPD+n9eZbhcANT3IMOl+fZ/cbOaUrWbSl6
         jVZl90dQY4NJk3iBfBFc9hVg1UKJLjSXqOe3lk0yYUXO7NI9mt6JKcpxLguvQRVes81f
         2jmuFma/cJtaeoV3E1MW6DCK4VUumYHII7Odaf/Jz2oP+3Xdzl8DlGZaSqN+3k7JGqrv
         FWQfzAAPNBblGL5g9epbuLs83swkgbxBZ4n+8+LhfCpjGnYNT3bA1SHGDDP92FeykNP0
         ZHWJ5xq3AH/vtL+Rqd4sPNNGFhr8i77HF6faixUBIS/bANTAL6JkJ0yTrv0vtNtugL3w
         pvJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=G5Yr+1f9iXCo/5AgGjX5uQ6iD7ktZRznZo6VR93dzJE=;
        b=HE5kS0SGfALNADjAy0UWb9pHj3LjED3y+o/zSGRkNwIjrod+zNh/kMx/Vm3m4l1qjR
         IbCuFHMG4fvOuZFluNjnFSn3JSmcvvQw/F0bP63g+HyeaoN0GgMwhw2SU3ynCk5Gj8ni
         yPOdpWKCRk0kH6gOmp3UlFzrKZAb+DYObem5CRzKU3M4wNWazt4lVQJcDK5TQsB3bvnw
         sT/QeUkML82ynD84wTOv/Wmbva90nzgeQkedE8S11/kSO7njwuBzLC9fGeDwp5XiglCw
         58aPjlOarlZn3K93TtOpCXQmbml1Si9DuEVNv5eRwiesQ1txGk8ssUM2hDxCPV+ME+7N
         5oOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+2EuPqk;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id y16si1818665edq.2.2021.04.27.10.59.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 10:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+2EuPqk;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id q9so6206871wrs.6
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 10:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=G5Yr+1f9iXCo/5AgGjX5uQ6iD7ktZRznZo6VR93dzJE=;
        b=L+2EuPqk98tU6qWB8G330YLCLDGjzOAQlDVjANRM9PGd/GoQy+VnzY0pjwguxM6BNS
         vPYvBQr24qFHqkN0F5ds2OBVWaVl1dc5qMPKZmWY2YL28ff+IEwzTd0PsCNylh2TzkEI
         Bu63GCWlQXQgqyAzJJbizZDVYWU3iO9eA8INw5fgxVxHKxJXrMD2D2LzkHkbdia5M63X
         hpiQluIpE603VYxwfkr+YNJcV1awIMR8nZ804IRRBHIjO0zInjXWASCb6MGVsIdvS6ys
         5ELUkEzCRWvHlPloxmBGmtpDW6aA9VDpDfbcOfo5u1FN/euF1ZvPyu6fgCfnroVJIfTi
         eoeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=G5Yr+1f9iXCo/5AgGjX5uQ6iD7ktZRznZo6VR93dzJE=;
        b=fwAdHzHk0alwpE3oRAD/wJSD9TfKGNpZ7YsEolsX1ZpylitUpyuz0J/c3ut65jA1vd
         JZL6cf/rtubjfzjFD5jVIzfYJAb4AbqpUOt4EOa8VzI5buRq9mSR3mVZLRIEt7roayj6
         TtRAVTM5O3LhjCrvBAEcLrxQ8X28jYCEoEYaShabLoc9cs+AG8/sRWr9I2JQM1Wa8NI6
         /nZxdEzeFi7QPZNpdfJGUGr4J8yQAqyuXGGCXyUVQEZtiAIk/1PycqAXfAewNcKJjvtC
         6oXPe1eEhIxR5uwzl8ggvU29qeGX8Mc7bmcobAtaG7Mg/ISd5TiARMIR/IagRQ1qha8N
         LylA==
X-Gm-Message-State: AOAM531IK0d0xjyoX8rTB5sAVi8eXDZIXCzo00Zm6V1F6pM02P2jDwnU
	fmbK6I5beCDNDFEo8qNLKtE=
X-Received: by 2002:adf:f20b:: with SMTP id p11mr16036488wro.244.1619546374643;
        Tue, 27 Apr 2021 10:59:34 -0700 (PDT)
Return-Path: <tawahpeggy98@gmail.com>
Received: from peggy-Lenovo-V130-15IKB ([154.72.153.193])
        by smtp.gmail.com with ESMTPSA id p18sm4600597wrs.68.2021.04.27.10.59.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 27 Apr 2021 10:59:34 -0700 (PDT)
Date: Tue, 27 Apr 2021 13:59:27 -0400
From: Tawah Peggy <tawahpeggy98@gmail.com>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: greybus: Add () around gcam macro.
Message-ID: <20210427175922.GA24978@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

checkpatch.pl suggest addition of parenthesis around the gcam macro.

Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>

---
 drivers/staging/greybus/camera.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 324a26430f71..ae49e37a87e9 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
 
 #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
 
-#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
-#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
-#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
+#define gcam_dbg(gcam, format...)	dev_dbg(&(gcam)->bundle->dev, format)
+#define gcam_info(gcam, format...)	dev_info(&(gcam)->bundle->dev, format)
+#define gcam_err(gcam, format...)	dev_err(&(gcam)->bundle->dev, format)
 
 static int gb_camera_operation_sync_flags(struct gb_connection *connection,
 					  int type, unsigned int flags,
-- 
2.17.1


