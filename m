X-GM-THRID: 6205157797691129856
X-Received: by 10.50.79.234 with SMTP id m10mr17714430igx.5.1444750884370;
        Tue, 13 Oct 2015 08:41:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.227 with SMTP id z3ls1456479igl.16.canary; Tue, 13 Oct
 2015 08:41:24 -0700 (PDT)
X-Received: by 10.50.134.199 with SMTP id pm7mr1342315igb.0.1444750884088;
        Tue, 13 Oct 2015 08:41:24 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id uv4si435120pac.0.2015.10.13.08.41.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:41:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ve7so24956314pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 08:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NbkZTzpdZ5qNWASZG/YjwMttVWEMP/tDq42rPIPHq/U=;
        b=H+APUm6S/eMq9i2bo5/Qw3RqRYcgGXK645oAdt4XaKuFssVuHYScn6pwdS1MDlTmkK
         EevmWCAcUY7VW2jlRD4wkNdgSOwGyocokE50rzmIWLYUK/2RZNrp/xVw7Vw561nRx18G
         lbce4bGwMpu4jagx1hPQqw+zyOrLGU3fKBy7MbjBC32S3VApGR2PlMmpzzSWDH51UxBK
         GiA3OfQ7PQj6Yel6Ox6kyWiQSsI8zOk6scorRbGPHQO4jkC6uBpyJ1Lqv09Ye8C7Kfap
         6SWtgOMnF33jdQLeM5c2JVOyj3uQLdKtcuPvQWh/xOXMz41I0xnyipSi65gwT3E9nm7v
         Ifvg==
X-Received: by 10.66.102.106 with SMTP id fn10mr41847234pab.156.1444750883966;
        Tue, 13 Oct 2015 08:41:23 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id xm9sm4579917pbc.32.2015.10.13.08.41.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:41:23 -0700 (PDT)
Date: Tue, 13 Oct 2015 21:11:13 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: unisys: visornic_main: Replace kzalloc with kcalloc
Message-ID: <20151013154113.GA28785@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kcalloc instead of kzalloc for allocation of array as it prevents
integer overflow.
Semantic patch used:

@@
expression E1,E2,E3;
@@

- kzalloc(E1*sizeof(E2),E3)
+ kcalloc(E1,sizeof(E2),E3)

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/unisys/visornic/visornic_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
index 85c9fec..6db74de 100644
--- a/drivers/staging/unisys/visornic/visornic_main.c
+++ b/drivers/staging/unisys/visornic/visornic_main.c
@@ -1797,8 +1797,8 @@ static int visornic_probe(struct visor_device *dev)
 		goto cleanup_netdev;
 	}
 
-	devdata->rcvbuf = kzalloc(sizeof(struct sk_buff *) *
-				  devdata->num_rcv_bufs, GFP_KERNEL);
+	devdata->rcvbuf = kcalloc(devdata->num_rcv_bufs,
+				  sizeof(struct sk_buff *), GFP_KERNEL);
 	if (!devdata->rcvbuf) {
 		err = -ENOMEM;
 		goto cleanup_rcvbuf;
-- 
2.1.0


