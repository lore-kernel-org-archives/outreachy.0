X-GM-THRID: 6669782350096760832
X-Received: by 2002:a5d:8c8f:: with SMTP id g15mr1760081ion.36.1552929717084;
        Mon, 18 Mar 2019 10:21:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls112133itb.3.canary-gmail; Mon,
 18 Mar 2019 10:21:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVv0itwYvx8XXPk3HBx1YVLJBpnpY6XpcevyaV58MawYnal5Gz/59MMokcvF9D7kk27PBD
X-Received: by 2002:a24:18e:: with SMTP id 136mr1381itk.4.1552929715843;
        Mon, 18 Mar 2019 10:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552929715; cv=none;
        d=google.com; s=arc-20160816;
        b=ksKZBEGSI6mA7WyoD9cMtPi5cXdadPJtG9WYhpcNczYPLUeHTimKNfoz/D+4qZbNze
         XCgC+S5ovlXiFPdwPC3EWZqJDYcj2uoGfpaRpyNhHujPfem5dg8COMSA2Was1rcuQTXR
         O/rH60D6GpAj01xXfJku52GpvcimFQZO9UXOKqGL35ylM8rtB6MTyZ21xWI3NRCoA770
         QOMBZ5zkbxAPcKZugspLE/i3u3J78GjThKlBnfG7KFtPFmnTtU+QO+n302Rbpb9jMZF+
         kJAeihMQlN8kAfCTDl+UolqucbZ8nDYxwzFyEUk/R31zKnaOiV7ts19gPPxP2lveSy9v
         3J9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=LfeO3LMyv2nke2ghBOVeF/3skmG/LByhfRUgfjwmZGQ=;
        b=fJCFCnMj1+EK06bHDD+aEtJcdhSg3y+Q/+TZoOFUOj+dU0iHkwQ+h4A9SkHOy/Vrwu
         44i+nfXSt3KryjJ3DbLWA9/6rhpwgYiosV9dsTkqMe8vN9CdwXceqq6axGLqavk+UVkm
         5vdIBEhMAWP3agckmL/J8nJK61U8sAGRa7yPfhnae2GQkYQmSnLjxXaLFgY1zr5m6oNC
         kg1OnUi9e6XbIc9umcC5+8UTjFFxZ3sBmyGrA/F/R3iD0SWQLYpxZJkiMhbVlOdp7UIF
         J57cPzAWHZpOTrVuoZD34jd2o0Z1YJI+EWKsqzjrFkt41j0Jnjvv4QwlcOJ6ESQ25Kfr
         iHrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNAdOz2V;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-it1-x129.google.com (mail-it1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id j2si618452iop.0.2019.03.18.10.21.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:21:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNAdOz2V;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x129.google.com with SMTP id g17so21682639ita.2
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 10:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to;
        bh=LfeO3LMyv2nke2ghBOVeF/3skmG/LByhfRUgfjwmZGQ=;
        b=nNAdOz2V2XwhTTX7pZKxtKOtjq3PaT4l6uJ+HsvF8oFgIDIDfFjeqLwyJB6zwvCR2d
         9kkZGIsnw9mUPsB8YiVR3R/k3AyUa9IfkEfgP+M7WD9P1pwOtctWz4qgRi4CyRYiw9+Z
         QRsgBxy45VuaJbnUBUP1TGcnbYuTbM/SLy7EOCk5ox3a4OS6TLh9j57kf44OEkD+C2ar
         rpzvw/T4r3382nkc6mxLwaCYwc+W9gQxIKKv4iq6n+GOJqAg+gX3fPuzDdfl4RH04wl0
         0FwvlFqnuBB5gXMIudRpwwJ0bAjCla3HIcDmhMrxm+VPDfzKPpdAMHvYLRIK87s1LQM0
         9h2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to;
        bh=LfeO3LMyv2nke2ghBOVeF/3skmG/LByhfRUgfjwmZGQ=;
        b=RazFMQNC6EuNzCITE6/2vUCIVUWHWNLT4zGxSNwe2H7EmmRWiBvsygR0JCF9YYxdf5
         xrdjm76A5c13VNUy2M/pEIqKQ3ZNcUowelQt75q44Jg7tXTHfB2MCvyZqRUzoMcgPU8/
         ptzlDOJ38oQOOuit8aSIirosC2EF8LBu5cisvSHHKRammnN135pOGfw/QGLkH80CIZ3I
         E9dYq7+nO+3VBKiN4bUNDFKG2VSgYioxpmZ59dQC8CtO4rnV0G2CWoNjJmEBtZKc0S+g
         /gHOlDLQEx7cxgVg4jMMFUxKKMm7jNl7wucS0eusINPmFUWh574b8g1lIdwrOH0muWkM
         I0HQ==
X-Gm-Message-State: APjAAAUYLFqyAczJsV9gWz0FW4qPx3Vstf/BRiPlBs4cPmQgEXgd/nbG
	CEkqtqTAs3az5Cv8yoxf/wR0BPqNI/h2
X-Received: by 2002:a24:4c82:: with SMTP id a124mr1973086itb.163.1552929715621;
        Mon, 18 Mar 2019 10:21:55 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:10b9:a837:3f7e:30cf])
        by smtp.gmail.com with ESMTPSA id o141sm450027ito.14.2019.03.18.10.21.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 10:21:55 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Branden Bonaby <brandonbonaby94@gmail.com>
Subject: [PATCH v3 1/2] staging: wlan-ng: Tabspaces in macro definition
Date: Mon, 18 Mar 2019 13:21:44 -0400
Message-Id: <4ac095466db03b6d17609ffac12a95a7daeb4df7.1552927880.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: cover.1552927880.git.brandonbonaby94@gmail.com

Remove tabspace in macro definition to conform to Linux kernel
coding style. Replaced each tabspace with a single white space.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 992ebaa1071f..da4e6db36679 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -517,13 +517,12 @@ struct hfa384x_tx_frame {
 	HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
 	HFA384x_TXSTATUS_RETRYERR))
 
-#define	HFA384x_TX_SET(v, m, s)		((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
-
-#define	HFA384x_TX_MACPORT_SET(v)	HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
-#define	HFA384x_TX_STRUCTYPE_SET(v)	HFA384x_TX_SET(v, \
-						HFA384x_TX_STRUCTYPE, 3)
-#define	HFA384x_TX_TXEX_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
-#define	HFA384x_TX_TXOK_SET(v)		HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
+#define HFA384x_TX_SET(v, m, s) ((((u16)(v)) << ((u16)(s))) & ((u16)(m)))
+#define HFA384x_TX_MACPORT_SET(v) HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)
+#define HFA384x_TX_STRUCTYPE_SET(v) HFA384x_TX_SET(v, \
+						    HFA384x_TX_STRUCTYPE, 3)
+#define HFA384x_TX_TXEX_SET(v) HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)
+#define HFA384x_TX_TXOK_SET(v) HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)
 /*--------------------------------------------------------------------
  * Communication Frames: Receive Frames
  *--------------------------------------------------------------------
-- 
2.17.1


