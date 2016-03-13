X-GM-THRID: 6261602092574572544
X-Received: by 10.66.146.231 with SMTP id tf7mr15281813pab.6.1457893287613;
        Sun, 13 Mar 2016 11:21:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.92.101 with SMTP id cl5ls620653igb.27.gmail; Sun, 13 Mar
 2016 11:21:27 -0700 (PDT)
X-Received: by 10.50.143.10 with SMTP id sa10mr10165825igb.1.1457893287249;
        Sun, 13 Mar 2016 11:21:27 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si2741008pab.0.2016.03.13.11.21.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 11:21:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x3so2886554pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 11:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4mQ/IYsJ6ieFuIodSwSFQ9mIpH8mhwcUm3ZnlsheyVE=;
        b=hLfVPaDdxewXWy1c6voQGAPYfkE0nueDAE8e5xKt9In2983ertuvS6c6jOsZoYO4EQ
         Q0HMaFni9OmbZuDMpGapjtyHWSI2tDSx/i0o3sFW9kimdboXIvSNg7wCWI4o3BRfJHg0
         fHyUUzHuuWycUltXkNlA2GuN1YQXZUChusyQEo3X+GaYpVVnULrSJ7xjgTq8D3NPw8BA
         76am+9saxjankfQm9T6Up78ZAcF4pbTPl7yLarNHUTc2GLUzu6N+XxRYvlHTpBFuKTQi
         1Jrq68M50NCnvsANkzbb+5hXsTJmi2iHi4Qya9+kuNOV3/Jv5DjmNItYyusks5RAJ+eJ
         Wiig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4mQ/IYsJ6ieFuIodSwSFQ9mIpH8mhwcUm3ZnlsheyVE=;
        b=DIsz7j8/1hHXpl5dU/JHnVsAzOYboecLorTM6U7T8a8DnyQT7lr5a1jGE/lsso2avq
         IqUgbPEchKRIjcjjfmgfXpu1qeQUQ1vAc52NHPwAdarGfY8DcxzSy0bs0K8/pZoh4RtY
         QFfFWX5h6Ah/qvNIjxFnCaq6f+JnmQmCZbKn9UUjyRMzvywY8OctBvji5pZHcNM2wnKR
         hvti+FXu2+7Xmk+4/iHOfTd0gJ84xYrfMhh6m5Z+nQrWh6VDi33cSs1iXModJ25FFbou
         WdFBJvFgVC31pbjJOVoFAtDdjLGMbqIjifF9/GwkXluPrRoktftwDHbxR8Tc+b2OjrS2
         jWBQ==
X-Gm-Message-State: AD7BkJJvNxgc+rPqfF/FaxTg1jeHtoCHBBlI7/86QoZwq/8O7GPT749Ll++LLLe876UFaA==
X-Received: by 10.98.72.218 with SMTP id q87mr13777141pfi.117.1457893287092;
        Sun, 13 Mar 2016 11:21:27 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.34])
        by smtp.gmail.com with ESMTPSA id l88sm5234490pfj.7.2016.03.13.11.21.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 11:21:26 -0700 (PDT)
Date: Sun, 13 Mar 2016 15:52:15 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: gs_fpgaboot: Add space around '+'.
Message-ID: <dde6aa0e3f40326b0d60a6b6ca2f80e94cf2fef5.1457863546.git.bankarsandhya512@gmail.com>
References: <cover.1457863546.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457863546.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Add space around '+'.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index 1af0745..a221f26 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -221,7 +221,7 @@ static int gs_download_image(struct fpgaimage *fimage, enum wbus bus_bytes)
 	pr_info("device init done\n");
 
 	for (i = 0; i < size; i += bus_bytes)
-		xl_shift_bytes_out(bus_bytes, bitdata+i);
+		xl_shift_bytes_out(bus_bytes, bitdata + i);
 
 	pr_info("program done\n");
 
-- 
1.8.3.4


