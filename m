X-GM-THRID: 6955860329873014784
X-Received: by 2002:a5d:568f:: with SMTP id f15mr30464102wrv.346.1619537437442;
        Tue, 27 Apr 2021 08:30:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e341:: with SMTP id a62ls801103wmh.2.gmail; Tue, 27 Apr
 2021 08:30:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCNqSLu3adMPqr/VlIpx6+C8KqjIFqlXvGPS4hx/FUrmLN6htiOfGQuUiAKaxy6WUJXfbM
X-Received: by 2002:a7b:c012:: with SMTP id c18mr5058965wmb.94.1619537436085;
        Tue, 27 Apr 2021 08:30:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619537436; cv=none;
        d=google.com; s=arc-20160816;
        b=rlap/1mpQT91XRu5qvaOuYwKFOjuki+jgoR9QXRIvVYR/S4sZQScA2mqHrQkQaDRkH
         6PN4teVlgJJHDjizyXnn1PcLG/2rfd4iyNSmNm4M3cOimg4HA6jtCle9hs7qNnfv2DTo
         a94H8X5xdGDai8aq2UNXIvCy7E4xlmHV+F3ucXSYX0s3liJVdIfQTNNN/15TDTWQ8OLH
         HzkEiO0z3Cy1OWGXCMYCmWGTHrbQpsQrcLe6zustvx9Mycg/MWOK9Q7yLiKb8UYWQLjA
         l6JtcfcX9YL6y7TVXzgsrm1hYHO1m2XHFh5IDN3lu4hoOZW78W3GEUkGd86mknW7GLlg
         /cGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=en+xFe7JAIRsoBsYiimsgZeSf57kqB+zHCfWoaPKvRA=;
        b=EBZNxR4EG8LZ7X2v2cM/XrwLfxK/Jm3EWdsjj0Bjhbg+uhi1cM83XJvzdeR6T8vmqC
         ISRxp0E+vuVn07G9aSfqINOLurcsPDScWc1xnVOxpyVALVlM/P9ChhaGIBEW3LrCMDYH
         z1mowZDTULdzCkwahQFU+RHNJw8R4JdkHAVvxjcrmOH0UZrKMNNejczzKariegK2Rd55
         iv6/p0akKwpDOxJXsGHtBDOFof8mcJui27MspOT+sv6XY1pmlPrLsah0NeVqlZ8GQUHO
         mmXFCQrRiubV3LmZ3oG01RoOEJ1du7iHcxKJmR7hML8ZN4GTkzNWi5KpiWq5Ac88NGr4
         jy7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c8zNvEY9;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id p189si130275wmp.1.2021.04.27.08.30.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 08:30:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c8zNvEY9;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id x7so59871740wrw.10
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 08:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=en+xFe7JAIRsoBsYiimsgZeSf57kqB+zHCfWoaPKvRA=;
        b=c8zNvEY9cBlrkty2c6Gj8GsQAOijyLyybD/ka/3G7HQ1NQd/Zg0Cw3CX+aU/ysMJSK
         8oXW5T6rM5JW8M3ZIKh3ubxoSd2KpxED2pfQf81fuVkgwG0Urv5MihHugXyH23SeV8kO
         GD3BvjRq0rYTH0RLWXGxEVKcdzwRJ6XgmIOyg7QeUbJPtJhTRf7CfUVvPMkEQqE7pg1t
         /Ellm1NjBd7F7sLkpbzVchY3GyqZJJ21IRgw58vlSktR5T+r3wx556qI3daIbrMRkof/
         XUstr+tQtSEuDwnJta7D4bZ4v2P6X5B3UGidQre2mFR6pOosuDFXjQUIuYAqOFWni57S
         tL9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=en+xFe7JAIRsoBsYiimsgZeSf57kqB+zHCfWoaPKvRA=;
        b=RsC1ErP2DyTfhEmjFQCd2jKityJUJbslMrBGADQep/1GVnOVFTiWTrW5YlBwXGzh1k
         /r3944M7UUj19f3IvKpRtGoH9ubEa3SrEmy5St0ZVgT0Od/3wd7aer/nSbZHeVNRUgum
         bm9KWzqSDNGPTDhFxZbXdKPnjudCdeX5sWDk/jA2tLh+enlhHEl4CytAOYB1p1Jqht7X
         8ixjdODe9yCgu9lJPJQufiiNL5KO6C1f5BziRCAXBaJyzU/DLOE/dCkkOT5Q+rhO6i3g
         9yIZiVP4IpvpmuBX6cl8XY9gyJRgtS9uZyAJL6VjvrGcp7L+6se5fCjsxPhmIpDK3oh4
         rs6g==
X-Gm-Message-State: AOAM532hTowK9mBs4Axn90wblFNowoGXURm8GkdpYeKdZCtP1FW1z78V
	+ZZ/AsSsQ77SOQVH9L/hF9jQlwVKLi6I8Xwp
X-Received: by 2002:adf:f20b:: with SMTP id p11mr15253116wro.244.1619537435802;
        Tue, 27 Apr 2021 08:30:35 -0700 (PDT)
Return-Path: <tawahpeggy98@gmail.com>
Received: from peggy-Lenovo-V130-15IKB ([154.72.153.193])
        by smtp.gmail.com with ESMTPSA id z7sm4702166wrl.11.2021.04.27.08.30.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 27 Apr 2021 08:30:35 -0700 (PDT)
Date: Tue, 27 Apr 2021 11:30:28 -0400
From: tawahpeggy <tawahpeggy98@gmail.com>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging:greybus: Add () around gcam macro.
Message-ID: <20210427153024.GA14574@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

checkpatch.pl suggested parenthesis be added aroung gcam macro variable.

Signed-off-by: tawahpeggy <tawahpeggy98@gmail.com>

---
 drivers/staging/greybus/camera.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index cdbb42cd413b..324a26430f71 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
 
 #define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
 #define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
-#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
+#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
 
 static int gb_camera_operation_sync_flags(struct gb_connection *connection,
 					  int type, unsigned int flags,
-- 
2.17.1


