X-GM-THRID: 6212630453300494336
X-Received: by 10.129.134.129 with SMTP id w123mr19689720ywf.17.1446490791374;
        Mon, 02 Nov 2015 10:59:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.201 with SMTP id t67ls1967280qgt.73.gmail; Mon, 02 Nov
 2015 10:59:50 -0800 (PST)
X-Received: by 10.129.70.67 with SMTP id t64mr19377618ywa.54.1446490790970;
        Mon, 02 Nov 2015 10:59:50 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id fa8si2118763pab.1.2015.11.02.10.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:59:50 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv9so162952934pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 10:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=s+yacNOuqSSWdwgHWQLHDYskJ+z3rC2+2JE41vy0JHM=;
        b=BCMM0vKUmseB2mdQMl9OypISqs7MpJ/eWRuAbKLwzmGi3Bg9+77aAw+XfaEr4h5gC6
         CdQI8dMUIrj26+pZbPXADH5duwPdiUiBa/I2uzRugLJNxowupQHTtEXH2FB1dq0EBExx
         reJ6BfPwNU8evIER699/AfekynMj8lkJi2QY8Z9nSJpJeJLdbemm0lBrRUUlKELlv0MF
         JB5HZOxzsgHgxp/QyRGZ9XH2thG3qleu9CO1yoRTakDTxa+MB/cGkHy65dpWAPTh8vJn
         8c0CQ3J8BL/o44WnqBD/4Y/F0FXEUvkCUa8YrpWzXle4yIBOyaPXv6epARl0lH83vKQi
         Btxw==
X-Received: by 10.68.65.37 with SMTP id u5mr28320196pbs.76.1446490790827;
        Mon, 02 Nov 2015 10:59:50 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ce3sm25360614pbb.35.2015.11.02.10.59.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:59:50 -0800 (PST)
Date: Tue, 3 Nov 2015 00:29:43 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: lustre: tracefile: Remove wrapper function
Message-ID: <583bbf9d06402913ec55499f15370163cf668df7.1446490656.git.shivanib134@gmail.com>
References: <cover.1446490656.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446490656.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function cfs_trace_put_console_buffer() as it is no longer
required.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/tracefile.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.h b/drivers/staging/lustre/lustre/libcfs/tracefile.h
index 4d5fdaf..ba62005 100644
--- a/drivers/staging/lustre/lustre/libcfs/tracefile.h
+++ b/drivers/staging/lustre/lustre/libcfs/tracefile.h
@@ -278,12 +278,6 @@ cfs_trace_get_console_buffer(void)
 	return cfs_trace_console_buffers[i][j];
 }
 
-static inline void
-cfs_trace_put_console_buffer(char *buffer)
-{
-	put_cpu();
-}
-
 static inline struct cfs_trace_cpu_data *
 cfs_trace_get_tcd(void)
 {
-- 
2.1.0


