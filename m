X-GM-THRID: 6205474039059709952
X-Received: by 10.66.123.14 with SMTP id lw14mr622975pab.6.1444824514558;
        Wed, 14 Oct 2015 05:08:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.137.104 with SMTP id qh8ls161828igb.7.gmail; Wed, 14 Oct
 2015 05:08:34 -0700 (PDT)
X-Received: by 10.66.141.135 with SMTP id ro7mr2192375pab.27.1444824514203;
        Wed, 14 Oct 2015 05:08:34 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si854621pbb.2.2015.10.14.05.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id cn9so22041672pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 05:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=U0ZAE3Bc2HprP0yFhL68UyXC2TCtGXBneuleSg7CuC0=;
        b=hUq5GLqP6K8cGkftnkOuSUvjyjmv4vD+oYnh6T+R2BTJj6U6QH0+debVEAcKhNY/s6
         zCOglx0JXgg41f2StFYL3PlXOt7WYurTYPgvc5PFok91oj3nZpPifMRtitUJFBIRWRC0
         i1FfMl8PybXoLlD5JQeOiTLMVlpRzarbGLE6kgszjqVvjadOXUpoKM8eozpOoAwXUMeW
         9tislPPsGnrvLhxy0WS1HHzQ3TwrwadiKSt5n2xZ8UVn0d9lCBTsWLsf72OsrCfrZeVW
         tGc0bcITrlfrXcY9vFuxLJ8z2TltTL6iLH85q5i82/cILaSzgVhuoT9T6YdXtL6jSRKL
         3HkA==
X-Received: by 10.68.168.97 with SMTP id zv1mr3474604pbb.86.1444824514120;
        Wed, 14 Oct 2015 05:08:34 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id po7sm9383009pbc.56.2015.10.14.05.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:08:33 -0700 (PDT)
Date: Wed, 14 Oct 2015 17:38:23 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: rtl8712_cmd: Remove useless cast
Message-ID: <20151014120823.GA9727@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Explicit type conversions are not required so, remove them.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index b755ab4..f70235c 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -340,8 +340,7 @@ _next:
 		memset(pdesc, 0, TXDESC_SIZE);
 		pcmd = cmd_hdl_filter(padapter, pcmd);
 		if (pcmd) { /* if pcmd != NULL, cmd will be handled by f/w */
-			struct dvobj_priv *pdvobj = (struct dvobj_priv *)
-						    &padapter->dvobjpriv;
+			struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 			u8 blnPending = 0;
 
 			pcmdpriv->cmd_issued_cnt++;
-- 
2.1.0


