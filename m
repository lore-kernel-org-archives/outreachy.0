X-GM-THRID: 6389239074104803328
X-Received: by 10.176.80.54 with SMTP id b51mr6129983uaa.6.1487610646763;
        Mon, 20 Feb 2017 09:10:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.100 with SMTP id n97ls2947619ioe.16.gmail; Mon, 20 Feb
 2017 09:10:46 -0800 (PST)
X-Received: by 10.99.114.9 with SMTP id n9mr7226187pgc.145.1487610646059;
        Mon, 20 Feb 2017 09:10:46 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 23si2588141pfw.4.2017.02.20.09.10.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 09:10:46 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so13695912pgj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Feb 2017 09:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PMrYGBHHCpYe2H59Zhnhqf9CcEzYo5bPH3YQkL/qpHU=;
        b=THOUrw6a8mXEc7NUmfVUMwuab2xOYhjrlON5SvN+Cz+bbfqy4xKyrhjsr1qc8Mb1WA
         91nDFOaFmLjjPe2F7uRI7FuBMFyx/CqP8T1i41ECxG+yyvOZVOSXtDvQAg1DYRr1wEeK
         kWCD9YZmW0xQhI7y1G/bIKzGioYEW+ZUwQuaSSx2DtkdKXHcaRoCCDEaC0XmfYNpt/Z2
         2b7lioEdNZHAbAowqSlzS3GF+nvdAfV0kAx94qoNt/yjCimVW2LT0ZSl5OBvXU00l0Jk
         u9lwVU7HgUhWxsKjC8ZVLW+ZqYojG9AfNpHvWWwY2vX0eqeVsHCrN6YyahkuULXRa1+s
         J0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PMrYGBHHCpYe2H59Zhnhqf9CcEzYo5bPH3YQkL/qpHU=;
        b=FbWOnRkAlPRfZpx2ktXqpBQrUZMGYaJp0Ki7rZ+Y/RdokI4vptfW8G7VLYn+XpvVld
         Lgp7nbqga7aYwpJVXFl9jeq9YGp9DkKbsHtzZUJoz9ebKJL86RLlkdokIsY9tdWlHRin
         bP7oQz6cWlvEtEKoH+1NOkEVCvAiH33qJ2NJtb67UOafAsrLzOJMEWHRPjsEclIhVaQ4
         22ad2gli9UFhCX4TOQjf9v67hIxVoStmiIi8Zp39jdPX5Y+BEqWNLwtddqMXODHkEmMm
         eRGTOEbdnks7d9ktrlmS/IDLsHDpShCnRfncyLyrerxSTfr8dqsKgG62JY0j0zAJwqjg
         tYLQ==
X-Gm-Message-State: AMke39lpgIAJLUyFc+lKLFN2i/S2ivgXSopj+jltakfXLrPeV1W4eVz8mPyPqJt3KGzr9w==
X-Received: by 10.98.150.70 with SMTP id c67mr27384764pfe.84.1487610645805;
        Mon, 20 Feb 2017 09:10:45 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.245.66])
        by smtp.gmail.com with ESMTPSA id x30sm36375455pgc.67.2017.02.20.09.10.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 09:10:45 -0800 (PST)
Date: Mon, 20 Feb 2017 22:40:28 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: greybus: loopback_test: Fix open error path
Message-ID: <20170220171028.GA32505@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change array index from the loop bound variable to loop index.
If a poll file fails to open for any intermediate device, all poll files with
fds of devices from 0 upto that device must be closed in the open_poll_files()
function. The current code only closes the poll file with the most recent fd
allocated, and at times tries to close the same file multiple times.

Detected by coccinelle:

@@
expression arr,ex1,ex2;
@@

for(ex1 = 0; ex1 < ex2; ex1++) { <...
  arr[
- ex2
+ ex1
  ]
  ...> }

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Made the subject and changelog more concise

 drivers/staging/greybus/tools/loopback_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 18d7a3d..2ee9a22 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -674,7 +674,7 @@ static int open_poll_files(struct loopback_test *t)
 
 err:
 	for (i = 0; i < fds_idx; i++)
-		close(t->fds[fds_idx].fd);
+		close(t->fds[i].fd);
 
 	return -1;
 }
-- 
2.7.4


