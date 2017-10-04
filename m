X-GM-THRID: 6472784237919469568
X-Received: by 10.84.141.168 with SMTP id 37mr1485293plv.27.1507122970194;
        Wed, 04 Oct 2017 06:16:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.26.83 with SMTP id a80ls2025560pfa.8.gmail; Wed, 04 Oct
 2017 06:16:09 -0700 (PDT)
X-Received: by 10.84.235.5 with SMTP id o5mr1531689plk.24.1507122969059;
        Wed, 04 Oct 2017 06:16:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507122969; cv=none;
        d=google.com; s=arc-20160816;
        b=c5w7zTnwH9uSAp7T0VlrgI0HFxpzM9ZeuAMu47xgAjT0vjB4dtAJtWTlReltsrJ1Kt
         E96B8qKSWXxQW5B8USexeHnaE5LmiQCYjgaXxR2EWifdyH765uwXhOZbPEFGSzD3gi6D
         rkycFzk7rKme3w4umtu/G05Kw+3wxapM5qawXAeS4mfUxv5YqJSHAtaVu888DWDc3tUh
         mEwlV5dTnZZW9An6a6/tgzznti6ErXRQFarXG05miwGma0zMhvrJWbCtaPxM0tkN9i+g
         KgsF2IskxjkMArVd5rBZZZElhSrSqTNNKyBDqCYbkKSCKxm7eDFftbqqCjN18K6n4bzj
         iWDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=vOaE2V01YX5iwRJlrE2VrevwEyFmHNIWMb+lz2/ZMAs=;
        b=g57g+0qsiHSHfjO0Nx95Ny0SoL87fIzaEnsUxd2iUODOnfP67DiOnrq5uLfSuPwRR1
         qFXqsSxFxsxTNWB7eIxrVheu81JC3xIvSIkIVh7ICS1t4YUQ+kSkv663WdTyOzGfgUl3
         jiKQJoSIB+qFPIzLvkfmLSTJMVjUpZGGnaD9OSxwM4zOK6fP0YEBnwLY2DyxjVkQvdg0
         DruVOaVb67J+VZI0hJSmTG3e/X3F8O9iWfk7zHY2BU+aKXbF/yZt2XMApRjFfrINa6WO
         AJrXVCvwl9awexLNwqacq6GsKSps1yhgiiOJvBZmzOFBKuImnITmbitP1ot1p5oea1fF
         rUHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rh1icIb5;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id w5si322694pfw.3.2017.10.04.06.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 06:16:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rh1icIb5;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id u27so13119038pgn.1
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 06:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vOaE2V01YX5iwRJlrE2VrevwEyFmHNIWMb+lz2/ZMAs=;
        b=rh1icIb5gkwSuws9kCmTA18AHd45W1uNT++bAnuxB8rwBl0IpuDW9tV9oGuCMpOKoh
         3k7W2JjhGgzpuGUAoL5i/q8Qk34YD/rqhXV6o3cojB2LkB8n4NH0dLmipi8XnKK267Cx
         Tod2UVvVtEN1QWd3orjj8TyfhyreAJsGqKwHPlaeZVhAnPbb6MU54YLEXd3Y6luj2E74
         /UMkLhnqWllCU5Hm2+OmBBaDr0dOefr9cuLQcwR94XF5LtlC5Ugovlc9rFHjpV/YAam0
         SEjJzwCDoqdX9yhzIhwfkV43oqAO7/nPAy9jDH6EE7Oqa7SEQxjNaA70F+rcW9BrsQLq
         TKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vOaE2V01YX5iwRJlrE2VrevwEyFmHNIWMb+lz2/ZMAs=;
        b=YndCyXuOWG3dhZPbtTe2Czp2KpVpN6KgozfIhzg72Rnn8qiCKeJ6WbCciCceRr3BJV
         32bx8pHALbB3gFMYdItirDYelj3+X+gum3yNJPq2qZ9hq5pWeY1g4s7alIVwq9du3kgT
         EFsHaURds2SnNtp3RFhsTF45yLM4pjCJEpfqojnL6S1GFN0CYm3Nhjn2gnvNCpR0sUG6
         UDoWfeRLLIdC240omDU2bxpQep/pMEh/OlUOQZA2RrWT+uAlLdejmXZUwH6kSYkuBm4P
         CUHe1Gp9z0yyHgqd3VpN+BVM2UiyOwGNW7JzXX72azoZTnUhJ9zb6Ye0rn8XHiCvq4zn
         4uMQ==
X-Gm-Message-State: AMCzsaXtvIzmUpLYkYK4LRRy5SRxA2d438zor24pQziw3OGHtyT/lLIx
	zFavjuaESk2ehg85y8O2TMV+IQ==
X-Google-Smtp-Source: AOwi7QDBQw7VASIW158P2vjoBbFtPtz4Dyentu9K1R60SpqDzB3gJyaC7NzUdXyOpw937oxCMb09cg==
X-Received: by 10.98.54.196 with SMTP id d187mr4931709pfa.287.1507122968837;
        Wed, 04 Oct 2017 06:16:08 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([182.70.213.86])
        by smtp.gmail.com with ESMTPSA id y16sm23990466pfl.99.2017.10.04.06.16.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Oct 2017 06:16:08 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Use list_for_each_entry_safe
Date: Wed,  4 Oct 2017 18:45:59 +0530
Message-Id: <1507122959-5616-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use list_for_each_entry_safe to make code more compact. Done 
using the following semantic patch by coccinelle.

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
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 23 ++++++-----------------
 1 file changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index e8d9858..6d8820b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1869,7 +1869,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	u8 update_mask = 0, wmmps_ac = 0;
 	struct sta_info *psta_bmc;
 	struct list_head *xmitframe_plist, *xmitframe_phead;
-	struct xmit_frame *pxmitframe = NULL;
+	struct xmit_frame *pxmitframe = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	spin_lock_bh(&psta->sleep_q.lock);
@@ -1877,11 +1877,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	xmitframe_phead = get_list_head(&psta->sleep_q);
 	xmitframe_plist = xmitframe_phead->next;
 
-	while (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
-
-		xmitframe_plist = xmitframe_plist->next;
-
+	list_for_each_entry_safe(pxmitframe, tmp, xmitframe_plist, list) {
 		list_del_init(&pxmitframe->list);
 
 		switch (pxmitframe->attrib.priority) {
@@ -1958,11 +1954,8 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		xmitframe_phead = get_list_head(&psta_bmc->sleep_q);
 		xmitframe_plist = xmitframe_phead->next;
 
-		while (xmitframe_phead != xmitframe_plist) {
-			pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
-
-			xmitframe_plist = xmitframe_plist->next;
-
+		list_for_each_entry_safe(pxmitframe, tmp, xmitframe_plist,
+					 list) {
 			list_del_init(&pxmitframe->list);
 
 			psta_bmc->sleepq_len--;
@@ -1997,7 +1990,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 {
 	u8 wmmps_ac = 0;
 	struct list_head *xmitframe_plist, *xmitframe_phead;
-	struct xmit_frame *pxmitframe = NULL;
+	struct xmit_frame *pxmitframe = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	spin_lock_bh(&psta->sleep_q.lock);
@@ -2005,11 +1998,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	xmitframe_phead = get_list_head(&psta->sleep_q);
 	xmitframe_plist = xmitframe_phead->next;
 
-	while (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
-
-		xmitframe_plist = xmitframe_plist->next;
-
+	list_for_each_entry_safe(pxmitframe, tmp, xmitframe_plist, list) {
 		switch (pxmitframe->attrib.priority) {
 		case 1:
 		case 2:
-- 
2.7.4


