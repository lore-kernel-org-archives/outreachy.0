X-GM-THRID: 6754520121946931200
X-Received: by 2002:a25:df43:: with SMTP id w64mr12215645ybg.123.1572659267571;
        Fri, 01 Nov 2019 18:47:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5986:: with SMTP id n128ls1217301ywb.7.gmail; Fri, 01
 Nov 2019 18:47:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzIHEsJhaUh9Hpu0VEYFvpycS1uGYnu7dH08sqUbEaNaAXaQEEb4VeUN7IOO7flYRg7psja
X-Received: by 2002:a81:3986:: with SMTP id g128mr11181055ywa.487.1572659266281;
        Fri, 01 Nov 2019 18:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572659266; cv=none;
        d=google.com; s=arc-20160816;
        b=Xfd0q/2iQrBf1N+GM7ZdxUetsUDPTVsDicXV/XZIzNyTiMfTMR1JPU9n1KvNyh/0ed
         mtiJVddyosVRsWpWNRvwYgqNxsR3HfpfeaQl3tFflQUa2d715XwQCSKZw+Qjfnt6yEP+
         7YPT85Sgyl06wKl/PabLOyFKmwzzu4JLiX2ck9hJ2owqJ/s0EIDy9Px78qUbmSJMy1xr
         gp5OE9o+SZlMqmaUX2+swv4LE3MW/8D0cNmHhcPnPVlmTjkzEHMTmWptlxZrkLK+Sm5q
         oNO6cuJHmmyxkvqm3cg5Mj2MtUbgIUo/9oA4wKMCj7XhKWuvZP6rQiW8nKie5EGmzh24
         Q4ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=shVJvoSfUFQwFR1T1/ckU6MQ0yREb84qK29dexN6WDE=;
        b=tfnrcsTVcFAbJpDP7OJVZrzHum+WLe8ZM3CNz2Nt66X2P6bxlg9SItyfXfWTK+qU0w
         mUCWKvMnERSmSDXtsxU/MxXIZx9l6Q8AFrOdPTq3wKyIS/rfj92pPeoULrJHgMB86dZs
         ZiuDrH/hVbruGXE7NuGQxUqJ/YdXRRHnb2mh4x1mc8e9b0zkAL8G6+PI22IoaS3CDvDz
         PHkyM2foXiw0fegpZjTQ5bxXAqmRm3pEyZ3NKvh4E8fGfcnGjDExLdm9C4beZdb4sQ0I
         WvIKdCajCLLyEOP6XbVac12mqELu68KMXhkXYe2UkRwIb93vwO1M+sJXG1JKxBHMQORL
         YOEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t10QmKM7;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id u3si551941ywf.4.2019.11.01.18.47.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 18:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t10QmKM7;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id x6so5093512pln.2
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 18:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=shVJvoSfUFQwFR1T1/ckU6MQ0yREb84qK29dexN6WDE=;
        b=t10QmKM7a/msGJ/dC8yq9B0nQ/i5gf6TFRzjHMVoe8gu/XtCQzJ5qLopdXvz2NS1mW
         lWtIluBikN0N44oPULQhCGVQJo5ZPr1i78e66JDD/kjmBBU0W1qq4rp2Kvmvj8rNO1yw
         FtJeT38f37lQeDzwnQT+jHuJCRIoAteYYacElsBYu6XqBN+EWhIPyQaQsPhoZwxqvhyQ
         EqpaSRx9L8LYJ15x71CgeElSZSyBf0foVk69VHVsJnPH2FYNtawOzsoi132aU4bjpsSK
         UA1+IIS6SXGWxicVCwDqqKBi1/6O2pHsps/JjbZ5ZaxwwNCfY9Fr0yz39GausDLgz99I
         UOaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=shVJvoSfUFQwFR1T1/ckU6MQ0yREb84qK29dexN6WDE=;
        b=QrRyRgTrpEnpFUHRFPIBzBxdWp75PtMX2itEGrNNsVkOoW5HaLZOtNdRzuYG9NKLRD
         rRNpuoqsjHtTSn7w4/AU0Ovbtg7+aMuqmR9TxLVwm5+k0aebAsyaw54pd7dlXOm1kmrh
         ULztHXcIazn8mKN/FYjIzZV3oOP+DNSJl5sSRT4aJ96jfmWf1i9U773+guc6SG0x6Wld
         X9imMAkn8MvLrablBJK8DgivMFwnCUOIL/HIguVO+WYR/3G009jZ3AqpjvjkDebknkTu
         9HMuD0zfPdE/ozsuzCCMjZ80Sg7szxRhjeN4GjvL97mlUkdOQ9ZFzq+uSv5BxeuBg3Xb
         0tuQ==
X-Gm-Message-State: APjAAAU/JcTQkWwVzcylom2ed5IB1orJeCKjR/NrSgiv+GYdh086SOtK
	tTkOo6tQBAckni0qf/G5QmV4I5F9nekaSQ==
X-Received: by 2002:a17:902:6a89:: with SMTP id n9mr15309402plk.278.1572659265507;
        Fri, 01 Nov 2019 18:47:45 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id w62sm8870731pfb.15.2019.11.01.18.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 18:47:44 -0700 (PDT)
Date: Fri, 1 Nov 2019 20:47:42 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH V2] media: staging/intel-ipu3: Fix assignment warning
Message-ID: <20191102014741.bjt23bzuz6coijgo@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes a warning by replacing the integer value with
a boolean.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
	- Edit the commit message and description.

 drivers/staging/media/ipu3/ipu3-css.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css.c b/drivers/staging/media/ipu3/ipu3-css.c
index fd1ed84c400c..f36de501edc6 100644
--- a/drivers/staging/media/ipu3/ipu3-css.c
+++ b/drivers/staging/media/ipu3/ipu3-css.c
@@ -1450,7 +1450,7 @@ bool imgu_css_pipe_queue_empty(struct imgu_css *css, unsigned int pipe)
 bool imgu_css_queue_empty(struct imgu_css *css)
 {
 	unsigned int pipe;
-	bool ret = 0;
+	bool ret = false;
 
 	for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
 		ret &= imgu_css_pipe_queue_empty(css, pipe);
-- 
2.20.1


