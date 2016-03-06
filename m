X-GM-THRID: 6258546120721432576
X-Received: by 10.66.236.129 with SMTP id uu1mr11328142pac.18.1457226912067;
        Sat, 05 Mar 2016 17:15:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.108.20 with SMTP id hg20ls701472igb.39.canary; Sat, 05 Mar
 2016 17:15:11 -0800 (PST)
X-Received: by 10.98.42.67 with SMTP id q64mr11500631pfq.9.1457226911777;
        Sat, 05 Mar 2016 17:15:11 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si2192209pfb.1.2016.03.05.17.15.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 17:15:11 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 63so5605375pfe.0
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 17:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JHZ8AmLQ35XR2wVo/E/0+8NufWTbSiLObABa4TQZQvI=;
        b=pUQ8YAhlfyAmseV5ovuM3XB4GP879GzpaanKC/bXzsTkHoT2LS//Se7uIXDTN+p16g
         MT/efte8zgR5ZMDoSYowCsQLFwyjG4guyTdIsbjV4u2cYiEx9zliH2SMOMIogDQQvOvq
         bN+k9UaB9bsxpmxXGg8K3VSvX1yIwtR+U/mlujY2umIO9lSe5BlFqi0sYEP0EamKnxUd
         6ZOQeRdlws1POMd97GPsYPiWgqPmHpmkdM9IIVG4w0gTrah6oB6Yh4wB8ppD0WvxDuDL
         dyabyVmxfdNrE/w6c8fvMjuFuVRoE2V1z0CBAMXo7UMhT1pe9835RpvAMmSlxtwCPCxJ
         mqhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JHZ8AmLQ35XR2wVo/E/0+8NufWTbSiLObABa4TQZQvI=;
        b=ILN0AewwnXAKvxBR+VIlh/3lmqTNEvNvDu1i2DjSw23ZBWvApAMbbZc6vdIF5fLYKT
         kF6Bhg9jvefCY2erXaM53HirbW6zRrDWVDFiJfcBkA65o0U4X1vcvOlgmtnZjIFsIi1n
         NlhfmdDIC0Jk/lQyedQmN93/OdQO6tcsh/5JX5yvuaGLNWdLY8AlY/cmkwPtNR5zhCIv
         E199lkoUfY9p/83C1BlvJyOK+sH1/cHPFk9WYpSauRgBkUr/RDtnSdcV3pvTlIMl7Isw
         fym3R5QIHqijQmZ/X8cGa8ceX4nIbw6Xm3N5uSgy8doLBfFPvR55RV2dr+p3467TvSwj
         bDjw==
X-Gm-Message-State: AD7BkJJ/xqy+r+/r3MPLkWjJLMKryAuBMRE5AhIdi5D24C3hw7GmynQAv2qoteB+pQ4hhQ==
X-Received: by 10.98.42.211 with SMTP id q202mr9389578pfq.13.1457226911590;
        Sat, 05 Mar 2016 17:15:11 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.77.50.199])
        by smtp.gmail.com with ESMTPSA id ko9sm14835409pab.37.2016.03.05.17.15.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 17:15:11 -0800 (PST)
Date: Sun, 6 Mar 2016 06:45:07 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: speakup: Replace del_timer with del_timer_sync
Message-ID: <20160306011506.GA24139@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use del_timer_sync to ensure timer is stopped on all CPUs before
the driver exists and the timer should not run when the module is
being removed. Since the timer is not called from an interrupt 
context, this change is safe and will not cause deadlock.

The Coccinelle semantic patch used to make this change is as
follows:
// <smpl>
@r@
declarer name module_exit;
identifier ex;
@@

module_exit(ex);

@@
identifier r.ex;
@@

ex(...) {
  <...
- del_timer
+ del_timer_sync
    (...)
  ...>
}
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Modified commit message

 drivers/staging/speakup/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index a87224c..a22fb07 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2274,7 +2274,7 @@ static void __exit speakup_exit(void)
 	unregister_vt_notifier(&vt_notifier_block);
 	speakup_unregister_devsynth();
 	speakup_cancel_paste();
-	del_timer(&cursor_timer);
+	del_timer_sync(&cursor_timer);
 	kthread_stop(speakup_task);
 	speakup_task = NULL;
 	mutex_lock(&spk_mutex);
-- 
1.9.1


