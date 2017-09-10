X-GM-THRID: 6464001620790214656
X-Received: by 10.31.50.85 with SMTP id y82mr1772088vky.125.1505017657983;
        Sat, 09 Sep 2017 21:27:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.71 with SMTP id c68ls2471790ioe.22.gmail; Sat, 09 Sep
 2017 21:27:37 -0700 (PDT)
X-Received: by 10.129.98.132 with SMTP id w126mr5123002ywb.160.1505017657170;
        Sat, 09 Sep 2017 21:27:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505017657; cv=none;
        d=google.com; s=arc-20160816;
        b=ocgNdoYPSQ40FgnTnRWWDLcUHqixRygzJykdVbDt/ITe+M/+ZNaDozNM404eVBxlxg
         Qt5nlZ9QyryAz/B0GnjDUP8JiHqzBx6aX9nM70RGBA95bBCHj1MO0FPVX7lY5lUGAzAA
         TPe+K9kFRM8+sOHXSYCRA6XDz1F52nDiBNDPQuTfnWyQCiiA5RlSG1cwFiSxEUZyp3GN
         r8SOS+M3jnz1iBJN85WQjUMF6SnEkBxcLfYyTQ4ONcgPcnOwgiy5Tch2+z/4c0WTHIiO
         LfjLAN0FTrpGD61fnVko9bTSA/BwfFn3MIJSD4b6nsucJg8Y+TgBsADTo0KvbkWUxOBL
         lIBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=zpfe2qBpj0zY1x9iGKCo/nM2bbdbp9sT7b4LfEqp6O4=;
        b=0HmOQNfzxGHXvdFZga5HE2GH0lD3y+5mM5+LJRQbCk2KJnE7epE3AMCYFGxVW/YxYr
         WG+r6xanRC5vXyBlfeRhULWaUkTGmwbta6ujTJPnSqBa/+esteatvxq9qIVi/fPMj3Lj
         k6Q6Vlpe1/xcBe7BKBONDSF4YavrkMyr69v6n7HDMGsZxw9jKimyv7vayaS3ukaz8IXp
         NPxO3OI4AVta/10yzRTND2Js/UUXyfye1WbUegY4lwSbCef3qNod+x9AZwoaGUcABE3G
         YLLhXNqXciP3Hqcoo/0dWEwP5HfGjOTWCcaz2jH29TF1cnLQIdXAdtVOuc7LjBSVsni9
         +LEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HB3Foqz1;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id o12si566284pfg.19.2017.09.09.21.27.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 21:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HB3Foqz1;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v82so3122898pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 21:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zpfe2qBpj0zY1x9iGKCo/nM2bbdbp9sT7b4LfEqp6O4=;
        b=HB3Foqz1iUDhkvXBIcnpf6dR6yRPBNgvGXOJhjR39ByCUk6yxFV8RJMT05xvXMvWJp
         u1g9Q/e9CTOza5HV65LsdWxBmjSSF+B8zm5lIJJ59IuuyjodskxgOeUYl2w9wxySu2+q
         YXoXnxddbYepiwWjxlpfQTLjtbr8jwm/6B0piHKaYpNElphMTnstzQGMwWfbOjrCUgl1
         eK5HgPGZ4k1BtwbOhpkA6IjGFSuU77e5mwAT2fLCuuTQ+B+kEZL2N97z3c04izi1lYGR
         pIaIeb85pbdrWWt5ONihw8su/QBAwRz6uAshE7jq+Ru7gu58H/4WB8u2E1y+b24lnoLo
         Eimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zpfe2qBpj0zY1x9iGKCo/nM2bbdbp9sT7b4LfEqp6O4=;
        b=en6qO/J9ykrQUHOkE0MOWp8WRKoKenTEavPxTU7PRxJ4HufM4uftKdxdwB/qo56GAm
         4skDJXwUd3lOC6zQSG2ZoVFQQnczD7e+b7M/UX7JTW3+HvsdZnzXawcG4cR/99+k7Ih9
         p32hKHake6xuVNtxjSm/AUSetdVJ91IzROmyfh36tdBZnfMvLL4zgKZ5BdU/eBYIfkIG
         18c6zKM4vmO8L3W7pIRSj0zVGRfeG+5xT/eURI1UW6wUzoDTjTZ7MZJh/wm4TgRzw2kw
         usTDSdcAELaRrGMHI9+c0KEW6ap5inz8+YqUNwW5QovqHO9vh4ssv5CLSiGoqxJpehvv
         qXPg==
X-Gm-Message-State: AHPjjUifh/ZCDXTsnOkdPPN5UzpFaSI/no8FHUqjt1R1h0oWhXUzpnmY
	VXg0OAjxRzutaNkgNo8=
X-Google-Smtp-Source: ADKCNb69+5HKD0SdqsvTiiThQk0RanOi35jgQVP7Ov54Yza+cNdkTFFngjMzEQEzYQFNa58GpXImCw==
X-Received: by 10.98.9.84 with SMTP id e81mr7917449pfd.133.1505017656563;
        Sat, 09 Sep 2017 21:27:36 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id 77sm10085321pfz.47.2017.09.09.21.27.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 21:27:35 -0700 (PDT)
Date: Sun, 10 Sep 2017 09:57:32 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vc04_services: bcm2835-camera: Fix spelling mistake
Message-ID: <20170910042732.GA27064@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes a spelling mistake in the comments.
Problem found using checkpatch.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 63db053..db39900 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -130,7 +130,7 @@ int vchiq_mmal_component_disable(
 /* enable a mmal port
  *
  * enables a port and if a buffer callback provided enque buffer
- * headers as apropriate for the port.
+ * headers as appropriate for the port.
  */
 int vchiq_mmal_port_enable(
 		struct vchiq_mmal_instance *instance,
-- 
2.7.4


