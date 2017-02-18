X-GM-THRID: 6388359593872850944
X-Received: by 10.200.39.228 with SMTP id x33mr3511847qtx.71.1487405876693;
        Sat, 18 Feb 2017 00:17:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.87.199 with SMTP id u190ls1060655ita.8.canary-gmail; Sat,
 18 Feb 2017 00:17:55 -0800 (PST)
X-Received: by 10.99.111.6 with SMTP id k6mr3936254pgc.131.1487405875886;
        Sat, 18 Feb 2017 00:17:55 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id z73si1230725pfa.2.2017.02.18.00.17.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 00:17:55 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id a123so4116286pgc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 00:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vcvWxrIfVOQ8pGg2sihIrOlO95n9PSDNCjdDXtK6ht8=;
        b=Y9zJqzTeBsGJyosyJWnRFXirAS4R43ovx5W2yK0FNcLlZFptN+90EwANWWJ8HjHGHJ
         lWTk4nktV7Kt8ntyaX15FMuxTorhwHJWw/a+lSj3EtWmPTw9/78QgnzYbUK7y+Wgl6xQ
         zBKJpk3tK3gMigPc8phpyRWeF+SD3fJF+M68x2vCO/ERbWBQ5+jZWAI1R9Yzs1rwsLri
         z8oCfGvoKWVUkNrGgS1oKbSGet+qnveFQIflbhFxKbIRj1hock0FMbdNyuJsBy61NVWo
         qEphHmGVS/49GCuw6AnjBNQ8qZ0T4Iln5hRRNU0eBZC/reTU7YI8B7z0vSCSufr/H8aA
         BAnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vcvWxrIfVOQ8pGg2sihIrOlO95n9PSDNCjdDXtK6ht8=;
        b=lp4YqdpL2gpMMXmIEQ1AfLqRj/ga00O/Z2oXQT902wrJC6WLXeAmtpP4twOCd4uzJq
         Uo7LqvY2DFjoOJzg6MzBs1qJvJt4UbgE4Aqty1V2cVg8BpiqBQUFjzDYVKVnY2qmygCq
         WUPmu6U0nltCJy4qtIVooZA/XM+K58vicUc7BwIHuQGFfkMiBAOIMbyI94BWV/u+MKxC
         ihH7AsrpCk+n7Z8S1cEzl5jECaF0lHqJ0janJ2PGHhJgzJZtx/YPKq1VdwVPfiHSJK3A
         dPCBStxsaF04k9shZvHylKky3J+kUf5r62+/brr3J+3P7ZMbzDMabEawHAzM4Ng5CRuk
         V4Lw==
X-Gm-Message-State: AMke39lDpCCH5/2OkCU/juM+TzV4b9VVTtdmcwxqq9rOFXARipLzLEuV2uoXF1Ns3NineA==
X-Received: by 10.84.241.138 with SMTP id b10mr17024078pll.32.1487405875496;
        Sat, 18 Feb 2017 00:17:55 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.167.219])
        by smtp.gmail.com with ESMTPSA id o1sm23777841pgf.63.2017.02.18.00.17.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 00:17:54 -0800 (PST)
Date: Sat, 18 Feb 2017 13:47:38 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: greybus: loopback_test: Change array index from
 loop bound to loop index
Message-ID: <20170218081738.GA28504@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change array index from the loop bound variable to loop index.
The open_poll_files() functions attempts to open poll files of devices
numbered from 0 to device_count. If the open() function inside it is
unsuccessful for any intermediate device, all files with fds of devices from 0
upto that device must be closed and open_poll_files() should return -1.
The current code only closes the poll file with the most recent fd allocated,
and in most cases tries to close the same file multiple times.

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


