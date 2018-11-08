X-GM-THRID: 6621630836870479872
X-Received: by 2002:a2e:9119:: with SMTP id m25-v6mr676916ljg.22.1541718569777;
        Thu, 08 Nov 2018 15:09:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:675c:: with SMTP id e28ls241977lfj.8.gmail; Thu, 08 Nov
 2018 15:09:28 -0800 (PST)
X-Google-Smtp-Source: AJdET5dIXTiDJ6hNJtTcnv9NPj2nJ7kaHZmwrS+Nl618Yt5KtKp3S3FDOiKuHonO5LyDoACEIQM3
X-Received: by 2002:a19:5519:: with SMTP id n25mr636341lfe.1.1541718568699;
        Thu, 08 Nov 2018 15:09:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541718568; cv=none;
        d=google.com; s=arc-20160816;
        b=TPj80q+L1oOwJhbgWm522YD1joVlPv/J2j4EY/fj0yojSe1MwS+igJuEd/drueyDP6
         /g1roHrUQP+LPTG9AxoHS/+WbOLwfW9hhYJteyBpYVOwjqPHVbT13q83Rc3N3wm58P9M
         HQPp4H2faNN4ta4hdK24VXavXmfGtO8nykl/HzZkOs6hStpHdWgA8cVP0hqkIfMrbIQj
         sDCvZZpqROkepTjnfP2S7ZBbL4TUZpNMkfNcVrZW1z1tcyyufAowxv331i9KaZKx4r7h
         ebHmmvGI0QIPGwWgYhytvPWpRP41wETvZagVNwZOGgLk/xyN2qjeu6LeovDPmoq7ysve
         kTKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=cirWsdMCSolWYOo+gJzRK2Zcr0VGegA4suaNU1JPJ+g=;
        b=Fpxigg1K5SSPqYP/xnG10LkWJdozQDJ7sIA5WOFgyXSdIs6lhKNQkvOA1HBNOwMWzN
         uKg+kCn97BDmSyeO+8sMBDnQ2Iv/k1wPSsSkCA4+LrUbxsYWO3v39/fExh7H8Nl5ITUQ
         7T9j+c1uSXlgj2jDbJGsGnWpfknpDZd3SmQd1k4mJnI5+cpIk5bwuSj3E+wJi5mCgEeM
         SnS2sC2SqguRhx28ShNfl+nf7EhDgxdE4WgnQ5BNOxehZ3rwPTd6sprnJ7TrBAivcC5o
         qQmUZ5WSy13IuG/FREZWG/3nFumV0k4JzFsYU1ofdMwSCmBeGSBl8+ggCYoH4BAKngfo
         vXog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SZbcmX/N";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 73-v6si154120ljc.5.2018.11.08.15.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 15:09:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SZbcmX/N";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id e3-v6so795893wrs.5
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Nov 2018 15:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cirWsdMCSolWYOo+gJzRK2Zcr0VGegA4suaNU1JPJ+g=;
        b=SZbcmX/Nz0YmhNNjseQ5ONSNLE6+uVT9/zQHOsp88EeeuHM8CZz9RtdoZwkK5QB911
         gooarPZ9sIvADJzeUXHdGuWtwCIV4Wy0xMfXu4fwlHAcBR6BZGdHVO8q/rYTe4VKKtWS
         LpmhE4Jo6nu9G1z2tuVycinRjDriVk8MvSOdrC4RDSLfoJAAF2q3tCh7ybKRp3MyJVxi
         s92dae08f4oVQvYhjotAV/xm4LhqhiO7/duWcJac6VDNNhnstlWK2qA0nk0VsetB6Tzi
         AncnPRL6rjUSoQLw2qblIVgxOU3TuufGPUI6btsvB7j9DKXL56FgsxpAoS/vFZNfNgA7
         FfjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cirWsdMCSolWYOo+gJzRK2Zcr0VGegA4suaNU1JPJ+g=;
        b=re4Wm+MnKG9sS9Chmez2wjAR9t7aZb4u5CB9c1/a40E2Pm9lHJvyT4GLjXtbuuRapD
         QX66LYHb1WJa6xvndiUJZVN9XG2KgKbFVHQ9T2UelYOYjxmc/lwL7X7Ds4iUWONH5mFO
         koL9O+LHKF8YmDSYDo6k4oXIgSI1Pf33kijxKV3CTxuqgswxlyecDYzppysyL8I9QXsb
         AL+CkkCBx7EXlv1IOnQHZizIHo2Y7v/btiokDLTlJiagkBRj3VqX3nNdwqwLQhgaLLv/
         YZA4drNTypC2gRolESsKa41nri4rEe3C4yB4ADdYz285JjFsExCD73NQapNLNoFFDlQ3
         rBmw==
X-Gm-Message-State: AGRZ1gKbQ1hWOnRF/1Ku42+qUqyROdTa1kgVJimB9j3PUEU5lFsHVDuI
	79Mk3D08v8T+gKogRKrJxQ==
X-Received: by 2002:a5d:684f:: with SMTP id o15-v6mr5423200wrw.186.1541718567847;
        Thu, 08 Nov 2018 15:09:27 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.gmail.com with ESMTPSA id p7-v6sm5929237wrs.23.2018.11.08.15.09.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Nov 2018 15:09:27 -0800 (PST)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com,
	Irenge Jules Bashizi <jbi.octave@gmail.com>
Subject: [PATCH v2] staging: davinci_vpfe: Remove one blank space
Date: Thu,  8 Nov 2018 23:09:18 +0000
Message-Id: <20181108230918.4477-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

Remove one blank space complained by checkpatch

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 81b369b28a47..79f7f7f9a36b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1466,7 +1466,7 @@ ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
 	struct v4l2_mbus_framefmt *format;
 
 	format = __ipipe_get_format(ipipe, cfg, fmt->pad, fmt->which);
-	if (format == NULL)
+	if (!format)
 		return -EINVAL;
 
 	ipipe_try_format(ipipe, cfg, fmt->pad, &fmt->format, fmt->which);
@@ -1818,7 +1818,6 @@ vpfe_ipipe_init(struct vpfe_ipipe_device *ipipe, struct platform_device *pdev)
 			  V4L2_CID_CONTRAST, 0,
 			  IPIPE_CONTRAST_HIGH, 1, 16);
 
-
 	v4l2_ctrl_handler_setup(&ipipe->ctrls);
 	sd->ctrl_handler = &ipipe->ctrls;
 
-- 
2.17.2


