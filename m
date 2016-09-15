X-GM-THRID: 6330466800696819712
X-Received: by 10.107.141.145 with SMTP id p139mr6747595iod.15.1473943970371;
        Thu, 15 Sep 2016 05:52:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.49.22 with SMTP id e22ls3311456otc.32.gmail; Thu, 15 Sep
 2016 05:52:50 -0700 (PDT)
X-Received: by 10.157.54.216 with SMTP id s24mr6544022otd.49.1473943970024;
        Thu, 15 Sep 2016 05:52:50 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si1196952pab.1.2016.09.15.05.52.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:52:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so773232pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kn64IzyPmXx6Uk3IcNlYfcaf/aCw1nR+Fepp1GB4j44=;
        b=qoYkS7EMJyvw4gAM4vof5shz1/Dnx0d2pV5OXOIpP6RtmShGP2Qkn2OeplxiitFDFV
         iHPsSgkj9DkdF2IwJPOa+xhspwg3QpLn/GUA8MnEnUKb8zUml1YNgP7u9yuV6QmR4gQ0
         bc7O5MkpmdFX1y+b3DOsqbNsPrVSEucFE4hnQrrH0kCnAHJ4hMBrI6szOxN6F8AF6PW6
         CO/7y5Hjgz4BzJoTVqDviAe+cby4ddGFwmDpKy8eeYuiMLDIVruFgn9MSJjf2v/Q8L/H
         CT7drvdDRs7TM7kQk/+VPisXbApzAbF8Cx6kN0jU4SH8VrvRzgNXXx1L3Rhd0G+1sKe6
         x/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kn64IzyPmXx6Uk3IcNlYfcaf/aCw1nR+Fepp1GB4j44=;
        b=aq1sbpzq6Cs8BnhgKdfTgDawPHHbv6X9wV98NMJ1z2aHiKRgDB3kmUcePWyKroPEB2
         TTlQc82NBpI5s0LyYxuoIPavL44Bk0NnmyCaaQ5z36CSzomMae423eIMOg8khj73xFNI
         xP+DCqILYjW8UAHSdY4iT7mk4+zE6+/g0jzfCQvgQhDGkekOUyu+9YBh1CI68DC/xtHH
         zuSJDRCmXtgcC7PPD/RG3UJ+LFNUQWslC7GIuuzq2xp1PtK+0rYUKGWj87nbO2Kc9BTw
         0o84yn/AqmshUGHjaf8If9rB7g+pLeq9bKe7Vqm2nO7SLnmaI1fnmzn2QPcPcmnWWpvH
         b18g==
X-Gm-Message-State: AE9vXwOHQvkGkQQYKdos4vc32YPUNi2zfezJGQ58JbdU60Eg9D6kvu3DGfb16V2uLjtn/g==
X-Received: by 10.98.150.10 with SMTP id c10mr14418170pfe.73.1473943969487;
        Thu, 15 Sep 2016 05:52:49 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id mk9sm5196411pab.1.2016.09.15.05.52.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:52:49 -0700 (PDT)
Date: Thu, 15 Sep 2016 18:22:40 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 5/6] staging: lustre: Remove unnecessary 'return'
Message-ID: <bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473942874.git.aquannie@gmail.com>
References: <cover.1473942874.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473942874.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary void return at the end of a function. Issue detected
by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Change in v2:
Edit the commit message to include what change was made rather than simply
stating the fix.

 drivers/staging/lustre/lustre/llite/rw.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index bb85d16..23747fa 100644
--- a/drivers/staging/lustre/lustre/llite/rw.c
+++ b/drivers/staging/lustre/lustre/llite/rw.c
@@ -667,7 +667,6 @@ static void ras_update_stride_detector(struct ll_readahead_state *ras,
 	ras->ras_stride_length = stride_gap + ras->ras_consecutive_pages;
 
 	RAS_CDEBUG(ras);
-	return;
 }
 
 /* Stride Read-ahead window will be increased inc_len according to
@@ -883,7 +882,6 @@ out_unlock:
 	RAS_CDEBUG(ras);
 	ras->ras_request_index++;
 	spin_unlock(&ras->ras_lock);
-	return;
 }
 
 int ll_writepage(struct page *vmpage, struct writeback_control *wbc)
-- 
2.7.4


