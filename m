X-GM-THRID: 6210960460687081472
X-Received: by 10.182.107.130 with SMTP id hc2mr81744obb.39.1446101921615;
        Wed, 28 Oct 2015 23:58:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.8 with SMTP id qm8ls150774igb.36.gmail; Wed, 28 Oct
 2015 23:58:41 -0700 (PDT)
X-Received: by 10.66.156.202 with SMTP id wg10mr24453pab.47.1446101921164;
        Wed, 28 Oct 2015 23:58:41 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id pe1si7496pac.2.2015.10.28.23.58.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:58:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id z6so31781921pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6g8QhF8XP0Q/nglFMmQoK2BGwIqDPRByf3mTfZn6WbE=;
        b=XY66ZGAVKiq8oE55yp0xPnlZMWvkrsLsZro7S+GQRg9lYJN5UEMUm2enQtYDxcPP3S
         QhF1wm2V8Oq5uBABktx5LDbLyC8ikSTQgRnJyMDitLJ8ltWzHVmGPAWdgXt/gAWn+Ih/
         LsaVCjtkswYfCqH/hty+tClAUWxVA/oflZZqE7qRGZp89k3cIgHNS7QJKm0H3D57f4ot
         Plr1WW8oevZyOCrGL92L8OPq1YCNlHkVd3sK8S5pLkHmWdXt8CvB+PX7LzfhZAyWz7g4
         WxLcgvE7bGNvDEytGQfZKr65G0l1CObcMAt7J3DmwMenze4wrVX7eISlTocObjFcU98g
         UQ6Q==
X-Received: by 10.66.90.198 with SMTP id by6mr201146pab.78.1446101921053;
        Wed, 28 Oct 2015 23:58:41 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id jt1sm234235pbc.83.2015.10.28.23.58.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:58:40 -0700 (PDT)
Date: Thu, 29 Oct 2015 12:28:31 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: config: Remove unnecessary wrapper functions
Message-ID: <20151029065831.GA41482@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function lnet_ipaddr_free_enumeration() and replace all its
calls with LIBCFS_FREE().

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/config.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/config.c b/drivers/staging/lustre/lnet/lnet/config.c
index 1b3bc83..4e8b54b 100644
--- a/drivers/staging/lustre/lnet/lnet/config.c
+++ b/drivers/staging/lustre/lnet/lnet/config.c
@@ -1103,12 +1103,6 @@ lnet_match_networks(char **networksp, char *ip2nets, __u32 *ipaddrs, int nip)
 	return count;
 }
 
-static void
-lnet_ipaddr_free_enumeration(__u32 *ipaddrs, int nip)
-{
-	LIBCFS_FREE(ipaddrs, nip * sizeof(*ipaddrs));
-}
-
 static int
 lnet_ipaddr_enumerate(__u32 **ipaddrsp)
 {
@@ -1169,7 +1163,7 @@ lnet_ipaddr_enumerate(__u32 **ipaddrsp)
 				rc = nip;
 			}
 		}
-		lnet_ipaddr_free_enumeration(ipaddrs, nif);
+		LIBCFS_FREE(ipaddrs, nip * sizeof(*ipaddrs));
 	}
 	return nip;
 }
@@ -1195,7 +1189,7 @@ lnet_parse_ip2nets(char **networksp, char *ip2nets)
 	}
 
 	rc = lnet_match_networks(networksp, ip2nets, ipaddrs, nip);
-	lnet_ipaddr_free_enumeration(ipaddrs, nip);
+	LIBCFS_FREE(ipaddrs, nip * sizeof(*ipaddrs));
 
 	if (rc < 0) {
 		LCONSOLE_ERROR_MSG(0x119, "Error %d parsing ip2nets\n", rc);
-- 
2.1.0


