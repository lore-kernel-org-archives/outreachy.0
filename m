X-GM-THRID: 6212627761290280960
X-Received: by 10.66.182.135 with SMTP id ee7mr20669514pac.32.1446490161900;
        Mon, 02 Nov 2015 10:49:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.218 with SMTP id u87ls1372517iou.94.gmail; Mon, 02 Nov
 2015 10:49:21 -0800 (PST)
X-Received: by 10.50.28.101 with SMTP id a5mr12314918igh.9.1446490161609;
        Mon, 02 Nov 2015 10:49:21 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si2182704pbc.1.2015.11.02.10.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:49:21 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id z6so156055389pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 10:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=13JLkMFCFvusrdMhFsESWRg/o6l0iOS6B+0rrY1alNI=;
        b=WHVdkSJsZ0n+6Vqxnr+H4mmijzBjjYtYioAv8wkYsZsAtf21f6T+/zwaQXM62s8XRt
         KWno9wXjVrxPsrbNrgXJ9HZFtHwKWE5XaqAPaQqWjhl3eU9OVwopFpUVwLH471dlezgF
         rxY2BiagKEh0j/qo9ft6adGnqRdJKhfZDcgV9kM60cK3SXhnalqWUArUQPnEfle8GtSf
         b4ekR0+EsL8LzKZKB4YhCM3j08L7F6vQ3PuzKu4o/qG6bk3QHCuPAEJ3UbHgWOCP2u7K
         fhlCWexSMHHBRZjF8z39B8i86rHBBjkWaHJfCdT3jfeCTA/bQEJQ23fKsX34RsOAT9ho
         2d2A==
X-Received: by 10.66.216.101 with SMTP id op5mr28851600pac.71.1446490161479;
        Mon, 02 Nov 2015 10:49:21 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id po4sm25301548pbb.64.2015.11.02.10.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:49:20 -0800 (PST)
Date: Tue, 3 Nov 2015 00:19:14 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: lustre: tracefile: Remove function prototype
Message-ID: <33debdf5c210a80c443ef7aedfe0b07d894a10ca.1446489978.git.shivanib134@gmail.com>
References: <cover.1446489978.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446489978.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the prototype of function cfs_trace_free_string_buffer() as it is
no longer needed.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/tracefile.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.h b/drivers/staging/lustre/lustre/libcfs/tracefile.h
index cb7a396..4d5fdaf 100644
--- a/drivers/staging/lustre/lustre/libcfs/tracefile.h
+++ b/drivers/staging/lustre/lustre/libcfs/tracefile.h
@@ -70,7 +70,6 @@ int cfs_trace_copyin_string(char *knl_buffer, int knl_buffer_nob,
 int cfs_trace_copyout_string(char __user *usr_buffer, int usr_buffer_nob,
 			     const char *knl_str, char *append);
 int cfs_trace_allocate_string_buffer(char **str, int nob);
-void cfs_trace_free_string_buffer(char *str, int nob);
 int cfs_trace_dump_debug_buffer_usrstr(void __user *usr_str, int usr_str_nob);
 int cfs_trace_daemon_command(char *str);
 int cfs_trace_daemon_command_usrstr(void __user *usr_str, int usr_str_nob);
-- 
2.1.0


