X-GM-THRID: 6200582337123581952
X-Received: by 10.107.160.72 with SMTP id j69mr7605188ioe.7.1443685576488;
        Thu, 01 Oct 2015 00:46:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.71.77 with SMTP id s13ls433762obu.26.gmail; Thu, 01 Oct
 2015 00:46:15 -0700 (PDT)
X-Received: by 10.182.56.70 with SMTP id y6mr6005985obp.17.1443685575970;
        Thu, 01 Oct 2015 00:46:15 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id zg1si804092pbb.2.2015.10.01.00.46.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 00:46:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy16so66851179pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 00:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=B4y7tV1ZMf5AfHXBD8r0m3eUMeXDRvUGPvSOv1AtUa8=;
        b=uHt1QsuWJs3dV5X4nhOZHlCOhjk9rBZkP/n8VIQIv9aTVYvufQ4ESUhcXHi7OG0Lmt
         ZVZ6alF50RKwlfhPrlIgAQRjr0Q3DwSlNyIouIpI/4AaOnA+qcLqEpyy3R6oZG+/4xmf
         aoOWZ3LXrYhGpodgLdWnQIkqOKstjHHseCeHhqvpdeJShn5dNDXFzfXBSO9AOnXk8QLH
         9HYEjMqF6pwhmKNNhhj6KaRzre2c1cStcFbbCvPR9Ufcmbe+e/fXFLrezPVDsyMENbbG
         4ImiqLNK6dDXaw9ixA8TPl6ScK6OXqoOBmm3enrMeg3OyUoChHnxhPNJqvR6XjsAnWUx
         ILYQ==
X-Received: by 10.68.190.5 with SMTP id gm5mr10382906pbc.25.1443685575803;
        Thu, 01 Oct 2015 00:46:15 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id pq1sm4767916pbb.91.2015.10.01.00.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 01 Oct 2015 00:46:15 -0700 (PDT)
Date: Thu, 1 Oct 2015 13:15:38 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: ptlrpc: nrs_fifo: Removed an unused
 structure
Message-ID: <20151001074538.GA39335@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removed a structure "nrs_conf_fifo" because it was not called/referenced
in the entire code.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c b/drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c
index 8e21f0c..6be1adb 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/nrs_fifo.c
@@ -259,13 +259,6 @@ static const struct ptlrpc_nrs_pol_ops nrs_fifo_ops = {
 /**
  * FIFO policy configuration
  */
-struct ptlrpc_nrs_pol_conf nrs_conf_fifo = {
-	.nc_name		= NRS_POL_NAME_FIFO,
-	.nc_ops			= &nrs_fifo_ops,
-	.nc_compat		= nrs_policy_compat_all,
-	.nc_flags		= PTLRPC_NRS_FL_FALLBACK |
-				  PTLRPC_NRS_FL_REG_START
-};
 
 /** @} fifo */
 
-- 
2.1.0


