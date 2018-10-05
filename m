X-GM-THRID: 6608856202267852800
X-Received: by 2002:a1f:cc05:: with SMTP id c5-v6mr9409722vkg.2.1538744243148;
        Fri, 05 Oct 2018 05:57:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:254:: with SMTP id 78ls1412501uas.4.gmail; Fri, 05 Oct
 2018 05:57:22 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60TiQzZZsMky9FQujt5XvlfZOKII+whyPewqnt3194BUUrWh9G7JL2BL4IthSM3lfb6i1AP
X-Received: by 2002:ab0:2102:: with SMTP id d2-v6mr9416749ual.6.1538744242641;
        Fri, 05 Oct 2018 05:57:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538744242; cv=none;
        d=google.com; s=arc-20160816;
        b=QUv0GIUnjllqHvOlHGcKNvv3dqP+4fLuqaAH5FkSLfmemPNEZ/XC3qp0QhJe0KXEY8
         VNGxw4l8nz3+ZYcNcpb5i0cwtU07TGv2vOLU9TUudJnNGzB7g6vxsoeoB6WfJ8/mDRhh
         DDcRp+mn2iKn36YS2q3QTsgAtX5vOR8hf5Qv20pkSQ5oMUIX2Zo3FqoxyhNMNb80DEvN
         2dsNuE2K0Yxz3NqMV1TsymUD8Q/xN896X/kOSO84yNklAXv4KgV8I27V0lP3aAs1jjHk
         0Bk3joQlBNgs8cou9s/VOFJJ+Zb8inEHi/yEJbVHULnO/tO6KDKgJN+tnwysTIzUN1FZ
         2Cbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:subject:cc:to:from:date
         :message-id:dkim-signature;
        bh=jIT9Uo7dsYv3Rgsoa0PfWcYPRsbcmj8ILdsz6B3a9k4=;
        b=siMDdXyvR5MKwZJi7BqNJQ2cwKYcqG9NhUNU2kpi24DMm9K5SK/SGupDe96ruGa7Mh
         bKSerEULs0X03iTsTVD0YHyL/0w805refGJYtO7nZqtYeeFGl8UJ5vxKKsKl7cyj47/p
         PDjpsldlV7IVrr2HUBul1BRjE3Cx70rl8mjPohFndPjlmx1bO8acCRKGJJVXr2mJ1fkz
         wkgJh256tae+EHXbrAZ074KjKJq27JOGRWBE71J1Qw0HhGsCWnDDQXn7FzzOCroSnOS5
         vh8KxG/vPPSW/2fk7t6atjNTIP0oB/lVYK3L3tlcyFSVwj/vuCFAUoaI7tAUqjmPE2lU
         ONiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bGMNX9Ul;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id i13si473295uan.0.2018.10.05.05.57.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 05:57:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bGMNX9Ul;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id f26-v6so4901418pfn.9
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 05:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=jIT9Uo7dsYv3Rgsoa0PfWcYPRsbcmj8ILdsz6B3a9k4=;
        b=bGMNX9UlcBOjeqYMsFol0o3RPeoLqdRizqs3o3DI9w7f6ulKm8q4S3/PszVzhTNkmB
         goZG2hWkhqBdSTraRvE/NUqft3g/G1tYdGP+o8NzwhBD5bzuj4quOJ4w1HaTBWiqXPod
         KtO7IvUr9unuDD6zv07fhJLMyFFb6StDxx5bg0amJC9YU0KNdUR3hBNP1LFiVM+J4oyp
         lxUpJZrre3IPvx3ckGKU2vMrM9ndznjtklifG8iqL0yMMMBOlksTRnwlP/iakzRthY0B
         /zTaG2i3jWQjruyrqUinlXAhPpF91t2BONT+cfEQG6SKtqvISfLnG/tK8ycIp3Lod/zb
         UbRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=jIT9Uo7dsYv3Rgsoa0PfWcYPRsbcmj8ILdsz6B3a9k4=;
        b=rHzsKIosesBjOULh2QLSkHFSoZungHcvxNcKp8dYlRi8abKBeyiOUXxpYhzt5Vzl2M
         ZHeObYFKCEibduGAS8JnTjOE9jLHnt3z3hXwRZrrNYtknDuInqEV7YmbLl93N+jiZKb4
         gV8qdoRrbRs5Kts5RYMSfs99B8LUhJxrKFGRQLexgyCTw+mnxOHLepLpDy/uAH3lCmEB
         TFtZOBpv1y4LCb+Fzwxm9ilAPMrKz7O3pzMNYWzEqsE4xjlxYh0SPGZs25T3gfZ5RGKR
         1Bqtqh+uw2+n0EI0PSIDTk/miuFGC6dMZqPl4+K6IF/mfRXY/qeABQmkrJe1WUepzuEX
         it8w==
X-Gm-Message-State: ABuFfoj/nE6E/OYEJAkg2JSfakS1dJ3VT0GFw7e0mKJVHTbTQGg510Ui
	eQPu2i7myIs0UrGi9JIR18rh26Tnkzc=
X-Received: by 2002:a63:d60a:: with SMTP id q10-v6mr9982772pgg.175.1538744241962;
        Fri, 05 Oct 2018 05:57:21 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanu-MacBookAir ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id a1-v6sm16971639pfc.28.2018.10.05.05.57.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 05:57:21 -0700 (PDT)
Message-ID: <5bb75fb1.1c69fb81.8a08c.4eba@mx.google.com>
X-Google-Original-Message-ID: <20181005125718.GA8941@bhanusreemahesh@gmail.com>
Date: Fri, 5 Oct 2018 18:27:18 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [Outreachy Kernel][PATCH] staging: comedi: comedi_pci.h: prefer a
 maximum 75 chars per line
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

comedi_pci_auto_config() function prototype is exceeding more than 75 characters per line.
Adjusted to less than 75 characters to improve readability.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/comedi/comedi_pci.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
index 4e06944..5cb7cd7 100644
--- a/drivers/staging/comedi/comedi_pci.h
+++ b/drivers/staging/comedi/comedi_pci.h
@@ -31,8 +31,8 @@ int comedi_pci_enable(struct comedi_device *dev);
 void comedi_pci_disable(struct comedi_device *dev);
 void comedi_pci_detach(struct comedi_device *dev);
 
-int comedi_pci_auto_config(struct pci_dev *pcidev, struct comedi_driver *driver,
-			   unsigned long context);
+int comedi_pci_auto_config(struct pci_dev *pcidev, 
+		struct comedi_driver *driver,unsigned long context);
 void comedi_pci_auto_unconfig(struct pci_dev *pcidev);
 
 int comedi_pci_driver_register(struct comedi_driver *comedi_driver,
-- 
2.7.4


