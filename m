X-GM-THRID: 6398122324579581952
X-Received: by 10.46.8.90 with SMTP id g26mr1490846ljd.16.1489678939657;
        Thu, 16 Mar 2017 08:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.143 with SMTP id u137ls431629lja.51.gmail; Thu, 16 Mar
 2017 08:42:19 -0700 (PDT)
X-Received: by 10.46.20.16 with SMTP id u16mr1504392ljd.23.1489678939189;
        Thu, 16 Mar 2017 08:42:19 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id l138si360408wmg.0.2017.03.16.08.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 08:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so10380270wmg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Mar 2017 08:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=h+A5s2+wvgXCBG9TWCbVZWx4MJvTBVL7f+lofmSfS5k=;
        b=m5Ui9AENo86w9SvFUTLnAvP3hMADl/VMCShZkDV1DjaRgzKp7FnQOo98zHabTlzV/Q
         0ESgoT7TIbP5rHk91syOkJZ3YwCw1s1TTTJ3Sryr/YubMp64t03u9l8San3UnIggUaeA
         xbvOo8MCFfRK4DgMJiXZ0up+N79b/1d+a3uZUxe2Wyqe6vtqBA2Z2bRWqNUcUvBCjMLA
         ZBCPA0S1SKoKTkEdpwMLnwOY9cDECEnbak3WTLi0d+txQd5HCuMZT1EbzKUzolNl8ejU
         GDAvkSaPc6E48wOOH8R5fasJ62ST/gRVF7oQTFypYRrE6qYVA6hWNpjFTuW7Z5JLbRa6
         v8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=h+A5s2+wvgXCBG9TWCbVZWx4MJvTBVL7f+lofmSfS5k=;
        b=aadCwWLdQ4cj8maZhAPwS6sMq7s45MwI4yNU2bNHjstWCamFCBU4Z5rmvJQJNiGM3Z
         SJhLDpvr3miby9JzNrFwDR0lqr4jSaezQVebzPVf+I+TfsLMG3Idr3i1PQDiEdTiQ+C/
         EETa4YtC+H9CCEvM0c034nc1zbUf6BDGCPpgF9LqfSDk+SFeHtoZLortVzw+eLLVUzaZ
         tvsffpuFXxI84VNKl7V37aq1Sr9MbTB0bWKv+nFGg/BKyvAfSAxvXeSZToR1eeiRljtk
         9c3qK72i2QLiB7PGSxk2FTu38WUbzpUEYebtDnPel4IRmQWIXrA0FL3B4FoFRVxuYNJW
         vaSA==
X-Gm-Message-State: AFeK/H2/23BbDJMWgupnRTOo0RLd0QpDkw866tZYKSNfutPRt+TdvvThwY0ulpGLcAVjjg==
X-Received: by 10.28.56.134 with SMTP id f128mr9576973wma.29.1489678938976;
        Thu, 16 Mar 2017 08:42:18 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.225.204])
        by smtp.gmail.com with ESMTPSA id h3sm6632596wrb.6.2017.03.16.08.42.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Mar 2017 08:42:18 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	outreachy-kernel@googlegroups.com,
	linux-doc@vger.kernel.org
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] Documentation: vfio-mediated-device.txt: Fix typos
Date: Thu, 16 Mar 2017 17:42:16 +0200
Message-Id: <20170316154216.19125-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Correct spelling mistakes in vfio-mediates-device.txt to make
documentation clear.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Add file name to the subject of the patch.
*Changed the description of the patch.
*Add one more change to the file: from 'using a minicom' to 'using minicom'.
 Documentation/vfio-mediated-device.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/vfio-mediated-device.txt b/Documentation/vfio-mediated-device.txt
index d226c7a..6f994ab 100644
--- a/Documentation/vfio-mediated-device.txt
+++ b/Documentation/vfio-mediated-device.txt
@@ -380,7 +380,7 @@ card.
    /dev/ttyS1, UART: 16550A, Port: 0xc150, IRQ: 10
    /dev/ttyS2, UART: 16550A, Port: 0xc158, IRQ: 10
 
-6. Using a minicom or any terminal enulation program, open port /dev/ttyS1 or
+6. Using minicom or any terminal emulation program, open port /dev/ttyS1 or
    /dev/ttyS2 with hardware flow control disabled.
 
 7. Type data on the minicom terminal or send data to the terminal emulation
-- 
2.9.3


