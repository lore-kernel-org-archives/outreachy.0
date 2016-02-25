X-GM-THRID: 6255231832735875072
X-Received: by 10.98.74.81 with SMTP id x78mr41207869pfa.8.1456409653900;
        Thu, 25 Feb 2016 06:14:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.194 with SMTP id g60ls427542qge.52.gmail; Thu, 25 Feb
 2016 06:14:13 -0800 (PST)
X-Received: by 10.31.15.11 with SMTP id 11mr41273032vkp.3.1456409653222;
        Thu, 25 Feb 2016 06:14:13 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x22c.google.com (mail-ig0-x22c.google.com. [2607:f8b0:4001:c05::22c])
        by gmr-mx.google.com with ESMTPS id ph8si269695igb.0.2016.02.25.06.14.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:14:13 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) client-ip=2607:f8b0:4001:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22c.google.com with SMTP id z8so14108306ige.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SgLL2aRgybWVGRYQwdAs01UssIMx3PYCXRif7WG/Nlo=;
        b=PYMiynLX8uZYBo3lTDtxzT4nUqgYy9uIUl4UPuJX3ElN7TkbRBtO+YXUeE1RAB8AP6
         ZHJimjfjvyEII5yTxV/yPlxeyhEa2tIJ2jCgnJGcRfzPWRlj7a/o9RVxvoS3U3jXhO6F
         8tgH7fOYkbbwgeD3oukatSuutKmwCiLsskKFh4SQCbi005bZf9hf0HKBUMCdLKCKUTUV
         fE8i7JF2tG2mebmIqfAv1bohYCcNMx1KC8H/xGL/Ac4k+Ms7VqS8mXp7yPiYgP6+GWAd
         IQt+hwtyGhC9kV/tk7SdRiVlv6R3BURnjB5cMRA2zVZHwVhmRfiSFmxldfgekQo689Lq
         vFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SgLL2aRgybWVGRYQwdAs01UssIMx3PYCXRif7WG/Nlo=;
        b=O2aBZYKaQcQWP8frs6BHL9fmhp4+qTZkoQcuiW28pf9/g28+ec92WEcdqMyqH6b5ve
         oKt93A3jHx0A2kUal6uNzPpbXRXFDWrVMyyNj59kL3O31QrA5CRAGYOBzuDUypTddG7A
         sNDiZHlf/GMn9/HQ/OPCYQtWAj5S0djSbfhXgig4+mRLXidqiOWcRUqzRp0LPwmC17vp
         k4wjdFpeF2uMEYiuKtXyRYuzBvQuA2vjt22XqOnkXygPoWKrWPn/TAtYa4CJWMg76iAg
         YVykw1GcfHGPRPnWCFOh3XoUX95DFAMVhqwnUza8Se7KM7t/J5e1TAHEVtOsjnmLGZYX
         k1KA==
X-Gm-Message-State: AG10YOTAw1FI83SM55IGoRcNdHV0TMf9mKZ6FAEy8mbw8DuQMpymYlzGKxBkYGJ+VbTlCw==
X-Received: by 10.50.137.35 with SMTP id qf3mr3378930igb.92.1456409653060;
        Thu, 25 Feb 2016 06:14:13 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id xb7sm1304151igb.21.2016.02.25.06.14.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:14:12 -0800 (PST)
Date: Thu, 25 Feb 2016 14:13:24 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Drop void pointer cast
Message-ID: <20160225191324.GA6909@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
| 
  ((T *)x)->f
| 
- (T *)
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index e1b2e47..5f3c7ea 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -379,7 +379,7 @@ static int prism2mib_bytearea2pstr(struct mibrec *mib,
 				   void *data)
 {
 	int result;
-	p80211pstrd_t *pstr = (p80211pstrd_t *) data;
+	p80211pstrd_t *pstr = data;
 	u8 bytebuf[MIB_TMP_MAXLEN];
 
 	if (isget) {
-- 
2.5.0


