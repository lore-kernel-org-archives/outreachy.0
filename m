X-GM-THRID: 6258546120721432576
X-Received: by 10.66.139.162 with SMTP id qz2mr9159719pab.1.1457181321839;
        Sat, 05 Mar 2016 04:35:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.198.67 with SMTP id w64ls528963iof.61.gmail; Sat, 05 Mar
 2016 04:35:21 -0800 (PST)
X-Received: by 10.98.0.132 with SMTP id 126mr9436531pfa.2.1457181321572;
        Sat, 05 Mar 2016 04:35:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id ff2si2085385pad.2.2016.03.05.04.35.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 04:35:21 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fi3so48604618pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 04:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DvI8VwsEQ+h43Ttrn+R9NYqj+Qd3EPX8ScN+bC0Xd0g=;
        b=m/fOAgloOBFW93e5SD8oluvp5fBuZVe3HqdFTF3yCJbXp6K8qhgoXhrAzq46gBaiz5
         +O/MG+NpndfGAOxcpULaoNF8dzPLnGDWUmwO4oNUJLy5DKC/42utzTqrw9Z9W0+VnnJ6
         McSQz461fFDB92lOpnqvMSddm0E6C05MNcplBboBtbJ+LhjdLlhtaECqDABr1SL49RLI
         DOrNA85vOO4T53wZTnQ65UcdWcICx8ACTciSsmcEP7NYSqSh9cqXDwQHJyk/EkCaVcB6
         1XJmqmpZogL1SWXoYKMB0r9WvymAKV71r4nEYkJJlj8VYte/tjDR2IXY7wqaLcEMcySE
         Xv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DvI8VwsEQ+h43Ttrn+R9NYqj+Qd3EPX8ScN+bC0Xd0g=;
        b=UEKbolBtyMp1SqfXQNCw2gpOgkAanOGT6bSoNqm/z9APypbrur4guYpbbrQI9/bpMn
         spVTrXAyCnU74dFgO1EWCxyhTXi+wOBT+lmaz7V1HoMrslUadTeuwHo4zFK1CfwhMswx
         WMCDXiQpMaPDwXkxxOoGJ/Q16/Mg9+YOg22T+06rpeiTnGEHKWhrtYBzkvVKIZvc1A7L
         rrerttsBK2ePwgUL8QlkREV8x/cl/CS8Pvtsyxr1NIvJF6k7fsauEA5h9IT8HQqOI1Ob
         tRvLul5+oSFKHN8EJSkXymIdqzrw2z32BVYrMHQPEEmZg+dhHJ7qTSA57EvneFLZurQ1
         BmVw==
X-Gm-Message-State: AD7BkJLNzrnsvGh1iw1mzmR8iH5/aUZDA8qZheN/evMlSsFONgjSQrK9Y4hVbcjbuy+uNQ==
X-Received: by 10.66.142.193 with SMTP id ry1mr19572150pab.33.1457181321385;
        Sat, 05 Mar 2016 04:35:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.180.36.72])
        by smtp.gmail.com with ESMTPSA id ah10sm12293277pad.23.2016.03.05.04.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 04:35:20 -0800 (PST)
Date: Sat, 5 Mar 2016 18:05:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Replace del_timer with del_timer_sync
Message-ID: <20160305123517.GA11630@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use del_timer_sync to ensure timer is stopped on all CPUs before 
the driver exists.

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
 drivers/staging/speakup/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index eb8d65a..07b1af4 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2265,7 +2265,7 @@ static void __exit speakup_exit(void)
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


