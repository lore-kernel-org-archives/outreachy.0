X-GM-THRID: 6256436509149233152
X-Received: by 10.50.50.138 with SMTP id c10mr7340521igo.3.1456690139328;
        Sun, 28 Feb 2016 12:08:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.228 with SMTP id c91ls2130678qgf.37.gmail; Sun, 28 Feb
 2016 12:08:58 -0800 (PST)
X-Received: by 10.140.201.75 with SMTP id w72mr10319857qha.1.1456690138835;
        Sun, 28 Feb 2016 12:08:58 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ff2si3449465pad.2.2016.02.28.12.08.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:08:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id y7so7477346paa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YG/QeN4TJzxQX8BFUQJg04/jx9y1CKyl4pqflF2aRfc=;
        b=KpzlJXEUU80j39/TG9bQni3+6jr2mgOkvdVNqqry+jvSDpz8JeGqq6r0Hp8mG82v+M
         UQ8czVHsV59frjKmad6A6WCV14eKnLxAzEmftixdDyirz+FQX/NPlmfjvA8iZPcFvC5I
         K/lIfI/d53wl2zdQm8DfdEOnxXPzzYHdlK59xLOy/aWtPed+SAuRWitmnrJOuXtWfrww
         HyclIAQ+3cPY7G7Qj0tXrWRlmptWjP4fk+vj5TN6NbP+a3moQpiMSurCP14xR4NNNTZy
         AS9tObDL+mhFyCjCIs0rDIbkVo8uyMfFaAfCzDCypbOSMbAv4X9P3lHaXGcqMsv4CPrF
         jjfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YG/QeN4TJzxQX8BFUQJg04/jx9y1CKyl4pqflF2aRfc=;
        b=jGr9fbS005/s+NqOARhAtoBEgY9jX9AouvV1uxsEN8Amhpn5LpotKVOQUjKtLEjrfg
         pNSuTbigcoVa3TTW7ShQ0ThdxzNr2feabEQ6idQwf5HLqVBKFOZLrUWOPghBkj7vqAlA
         pKDG7y8rk1SWSwvTbq/hSQO6Fc7aN40LJyqvBR9oOQd8g26+/71GAYLKfAtrChL0/G2p
         V/2VlYYuNR5OkOKCN4gikCWMpm4Oi8PyTsXxO7ijyMTEYtqN2ROC5KMsbUt+RljnrE3S
         8DB0IVb78vW5y0//5gqhp/xudsQSTABsSJXuXsl7nqC06MJ4XTYE6Y2RKmgVZ7NKiaZf
         V9Fg==
X-Gm-Message-State: AD7BkJI6Vyjsa+aNH138XnCyvLtu/IibCWjrQQj6P0vr/U1sahwVsfzQttip5LrF6odhgg==
X-Received: by 10.66.193.202 with SMTP id hq10mr17049319pac.6.1456690138583;
        Sun, 28 Feb 2016 12:08:58 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.168])
        by smtp.gmail.com with ESMTPSA id 1sm32869371pfm.10.2016.02.28.12.08.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:08:58 -0800 (PST)
Date: Sun, 28 Feb 2016 17:39:04 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Staging: Use ether_addr_equal_64bits() insted of
 ether_addr_equal().
Message-ID: <cover.1456660509.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use ether_addr_equal_64bits() insted of ether_addr_equal().
ether_addr_equal_64bits() is more efficient than ether_addr_equal(), and can be used when each argument is an array within a structure.

Sandhya Bankar (2):
  [PATCH 1/2] Staging: slicoss: Use ether_addr_equal_64bits() insted of ether_addr_equal().
  [PATCH 2/2] Staging: rtl8192e: Use ether_addr_equal_64bits() instead of ether_addr_equal().

 drivers/staging/rtl8192e/rtllib_softmac.c | 5 +++--
 drivers/staging/slicoss/slicoss.c         | 4 ++--
 2 files changed, 5 insertions(+), 4 deletions(-)

-- 
1.8.3.4


