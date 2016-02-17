X-GM-THRID: 6252303404941443072
X-Received: by 10.182.120.106 with SMTP id lb10mr2439711obb.24.1455727826500;
        Wed, 17 Feb 2016 08:50:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.96 with SMTP id s93ls2091741ioe.86.gmail; Wed, 17 Feb
 2016 08:50:26 -0800 (PST)
X-Received: by 10.107.167.148 with SMTP id q142mr3865039ioe.17.1455727826163;
        Wed, 17 Feb 2016 08:50:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id yd9si316908pab.1.2016.02.17.08.50.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 08:50:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id e127so14289542pfe.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 08:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5f52Y6Qgi4cTYhhVt8O0EDEcWGsf31QkjTFlbMXQyz4=;
        b=oarMkqZ6x9LtEwinHtV6ooRnruxvdQNOrMWjz0AiVosY6SXYlZkrKX8rv3/5HoeN5c
         2f4NTepKXaDsxGGvDs+jGn0uOlH2+Boh9ZWC5+ubXYdpsKqc5bIGbrsHJ90UK2zoiEsF
         OpdLxkNmukMrpFqslbzIh2MTW+xGdhAaqSYCT3TBPJOGomtolIz8wZz3xMMx2Q748ZVQ
         y5z7RaTbdkI0Nzx2Se4DF/3lMabbNIf19RzyPt2zBzjgLU/Fi1OomLe1EWWB2nGXhpX8
         zJ4T/NCZVi9IHhFxext9wurDRRPfrgxqxTBP9bAvzvoGgpVH5KmdtIydnKRODU8iQWKW
         nqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5f52Y6Qgi4cTYhhVt8O0EDEcWGsf31QkjTFlbMXQyz4=;
        b=eCY5XuNscm7vg98UaAlTDEazKvAbiBHX1t+V1sWRO+uXbkAJzyUDRVrKzPr/ninT5I
         MCodHoC7k9iYDBcIjF1cRIFC4N2nbXIUPkzB8Yhsy4q22GsZx6g81VinR5Krr0IYSTDK
         0I5euGUsAk4g51qBzUSQZgSmOVSIeckjIfrfA+iVTTl7Rs+Z3Rlw4r3DGRzd7zdBCbMU
         /GQd/S5OvgFUnT+VAurlqf1aO5YDYnp+O3I6WWKZKAT6CT2GopIb4Q3gYuHWGzwqN4ja
         UcPfcz7xKB5YM3xEvEsPkFDYeBzaA5+DPKNcwpJmBc2ltnNjZLv6Y5g7nFqctIthMVSZ
         Zu0g==
X-Gm-Message-State: AG10YOQFw0x1D05p2YqqG40UdCEbhD0+2ePiYqQ1VMF+0oXpHuteP1X7n1kN+Kag415yyA==
X-Received: by 10.98.74.202 with SMTP id c71mr3499247pfj.25.1455727826058;
        Wed, 17 Feb 2016 08:50:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.146.252])
        by smtp.gmail.com with ESMTPSA id c9sm3872868pfd.90.2016.02.17.08.50.22
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 08:50:25 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 17 Feb 2016 22:20:10 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 0/2] Staging: wlan-ng: Remove unused functions.
Date: Wed, 17 Feb 2016 22:20:07 +0530
Message-Id: <cover.1455726533.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The functions hfa384x_drvr_commtallies and hfa384x_drvr_getconfig_async  
are not used anywhere in the kernel so remove it. Also remove the prototypes 
from the header file. Also remove function hfa384x_cb_rrid and its prototype 
as it was only used by hfa384x_drvr_getconfig_async.

Changes in v2:
* Combine patches 1 and 2 of v1 in a single patch to remove function
  hfa384x_drvr_commtallies and its prototype.
* Combine patches 3 and 4 of v1 in a single patch to remove function
  hfa384x_drvr_getconfig_async and its prototype . 

Changes in v3:
* Remove function hfa384x_cb_rrid and its prototype as it was only used
  by hfa384x_drvr_getconfig_async.

Bhumika Goyal (2):
  Staging: wlan-ng: Remove function hfa384x_drvr_commtallies
  Staging: wlan-ng: Remove unused functions and prototypes

 drivers/staging/wlan-ng/hfa384x.h     |  4 --
 drivers/staging/wlan-ng/hfa384x_usb.c | 74 -----------------------------------
 2 files changed, 78 deletions(-)

-- 
1.9.1


