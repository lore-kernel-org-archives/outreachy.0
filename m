X-GM-THRID: 3635562938368
X-Received: by 10.152.37.200 with SMTP id a8mr1134219lak.5.1424943497892;
        Thu, 26 Feb 2015 01:38:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.71 with SMTP id i7ls11638lai.44.gmail; Thu, 26 Feb 2015
 01:38:17 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr1158267lbw.4.1424943497448;
        Thu, 26 Feb 2015 01:38:17 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id r6si84535wix.0.2015.02.26.01.38.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:38:17 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f175.google.com with SMTP id r20so39568990wiv.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=nliOkwRItu/ks9t11QpM7Z69y5Yz8WaP/36fJBkIpkw=;
        b=t1Q6EDc5kZzn+1bG0q3HmEuIzd256cch3/qVyxJQHOQclEbx5+X9b8GAA+RSTfPF/w
         v4PjFs5fezCgy6WewsBBofQBoGLkvR5LhJzcp7wd3bKp3PoiBw93C3Yb2yEOZgzp0lFj
         GfyGFzCEoucqUgnj0Rk5ZeJEyd3H/bJKLsZJhmP4fVQmKMGF69q+5w2rWg1EW4L4xLtL
         HwqzaKSqp3prR1iEL9e2SpSYZV5RMJIOaAhpCmXRLI8RRPBPgcJd5AwZIOFlczMXVCDu
         yo3s2wB0PrMUOLJHkEiyLU1JrcfnGJc9M4a9gcAYnSTcMJlornB7n8gazpEDHAZmIy4e
         gqCQ==
X-Received: by 10.194.62.167 with SMTP id z7mr15019046wjr.106.1424943497349;
        Thu, 26 Feb 2015 01:38:17 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id p1sm1922183wib.23.2015.02.26.01.38.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:38:16 -0800 (PST)
Date: Thu, 26 Feb 2015 11:38:12 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 09/24] staging: rtl8712: rewrite the right hand side of an
 assignment
Message-ID: <23397eb20e6933312a05b4041eb8516041a4a238.1424942339.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 62e53cc..007f0a3 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -95,7 +95,7 @@ static void query_fw_rx_phy_status(struct _adapter *padapter)
 			val32 = r8712_read32(padapter, IOCMD_DATA_REG);
 		else /* time out */
 			val32 = 0;
-		val32 = val32 >> 4;
+		val32 >>= 4;
 		padapter->recvpriv.fw_rssi =
 			 (u8)r8712_signal_scale_mapping(val32);
 	}
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

