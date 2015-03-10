X-GM-THRID: 7460820615168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,95d5e58ffe370867
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.87.141 with SMTP id ay13mr783056lab.3.1426006438299;
        Tue, 10 Mar 2015 09:53:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.72 with SMTP id k8ls796164wif.35.canary; Tue, 10 Mar
 2015 09:53:57 -0700 (PDT)
X-Received: by 10.181.29.66 with SMTP id ju2mr8035041wid.1.1426006437982;
        Tue, 10 Mar 2015 09:53:57 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id l8si1110148wia.0.2015.03.10.09.53.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 09:53:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id l18so3222398wgh.5
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 09:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=0j064hNYgJ1rPVz2Hn4b1pLfH4lswrGnyTgdzj5XT4I=;
        b=WOfDk+mABX3HQMeq4+xXsb4y3IfYWSFFMseolrhMNl7tHGoUulBUnb9YlZGPG8mnW8
         sXB9OV42jg3nANbTex94qeYMbqZPdn/HYjr92LL1ZTVOASDlT8Ya75NxLrleMFjmOZ46
         ++z2GhvpLpv6aGh9ivWMmPQP/lb0V7UyoU/1Bl99Vi06RuM7VaonQ9xp34EXK7WAkB2a
         akb5FrDoxjr03d/afdgfNJQj5Te9Zxt/Wv4rSQcYZefwISOmzT/wW4W+uTN0yliyaA4w
         oH3+KFLcavqI4pTSV6j8NM9nyNxorGU3fwqFS3pSmd7ms5S1ekukVVZIJL90sN59y0GU
         P4fQ==
X-Received: by 10.194.241.202 with SMTP id wk10mr44481154wjc.145.1426006437877;
        Tue, 10 Mar 2015 09:53:57 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id bd1sm21048964wib.13.2015.03.10.09.53.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 09:53:57 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:53:54 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 01/20] staging: fwserial: remove extra parentheses around
 function arguments
Message-ID: <5c8554f7a1353355163635ef53bffe0f6a337924.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around function arguments. Issue
detected and resolved using the following coccinelle script:

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index 73deae3..fdb2418 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1186,7 +1186,7 @@ static void fwtty_unthrottle(struct tty_struct *tty)
 {
 	struct fwtty_port *port = tty->driver_data;
 
-	fwtty_dbg(port, "CRTSCTS: %d\n", (C_CRTSCTS(tty) != 0));
+	fwtty_dbg(port, "CRTSCTS: %d\n", C_CRTSCTS(tty) != 0);
 
 	fwtty_profile_fifo(port, port->stats.unthrottle);
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

