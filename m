X-GM-THRID: 6394898863849734144
X-Received: by 10.99.37.5 with SMTP id l5mr1509036pgl.165.1488928418501;
        Tue, 07 Mar 2017 15:13:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.197 with SMTP id t63ls1867526otb.7.gmail; Tue, 07 Mar
 2017 15:13:38 -0800 (PST)
X-Received: by 10.129.69.37 with SMTP id s37mr1462993ywa.147.1488928418040;
        Tue, 07 Mar 2017 15:13:38 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si287310pfb.5.2017.03.07.15.13.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 15:13:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so1550109pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 15:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=I6tO4NArKLauIGdcIpUFqbIg2rkqh9kLb1/Sm935Bto=;
        b=imhe5uC/v+hZJVF1Kw+WJQCwpYr7zlQnP/ltfXoSzEzHdnNd/GKpffny2ryxms/mG5
         yMiPpyK+SZikvMGQxTmCwbrEblVP6D4qlZS5luW21pDJaSvmVccYaFw8+iyq/QQW1RTY
         oa8jWS3jlh1JOfnFZ/qbeXmjGY9rxl81Jn1pEQfedgP02d5C5RK2XgjRf11tw/K8dEG+
         6fDMrUWwg6Yj8xWK+j+NgDX4Lkqoqrvtd9ZZdo96LQdWXoX4JbDP+gB5yT784jqcVskM
         17UCvV5GvG4gXZNkOToq2qqUg3rAZtwfwG5TmjVHzN4h6ph6j6hWrv/adgGU814LwIbW
         hP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=I6tO4NArKLauIGdcIpUFqbIg2rkqh9kLb1/Sm935Bto=;
        b=bdJ/oIwueh7N1xidXen9wm3zVtvleWbvvDQVj3OKiy8lRc8TyOz7/rVpJ8x7l0/rvt
         auoDAsJgPPLAUWclW7txLSfTxYttmsv0GEfIVWi1KdTyK8idDOUOBHYAESKFeqidyk4Q
         Iz1+VBBN1eQwHrL7x7D7IYbKnroK7lgoumFoGGTelOh9GPUByjdAPGWN/MkGic2iVYzr
         iZqtP4/WdtXdEU0+AnwujZUBZXzgSmqW6OjF2fnsOWzvbKLlW+AgdXLwo2i8XfGPFXBs
         5tXkq/GB8HKuO+OJInFvB+zcP3HzwAJ9YGY0qGOSXgtuBrdMbhP3KGodZtCcSP/tqcKF
         pSZQ==
X-Gm-Message-State: AMke39mbm4NvmJOQOZ41q1g8NVrewJtjxo/nNWgno/WG9Dt9/l1m0iZCpnSLp8sIf5kejQ==
X-Received: by 10.84.218.133 with SMTP id r5mr3912803pli.165.1488928417832;
        Tue, 07 Mar 2017 15:13:37 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z26sm1748330pgc.57.2017.03.07.15.13.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 15:13:37 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] Fix multiple checkpatch warnings
Date: Wed,  8 Mar 2017 04:43:18 +0530
Message-Id: <20170307231320.9716-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix spelling error of a variable from unkmown to unknown
and add a  blank line after a function definition.

Sreya Mittal (2):
  staging: wilc1000: Fix spelling error
  staging: wilc1000: Add blank line after a function

 drivers/staging/wilc1000/wilc_spi.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

-- 
2.9.3


