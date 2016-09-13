X-GM-THRID: 6329774591118934016
X-Received: by 10.31.192.13 with SMTP id q13mr232758vkf.0.1473765492104;
        Tue, 13 Sep 2016 04:18:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.137 with SMTP id d9ls1046409ote.26.gmail; Tue, 13 Sep
 2016 04:18:11 -0700 (PDT)
X-Received: by 10.157.47.73 with SMTP id h67mr12338701otb.5.1473765491824;
        Tue, 13 Sep 2016 04:18:11 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si3386618pam.0.2016.09.13.04.18.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 04:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so9488640pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 04:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lSfmjftQdGlH6h6a3Q2C8S1BjwYo6g05V4b33J41ShY=;
        b=IEcFCM1FmhjNR8b70tTLOzK4s8bHNLTM63zUI9SzY2iRaH/iQqydvqPqZUs1QUTQNw
         G7mTcf7PL29PFuh5GxsCJy9Zi0yvGbKinWMIscWQ2VcxhO5rWQoxDvEez0xWFXXvvU4Y
         GC9AUel5+eHruZQzSlmtGuzfuDKKw/yq6+wRcOEheDyAkkQIqr3rtBrD+H84UfN6Pcb0
         IQsE2CQPwXxoqLOynjl8kJLuwWT6HW0WS/iUj3MgSTDrOV2pq5pNEJ93OPGF9w6ViTVv
         9wa0Nzq96eDP4XlCuiMWNE2SH2ndwZzM3rfbJjRsqikB3zpGHZIUgyMZJUVxRfb/TY+o
         f2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lSfmjftQdGlH6h6a3Q2C8S1BjwYo6g05V4b33J41ShY=;
        b=fJB3dzmtx/2LhhPG5e328Zg3jdSH6lkWziPoLDikfmpUj5mCKQ8E9EsOLDn9YHnHvb
         TsagfFW7+xMJ5pQqJNTnVBaRQbzg55JiHV1QPwOUvDAKbpqlAr4D7jIrLkc45PqlrhS5
         TsXxufjd3wa6ldgyYfEIZyHD9zgv/adoO0uMafZKGm9dLljhZOY1x5S7+J6/e4gSbvfM
         m1VFtxjna4IqXJSnbJuZ+jHPDMkFGh+KMhRAiRG9LhE5rw9wJBxWDSynSVt+0CxDcxJ8
         yvCK42U27QsZp3sjZgK5UFgZTvbS0/0sGPbHH0n832lNinNazyEZmI1KXCbdduAqMz4g
         qCPQ==
X-Gm-Message-State: AE9vXwNJoHaDr+xKvUjoijnKXGrOPEMXgp8cGKgCibNGeBaqQyxOxM7CqsilXCvK2hJSgA==
X-Received: by 10.98.17.83 with SMTP id z80mr363516pfi.38.1473765491633;
        Tue, 13 Sep 2016 04:18:11 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id e187sm30551921pfa.58.2016.09.13.04.18.09
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 04:18:11 -0700 (PDT)
Date: Tue, 13 Sep 2016 16:48:01 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org
Subject: [PATCH v2 5/6] staging: media: lirc: lirc_imon: Add space around the
 operators
Message-ID: <20160913111752.GA10774@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Add space around the operators { "<<", "*"}.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2:
	-add cc
 drivers/staging/media/lirc/lirc_imon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index e44f841..ee12da2 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -561,7 +561,7 @@ static void submit_data(struct imon_context *context)
 		value |= PULSE_BIT;
 
 	for (i = 0; i < 4; ++i)
-		buf[i] = value>>(i*8);
+		buf[i] = value >> (i * 8);
 
 	lirc_buffer_write(context->driver->rbuf, buf);
 	wake_up(&context->driver->rbuf->wait_poll);
-- 
1.9.1


