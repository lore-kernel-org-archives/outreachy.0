X-GM-THRID: 6803023005726277632
X-Received: by 2002:a63:a47:: with SMTP id z7mr4148147pgk.117.1583952229608;
        Wed, 11 Mar 2020 11:43:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:f248:: with SMTP id y8ls1235900pfl.6.gmail; Wed, 11 Mar
 2020 11:43:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvvxf+CLOP1iMfIa0bO58jo7ku5HVri4BR0ctzEAWZ4McYUBbJKPleL1LuMMw0FNNQcnqGB
X-Received: by 2002:aa7:96f8:: with SMTP id i24mr2071914pfq.321.1583952228003;
        Wed, 11 Mar 2020 11:43:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583952228; cv=none;
        d=google.com; s=arc-20160816;
        b=fWcR8cJ3ZjoO309uSI+UAePgMHkazOr05he6qCyGtIHh2G1kf02JH7s6X3YAitHX9j
         qDC0zVefo3ul6aI5kowFthrS6JLWk+gCONFXffEQ83Mtsiz52v3FkItTOj2FQ1Gg0xxV
         c5HBSpUA3Q0GC87ATMWbRmwq5o2UCvQTK99I8knfIvy+idD8w9AEGRj0ZAVQZM05BzIZ
         OKwBLtwsR5C3LnPncF51OUSUOaBqD55iilyRJdTSlSzzT+EVR1yCKwtVr6w1t26VTzPs
         cwkbe4rRlw5kl3NvRqlAA0KyIjijxNaqsyA/U0coc9bcLnDC/LrDOix0Kn8+N5IxfntY
         7NZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=5VwvwLNKBoT0UQk2PVG2F6YxlDJlnjIBciyrZNiyZRo=;
        b=BcglSQxnUolXd0JfgMpJifHotvBH+MMOsb5VYwZxVXbHKh7MFb15Dgnf+zFjJFw9zP
         Yy67K5nbZSlqVUg9VCZqIfOAhsULVq6j7pYHBGV1IrG3QXJe0pLnU+yVYVnr+uiTWiU5
         pC3FLOQ9p8ScDr07rwUXxqWm4OFc2sV5IzQQ6wrFvqM15GyzA/ejbVBEBpcs9Iey4YSc
         x4z92VOHM6gys2Il+iXMQQFysr02HFe7eryDPpC117CYIYazBSrcxGcR4iygSM1pacmy
         miIEwsQfk5QCrW9SjrADT6LWtj2N9iqMNmJMp63UOaozlKciOMVBwSEjQw94/ZSdoPrn
         ZPag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=vU2vrFHr;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id q197si211702pfc.5.2020.03.11.11.43.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:43:47 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=vU2vrFHr;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1043.google.com with SMTP id ca13so1450518pjb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 11:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5VwvwLNKBoT0UQk2PVG2F6YxlDJlnjIBciyrZNiyZRo=;
        b=vU2vrFHra7TDXz3Fu02T2BB4Z8h3ffL5XQm5ci56GSLNwW4MFmtMbPbjSPpT4ZqKMt
         DE9KQzATb9CLD62HoQ9gBemiAd4TJPw5ZUaWr2C6raYLFM9rKSBb6cok06H43HImO3AQ
         1EK1/ja4Cz47qF7STYtZirUpFS4O3ETjq8d0Zj1E988B7+Gk01epZ6bWj2V1HgsBfNa7
         c+27yLUlqvIK0zzAtAy67crS1nOAg3hF9Lo4PuKrCpTDDz+bJytqLb3SQkzdCjrVtc7O
         XfPaqck4KM57vTIRkjHFG44hjF0FMnh6Etk4RMvtkXdms7hXhhAWI4Mrai2DDQ2L1msl
         TWNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5VwvwLNKBoT0UQk2PVG2F6YxlDJlnjIBciyrZNiyZRo=;
        b=Oz85yVDcTeDUuN5Qc3YViuCiQ/MV+pxZz0Bf/Nv8q5fVrbwIaliJ9RXGj4wCXD+JVC
         RZgBMDj4dcjobyXaxIJu8MDo28oDd6oaL/ukSWkLYYVLeFV3M5ciSC44FkexUi+AKwI7
         /2qPntGVCjKOTfAA3/DvzVuWcQXWhSKH5F6Rlj3bKPD9nqCYJNgG80S/53qvx3yK7LYm
         7HtqgcIo8rBaGPSDM5oh6AWRjTBPQm9ENY/+DXZ28rpixFzf/lhNQmefhErJS/5zDX51
         7UpWYA6ynuhGDo5NZK9/VpPnb982r1Htg6XxZhhmLd/iJA92b6aS3Ps7S8PSSGhxaE0b
         iaUQ==
X-Gm-Message-State: ANhLgQ0RBV6EKKi8WNQPX4jKq7CGLC80ZZkU9wHjriCVFP2tvQBJ7g71
	hmojQFlvftjdc9Fo42wiDUTBhQ==
X-Received: by 2002:a17:90a:9311:: with SMTP id p17mr122990pjo.140.1583952227137;
        Wed, 11 Mar 2020 11:43:47 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id i131sm31430955pgc.18.2020.03.11.11.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 11:43:46 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 1/5] staging: comedi: ni_mio_common.c: reformat code
Date: Thu, 12 Mar 2020 00:13:23 +0530
Message-Id: <20200311184327.25338-2-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>

reformat the arguments given to ni_stc_writew() to increase code
readability in ni_mio_common.c

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/comedi/drivers/ni_mio_common.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index b72a40a79930..06ed4b1dd875 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -2445,9 +2445,9 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
 #endif
 
 	if (cmd->start_src == TRIG_NOW) {
-		ni_stc_writew(dev, NISTC_AI_CMD2_START1_PULSE |
-				   devpriv->ai_cmd2,
-			      NISTC_AI_CMD2_REG);
+		ni_stc_writew(dev, devpriv->ai_cmd2 |
+				NISTC_AI_CMD2_START1_PULSE,
+				NISTC_AI_CMD2_REG);
 		s->async->inttrig = NULL;
 	} else if (cmd->start_src == TRIG_EXT) {
 		s->async->inttrig = NULL;
-- 
2.17.1


