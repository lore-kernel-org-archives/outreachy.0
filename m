X-GM-THRID: 6810936843956125696
X-Received: by 2002:a05:6830:18e:: with SMTP id q14mr710307ota.136.1585794809048;
        Wed, 01 Apr 2020 19:33:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls1026906oig.7.gmail; Wed, 01 Apr
 2020 19:33:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypLzWdjiogXgQi6fApmKK4vEQc8RAktvT8f8zLarB989LhepG8aB/Pwe8RABhS937m+Xty5g
X-Received: by 2002:aca:ad93:: with SMTP id w141mr766178oie.54.1585794801769;
        Wed, 01 Apr 2020 19:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585794801; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZ91MTtbkR+n2+mL3160E2QFdcHBub+SZCmXkVEGOpowGfm/iz9jWJeBGDR+yGn/W4
         tjLUKYd8SccJx+r+F8s8BEl0CUyxYEbmL04iOVP6cSKhkEcV993n3Q08u7rGnY4WJVZ3
         uN1TBwuD6ew0tjYU2xnAnTGWdLhhh3xReYIxZsvfI3yk4jjcQDugDu+CpkJMKrhOyqZY
         TB5oQ4kdJDX9b4UecmQC/O0yflOex/G8+Ok+UKl0lK9L1t8V3/vZdrfatP+tEG9+318/
         ar7H/e6qIh8wiaYhiEMcUBe0bpwrhQK0tdyQrhC12n+a6Nf43yKAmSQ7lEkFhgFabPoy
         7CJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ATIn1oIMiOwI325i99rfncSx0LFzAXo2FxSFZi+2kaM=;
        b=Y0PD3b2wZf0FSfHm6+oW77sCQjAvTwI9tEZgVua+bZuhmiBflfw3LiynKiQLYdN104
         a7muzypnMc9vE6RovX10+4K3h+fNXHdnLdwuz6JvlYEfFti8J43PRH74nYlphtDwabDV
         ujs3UZkof6ORyEBB7So2VOBPv+z+u8f0Qx5IdaIbTH+KSDVvcpC4e9KKyxNLjFwPSt/E
         AX/dH6YQN3po+TPP9x4yyqH7q6VEZkocip3OaaHnLN+H5YOq9OJAy2hXhTkseNXIVmC0
         xVkeVTIH8hvApf3UR9tmam9ezBY5FbwpG9MTHKZrIhEyxe6dlsu5QMUzUJcpcTwQNm8a
         sqog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n3LBbVdV;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id t81si279497oie.5.2020.04.01.19.33.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 19:33:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n3LBbVdV;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id h11so769816plk.7
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 19:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ATIn1oIMiOwI325i99rfncSx0LFzAXo2FxSFZi+2kaM=;
        b=n3LBbVdVMR9xztTWPZj9E4NAFROVpVuh4KUeELtpWMpWqKKx5lGsHyovhlSlocwRJf
         nN/pb2bi91NTXpSJ1uY00zkUiaPE1bGQ1OESWp5M3dZfU5PDgILsOCat+syRefKVKUQd
         NXAWZZRUUUWiZoDrpVBNkYiOUY3YwQbs4YN+1WLDGx4SIvMQHLOiGDrtnEZBewl7LeBk
         bV7tfeAbWFkoGaMruVpc4b5Cmt71VHuO8gVt3bKcqOtUZ3+4XYu4x4S6yOMwfntDxKEi
         Fn+YCM7DNZJ8NmjPzIxP8e2qLMH2U7SpRydjD4pitF5Y5D0juJOw5QqzRa2deSIgGTFi
         RmVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ATIn1oIMiOwI325i99rfncSx0LFzAXo2FxSFZi+2kaM=;
        b=Vvd50G23TJ2vl3BP2hpUIFeFmOI/gwRm96ZXBbNQhZGcfNHf5mUZzW8XI5vsw998gJ
         wxx/qW/JK5CcheCPzbJ8oGtprVE7PSoA4jJYx3OjWclkoJAFUh9ORDcuzV9jpBKvCzUz
         IrMXbdJOsNceQgKi9LWidJRiutg1ojJXkH/XBE0rRWwRZeFvxTl4T7Zc9iFkPhnZYD1V
         x18TFZVj0E8BVN8ZGQGFrAPttT39iOA/lZMcNpqfpE0Ks62hASCy5f4ZHto5bpwhde0U
         fkV4mYGrzWIus5PauWVJdZGbS3OHhYEuoPbGUuC7DS6NVr6GzRQlsWbIIVJgGSQv6INd
         4Pvg==
X-Gm-Message-State: AGi0PuYF8dkQt58ScMbvuaJyvY6MuoYuJIEZWrBJizcb0d5du4jDmq6U
	V+5XMIvWpT3vYbFyj4J2mrKCeEjev2KZdA==
X-Received: by 2002:a17:90a:24c5:: with SMTP id i63mr1182990pje.177.1585794800765;
        Wed, 01 Apr 2020 19:33:20 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id b2sm2609402pjc.6.2020.04.01.19.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 19:33:20 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Ioana Radulescu <ruxandra.radulescu@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org,
	devel@driverdev.osuosl.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: fsl-dpaa2: ethsw: Fix parenthesis alignment
Date: Wed,  1 Apr 2020 19:33:10 -0700
Message-Id: <20200402023310.816245-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix 2 parenthesis alignment issues.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 676d1ad1b50d..546ad376df99 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1094,7 +1094,8 @@ static int swdev_port_obj_del(struct net_device *netdev,
 
 static int
 ethsw_switchdev_port_attr_set_event(struct net_device *netdev,
-		struct switchdev_notifier_port_attr_info *port_attr_info)
+				    struct switchdev_notifier_port_attr_info
+				    *port_attr_info)
 {
 	int err;
 
@@ -1277,7 +1278,8 @@ static int port_switchdev_event(struct notifier_block *unused,
 
 static int
 ethsw_switchdev_port_obj_event(unsigned long event, struct net_device *netdev,
-			struct switchdev_notifier_port_obj_info *port_obj_info)
+			       struct switchdev_notifier_port_obj_info
+			       *port_obj_info)
 {
 	int err = -EOPNOTSUPP;
 
-- 
2.25.1


