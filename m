X-GM-THRID: 6406607470592
X-Received: by 10.180.39.164 with SMTP id q4mr788116wik.5.1425446936475;
        Tue, 03 Mar 2015 21:28:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.130 with SMTP id v2ls106160lae.98.gmail; Tue, 03 Mar
 2015 21:28:54 -0800 (PST)
X-Received: by 10.112.131.7 with SMTP id oi7mr346733lbb.9.1425446934842;
        Tue, 03 Mar 2015 21:28:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id o3si1015839wib.2.2015.03.03.21.28.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:28:54 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so27939494wiw.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=1ZWIFFERHwkIdjiOkH8wbXinWYPXWnyE1z5TQvfsmio=;
        b=mGI5c3sqEv9goRaja4zohJpMEq2v+9fwr2xuRqesOrNx61kxsXJQNu8pInR43p9JVq
         pljINoIT+OcnoGBmV8PjwmauKdEvkU+8c9WxAm4qSfMr0UC75sarijIo7hB37fW1Ydw/
         /K1QX7DAN0BTifezzE5uMbXuiCowJgM4zfSP5D7RqRePugnuRTGX7MfzQc8OFT3srSlP
         OjcoXsugwgjT30ISFcBZ9/PLfVW9O/4Q/2LWr+iKH3uX7xpba2wOl8dKIuM29W6/T7rt
         YT1+OIGH2anQo2se4ceTvh+/R4oQqhkPVfM3gbUl8IKssvoimJCjsL/++7/9eiydl8Ey
         fQsw==
X-Received: by 10.194.200.196 with SMTP id ju4mr4006213wjc.47.1425446934750;
        Tue, 03 Mar 2015 21:28:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id dn7sm8370333wid.12.2015.03.03.21.28.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:28:54 -0800 (PST)
Date: Wed, 4 Mar 2015 07:28:48 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 01/13] staging: comedi: drivers: remove extra parentheses
 around right bit shift operation
Message-ID: <17cd9ad3173c5098bbae0d10540c7a27d6402168.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operation.
The issue was detected and resolved using the following coccinelle
script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
>>
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
>>
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
>>
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/comedi/drivers/dt2801.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/dt2801.c b/drivers/staging/comedi/drivers/dt2801.c
index b96e60f..7e565fc 100644
--- a/drivers/staging/comedi/drivers/dt2801.c
+++ b/drivers/staging/comedi/drivers/dt2801.c
@@ -280,7 +280,7 @@ static int dt2801_writedata2(struct comedi_device *dev, unsigned int data)
 	ret = dt2801_writedata(dev, data & 0xff);
 	if (ret < 0)
 		return ret;
-	ret = dt2801_writedata(dev, (data >> 8));
+	ret = dt2801_writedata(dev, data >> 8);
 	if (ret < 0)
 		return ret;
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

