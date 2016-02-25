X-GM-THRID: 6255196435658047488
X-Received: by 10.140.20.204 with SMTP id 70mr13452486qgj.18.1456401412698;
        Thu, 25 Feb 2016 03:56:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.93 with SMTP id m90ls339440iod.18.gmail; Thu, 25 Feb
 2016 03:56:52 -0800 (PST)
X-Received: by 10.50.79.161 with SMTP id k1mr2040655igx.5.1456401412471;
        Thu, 25 Feb 2016 03:56:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 12si1117744pfb.1.2016.02.25.03.56.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:56:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so2589508pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1ZrpfeLqOY/I+KtUDMXMv6oVre7r5kd4MX3q3BW6cPA=;
        b=XgJDVQuKZOl/SraD4HFzqTfwQuyfkbi6/bLXf6GUA67jSnnitxmR/UdWAQ1/Pg8sgs
         rgER2LCkdAId2vFMCnPMa4bSQH/Oz8rLkCbvS6xPUti/bq+UCOQNDIPHoJByJhC64qWu
         kN/wBkjqRrnuFQSKHxHDLTccFnLCYfeR4tAQltatmoWIeIU+TehW2DqJ2+sm3KhEQ2jT
         5y3N79uq+iXvz+DJFBwAxh4E00gp+yUjkbNzPKqTN5D0O1CPBXDeSjmyQoNETNANiNnV
         zYAmXczAeSC4WPrxXf/Bl5inVGknAB3Ms+bFtQHyflJDX/Kx1D3gPU6DvrbTcwnKTK63
         Ri5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1ZrpfeLqOY/I+KtUDMXMv6oVre7r5kd4MX3q3BW6cPA=;
        b=FOKjWO5f03zY5MUUBHDwhQJtyms8BVeE3Tny3bGb5vKEaN7RVdrCx/HXDsBnCM3OhX
         ILxR9w3kkZt6Rs8WffmKlO9KBzEPuooNL2vlYocPz/R3bYmLLcrbq7+hLBCPL5UkQHOD
         xzVLsi0vNXh4h/kU4Zrhdl3EMsUm03eI9HavdR9f6mOxMmPJgLX2jEHTxhjgVRBvhk03
         eYjvhKqu3ILHFTVygUge4bTrKgpJhgR85gytDouxWpNdqkKMKUt0gZ1F6OHCZ2JID4LC
         fHvvetnUq/s7ra8GFxzpuodAm2MoPK1koGILHH+ZAObFO7fXeAWNYWcR1+XOz4t3zRJZ
         /s5A==
X-Gm-Message-State: AG10YORq1Bz/k3b3jOrUhwNzmYL6DIjmmQD+0kYOCIyR45Wnq263LJzzReynX6noFTYTRQ==
X-Received: by 10.66.63.67 with SMTP id e3mr60600839pas.141.1456401412338;
        Thu, 25 Feb 2016 03:56:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.170.98])
        by smtp.gmail.com with ESMTPSA id yj1sm11892300pac.16.2016.02.25.03.56.47
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:56:51 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 25 Feb 2016 17:26:40 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/3] Staging: rdma: Remove wrapper functions
Date: Thu, 25 Feb 2016 17:25:55 +0530
Message-Id: <cover.1456390351.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The functions add_rcvctrl, clear_rcvctrl, sdma_start_hw_clean_up can be 
replaced with direct calls to the functions they wrapped. Thus remove the 
wrapper functions and replace their calls with the functions they wrapped.
Changes are done using coccinelle semantic patches.
 
Bhumika Goyal (3):
  Staging: rdma: Remove wrapper function add_rcvctrl
  Staging: rdma: Remove wrapper clear_rcvctrl
  Staging: rdma: Remove wrapper sdma_start_hw_clean_up

 drivers/staging/rdma/hfi1/chip.c | 30 ++++++++++--------------------
 drivers/staging/rdma/hfi1/sdma.c | 10 ++--------
 2 files changed, 12 insertions(+), 28 deletions(-)

-- 
1.9.1


