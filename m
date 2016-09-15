X-GM-THRID: 6330466800696819712
X-Received: by 10.200.41.47 with SMTP id y44mr5423424qty.27.1473926893059;
        Thu, 15 Sep 2016 01:08:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.23 with SMTP id 23ls2545827otg.44.gmail; Thu, 15 Sep
 2016 01:08:12 -0700 (PDT)
X-Received: by 10.157.60.198 with SMTP id t6mr5461194otf.10.1473926892716;
        Thu, 15 Sep 2016 01:08:12 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si624667pfw.1.2016.09.15.01.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:08:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so1917265pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+JpJgdq5uZQR3CaWTYek3fTnHm+BAJvinSuchMJk5ME=;
        b=qctZKGeElTXzCb1nVB0B6v+S+zR2XuZt54Hc14RZNiAHjFzLw9y1xoYmxgMBEo5y/k
         CEY/keFoOJcWCbJdrqhxOjcNN4UKFX1RtvZckKgQ2EiLA0f2Ue5/tfYn5ZJl+nGTDaS8
         5gEg2WjECBSZ/6DMC5ODS4IBu+L0Sf5U2qpzv4mKw2Cjz7dvhvioDVyQrZGBbiQzH4nn
         zFYRHKRam4XMHwwbX0AF0iD//FaZrhB2NnJ/ZaZwvFIz4GTgQQNrAXtKiZBrZzKp2Ep2
         cuDBg2cB8N5bUjTh3cxuAgxPB1MReaK7Up+jDRTwYese6nSOEDIQzVo2wsfiF6p1ekkN
         8T+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+JpJgdq5uZQR3CaWTYek3fTnHm+BAJvinSuchMJk5ME=;
        b=AXVRwuPboUkdBtnAtlPQAOAHRzq5o1uVpxsCTtiyqTNlaF0CKcWNJQDvK7WMLM6ShD
         D/shS1I0kI+GABQa778Tb/xLCecfW+d0RzA68KATBYf6C5aqpq6eHaTrfPX04n58R04b
         p+JHklQfzTgFgBKvLUWU5FLAQyWYAWvdKcNLpXZmhnazr2nX/ZuRWkbt+W2kk41zFBbC
         hJEQogIuWVMUihh5ddUl/n+YVjIylaua2GRJSG37wW8sD08nY1U6BaIcQYExxafgv115
         u2YQr5w/QaX/3XlBhLnlMqADy9qnVV6FsS8fGLu7VYE2XfRU1B2Z2x213ctv1hurOTLm
         96BA==
X-Gm-Message-State: AE9vXwOtmq2lT3VUk5d6klzienAE2lkEzi+kBWhcL3hFp8fmhE2VXI8BpyySjrjG+KEZYg==
X-Received: by 10.98.69.73 with SMTP id s70mr12292334pfa.115.1473926892551;
        Thu, 15 Sep 2016 01:08:12 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 184sm43082004pfg.20.2016.09.15.01.08.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:08:12 -0700 (PDT)
Date: Thu, 15 Sep 2016 13:38:03 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 6/6] staging: lustre: Fix indentation
Message-ID: <1777c3403301453d0edbeecb44af83f29debd690.1473923837.git.aquannie@gmail.com>
References: <cover.1473923837.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473923837.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch.pl warning: Statements should start on a tabstop.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 2 +-
 drivers/staging/lustre/lustre/llite/rw.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index e2e81bf..bfac6dd 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -602,7 +602,7 @@ restart:
 	} else if (it->it_flags & FMODE_EXEC) {
 		och_p = &lli->lli_mds_exec_och;
 		och_usecount = &lli->lli_open_fd_exec_count;
-	 } else {
+	} else {
 		och_p = &lli->lli_mds_read_och;
 		och_usecount = &lli->lli_open_fd_read_count;
 	}
diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index 23747fa..25de3bf 100644
--- a/drivers/staging/lustre/lustre/llite/rw.c
+++ b/drivers/staging/lustre/lustre/llite/rw.c
@@ -1022,7 +1022,7 @@ int ll_writepages(struct address_space *mapping, struct writeback_control *wbc)
 	if (result > 0) {
 		wbc->nr_to_write -= result;
 		result = 0;
-	 }
+	}
 
 	if (wbc->range_cyclic || (range_whole && wbc->nr_to_write > 0)) {
 		if (end == OBD_OBJECT_EOF)
-- 
2.7.4


