X-GM-THRID: 6200081911391453184
X-Received: by 10.107.131.73 with SMTP id f70mr1296703iod.18.1443569062321;
        Tue, 29 Sep 2015 16:24:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.226 with SMTP id b89ls67590qgb.60.gmail; Tue, 29 Sep
 2015 16:24:21 -0700 (PDT)
X-Received: by 10.129.57.9 with SMTP id g9mr562647ywa.19.1443569061607;
        Tue, 29 Sep 2015 16:24:21 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id uv4si4069107pac.0.2015.09.29.16.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 16:24:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ex6so19435471pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 16:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=NrrO61yXhENxYCY44Z4KueUXup/gqIWtRrKko2Wwpg8=;
        b=odMmgBQzaVzlqiM5IsmrEt767dFYSPA7vp3BZXaKBI/KUpyxCY1dgOFm+RajwXf74C
         OaNE+g93QZyi70dlZ7RWcO+1dRvmFywUMiY7LNoC6ay98LAV+0ubK/T3xvYG6uHk/tly
         LCwzq6NerTERDpwDND1wxJMceEs4z2p8jm6LBP7pPES1Uo5/wIbI9SvfouTdqq9NVhd1
         QIsmmvHFDtBu9IBAfEM2zKyolfS++ES5usk5gu2siAYwAFRuoqagyHVtyBmtVrGXFFNN
         1gYjtkxa8IMV1PKqaVMDLtrxb1vIGhGAfsIQf4mcgck2brZ1pwKJql4cMiiyN/I1hWkK
         dJ1Q==
X-Received: by 10.68.168.97 with SMTP id zv1mr798130pbb.86.1443569061464;
        Tue, 29 Sep 2015 16:24:21 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id zk9sm27767649pac.7.2015.09.29.16.24.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 29 Sep 2015 16:24:20 -0700 (PDT)
Date: Wed, 30 Sep 2015 04:54:13 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: unisys: visorbus: visorchipset: Converted arrays to
 static const
Message-ID: <20150929232413.GA16457@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replaced the declaration of character array from char * to
static const char * const as the array is not intended to be used
anywhere outside the function plus the values in array and the pointer
to it don't have to be changed.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmaail.com>
---
 drivers/staging/unisys/visorbus/visorchipset.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/unisys/visorbus/visorchipset.c b/drivers/staging/unisys/visorbus/visorchipset.c
index 4b76cb4..073b45b 100644
--- a/drivers/staging/unisys/visorbus/visorchipset.c
+++ b/drivers/staging/unisys/visorbus/visorchipset.c
@@ -1411,7 +1411,7 @@ static int
 visorchipset_chipset_selftest(void)
 {
 	char env_selftest[20];
-	char *envp[] = { env_selftest, NULL };
+	static const char * const envp[] = { env_selftest, NULL };
 
 	sprintf(env_selftest, "SPARSP_SELFTEST=%d", 1);
 	kobject_uevent_env(&visorchipset_platform_device.dev.kobj, KOBJ_CHANGE,
@@ -1561,7 +1561,7 @@ parahotplug_request_kickoff(struct parahotplug_request *req)
 	struct controlvm_message_packet *cmd = &req->msg.cmd;
 	char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
 	    env_func[40];
-	char *envp[] = {
+	static const char * const envp[] = {
 		env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
 	};
 
-- 
2.1.0


