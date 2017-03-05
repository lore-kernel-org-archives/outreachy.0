X-GM-THRID: 6394061646033059840
X-Received: by 10.129.178.4 with SMTP id q4mr5254879ywh.122.1488733488757;
        Sun, 05 Mar 2017 09:04:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.210 with SMTP id 76ls12832699otf.33.gmail; Sun, 05 Mar
 2017 09:04:48 -0800 (PST)
X-Received: by 10.129.169.10 with SMTP id g10mr5152055ywh.165.1488733488067;
        Sun, 05 Mar 2017 09:04:48 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r66si937583pfb.7.2017.03.05.09.04.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:04:47 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so10669938pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 09:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DjDBQZ6uHyQIGooxHYxA6lbeuNJG6FY1D1TxGokhZBc=;
        b=jtf4pezyTJcSiIU5hBpzx/sfFzDO9Z3qgodNIwD05XfbkPWnTIXRobpoGdTTpHHNAx
         w0rwNNp2MMEp74/Y4YUizyFImTAP/RA3BaF8djTxWjY4tp4gTmoz+U9ieFgdPBMMK2B8
         4CbBIonKbIqxOWT86dyN+FtY8hvZKU90aErQwWfjkwXr55qEvygdpLqJ41HLw24pDqpL
         hxioV6lb5yI/o/+cBFANdlTOyWKyfaa1GI9LtJ6d9ed7u7Oh0ubQe8PfMUUkHKZ3nd2/
         BOJdTiI7YNS0rT0OximrC9/iCcwZaX1OIAneVqS1uO0H/LTCwumDTlA/KKthkeEPnokE
         j1Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DjDBQZ6uHyQIGooxHYxA6lbeuNJG6FY1D1TxGokhZBc=;
        b=Lc90NEHS56UbK+X0vzXSWW9XbjSZI5SdmOevR9Kef6u7M4mLn+2r3zT1vLtwsVJHSL
         Z/1Bc205BcCl3pzaqR6zpLCx80OfRl1VrJQAMu8qsJGQVRqGvR/bxx0jTPJbTShrvmsH
         1DcdT8V2cTOR805tsIEac9WPOgs21Bm7N5hCMN+i6kIQsqIMUZwRnYNbktX6nhsW1UWc
         grUu5btMPEw64L2Di2ufevOxMOSUk5tzqtIneITX+ZBy5TviPU5KDhEfYwkQsfR6PWQx
         CW6AYv2xXthVt78IAb49nSh4L4HPJBzn3d8NcQeRxZBIUdSZS03Ik4A8SUXfqIIjDfNF
         +m5A==
X-Gm-Message-State: AMke39lyM9k2xGPr1ZtaW6d6mqVTLTiuFgE4RVQtUvY5e113MmuXNpZXuUbUrITLKlSm3w==
X-Received: by 10.84.239.8 with SMTP id w8mr19793340plk.73.1488733487853;
        Sun, 05 Mar 2017 09:04:47 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q90sm34515181pfk.73.2017.03.05.09.04.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 09:04:46 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] Use list_for_each_entry_safe
Date: Sun,  5 Mar 2017 22:36:45 +0530
Message-Id: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch-series replaces the while loop containing list_empty and 
list_entry with list_for_each_entry_safe.

simran singhal (5):
  staging: lustre: Use list_for_each_entry_safe
  staging: lustre: ptlrpc: Use list_for_each_entry_safe
  staging: lustre: osc: Use list_for_each_entry_safe
  staging: lustre: llite: Use list_for_each_entry_safe
  staging: lustre: osc_page.c:  Use list_for_each_entry_safe

 drivers/staging/lustre/lustre/llite/statahead.c |  5 ++---
 drivers/staging/lustre/lustre/osc/osc_cache.c   |  5 ++---
 drivers/staging/lustre/lustre/osc/osc_page.c    | 11 ++++-------
 drivers/staging/lustre/lustre/ptlrpc/sec_gc.c   |  5 ++---
 drivers/staging/lustre/lustre/ptlrpc/service.c  |  5 ++---
 5 files changed, 12 insertions(+), 19 deletions(-)

-- 
2.7.4


