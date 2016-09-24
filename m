X-GM-THRID: 6333834735065759744
X-Received: by 10.66.87.4 with SMTP id t4mr2553181paz.21.1474710881924;
        Sat, 24 Sep 2016 02:54:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.49 with SMTP id u46ls1838695otf.43.gmail; Sat, 24 Sep
 2016 02:54:41 -0700 (PDT)
X-Received: by 10.157.44.41 with SMTP id f38mr2169324otb.78.1474710881471;
        Sat, 24 Sep 2016 02:54:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si3151017pab.1.2016.09.24.02.54.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:54:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so6149161pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 02:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=kkm/t3apMwrJtRZtryVoIWmqFF22u15O+TyZ1WKOY5c=;
        b=iX1cI0C3iDlbXv7vts58gFHVo7KY3YOdYw4XDtWt0x3BcweosmCfRZhbSlKYpgZ7cz
         urN7R5JaQUz2Z74oOuzrUocsGrH0Az5IEJLp1TOU2UqSoaALkhwMGdP6vDuj2PVmNH5q
         z2nUbR1dQp/CeFd/x+5p8GDqYjKKYYogzjG/ld+q//8IyuqYb9n3Q3QSuRwmk0G/I07C
         d+j61F9KiRv3zyOOg3RIHi0ue9jGA/34u3by3PEJz+5/zWqAExTgTMiEkB9n0p4uWRRu
         HSkjqSPRwwiuDC5O0XRhGXzcoDF8FeeUSA35FBSRRvVkQwd/GjTHLhrAL2CRk3WeZs1J
         rrvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kkm/t3apMwrJtRZtryVoIWmqFF22u15O+TyZ1WKOY5c=;
        b=V3EdgZHXZxo2SuWz7rMN/ZEgzGZpwNemZOVXOQb2GOBFowF7I9nJXqgXg/emlyNcDE
         VKHg4iMjs3+NpXe0A/ANG/Us2ZRq+j9t2S6Jc/16KRuAMXCfCfKKC2sY9+bYHLwgsQbu
         JFZfXDe0vBVguHc1PUuz0yDLL3+IlDmn4wvrwYQ/zJS1zMRCElz6QddZGYranmPJQRK+
         nC1L5/DEFcGa/4sv9utzX1ZbvnduoOR4oQj0AtU8fPvS3bk7ztw6AHv/UsN9onLJmjOb
         24qZPhwrcxMaHVfm3KHvTCZfsoKN9MWgGiaxUvPD5JIkDxvOy7KEigaM6+A8bB+AsE3b
         9uiw==
X-Gm-Message-State: AE9vXwNpdjrXHl4r9ySrjCJMsai5RcZTd5q7iQI57FKMW32itNImnvJAMbCWboav8ctCPQ==
X-Received: by 10.66.52.42 with SMTP id q10mr20274257pao.34.1474710881277;
        Sat, 24 Sep 2016 02:54:41 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id e21sm17206983pfb.96.2016.09.24.02.54.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 02:54:40 -0700 (PDT)
Date: Sat, 24 Sep 2016 15:24:34 +0530
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
Subject: [PATCH 4/6] staging: media: lirc: Add space around binary operator
 '+'
Message-ID: <a84f4ffd4eb14442060ed45e993e322cf72b2cf1.1474708456.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474708455.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add space arounf binary operator '+' to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_parallel.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_parallel.c b/drivers/staging/media/lirc/lirc_parallel.c
index 3906ac6..64d99ec 100644
--- a/drivers/staging/media/lirc/lirc_parallel.c
+++ b/drivers/staging/media/lirc/lirc_parallel.c
@@ -163,12 +163,12 @@ static unsigned int init_lirc_timer(void)
 	if (count >= 1000 && timeelapsed > 0) {
 		if (default_timer == 0) {
 			/* autodetect timer */
-			newtimer = (1000000*count)/timeelapsed;
+			newtimer = (1000000 * count) / timeelapsed;
 			pr_info("%u Hz timer detected\n", newtimer);
 			return newtimer;
 		}
-		newtimer = (1000000*count)/timeelapsed;
-		if (abs(newtimer - default_timer) > default_timer/10) {
+		newtimer = (1000000 * count) / timeelapsed;
+		if (abs(newtimer - default_timer) > default_timer / 10) {
 			/* bad timer */
 			pr_notice("bad timer: %u Hz\n", newtimer);
 			pr_notice("using default timer: %u Hz\n",
-- 
2.7.4


