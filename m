X-GM-THRID: 6250112463289712640
X-Received: by 10.182.112.193 with SMTP id is1mr3620069obb.38.1455217707767;
        Thu, 11 Feb 2016 11:08:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.98 with SMTP id ip2ls1585753igb.27.canary; Thu, 11 Feb
 2016 11:08:27 -0800 (PST)
X-Received: by 10.66.191.101 with SMTP id gx5mr43715050pac.27.1455217707380;
        Thu, 11 Feb 2016 11:08:27 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id i133si760562ywe.7.2016.02.11.11.08.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 11:08:27 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x230.google.com with SMTP id s68so22739493qkh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 11:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=g3nE9sa3a/qP14V3fSiDE0C++XhKLWKETjg0rvo+SLA=;
        b=KcpN39YDSkLK/1HNzxvMaAx2EhnttOnOfBJ1BFsZNkHfyu9w3FD0vj5xKDdFd/8eK5
         9UABrYWISUVRRdGfgGSEIrVp4c0MHD1G7PBxRGJl55542emQP5Q4rNS+d0ZG/g0WSbWW
         S9WKV6rbYiYN8ctj1H3q1aDT3FmYloQZCqUWwurnCfMCrxh7OkZhxW7iuGJBq+90MEgn
         s8yCfzgNPbEJT29XsH4OksBsj087sReMMR153fPlY47kuY6OhLKrTyrx7fyg7P0W76hd
         ct1Q9Jt9Ied1nmRLf+FBeII0wX7SIw3/V0TmLgdKdACwijzBJPRquNELCzmK1QeXdsnM
         E6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=g3nE9sa3a/qP14V3fSiDE0C++XhKLWKETjg0rvo+SLA=;
        b=NZmmKEVzmpjPtvGi4eBzIGo6hQssXp0jXYUCQsKAEK8PJsq3FobBs5qpB1MJcs8nz8
         rVbMoVUTPdsDqkAqkdp5nwy5lEBM6bsZAhc9gKqsr4j5hGGo6kuG7/Zr5KDrd+NVHWZG
         CEg3XaO8V/hIdQAixVezn5EosmgbVU/P738AuAVtxEqe8piChDpfw+4lkjidLtP8fGoD
         Dfs26BoGhMwS0jkt1K0f1L35FQlfWZD6oJpYiRU84NWTDOQID8jGVYJl66atka8UhuLv
         UOVjltpS4Q2gNUlBnyS2r0Pn26WtDtI2B++v5Slu3UPRYtBkAXuefLS+zAPuXLoNzjeU
         PKtg==
X-Gm-Message-State: AG10YOTETG30agPpVFjrv07bx3zXNWGhWJARqgSJrBt9uoeKwHzD93vyrMT6BhGS6mRFFg==
X-Received: by 10.55.71.66 with SMTP id u63mr57366059qka.67.1455217707222;
        Thu, 11 Feb 2016 11:08:27 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id y129sm3913740qka.33.2016.02.11.11.08.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 11:08:26 -0800 (PST)
Date: Thu, 11 Feb 2016 19:07:48 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: Use ARRAY_SIZE for sizes of arrays
Message-ID: <20160212000748.GA5536@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use ARRAY_SIZE to calculate the size of an array to make code concise.
The semantic patch used can be found here:
https://github.com/coccinelle/coccinellery/commit/9cbab452a3a2e18439e8386d6c4a68ee42c3ee2b

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_c_common.c | 0
 drivers/staging/comedi/drivers/ni_mio_common.c   | 7 ++-----
 2 files changed, 2 insertions(+), 5 deletions(-)
 create mode 100644 drivers/staging/comedi/drivers/ni_mio_c_common.c

diff --git a/drivers/staging/comedi/drivers/ni_mio_c_common.c b/drivers/staging/comedi/drivers/ni_mio_c_common.c
new file mode 100644
index 0000000..e69de29
diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 929389b..1c2abb3 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -1166,8 +1166,7 @@ static void ni_ai_fifo_read(struct comedi_device *dev,
 			comedi_buf_write_samples(s, &data, 1);
 		}
 	} else {
-		if (n > sizeof(devpriv->ai_fifo_buffer) /
-		    sizeof(devpriv->ai_fifo_buffer[0])) {
+		if (n > ARRAY_SIZE(devpriv->ai_fifo_buffer)) {
 			dev_err(dev->class_dev,
 				"bug! ai_fifo_buffer too small\n");
 			async->events |= COMEDI_CB_ERROR;
@@ -1242,9 +1241,7 @@ static void ni_handle_fifo_dregs(struct comedi_device *dev)
 			     NISTC_AI_STATUS1_FIFO_E;
 		while (fifo_empty == 0) {
 			for (i = 0;
-			     i <
-			     sizeof(devpriv->ai_fifo_buffer) /
-			     sizeof(devpriv->ai_fifo_buffer[0]); i++) {
+			     i < ARRAY_SIZE(devpriv->ai_fifo_buffer); i++) {
 				fifo_empty = ni_stc_readw(dev,
 							  NISTC_AI_STATUS1_REG) &
 						NISTC_AI_STATUS1_FIFO_E;
-- 
2.5.0


