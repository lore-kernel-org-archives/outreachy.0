X-GM-THRID: 6675182305801142272
X-Received: by 2002:aa7:85c2:: with SMTP id z2mr992636pfn.42.1554186992941;
        Mon, 01 Apr 2019 23:36:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8a85:: with SMTP id p5ls6011862plo.4.gmail; Mon, 01
 Apr 2019 23:36:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwNrLiZPRMgkkoPB5B8hGVJfxLvYnFaF73gYSsmltdNXrowQNGjLbYAuyUHWev/tbnuWE0p
X-Received: by 2002:a17:902:bb95:: with SMTP id m21mr1814255pls.64.1554186992319;
        Mon, 01 Apr 2019 23:36:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554186992; cv=none;
        d=google.com; s=arc-20160816;
        b=JfVV0in0WlBTQ8issh+53oQcWp+QvcaCy4xjAYbHuga6+ELvUahfdNaXQAxo3U2/Ht
         d9QaX+Ssp9ECq+usp32wiZ1rfzO3F6aeB70g15mPL2v2Tmj+L9rYDd6Q2ZfZuthLRd5D
         OgGY7f/Ui1RrqCW7TUlIM4DDI8oX8M27/IWz5eMsK9WYs7APtzCVM54GJM48AVUUnLbf
         4dFKt9tVsTxAa3ZamsjMONcbGWDxpAWd6on5yPX12MNV8rRoHRBJ8u0zXSyWd+6PZVks
         kQEw24e/cbdwMUZJy22aKxOq6omrDOU9DOoLKECULJU/5crakPJ3xAKqihX1kpqoXQ4C
         yEkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=6HALDBzZ4y7DyM6RoDoC9M2Xk4dLFD9ehoXPum/MWyo=;
        b=y+pV2c+ptk22PM93wgYzw1J1FdFXQXnRju360uhNAE8ZqjFwOxpgqCeiscLQ2oGvsH
         EkjF/01pr/pL4HUrXZfnxLSkBElmrZbxYz5LNGpLjAcpS4BxfRRUOhns+KSWpG951EFT
         qXbxwIY6FGJ45MTOb7lQKozwTCbbnD2n7eYsi5ikgDAUScuIf7hn3QuLkFW5DJri7EyM
         EOhZXjgzWTZFn2f2FnNXacdsp8UMvGPxF2qsycAU4TiLo6/tviZd+6nB6AEpitTi43gr
         IQd96kYXL09uUTy5XERw4jp4BGBckw9+7lssQLOM7Ztl2jhAErXM8cLIVpY6ZdqyjeJP
         qzTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XMw9FbWJ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id b38si755735plb.1.2019.04.01.23.36.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:36:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XMw9FbWJ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x635.google.com with SMTP id y6so5725474pll.13
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 23:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6HALDBzZ4y7DyM6RoDoC9M2Xk4dLFD9ehoXPum/MWyo=;
        b=XMw9FbWJCBGX4uIVudgFjxCNLfH5uHdJbRc0vErVCdOOdjim6UChm5Z+usm6O2QFT5
         B5laCT9x6V1dHs9KFHy4a0nYbNB3Gy81sdLPbbCNj4rwlW3//0RwbJbCQGMjbOXTXxmj
         Nmr5OHJO9mBF6BFAbI48lC9KIa3lHc9TL/bOvR6VXIQyDvfdkh+e4GORPZ/ggHewpJjA
         /puV4aRJ0Z/8nuf6DAUsa45j+/+X6eJpu1G3H+UVxr7y788ljUWnSFrDPvG/8fqWcadE
         CRWdRVfzombwjiiA4EivfULPAYyK5H+MNJmW3ir6O7vG6zoepc5hWFhaeOokm/HVOPZY
         vMJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6HALDBzZ4y7DyM6RoDoC9M2Xk4dLFD9ehoXPum/MWyo=;
        b=J+x+ryTnxIFdpQYgcZVqcBu9w8w9ArW70Xncppttn/+qZjpYfYh5C1IFzHZTDRQiPn
         tLmvOK7+xU5HZ6Nx4UpHix9/s4l9oixeWBebW5Zgwkj+KneXu/MUyH7Jf/UaNLpQeiht
         QUFz2OpfOWJiU40g7Xl2lk1rhdw4FrJ5GZkNhzxi4NOSqGWZU5MfKhYZ+0wT4IpAHp/l
         rMQoCmQfl7adP97M2l1gnlJTjSx5cVXbaZbuS/Y8AqzGKeDa4fit1mUq4/EOq9vo1Vr5
         GHoZ9fpKG9LTgnrbDTQ4ZCABYSd2Cj0SrRMfVpgLzlBU7AAl8/S77fUmH0kK5CcP1hcd
         OmOQ==
X-Gm-Message-State: APjAAAWOWElyu5FVh0t9L5lP2M5COr9yqdd4s+wyywRb5CMcmzkOMeN+
	IXmTEeaQW9v3pBkq7DSCrIkm90+S9t8=
X-Received: by 2002:a17:902:a513:: with SMTP id s19mr16453750plq.97.1554186992148;
        Mon, 01 Apr 2019 23:36:32 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.14])
        by smtp.googlemail.com with ESMTPSA id u15sm18454313pfm.163.2019.04.01.23.36.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:36:31 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: gdm724x: Remove print following unsuccessful kmalloc
Date: Tue,  2 Apr 2019 12:06:22 +0530
Message-Id: <20190402063622.16380-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by Coccinelle
Remove print statement following unsuccessful kmalloc when there
is not enough memory. Kmalloc and variants normally produce a
backtrace in such a case. Hence, a print statement is not necessary

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 3c2aab7a921e..db11498f6fc7 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -871,7 +871,6 @@ int register_lte_device(struct phy_dev *phy_dev,
 		net = alloc_netdev(sizeof(struct nic), pdn_dev_name,
 				   NET_NAME_UNKNOWN, ether_setup);
 		if (!net) {
-			pr_err("alloc_netdev failed\n");
 			ret = -ENOMEM;
 			goto err;
 		}
-- 
2.17.1


