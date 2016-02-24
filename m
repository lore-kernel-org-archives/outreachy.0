X-GM-THRID: 6254866266888077312
X-Received: by 10.182.199.70 with SMTP id ji6mr36091537obc.32.1456324538697;
        Wed, 24 Feb 2016 06:35:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.112 with SMTP id j103ls2989817qge.57.gmail; Wed, 24 Feb
 2016 06:35:38 -0800 (PST)
X-Received: by 10.129.83.85 with SMTP id h82mr37449650ywb.18.1456324538133;
        Wed, 24 Feb 2016 06:35:38 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id yd9si419789pab.1.2016.02.24.06.35.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 06:35:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so1031773pfc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 06:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=x1iZhsinUWS/I5T/XDDDqdUCuZLVQB5BHRA+Bw3EnUE=;
        b=BabG2g/JmUxkvcBzm0w4kImLPV2saQwQdfRQ7UGKKulUywkmOlVwY1fFQakXKzQPHr
         F0bbGg2BDr6LYH6lQIMR/rlHkz5VGlI2ZkL1RF4Gw6+VcHC1Fl36GGQer33Gqn1Ex9s1
         XyVZCOljdCaHmZfnfzWdUF47LJKrcZjUtaE298s907CC8jyjOS0jbXXqwr0Oa2QAH/Rz
         OiXEYUsDP5aavXUiLCr9j6srHJPejJTKkvZlOgLD3zrcMNY79/iv+oTjzrCxINbqCXlo
         hCqLLf0cz6eF9jL7KM30PPeakU6lwe+NQgQn3hZj4iYY2yRwVfgB+LgRPmMxZrtxx65B
         55/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=x1iZhsinUWS/I5T/XDDDqdUCuZLVQB5BHRA+Bw3EnUE=;
        b=GqmvmLDTCGtrlVhTD6UIN3/WuHHqkp7o76zY6Zj6EYdQtJh1lYbQ2HcjPEw78BzlqA
         7OdUdYsvoDDi/VhIFmSs5b7CVWZBWU7TXY8ErFd9kB5tZxk9FEppgA70VLhywDul7BIC
         UDYR20uJEXdwvl9CZlwVkp6IhHxLyOzVc27R5JQvYbZOyLbBPQ0ujkJ7OHNkBjK8+lcI
         kyjX+knmo+sIYW5BDnzqYVvyj2v67bZzhIa7qgOj94Jcdf/qB1puGVUFkjZILuWc0SGO
         ADRHqRFb+/EHA0n4LQnW5gOQqp/FTgmjYGQHDm/kj0Zl0yp+QOeW6bz8vAF7347G/vA/
         PFWQ==
X-Gm-Message-State: AG10YOThOEbdDZGUQ04intGFt2Xog/tNi10bC/qJ9/Lw/+Ec2IabY2MUjqwlEIe5T348VA==
X-Received: by 10.98.0.71 with SMTP id 68mr55348480pfa.156.1456324537771;
        Wed, 24 Feb 2016 06:35:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id y27sm5592689pfi.82.2016.02.24.06.35.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 06:35:37 -0800 (PST)
Date: Wed, 24 Feb 2016 12:05:33 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gdm72xx: Use space around '*' operator.
Message-ID: <20160224063327.GA4348@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use space around '*' operator.This patch is suggested by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gdm72xx/gdm_qos.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
index 8c99f91..9fc476f 100644
--- a/drivers/staging/gdm72xx/gdm_qos.c
+++ b/drivers/staging/gdm72xx/gdm_qos.c
@@ -261,7 +261,7 @@ int gdm_qos_send_hci_pkt(struct sk_buff *skb, struct net_device *dev)
 	struct list_head send_list;
 	int ret = 0;
 
-	tcph = (struct tcphdr *)iph + iph->ihl*4;
+	tcph = (struct tcphdr *)iph + iph->ihl * 4;
 
 	if (ethh->h_proto == cpu_to_be16(ETH_P_IP)) {
 		if (qcb->qos_list_cnt && !qos_free_list.cnt) {
@@ -342,17 +342,17 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
 	if (sub_cmd_evt == QOS_REPORT) {
 		spin_lock_irqsave(&qcb->qos_lock, flags);
 		for (i = 0; i < qcb->qos_list_cnt; i++) {
-			sfid = ((buf[(i*5) + 6] << 24) & 0xff000000);
-			sfid += ((buf[(i*5) + 7] << 16) & 0xff0000);
-			sfid += ((buf[(i*5) + 8] << 8) & 0xff00);
-			sfid += (buf[(i*5) + 9]);
+			sfid = ((buf[(i * 5) + 6] << 24) & 0xff000000);
+			sfid += ((buf[(i * 5) + 7] << 16) & 0xff0000);
+			sfid += ((buf[(i * 5) + 8] << 8) & 0xff00);
+			sfid += (buf[(i * 5) + 9]);
 			index = get_csr(qcb, sfid, 0);
 			if (index == -1) {
 				spin_unlock_irqrestore(&qcb->qos_lock, flags);
 				netdev_err(nic->netdev, "QoS ERROR: No SF\n");
 				return;
 			}
-			qcb->csr[index].qos_buf_count = buf[(i*5) + 10];
+			qcb->csr[index].qos_buf_count = buf[(i * 5) + 10];
 		}
 
 		extract_qos_list(nic, &send_list);
-- 
1.8.3.4


