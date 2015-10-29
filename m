X-GM-THRID: 6211177043451707392
X-Received: by 10.182.143.65 with SMTP id sc1mr3215674obb.15.1446152348169;
        Thu, 29 Oct 2015 13:59:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.30 with SMTP id r30ls378102ioe.88.gmail; Thu, 29 Oct
 2015 13:59:07 -0700 (PDT)
X-Received: by 10.50.66.210 with SMTP id h18mr8364323igt.10.1446152347719;
        Thu, 29 Oct 2015 13:59:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id iz5si328109pbc.2.2015.10.29.13.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 13:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hy1so45015256pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 13:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=f4okdoDKJrVPe7Iv5bhGzTI/YQJIR2Un/if9SG2HKwo=;
        b=G2pz3QE5LycjBniDQ9o8JAleO0kfiD0YTNepwsDR7rd7pZL9cWgZi9nMVLBru1DR+J
         plV7sgj/lmY4dj9+2yMn+hJCJF+3tjgZIhzt7OXOPmKdQskzHKTv8OjLZfBbr1bbvTyf
         ikuFeayGs8wpnN/MNGaHSXVbuBxjNu18Alsww4yBi4Y57SHQqtf3rFOW3d0vbxsiBhdY
         1jLickcDjtzpJ5XGcw8l8gzpcC2TYcy81IwZZ1N/9zSkXm5qg3fr35kIfNIMO7GtWsGV
         pyP0e27GWGm39QVTJd46nu7AeGiGSI8OLxR25uSnSr82B7j1UoqENljmQU1we3XZB1V6
         uRSw==
X-Received: by 10.68.57.235 with SMTP id l11mr4241363pbq.26.1446152347530;
        Thu, 29 Oct 2015 13:59:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id a5sm3039517pbu.55.2015.10.29.13.59.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 13:59:07 -0700 (PDT)
Date: Fri, 30 Oct 2015 02:29:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gdm724x: Remove wrapper function
Message-ID: <20151029205903.GA22428@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wrapper function that can be replaced by a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c   | 2 +-
 drivers/staging/gdm724x/netlink_k.c | 5 -----
 drivers/staging/gdm724x/netlink_k.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index a8d2cff..1f13ab1 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -555,7 +555,7 @@ int gdm_lte_event_init(void)
 void gdm_lte_event_exit(void)
 {
 	if (lte_event.sock && --lte_event.ref_cnt == 0) {
-		netlink_exit(lte_event.sock);
+		sock_release(lte_event.sock->sk_socket);
 		lte_event.sock = NULL;
 	}
 }
diff --git a/drivers/staging/gdm724x/netlink_k.c b/drivers/staging/gdm724x/netlink_k.c
index 59a1830..a825652 100644
--- a/drivers/staging/gdm724x/netlink_k.c
+++ b/drivers/staging/gdm724x/netlink_k.c
@@ -107,11 +107,6 @@ struct sock *netlink_init(int unit,
 	return sock;
 }
 
-void netlink_exit(struct sock *sock)
-{
-	sock_release(sock->sk_socket);
-}
-
 int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len)
 {
 	static u32 seq;
diff --git a/drivers/staging/gdm724x/netlink_k.h b/drivers/staging/gdm724x/netlink_k.h
index 589486d..7cf979b 100644
--- a/drivers/staging/gdm724x/netlink_k.h
+++ b/drivers/staging/gdm724x/netlink_k.h
@@ -19,7 +19,6 @@
 
 struct sock *netlink_init(int unit,
 	void (*cb)(struct net_device *dev, u16 type, void *msg, int len));
-void netlink_exit(struct sock *sock);
 int netlink_send(struct sock *sock, int group, u16 type, void *msg, int len);
 
 #endif /* _NETLINK_K_H_ */
-- 
1.9.1


