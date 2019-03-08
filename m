X-GM-THRID: 6665805280714948608
X-Received: by 2002:a2e:974d:: with SMTP id f13mr855623ljj.14.1552003733969;
        Thu, 07 Mar 2019 16:08:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:92cf:: with SMTP id k15ls930045ljh.6.gmail; Thu, 07 Mar
 2019 16:08:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqwu3Cx5akflF5KpnBWZMqqYn3sNKQ/Q5LQDx9SSmfG3BiK+93JJIulPV1oh7NRYy4bluU98
X-Received: by 2002:a2e:8ec9:: with SMTP id e9mr810961ljl.6.1552003732774;
        Thu, 07 Mar 2019 16:08:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552003732; cv=none;
        d=google.com; s=arc-20160816;
        b=KEHlzoQPu5fLhXpaGmEhGD8Y53CBzJwqD1eKACkRTOcXXw21s97YP42ly2zIR7q4II
         XUKe1w0cu/9N1UuDem9M5RwS1C4ZOPb1S2B2MBN7RJDQtRQJiyODsSAEiSKsnZGvdlep
         qf11CQvM9Q1Fe7GDHsS5KXKY7aoj0gmu+1BXCJjJ4qXHWyTDlXpD/HKFjVeSsPoVFMnz
         haIIgZ5K1bbEEslYuJMrLVqtvfLnn5eFUAXyIC2VqAFMju11/BcIY2J3h/RusiBG43xk
         o1LgjWkMjq43nJkLhkSIQ/mNJNGTJ3RdysReJ5QbB7nq/5JYjK19Q2zTNzbkUqR8YISQ
         X1yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=98PeJVC6M60RgmdP9MHI4kFOHi8VNpdFt+pjMO5xw7c=;
        b=pWm3APMXV6aFhgd/8UTrZS/zisVUF7UApZYDUnlvLlZ9ljxVjBj2eGlC230yLvovhI
         lLuCtAuj9BWax5a914fH0kEGzTgf7QMtmh4wlWl3psbAexDT9+wZBtBMtucrF2AYLfzp
         j7IK8TwNwqtdWw9jQ/4M1J6FJfhYFMwGW+oF1hn5zfLh3bgStVl/+qm557dM+El5vAup
         6vSo5vkOI8PbOWDEOm/3FHwOYtjGEmrPTyEsNtBt+ksH5u5v/XsKa1BzCq53LCc7tbDI
         mVZYEn6qAiY4KW3RMQj+YzVVbBxWWS93Ky4aft9ADufRH++lCWUzLZQ8p5ME0cVIDHeQ
         mfWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vV2I3KsD;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id h11si284755lfm.3.2019.03.07.16.08.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 16:08:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vV2I3KsD;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id d17so19475958wre.10
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 16:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=98PeJVC6M60RgmdP9MHI4kFOHi8VNpdFt+pjMO5xw7c=;
        b=vV2I3KsDjV8a7jN0y++jL5Lc/RAUoAZYNoACaLZAk3XFJJrNXri5emYddclT0f9gNF
         mPZTrhoegPhhY9L/WG9RVzRmVHE98/W2lRRaBnu22UjbIxAK+k16iPC934/nVdZuJd2O
         xsAroIoF1T/k6DtnUmj6ygo9uJt1JqYnKDWUIQE5HZW5G3luGqIaKEYoY6HrXYQnAEEU
         +Wiq/xbtFlz8qlN2EV86rUqRaoaYdA6AfJ95bv2D9rl2M0uk9g3rhOP1wu7Ggp2OuZMN
         oOK6ho01t8WK5Jv35QaeE3rgZCK88MEJbpPHujtTIy+9k2cnRR1Ey9BIR7RpgT8tkaNj
         9qmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=98PeJVC6M60RgmdP9MHI4kFOHi8VNpdFt+pjMO5xw7c=;
        b=EPZMCCKh4mqwJLSKwj/SSKmbDpSOalEEdn+iBsgkobqA5JRtgPEbHAKuRCbFENl2gC
         ROsYFW7phcUccEHSNG0gFpoftiDwvsui4kDmo6PQbBZNd4KJVKW5F/IpyZVlEm4M4fuE
         DuFQhBV6daI5NGsiZeGUFY9V9fqUZU3gqjByxU1jeYyRr/euWXIMxe6/LIVfldyxycgm
         bQaVIEezdnFT2yCYIpaEeFBrnOeYlSHE9j1jcKZjIvd4LyK8XvagyM1XlmbrwKfXeprA
         Wf5V65mfSJaTMNVXntxW1biO/ncEK0DE7Q5p7YPBf/DRzem1HwK9JDupYjjmH5HjjcBd
         OQWw==
X-Gm-Message-State: APjAAAXjee/ZwjGfDjtgGurjhbpSbFn+reWcSOVHpuJLcJrpSXK+mnrU
	EKg075N7PdWaJzi90Zais8t2T34=
X-Received: by 2002:a5d:6b07:: with SMTP id v7mr8506238wrw.314.1552003732295;
        Thu, 07 Mar 2019 16:08:52 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id p68sm7179144wme.45.2019.03.07.16.08.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 16:08:51 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: emxx_udc: replace bool with unsigned base type to fix  possible alignment warning
Date: Fri,  8 Mar 2019 00:06:32 +0000
Message-Id: <20190308000632.23509-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

replace bool with unsigned base type to fix the checkpatch.pl warning
 Avoid using bool structure members because of possible alignment issues

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index b8c3dee5626c..4a610bc90db3 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -528,7 +528,7 @@ struct nbu2ss_req {
 	struct list_head		queue;
 
 	u32			div_len;
-	bool		dma_flag;
+	unsigned int		dma_flag;
 	bool		zero;
 
 	bool		unaligned;
-- 
2.20.1


