X-GM-THRID: 6472784237919469568
X-Received: by 10.99.157.72 with SMTP id i69mr2121832pgd.141.1507122764669;
        Wed, 04 Oct 2017 06:12:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.65.193 with SMTP id o184ls4376488pga.0.gmail; Wed, 04 Oct
 2017 06:12:43 -0700 (PDT)
X-Received: by 10.101.77.15 with SMTP id i15mr1021146pgt.29.1507122763596;
        Wed, 04 Oct 2017 06:12:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507122763; cv=none;
        d=google.com; s=arc-20160816;
        b=lRAna7On2ak4N9mOMcxwqzsYIjFDjHUkr6gBAcrIk3wkq4WqrHz0RPCz/8lmVDhEJ6
         xKEl45V6j1jsZmtINQF4Wd4vessRql1Wtn0e69NhUQHw0kTZNqwX7IAI4pIBIiMUGfgn
         fGeOvHrzTBSWaNxPcAz7FHVMQfQdlAmAtG2rMjs01yuz8ShSzb5lHQA3rXOkoGekhOLn
         Id6eoLwkeQZwX24D5+rXmy1VrznUPnWJEUd3PGr+JRYC1zSDwdSUCOGFJeckWrrd7Uri
         RYipZnv56sVH3tC6gXrbFr76UV8+MXb2IlmzNqc9hCZl0P5Ww8u5hbVyMZZFESI9vv73
         2jQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ejoASOtV42u09IMpI0xJ1kSQSgmKmwJp13EaS0MUIv0=;
        b=q5nEe/3N/QVxesdGSfZmnR6OdC5MDok8DAm7nufeSOe96G1C1HAwm8pqpGfM9YugAZ
         0UT/od/pekSoUED1TompdyTI0pkWdBu+wU4dluw2mocyVd4noOC3W/jOLZI/ljX6msE0
         8PdNaapEFFS3mY/ieNIfYVWJnz8RQwJ22yZe+oKG3gh1wyPla1OX9U9Ch1WlcrvPbPgo
         1Of3lmZbAtnPMOU2QiL4fAL/U9EviOV8cdoL7YxkT8qG9Hgy3Ubr2p7iT+24gzjVdb7s
         NIG8CefyPNO+yQWGYgzWxw1lbLCVFoLYDGlBPG0YbtKoOCfumEcmZYtxzq0gL5QrZ9RN
         hIJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VYyKJCJs;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id w5si322113pfw.3.2017.10.04.06.12.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 06:12:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VYyKJCJs;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e69so12321893pfg.4
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 06:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ejoASOtV42u09IMpI0xJ1kSQSgmKmwJp13EaS0MUIv0=;
        b=VYyKJCJsxg4XZ7gDXpbHIWNe1iLM1v2Mclil8fVQQdAi2xzVnPw+IELiLl5TUldkKZ
         tVDbU4ERIIloD1iT+IHlfs0f4K0+HBieEAQ+jhQ9MnmIz08YGkRpVyBoScyogD6MVZ72
         GV/IYwyrhda3L5ZB7aZjUjO4mBbz5ARrONr4ZuX0Oe3551rVkR/YiSYEswE/zXY+UK55
         ajKFXHJwKaRg9hibqLgbB9jTMUd2zbVe8JYSwuZoHFvj99glMY6c2lUcORvTut9B1lJD
         ldlVqd1Rnvf153aFCln+4tO0GCilVidVHM2IRFgj+3YDtgvp0/Du1eqCmy6+Ax7/B5KM
         PpQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ejoASOtV42u09IMpI0xJ1kSQSgmKmwJp13EaS0MUIv0=;
        b=Ji97W5s61DsF1DC29akx3lBUAW8VqAiI08dl1RXGksApgtZ8oPYbRsunr+4Rm6clhq
         f/Q/a04TK2ObZ/djcOmwCT/tO7XqjouWwCi3lE6BwZ80JB2ZB4z3n5hnDT4dsIAqu5H0
         4rM7U7ObN7jQbm9btilfdQ6qtLAuJ4+CQwFaAQUPs6p6HWsTnRnnlK68BgD0mLz6OohV
         dXMramXPCFjISWvBNK5oZOweSz6rOgGxTP0qhvYzZX/lJ4gF+6x/9IVHjcciecHEN0un
         nhbIPlH2qbKvlYaU3G8Nq4REMjGwFMmpVm/q/TuiCpRJ9ORIy8sl7zYFxUec8tLlEt+4
         Yl+w==
X-Gm-Message-State: AHPjjUglLj2KxpJtaDLgP9fQzk7NNRiZ1HvVKOQN6UIhEuH4V95y8SYP
	8K1fd9pMZv98jhTMnCrgteQ=
X-Google-Smtp-Source: AOwi7QC/Nj4DfMFnxyebFJX8fhf51MxYKYoAvd1wW+WQ5xgaRjLszBwalD9O4aWaWG/0n68A1di0Fw==
X-Received: by 10.99.44.10 with SMTP id s10mr17843953pgs.381.1507122763365;
        Wed, 04 Oct 2017 06:12:43 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([182.70.213.86])
        by smtp.gmail.com with ESMTPSA id y16sm23884188pfe.68.2017.10.04.06.12.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Oct 2017 06:12:42 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Use list_for_each_entry_safe
Date: Wed,  4 Oct 2017 18:42:35 +0530
Message-Id: <1507122755-5489-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use list_for_each_entry_safe to make the code more compact. Done 
by the following semantic patch by coccinelle.

@r@
struct list_head* l;
expression e;
identifier m,list_del_init,f;
type T1;
T1* pos;
iterator name list_for_each_entry_safe;
@@

f(...){

+T1* tmp;
<+...
-while(...)
+list_for_each_entry_safe(pos,tmp,l,m)
{
...
-pos = container_of(l,T1,m);
...
-l=e;
 <+...
 list_del_init(&pos->m)
 ...+>
}
...+>

}

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index a2c599f..551af9e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -280,7 +280,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 {
 	struct list_head *phead, *plist;
 	u8 updated = 0;
-	struct sta_info *psta = NULL;
+	struct sta_info *psta = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 chk_alive_num = 0;
 	char chk_alive_list[NUM_STA];
@@ -292,10 +292,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 	plist = phead->next;
 
 	/* check auth_queue */
-	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, auth_list);
-		plist = plist->next;
-
+	list_for_each_entry_safe(psta, tmp, plist, auth_list) {
 		if (psta->expire_to > 0) {
 			psta->expire_to--;
 			if (psta->expire_to == 0) {
@@ -326,10 +323,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 	plist = phead->next;
 
 	/* check asoc_queue */
-	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
-		plist = plist->next;
-
+	list_for_each_entry_safe(psta, tmp, plist, asoc_list) {
 		if (chk_sta_is_alive(psta) || !psta->expire_to) {
 			psta->expire_to = pstapriv->expire_to;
 			psta->keep_alive_trycnt = 0;
-- 
2.7.4


