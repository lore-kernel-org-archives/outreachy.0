X-GM-THRID: 6401301781683372032
X-Received: by 10.107.47.67 with SMTP id j64mr3832677ioo.3.1490419214221;
        Fri, 24 Mar 2017 22:20:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls3870321otg.40.gmail; Fri, 24 Mar
 2017 22:20:13 -0700 (PDT)
X-Received: by 10.129.181.8 with SMTP id t8mr3585742ywh.12.1490419213421;
        Fri, 24 Mar 2017 22:20:13 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si959977pfx.8.2017.03.24.22.20.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 22:20:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so1597833pge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 22:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5Q/KOGxXhH+2e/w4xG8yK5LLrvmNKaqrpQXuPXecRWg=;
        b=gT0QAoF4Nr57oS8inudoZO/ZgsiHXwCtAyz/mIrpEfxXsdtLaJH6ArSkldqfq5nmwI
         Dhityj38MYxJrSPKBeEwaWcrH5Dr1xT33uHolgw0oFUMF1Rac41N+uegZyKvr+SAR/pf
         qRhQQtbVZnfC956/LxbGAuz8mMBZzOYeiAdiyIsLaohPZed5YjCay3n5RSEOewMG9JSe
         EeNwKXcuIFwgXgnWkuQ2CR8Lq0d0BIfWfg4vL7AnHF9cUjZRYrziX4bvmAlM6nV6rrE+
         GmU/vru6afkQW1j1fKQdvtKFVVfaxLPHeR8NlOss1Bz9c8N/Fm1Eefhdmdxt2RYZbsvW
         ZqeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5Q/KOGxXhH+2e/w4xG8yK5LLrvmNKaqrpQXuPXecRWg=;
        b=qDKTqPc8ew8bO0I5ACVgw/FJ0dJv1uGvDkOLD2mXN/Ig5o0JetOAkzgmz0knB3QYQd
         ttL5w1HjkhJHEcF1KG8sTkmfj8uon7B6T947agTPoB0ursuAAJIsDSgdXQ5f0abDULab
         5uMRepbECFKh5A8JxAlvj2SCfwKYpRV24U44rH/vWlxaq6MsDWAV9n90OxGEXrnG+71/
         d2pakIPQxU0Qwc/D+IO8PVXnowZ1wMWaWi9tPHqNBT0Nx2cHxwG70ejec3F6GZ4swPZE
         acU1mxyMpuKLOpxeErBM7hNCCWvlWrRE0KbhSpDrFpupffsXJLtyyZkdsvG9T0mXjJyg
         /eYQ==
X-Gm-Message-State: AFeK/H1IHY1DULHusKzcNHKXAFjd38/DTP1v+ibNN//K4mmZNWLVIaXPuShP7ekh9THAHA==
X-Received: by 10.84.232.78 with SMTP id f14mr15552240pln.7.1490419213167;
        Fri, 24 Mar 2017 22:20:13 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u69sm7631118pfg.121.2017.03.24.22.20.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 22:20:11 -0700 (PDT)
Date: Sat, 25 Mar 2017 10:50:07 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pure.logic@nexus-software.ie
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: compress return logic
Message-ID: <20170325052007.GA4908@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Simplify function returns by merging assignment and return.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/greybus/loopback.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index aaf29a5fac83..08e255884206 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -365,11 +365,8 @@ static void gb_loopback_calculate_stats(struct gb_loopback *gb, bool error);
 
 static u32 gb_loopback_nsec_to_usec_latency(u64 elapsed_nsecs)
 {
-	u32 lat;
-
 	do_div(elapsed_nsecs, NSEC_PER_USEC);
-	lat = elapsed_nsecs;
-	return lat;
+	return elapsed_nsecs;
 }
 
 static u64 __gb_loopback_calc_latency(u64 t1, u64 t2)
-- 
2.11.0


