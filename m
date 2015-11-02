X-GM-THRID: 6212630453300494336
X-Received: by 10.31.170.17 with SMTP id t17mr20053014vke.2.1446490770521;
        Mon, 02 Nov 2015 10:59:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.101 with SMTP id u92ls2517531qgu.93.gmail; Mon, 02 Nov
 2015 10:59:30 -0800 (PST)
X-Received: by 10.129.146.4 with SMTP id j4mr18915961ywg.45.1446490770127;
        Mon, 02 Nov 2015 10:59:30 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id fa8si2118763pab.1.2015.11.02.10.59.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:59:30 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv9so162952934pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 10:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=kVNYYKTrtFhAcJoI7QJ1wBJwSckzhqAOFBZ++7s2L8w=;
        b=Za2HKi2SHfZowgJDlb6Od0s+H2vl7X79WkmvMlTjT2l8J5gJGgj6hDzJUutGAK02a3
         bdDJp0yFMlwIn96kpw4aa056Y8J3xxGyxR0bsaXDjyuCHQSyqz9TBSi46u5vhqL3EZEg
         F5DjYhTtH+JcV6gL2FF8YUpG98MUmD8Di7WxT2dG2i0P4K/8Av1h1MuwOwfX9KivSn8b
         tSnx191O27iZASGwSozD4hGIRxK+qaY0dy7D4qjjEQJOLjMBpwNdKHtFvzYpFFB94ayc
         9EKYqXgpBsoPLRovUd6v1Ck04zmpH2LcP/Diw3j9lUH4b4xBMGkcoJqCd+WGiBUjfzfA
         q3aA==
X-Received: by 10.66.255.66 with SMTP id ao2mr28243868pad.97.1446490769988;
        Mon, 02 Nov 2015 10:59:29 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id qy3sm5289002pbc.21.2015.11.02.10.59.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:59:29 -0800 (PST)
Date: Tue, 3 Nov 2015 00:29:22 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: lustre: tracefile: Replace function calls
Message-ID: <8fe0ac6bb7050d78af923daefd8f22a6f8250222.1446490656.git.shivanib134@gmail.com>
References: <cover.1446490656.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446490656.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace the calls of function cfs_trace_put_console_buffer() with
put_cpu() as former is just a wrapper for latter.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/tracefile.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
index 54835fc..211047f 100644
--- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
+++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
@@ -451,7 +451,7 @@ console:
 		cfs_print_to_console(&header, mask,
 				     string_buf, needed, file, msgdata->msg_fn);
 
-		cfs_trace_put_console_buffer(string_buf);
+		put_cpu();
 	}
 
 	if (cdls != NULL && cdls->cdls_count != 0) {
@@ -465,7 +465,7 @@ console:
 		cfs_print_to_console(&header, mask,
 				     string_buf, needed, file, msgdata->msg_fn);
 
-		cfs_trace_put_console_buffer(string_buf);
+		put_cpu();
 		cdls->cdls_count = 0;
 	}
 
-- 
2.1.0


