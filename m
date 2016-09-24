X-GM-THRID: 6333834735065759744
X-Received: by 10.31.56.74 with SMTP id f71mr802996vka.26.1474710864334;
        Sat, 24 Sep 2016 02:54:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.88.1 with SMTP id f1ls1122689itb.19.gmail; Sat, 24 Sep 2016
 02:54:23 -0700 (PDT)
X-Received: by 10.36.43.204 with SMTP id h195mr1931970ita.9.1474710863890;
        Sat, 24 Sep 2016 02:54:23 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e66si2905130pfk.2.2016.09.24.02.54.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:54:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n24so6385047pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 02:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+NX+mX2glLI3Tda9KCFpSaGRH7LaTaI52PQBWv1fF0Y=;
        b=ZCWwhojdspLtKxqyhtIRPW6oCIl6pVhAv5pg1r76jgNQagxMbbeKXEvrO94HFDjHq9
         rl531UpdOp/00OAYhzoe2Trfs4uSApmg1aK9x3yzVVPGip1/frqs/gafO2P3J4Qkn3qA
         2QAbu3XInqZtRVN8fJXpiyEBBBu2HHjf+WzKzXwbYr8plfwla1zJhhJ2bqq8pjYy14AC
         06ImJxRzhv1yNtKz8CHQtqlub8yUwU3O5D8Sxv48uz2pNay/5x4QUW1nq+J8jMagKixE
         5KPx34vQdxyAtPBTAbIsRItw8VDaz/Qe1VAzT5NFBcki1TRTHsa+Bf5d604qvA/xS/nt
         x/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+NX+mX2glLI3Tda9KCFpSaGRH7LaTaI52PQBWv1fF0Y=;
        b=K9f/LERCZVCQnqEanMIwKxIjFd8Vm87BEKW10xKz9KP4fk4ALu8oxMvLSMQFb0b/VV
         AXRqRW2cw/3OYvTI5UBXBRhMbh4KaReB1CondUpWSGLAJrexdh2gBJGxj23/0Uqi5mms
         eyBpJIX5ge24bRTEYih2ehRJXQWzGNb/krkmRIFGafOm9LGdvbap7ZVlCz6gSdsxqmG3
         fzx6+hYlOhbmAlNgQCiXDz9/LN7CA3sDrtnaVBH+MXpcV8q6bXDDVFu3LJMHDJG28zaa
         kipQjYGEhcLNWmr8kwqdn/N60aAlFmeDYDqSzGhRsYrRwKbtTx8jr+GssrKafRhoQlt7
         ABcg==
X-Gm-Message-State: AE9vXwOy1Ju7QlEQxSo059N6/BMqKn5l6swvfKhsy2JSRn9dA/YySqMMqFX61EjIaXH/5A==
X-Received: by 10.98.145.25 with SMTP id l25mr19992111pfe.63.1474710863716;
        Sat, 24 Sep 2016 02:54:23 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id x9sm17304820pff.19.2016.09.24.02.54.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:54:23 -0700 (PDT)
Date: Sat, 24 Sep 2016 15:24:16 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Namrata A Shettar <namrataashettar@gmail.com>,
	Amitoj Kaur Chawla <amitoj1606@gmail.com>,
	Tapasweni Pathak <tapaswenipathak@gmail.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	Maciek Borzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/6] staging: media: lirc: Replace data type with pointer of
 same type
Message-ID: <328a70961fc82df3d3444f551bdf1e7ab3fc0985.1474708456.git.namrataashettar@gmail.com>
References: <cover.1474708455.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474708455.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace data type with pointer of same type in sizeof()  to resolve checkpatch issue as both are of same size.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index b1c28e5..198a805 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -702,7 +702,7 @@ static int imon_probe(struct usb_interface *interface,
 	/* prevent races probing devices w/multiple interfaces */
 	mutex_lock(&driver_lock);
 
-	context = kzalloc(sizeof(struct imon_context), GFP_KERNEL);
+	context = kzalloc(sizeof(*context), GFP_KERNEL);
 	if (!context)
 		goto driver_unlock;
 
@@ -782,11 +782,11 @@ static int imon_probe(struct usb_interface *interface,
 			__func__, vfd_proto_6p);
 	}
 
-	driver = kzalloc(sizeof(struct lirc_driver), GFP_KERNEL);
+	driver = kzalloc(sizeof(*driver), GFP_KERNEL);
 	if (!driver)
 		goto free_context;
 
-	rbuf = kmalloc(sizeof(struct lirc_buffer), GFP_KERNEL);
+	rbuf = kmalloc(sizeof(*rbuf), GFP_KERNEL);
 	if (!rbuf)
 		goto free_driver;
 
-- 
2.7.4


