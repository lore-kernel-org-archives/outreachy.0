X-GM-THRID: 6331266648892243968
X-Received: by 10.66.184.168 with SMTP id ev8mr11125693pac.43.1474112916933;
        Sat, 17 Sep 2016 04:48:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.114 with SMTP id l47ls1105393ote.24.gmail; Sat, 17 Sep
 2016 04:48:36 -0700 (PDT)
X-Received: by 10.157.26.81 with SMTP id u17mr1206930otu.95.1474112916679;
        Sat, 17 Sep 2016 04:48:36 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si5048383pfe.0.2016.09.17.04.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so4581744pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YjC+zVO9msOQnnUIfjWv7PIC0gZNXWbCdZwzT7CRxyc=;
        b=BydIqa0Av7XaAQCUYN+n/oR28GS2tnR1A5eGQn5ES+RMjPHxNAAouzc7MOCa0DZG5N
         9nzxR421iBRyVoz1s57096yZ61K21a8N9eV8ydQ4YByAHG6IBUyD3+WaoW1/vuMo3thm
         Mhh7FBMmQp1cJ11F0fzswTPBM/NxJzLpHsMRDFIu6FFbP5XI1erSLIrSPWcHY5kC/We3
         dZh1TMpk3APXpcG7hfLA7xtmP+UyJ4JlRTFVv5Wyz3duPCcJvfP64VFXU7b6F/0PTord
         E3kBK8V/lBsYt633s8+DVxSPo+jMdcyHr7pv2eK/8yCXtz1BsLhuC1LX/2bgzMtSuSJU
         bR/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YjC+zVO9msOQnnUIfjWv7PIC0gZNXWbCdZwzT7CRxyc=;
        b=frVcose0eAU6yQFaFAkzSuSlUExg+hWPjaRfkQvwRe+sfe+7rPlmdBtC+FWO5b5jP3
         HTmXAtdI/+Zepb+dnfjieE5P4L684rO6nKmC69iIvwAHlElpIdP1/6sflS/Guu7CBBcs
         Q8uWPkuuS1fqH5riMctZWgCLmZVMV6o1/ulG1AcMXvn+e9aYBkuZyb+RdXIhr10pbv7f
         KOiR7kPwosehuTwUZ30tVczFD8+UfVX9rH5M4S3Xu1hCml0DT2QHPxdd3zLgD9xwjcbX
         ZP7oKhLw1vIY7cOqv0fap52cVXSJkJJgzrr5y5bre6ulE+gtUCiMyB2zymZVPJpSIC9w
         s1Lw==
X-Gm-Message-State: AE9vXwOBvGxFLe78mhHRncEju6xEfYiEKQPe32WywKwUrzg0zXbSrxlnZJf5RT17oM+f5Q==
X-Received: by 10.66.83.138 with SMTP id q10mr30741900pay.54.1474112916489;
        Sat, 17 Sep 2016 04:48:36 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id s89sm58677619pfi.83.2016.09.17.04.48.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:48:36 -0700 (PDT)
Date: Sat, 17 Sep 2016 17:18:31 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/4] staging: vt6655: Replace explicit NULL comparison
Message-ID: <9223603338faf0d1fe00b8ee06b2275937166a0c.1474108445.git.namrataashettar@gmail.com>
References: <cover.1474108444.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474108444.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace explicit NUll comparison to resolve checkpatch issue. 
Comparing variable x with NULL same as !x in this case.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 62418c2..f109eea 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -735,7 +735,7 @@ static bool device_alloc_rx_buf(struct vnt_private *priv,
 	struct vnt_rd_info *rd_info = rd->rd_info;
 
 	rd_info->skb = dev_alloc_skb((int)priv->rx_buf_sz);
-	if (rd_info->skb == NULL)
+	if (!rd_info->skb)
 		return false;
 
 	rd_info->skb_dma =
-- 
2.7.4


