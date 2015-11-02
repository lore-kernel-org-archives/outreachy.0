X-GM-THRID: 6212627761290280960
X-Received: by 10.107.137.223 with SMTP id t92mr21934128ioi.22.1446490141049;
        Mon, 02 Nov 2015 10:49:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.114 with SMTP id q105ls2307763qgq.14.gmail; Mon, 02 Nov
 2015 10:49:00 -0800 (PST)
X-Received: by 10.129.53.14 with SMTP id c14mr19302290ywa.16.1446490140613;
        Mon, 02 Nov 2015 10:49:00 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id fa8si2111076pab.1.2015.11.02.10.49.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:49:00 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fh17so31938271pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 10:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=04U34KyuuqExvr13YeTRqQWuDFKeh9acOZ9DwiDmqoo=;
        b=FQBgkiov/oPpAlf6IlWuHUrqED8PLbwaYCk3TEPMl5niA/DB7nV2qaRMcrTsgBCF8v
         WWfyH76UjTokFBEZZgR660RREJgzM3hQrGHDc9jpLS7W58l57RNctlbXftoDL+btpUK8
         Hpne7+4nW7WTbiwnmjZ0M1zX4cMDJxxxzkojqdleYCfSSlfxn0AUNHcId+h1VoINSTHK
         Q1d6vb3KNmmiGTH08EnQxXt4QpmHJ4PFrEznWYQR1PUaR1WUKnlF4+h6745nhoLh8ac5
         fzrF461UYp1Wr3/uP5yrJRRHmT+DpOiFBEgAAcLjyfHqrJ3foRaH5nDACmYmQCmvPkou
         GtSQ==
X-Received: by 10.68.87.161 with SMTP id az1mr28497562pbb.57.1446490140440;
        Mon, 02 Nov 2015 10:49:00 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id kd9sm8749132pbb.32.2015.11.02.10.48.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:48:59 -0800 (PST)
Date: Tue, 3 Nov 2015 00:18:53 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: lustre: tracefile: Remove wrapper function
Message-ID: <d6655cf1c4d2bf95eb5c1b98cc0c70c86233215d.1446489978.git.shivanib134@gmail.com>
References: <cover.1446489978.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446489978.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function cfs_trace_free_string_buffer() as it can be replaced
with the standard function kfree().

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/tracefile.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
index 973c7c2..54835fc 100644
--- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
+++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
@@ -817,11 +817,6 @@ int cfs_trace_allocate_string_buffer(char **str, int nob)
 	return 0;
 }
 
-void cfs_trace_free_string_buffer(char *str, int nob)
-{
-	kfree(str);
-}
-
 int cfs_trace_dump_debug_buffer_usrstr(void __user *usr_str, int usr_str_nob)
 {
 	char	 *str;
@@ -842,7 +837,7 @@ int cfs_trace_dump_debug_buffer_usrstr(void __user *usr_str, int usr_str_nob)
 	}
 	rc = cfs_tracefile_dump_all_pages(str);
 out:
-	cfs_trace_free_string_buffer(str, usr_str_nob + 1);
+	kfree(str);
 	return rc;
 }
 
@@ -898,7 +893,7 @@ int cfs_trace_daemon_command_usrstr(void __user *usr_str, int usr_str_nob)
 	if (rc == 0)
 		rc = cfs_trace_daemon_command(str);
 
-	cfs_trace_free_string_buffer(str, usr_str_nob + 1);
+	kfree(str);
 	return rc;
 }
 
-- 
2.1.0


