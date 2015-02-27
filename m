X-GM-THRID: 4475579269120
X-Received: by 10.152.36.132 with SMTP id q4mr2043672laj.6.1425041669038;
        Fri, 27 Feb 2015 04:54:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.39 with SMTP id ev7ls114970wib.18.gmail; Fri, 27 Feb
 2015 04:54:28 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr449424wib.5.1425041668675;
        Fri, 27 Feb 2015 04:54:28 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id ta1si109848wic.1.2015.02.27.04.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:54:28 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so20230686wes.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PzkRcl7uHerxg+/Qy6LhhMKrVVue67EEgA4UvU1XX4M=;
        b=cQEZBRe+OyqU7uHzfwE6gx2i0xyMHq5JXOF21EBk7TbLhyuJHdnB6VqnSD/TWSNLR/
         oMdBEq+XNrpq3HI7YLDkSkyl/qtydV7vbzXETioei2OnFLGp9NQTzzMdbQbh49wPd6Gx
         fj+U0+ygWfqXfa49fSDGBNWhpYyDxBc6Z4zxgic3tXC0SLjeyqzRw4cDjeabBizmwU8e
         j101/7wiSFWeTPCwERI5+8tKiBadroCD0n0NSIUU3XrnyXyfPRSgTpF5wKdEp6UvDhIQ
         rzi30mKe40SrtCOpO4pSvdHrBdIaHnlQVoRzMQ4LF6x8yw/yRipjjYR3Q+b6irShV6Ik
         WnlA==
X-Received: by 10.194.9.98 with SMTP id y2mr27961985wja.85.1425041668571;
        Fri, 27 Feb 2015 04:54:28 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id fo8sm2709413wib.14.2015.02.27.04.54.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:54:27 -0800 (PST)
Date: Fri, 27 Feb 2015 14:54:23 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 05/24] staging: rtl8188eu: os_dep: remove unused variable
Message-ID: <b19c14d7ccd13edc8fd5038fdc6ea4e551cff2fe.1425035005.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 24a8f5a..58998f2 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -1796,11 +1796,9 @@ static int rtw_wx_set_gen_ie(struct net_device *dev,
 			     struct iw_request_info *info,
 			     union iwreq_data *wrqu, char *extra)
 {
-	int ret;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 
-	ret = rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
-	return ret;
+	return rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
 }
 
 static int rtw_wx_set_auth(struct net_device *dev,
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

