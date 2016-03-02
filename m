X-GM-THRID: 6257451974694797312
X-Received: by 10.182.29.129 with SMTP id k1mr20813388obh.23.1456926570621;
        Wed, 02 Mar 2016 05:49:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.101 with SMTP id 98ls2063668iog.31.gmail; Wed, 02 Mar
 2016 05:49:29 -0800 (PST)
X-Received: by 10.66.246.170 with SMTP id xx10mr1923080pac.13.1456926569799;
        Wed, 02 Mar 2016 05:49:29 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id 12si5330117pfb.1.2016.03.02.05.49.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 05:49:29 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id 4so55928386pfd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 05:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UPCHBV7x3X0h2cR//X5fcvbiiUK5wMpeu/h6nr/MjdY=;
        b=W7rnTFtYXJoYavC4Mx7rEHVtdKfqT3J6uIltl4HpAGrA1Pd54d9vM7ya+OgRJC1xFc
         QMkerKapy8eHSAlvCeXVWbpk8Xs476nubs51ABQhA17RWhT6+oAKggVexdxzgoRPNU77
         kGq7NtTBHGOEkei1jfFumk2J9EGmxdKo1btDQZ3WykSOi4yoWIiRA16yRkALGpzSNZse
         gM4qPIEdJdYTXApJki3zQ3GF/wwLhpaRAwwf56awroFhy6PKa/SYdZvssewfCdi3BSMr
         Eqse9IQGaHv21XnDL+sqNQZh/MDqFo77MnH7LxvXG/hqSXRufF38ziCBOcumvgnQKP8r
         GkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UPCHBV7x3X0h2cR//X5fcvbiiUK5wMpeu/h6nr/MjdY=;
        b=huxQw7kB7zYMMD+3ylYlkeFxLJTVQvxneknjv34jqwebGQjbK/VDK3WVtMjfJgKXtb
         1v675DhqdHRIEe2Qy4i3BVwkM9dgxNz9wUkoXWOx0e7FugvQFkhUyaApscY4VzsWwdYd
         JIx2BAw/l06trfo3TEzeOjE3pw9ZbC/sDnWQlfgfYFCX5d5jrF8d+dZS8dmWNLEIdbip
         Cvfl6VzZxHXjzAYIHCHaWPlHlsbIxiQuoz4L8c7+lYGMMxOTb6rSMkNw+6hT3/PhHzKt
         CVxZ4/aDD13bMlv3p8FUm+CEKoMSKmWdcyrpMQwXT6zjiIxDcVpS/fpg11eKyH9u7mOl
         JqRA==
X-Gm-Message-State: AD7BkJIWDM3OhQTkKJ9Rw20mGn63AAsxzlYoyFb1Q970rnqLseCd2I8o1W7DCqOams5OBg==
X-Received: by 10.98.74.144 with SMTP id c16mr38418581pfj.129.1456926569671;
        Wed, 02 Mar 2016 05:49:29 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.172])
        by smtp.gmail.com with ESMTPSA id p9sm38551566pfj.67.2016.03.02.05.49.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 02 Mar 2016 05:49:29 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: gdm72xx: drop wrapper function 'netlink_exit'
Date: Wed,  2 Mar 2016 21:49:21 +0800
Message-Id: <1456926561-29543-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove 'netlink_exit' and place a direct call to
'netlink_kernel_release' since this is used only once. Coccinelle
semantic patch used to apply the change:

@remove_prototype@
@@
-void netlink_exit(...);

@remove_def@
@@

-void netlink_exit(...)
-{
- 	netlink_kernel_release(...);
-}

@remove_call@
expression arg;
@@

-netlink_exit(
+netlink_kernel_release(
			arg);

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/gdm72xx/gdm_wimax.c | 2 +-
 drivers/staging/gdm72xx/netlink_k.c | 5 -----
 drivers/staging/gdm72xx/netlink_k.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index 2ee6a39..9554a51 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -176,7 +176,7 @@ static void gdm_wimax_event_exit(void)
 		}
 
 		spin_unlock_irqrestore(&wm_event.evt_lock, flags);
-		netlink_exit(wm_event.sock);
+		netlink_kernel_release(wm_event.sock);
 		wm_event.sock = NULL;
 	}
 }
diff --git a/drivers/staging/gdm72xx/netlink_k.c b/drivers/staging/gdm72xx/netlink_k.c
index 783770b..097fdfb 100644
--- a/drivers/staging/gdm72xx/netlink_k.c
+++ b/drivers/staging/gdm72xx/netlink_k.c
@@ -108,11 +108,6 @@ struct sock *netlink_init(int unit, void (*cb)(struct net_device *dev, u16 type,
 	return sock;
 }
 
-void netlink_exit(struct sock *sock)
-{
-	netlink_kernel_release(sock);
-}
-
 int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len)
 {
 	static u32 seq;
diff --git a/drivers/staging/gdm72xx/netlink_k.h b/drivers/staging/gdm72xx/netlink_k.h
index 1fe7198..ca8514b 100644
--- a/drivers/staging/gdm72xx/netlink_k.h
+++ b/drivers/staging/gdm72xx/netlink_k.h
@@ -19,7 +19,6 @@
 
 struct sock *netlink_init(int unit, void (*cb)(struct net_device *dev, u16 type,
 					       void *msg, int len));
-void netlink_exit(struct sock *sock);
 int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len);
 
 #endif /* __GDM72XX_NETLINK_K_H__ */
-- 
1.9.1


