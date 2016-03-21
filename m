X-GM-THRID: 6264295591908474880
X-Received: by 10.182.75.196 with SMTP id e4mr21622064obw.36.1458519974872;
        Sun, 20 Mar 2016 17:26:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.163.13 with SMTP id m13ls1780644ioe.49.gmail; Sun, 20 Mar
 2016 17:26:14 -0700 (PDT)
X-Received: by 10.50.20.135 with SMTP id n7mr9165435ige.5.1458519974327;
        Sun, 20 Mar 2016 17:26:14 -0700 (PDT)
Return-Path: <lesliebklein@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id q187si1641929ywf.4.2016.03.20.17.26.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 17:26:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lesliebklein@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of lesliebklein@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=lesliebklein@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x230.google.com with SMTP id s68so71106909qkh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 17:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HtqjLYmPHcSUGKdQATGiz38ys4VtKjSJwmcU4me06XU=;
        b=pOvgknhos1VwA6mkBxLyEZZjI8936PEQmlShMgkZNbf/YEtctZoqWUpHgjYBBNALNI
         /FyQijLvEL3+kfJceW6rIlG8cQzAyyzz4qOUcKFR4Ptg3rZASkIgfyJ5xPPq/zFiwm9f
         XJ8JQsmaClOsGUJ8BuuBdnvTfU4fCPDloiMz5mCpMcU5JpbZNzFpMuPwQWjhgr+VXDbh
         AXOI7/cBHpTJwKNr7QPBuxnvTIFFt7a4awKSjRqwlyq1E0gMUZ2D6a+kjt2/xAiapW+8
         k+alsCCWngZtNmdE9FZfRnxBuYS6dD73x0gvpHj5HSqxl+/3MYGALMDzfE9A5fT4L1Ia
         Wi3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HtqjLYmPHcSUGKdQATGiz38ys4VtKjSJwmcU4me06XU=;
        b=FcnayEk9j3FdN441hPj9KK/iIU3rOA06ebxvypxxptjMmqS3on7NqQwOaq3M5AxwM+
         r3Vfa1WO2wnto2XUiWg9FUcXSNeHrkAmmJSZBPWu2XbdS8k4ICEdc1wGmk8+x9c+6rek
         yMSWaWZoSgIhzb+ocPzPZX1FiK3eYXHZk7hVfBE17N93+hLfRSeHIposGfQhIHCC0Aex
         wagRxqS2Nv4+AN+UoTrlYd0sBar2rhhrW/UwkiIN0hSGvt7uMPSbz3VkYB6rA/NhnS7f
         dsmaWU8aF5WPddUmZHb6gV+tayHxZbRiV5PSbBS/hhYrP3kEaLNv0RGvNZ8Dz7fdnWRN
         fIxg==
X-Gm-Message-State: AD7BkJKsRGeJ49GMYUAXiyX+VhHYh10hNmOpDMuVHxkOuT9+MOPTqNWHkcHYvZbDYAKMRA==
X-Received: by 10.55.27.30 with SMTP id b30mr36916238qkb.53.1458519974042;
        Sun, 20 Mar 2016 17:26:14 -0700 (PDT)
Return-Path: <lesliebklein@gmail.com>
Received: from lbklein-Lemur (c-24-0-90-100.hsd1.nj.comcast.net. [24.0.90.100])
        by smtp.gmail.com with ESMTPSA id d64sm11098443qgd.9.2016.03.20.17.26.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 17:26:13 -0700 (PDT)
Date: Sun, 20 Mar 2016 20:26:12 -0400
From: Leslie Klein <lesliebklein@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: comedi_buf: Replace 'unsigned' with
 'unsigned int'
Message-ID: <20160321002612.GA9328@lbklein-Lemur>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch warning:
Prefer 'unsigned int' to bare use of 'unsigned'
in file comedi_buf.c

Signed-off-by: Leslie Klein <lesliebklein@gmail.com>
---
 drivers/staging/comedi/comedi_buf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
index 90c2801..c7d7682 100644
--- a/drivers/staging/comedi/comedi_buf.c
+++ b/drivers/staging/comedi/comedi_buf.c
@@ -80,14 +80,14 @@ static void __comedi_buf_free(struct comedi_device *dev,
 
 static void __comedi_buf_alloc(struct comedi_device *dev,
 			       struct comedi_subdevice *s,
-			       unsigned n_pages)
+			       unsigned int n_pages)
 {
 	struct comedi_async *async = s->async;
 	struct page **pages = NULL;
 	struct comedi_buf_map *bm;
 	struct comedi_buf_page *buf;
 	unsigned long flags;
-	unsigned i;
+	unsigned int i;
 
 	if (!IS_ENABLED(CONFIG_HAS_DMA) && s->async_dma_dir != DMA_NONE) {
 		dev_err(dev->class_dev,
@@ -208,7 +208,7 @@ int comedi_buf_alloc(struct comedi_device *dev, struct comedi_subdevice *s,
 
 	/* allocate new buffer */
 	if (new_size) {
-		unsigned n_pages = new_size >> PAGE_SHIFT;
+		unsigned int n_pages = new_size >> PAGE_SHIFT;
 
 		__comedi_buf_alloc(dev, s, n_pages);
 
@@ -302,7 +302,7 @@ static unsigned int comedi_buf_munge(struct comedi_subdevice *s,
 {
 	struct comedi_async *async = s->async;
 	unsigned int count = 0;
-	const unsigned num_sample_bytes = comedi_bytes_per_sample(s);
+	const unsigned int num_sample_bytes = comedi_bytes_per_sample(s);
 
 	if (!s->munge || (async->cmd.flags & CMDF_RAWDATA)) {
 		async->munge_count += num_bytes;
@@ -395,7 +395,7 @@ EXPORT_SYMBOL_GPL(comedi_buf_write_free);
 unsigned int comedi_buf_read_n_available(struct comedi_subdevice *s)
 {
 	struct comedi_async *async = s->async;
-	unsigned num_bytes;
+	unsigned int num_bytes;
 
 	if (!async)
 		return 0;
-- 
1.9.1


