X-GM-THRID: 10547305119744
X-Received: by 10.66.155.9 with SMTP id vs9mr48113523pab.20.1427851826662;
        Tue, 31 Mar 2015 18:30:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.148 with SMTP id t20ls41007qgt.98.gmail; Tue, 31 Mar
 2015 18:30:26 -0700 (PDT)
X-Received: by 10.52.137.141 with SMTP id qi13mr20659225vdb.5.1427851826421;
        Tue, 31 Mar 2015 18:30:26 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id iw3si39898pbd.1.2015.03.31.18.30.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 18:30:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id gg7so36322281pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 18:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=t8GUP2lJeNHCMFlw5fDuMQU87ixVvUUDzr3l+7Re74o=;
        b=eE0iSIA7yfcMaoezC63PAD0KNlzc3/4qcHPCMyfz8FqwTu/cKKCfblcJiiEZGtH9I6
         w9ShxhG+oZ18h3YRaUsLR8/SNlzkfYwYrAqqZ1Z6A7dvLShzuI6h2O0Rn1Aage0qoOlQ
         FyFlD1GJOptar4l99npp4nKtPQ5Z+WkxQ2ox/C2MKVgbyakEALEmcGtxlgAMANDmGgc6
         AbbZjCILB4XTPySvKO+ICy1gZwdqOKkOEgmfFyv0lVK/HEk59nV+TwV7m1RYpDBb+Eb4
         3JnlNxtE9rLwFUduqEj1ZBoCH3TcGRNG6bJHVGSFMFjG+4YedUGK98ES2y94xuS/3jPM
         ayOQ==
X-Received: by 10.66.55.104 with SMTP id r8mr71691706pap.75.1427851826217;
        Tue, 31 Mar 2015 18:30:26 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.169.87])
        by mx.google.com with ESMTPSA id xj1sm183451pbb.92.2015.03.31.18.30.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 18:30:25 -0700 (PDT)
Date: Wed, 1 Apr 2015 07:00:21 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Remove useless zero-testing pointer typed
 value
Message-ID: <20150401013021.GA32049@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes variable comparison with 0 by using !. Done using following
coccinelle script.

@ disable is_zero,isnt_zero @
expression *E;
expression E1,f;
@@

E = f(...)
<...
(
- E == 0
+ !E
|
- E != 0
+ E
|
- 0 == E
+ !E
|
- 0 != E
+ E
)
...>
?E = E1

@ disable is_zero,isnt_zero @
expression *E;
@@

(
  E ==
- 0
+ NULL
|
  E !=
- 0
+ NULL
|
- 0
+ NULL
  == E
|
- 0
+ NULL
  != E
)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_pwrctrl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
index aaa5844..32d5a4a 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
@@ -41,7 +41,7 @@ void r8712_set_rpwm(struct _adapter *padapter, u8 val8)
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
 
 	if (pwrpriv->rpwm == val8) {
-		if (pwrpriv->rpwm_retry == 0)
+		if (pwrpriv->rpwm_retry)
 			return;
 	}
 	if ((padapter->bDriverStopped == true) ||
@@ -235,7 +235,7 @@ void r8712_unregister_cmd_alive(struct _adapter *padapter)
 	unregister_task_alive(pwrctrl, CMD_ALIVE);
 	if ((pwrctrl->cpwm > PS_STATE_S2) &&
 	   (pwrctrl->pwr_mode > PS_MODE_ACTIVE)) {
-		if ((pwrctrl->alives == 0) &&
+		if ((pwrctrl->alives) &&
 		    (check_fwstate(&padapter->mlmepriv,
 		     _FW_UNDER_LINKING) != true)) {
 			r8712_set_rpwm(padapter, PS_STATE_S0);
-- 
1.9.1


