X-GM-THRID: 4672151617536
X-Received: by 10.43.101.4 with SMTP id cy4mr14802538icc.31.1425069398692;
        Fri, 27 Feb 2015 12:36:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.89 with SMTP id 86ls91968ioh.102.gmail; Fri, 27 Feb 2015
 12:36:38 -0800 (PST)
X-Received: by 10.50.92.10 with SMTP id ci10mr4828327igb.8.1425069398511;
        Fri, 27 Feb 2015 12:36:38 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id bx1si599429pdb.2.2015.02.27.12.36.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:36:38 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id g10so23593997pdj.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=wicqJ+n+JaICR58tFAWjPBUP/CGSmBGlnFgDO7yx+do=;
        b=h37f/dSM1gvr22ibsaizHRSaRX9YvrtQuuZpJpwZOWITZpCfl5+pS7sbKXT2oiqyIi
         OeaxqDPvMjjGfZPMteWfjBZqacHasXKBp5eaW4ODLt1b87W/oxTaJkjIQn13xi0Dn6kO
         AliyDdOnXEDvnHnVSB69H/+LdXZ8ULPzwzO2K+4uXfqYJM8j4H0hU9fkqtZYt7VMmN/c
         av/w8T0p6NSvjEDo3OFEZzb/3Wrd3udojOlIuM9lgp9DuwbYPXsplc59Kl8xysHiq4mY
         cN0r5k0jN4BpqozLTStyo4ajDHSEu80vgzChnf2CWaGChrBQlK+gEzeiEVPhJWe7wiQC
         Llfw==
X-Received: by 10.66.151.5 with SMTP id um5mr10301346pab.43.1425069398431;
        Fri, 27 Feb 2015 12:36:38 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id c2sm4834622pdi.25.2015.02.27.12.36.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:36:37 -0800 (PST)
Date: Sat, 28 Feb 2015 02:07:50 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: rtl8188eu: Add blank line after declarations
Message-ID: <3e59189e1a13f357e5eef6eaf28628b98b036db6.1425069015.git.navyasri.tech@gmail.com>
References: <cover.1425069015.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425069015.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the following checkpatch.pl warning:

WARNING: Missing a blank line after declarations

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     -None in this patch of the set.

drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index b9e1a61..7e599bc 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -530,6 +530,7 @@ void usb_read_port_cancel(struct adapter *padapter)
 {
 	int i;
 	struct recv_buf *precvbuf;
+
 	precvbuf = (struct recv_buf *)padapter->recvpriv.precv_buf;
 
 	DBG_88E("%s\n", __func__);
-- 
1.9.1


