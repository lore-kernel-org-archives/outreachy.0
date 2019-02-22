X-GM-THRID: 6660473635314073600
X-Received: by 2002:a05:6830:8b:: with SMTP id a11mr1476074oto.33.1550818997225;
        Thu, 21 Feb 2019 23:03:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:62c:: with SMTP id 41ls2296351otn.2.gmail; Thu, 21 Feb
 2019 23:03:16 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY8YTvP1+99/s6dq8w0VGCKaXTvPlzRlYNV1vcbn++0ghwX+GT2sSXXdvV+qw7qz8dXo4+1
X-Received: by 2002:a9d:4c8b:: with SMTP id m11mr1449344otf.71.1550818996333;
        Thu, 21 Feb 2019 23:03:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550818996; cv=none;
        d=google.com; s=arc-20160816;
        b=Ck5IJApyOIrNodaWcbSyVWfS9O1HGpexe7Wfryw6oSGxluHcb5d1FDPmnSaAjA/+ta
         VCoCGYFpxcZVaker+2MJ2uVsEd3fjOv8AGqu8wBIfmMy2k9Wr+fj3fahwHTt4pq1FsDl
         AqU3/RKHP3wDTAlnwp9oIbWL9eDGghZTiizbsOEonpyOU1vqhqxKfTGt47dceU6keQUv
         WSgpFIILSiGMI3DHIsEn/xAs4Co2nYp3mIklDuIDzMdj2pVWpfH6RWIzeJlP/Qt793q0
         y7kpzAr58CBydycrgSuhG1vDXAbdkqb/v+DYCJPqkLl3hdaU7rvO4D9e3zOgBHBAQSCK
         Y+mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=iDN+ZZLUvs8MGoM54+h+uQovelEc0DAwHlB8YC9LMrk=;
        b=z7+UZR1CMbglEfjNW9xqZJvVpiils4nD1SnkFXvRc1zHPlNdDqSjoANp1G1aP2G11k
         G/kqPWOau1jCTdicpj+3NoPG9sSHr0NKoqU6UjO6KP5UMNda0Pf+rYrd0/8IeylMJI5x
         A2JVhTA7lO3NyaRcXxNZdjjuuywukT55FCgm51SsIsS09NjftkTVGikInJzToJPXAl/h
         z98Ssk/AHg5a1O6SnsIprYs1d3U3E50BkMkmr495JEJ1U2emYNHJF0lqmKAwV+Ix+/12
         kOMZ7hJs3zb8NASLo4R436BefXJg+Fd/h4vzubU47+CJZB/+oD2VobA8jQdpQIqoE+OW
         CDaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NCBSSRFz;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id x31si45904otb.1.2019.02.21.23.03.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 23:03:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NCBSSRFz;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62b.google.com with SMTP id q3so674272pll.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 23:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iDN+ZZLUvs8MGoM54+h+uQovelEc0DAwHlB8YC9LMrk=;
        b=NCBSSRFzjyDx7h03WKbt21CZqqFA78jsEcQxITXITc24Fs+67YkwB06YyX2GYacOEA
         yQPa06pCwB+ELTVW6Mu6veMDz1hHLx1l/yYg39Q34JGPZrATct/sosXXZ3i03aqMs6Ve
         xGnAVi8zekw9oo6825tKBUzVjRj3PCYQKKpV1E/SVsI+8lZ2TsAy8Ib/he8nwAzonv7U
         MWVpOUm5n41Vz8i8jSvGRFRGTO49lYD84wY7ytVNIHYW/C9nJ7oBuvLrWrzbaVA3HZue
         s14awScF0+SDgwn5syQwpO5Hr+sxEEGKv3dRvI6g7aeg6dNNeQk9CP3EasPOLfEQhrlx
         rjxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=iDN+ZZLUvs8MGoM54+h+uQovelEc0DAwHlB8YC9LMrk=;
        b=VwF0zVClCZ/HXMIL6ivknHFK6O3BZXyniqXH+YUh6OZ2VrLfB0ksVWMsFnTm8kxjJw
         HmLh+M/FJ+Fpms+UdXmLa7cUKqW5e9yb/uXQlEjkVw24Lx1cZjoWLxKcoHfPoQnuDIVI
         n3TQMIJeDtcH2jkkDgsE4xFqcixDLPx5JQoPjcluQXJdVypO5L3esgjNQT28NP5otnUF
         tGQim4JFHmSoZXnbbjlZyvbGfIbl9TTYGUgGiGPnRj7ewi2V5t4VO4LONeG3/KFJBrEZ
         Yvb2JBiCLP+q5+l0fHxmg8WaOyC9Yygx4jdh/ZIvL1Lnbju/75nax66FX4QYnPQouUSk
         CxsQ==
X-Gm-Message-State: AHQUAuark3WEGpPJNwrohVfJbyESEFchhhW3AvpjdgDwuhkwbiTUEFKc
	ozq76rTBvT89lSLBhFvv54XSscfQx4Y=
X-Received: by 2002:a17:902:e01:: with SMTP id 1mr2631706plw.251.1550818995778;
        Thu, 21 Feb 2019 23:03:15 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id n1sm1617743pfi.123.2019.02.21.23.03.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 23:03:15 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhanusree Pola <bhanusreemahesh@gmail.com>
Subject: [PATCH 2/2] Staging: fbtft: Fix line over 80 characters
Date: Fri, 22 Feb 2019 12:32:24 +0530
Message-Id: <20190222070224.3963-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190222070224.3963-1-bhanusreemahesh@gmail.com>
References: <20190222070224.3963-1-bhanusreemahesh@gmail.com>

Fixes the checkpatch.pl warning:
WARNING:line over 80 characters
Parameters moved to the next lines with proper alignment

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 9d78ce6e819f..9b07badf4c6c 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -436,9 +436,9 @@ static unsigned int chan_to_field(unsigned int chan, struct fb_bitfield *bf)
 	return chan << bf->offset;
 }
 
-static int fbtft_fb_setcolreg(unsigned int regno, unsigned int red, unsigned int green,
-			      unsigned int blue, unsigned int transp,
-			      struct fb_info *info)
+static int fbtft_fb_setcolreg(unsigned int regno, unsigned int red,
+			      unsigned int green, unsigned int blue,
+			      unsigned int transp, struct fb_info *info)
 {
 	unsigned int val;
 	int ret = 1;
-- 
2.17.1


