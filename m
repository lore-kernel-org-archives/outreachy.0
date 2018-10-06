X-GM-THRID: 6609200682225369088
X-Received: by 2002:a63:84c1:: with SMTP id k184-v6mr6106533pgd.42.1538824448926;
        Sat, 06 Oct 2018 04:14:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:fe0a:: with SMTP id p10-v6ls2585186pgh.3.gmail; Sat, 06
 Oct 2018 04:14:08 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61BHOJPI19tiSRoQtpvkgWcdxC4SMPJTY2yK3THGjVqKfxNOdA1TdToaVTkRobi/A5id0zI
X-Received: by 2002:a62:46cf:: with SMTP id o76-v6mr6968144pfi.69.1538824448222;
        Sat, 06 Oct 2018 04:14:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538824448; cv=none;
        d=google.com; s=arc-20160816;
        b=Gdzvg1nBB//Tg4A8/WWiXxuTyh9xTlfrz0+cKgK7nm2NqCL0eSPpyitb/wniJcGbZ7
         q1OYjpiGVtxzHrbpLOBx8OS377VlQb76c/1iqUtWtqhYfc3QKEfDRuAslO6VtzVePBcP
         SDOdcwSWuzGkuQ59uhofVMuEy/kiFFZydK6Fksbhv+7XHxWMbC+a5tx9v/5rxlOhXq02
         FmfTNsOvUk/qAXmFNAqQvi+vxemnys/SVQ0GbroBslKqCJfnLCIkRZPsi/XTE7X+Nfkc
         tVBwSpp2yRh0CIQeZoenFSCDuGmVx8s6CN3CxchnU67Y+zLzMN3FTRcS1PiQ4cTe6VEw
         ZvnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rJH4e84JPQVUMo28+bgDoJcISRq6J7z/bG1ZruR3H3U=;
        b=S5BVmMvRY8lAm9W4Mwcm8XHKTXL7cD4BFrgW/2rxy7/UHlT+jwY9wUL4oqR6Dud2Fx
         8sT27/UqudDieD8ygBgg3K/3MXcvNWC0deYrPmzHDRzsQ1k9e8CBJuivbWo15sSgQTjj
         1IisTNfgFNkt5aHoj70/dplWYQm+7hPGsowFWUdMiQ4yGytDNqrvYLqGh6tudIBq4zK6
         gyhvv4epCf+RgXk2QoOyEwIwUOUkIxkd5zVXfAKA4NEbC0F42tZBvYc6zQGs5qUJAydb
         hYsVP2JoySLt9cKaaOVvhUzRwpiwZGXmgvncEecc3g+F3LogpwF7jzLmEzY0ZsC2T1P9
         QhhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TMcTug6L;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s138-v6si564017pgs.1.2018.10.06.04.14.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 04:14:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TMcTug6L;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id r77-v6so5835734pgr.5
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 04:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:mime-version
         :content-disposition:user-agent;
        bh=rJH4e84JPQVUMo28+bgDoJcISRq6J7z/bG1ZruR3H3U=;
        b=TMcTug6L1Gu9jYoCD0NZ/f0d8JDjwrFLm9sxcWA1ojoGIWHEDAP5j0fcy30dFpNIKZ
         IwoXEybXyuPvtvVH987f+g8arcfDA5fDDKrPME7fEio8IwzXf0Bgvj4Jc1wOwiNGb9hI
         Am20TT2K1+ZkSQ2/wlBvH0kRDIRH18BPhzMnqUmqnBh5neqfnMmuqnVyeLCROuI1bFOi
         l8J8lB4rVeeO+UusK6oNDUQNNED4+HkUX5vNugmn8zkoV687CRAw0dJ0HpvNB+wwDJCu
         /b0a/lZoYDtRiasxIjcIs4PZjvn1vi1f5N+6gbizXrAGzn+E4gUePSZUfPuFMoFPcqfw
         jB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :mime-version:content-disposition:user-agent;
        bh=rJH4e84JPQVUMo28+bgDoJcISRq6J7z/bG1ZruR3H3U=;
        b=AuaaUfbVzSRcC6DjEKCxOiQgKe2fjO8qkpnXjdV/KXT1wSHoUY1F8RzYX7yx4x3e6m
         MrbvbaV0nMPegHw+FJt5QEn1koYGZr87CvQ925HDsWJv+wUaC11M1BE6qSWD/bnblOED
         QIEN9ojIOpPqwzO/DAQGqSxo8n+NHiMDGW28Z5aJvuBWesrGGdst3CofU+RZALbTe1ae
         8NZoeyldsqsNzMOiR8p4DfWk2PPJOIwhUGU/xkP7leXzfAXtcbikO0Xb8E6WN2Cb9QnJ
         hQsD3Nj+B69iyuaNzzGIvcmXZcVNvXv40vI6uW47vyLi9cCZdbDr2spltboMZVXz5/an
         8wmw==
X-Gm-Message-State: ABuFfojuEqaKyhnYi4g9hl9E31D0cxra66yYG+mVDPOhykInTPMKFRXm
	McFkwgiP5/xi5c151mnxoFI=
X-Received: by 2002:a63:78cc:: with SMTP id t195-v6mr13724770pgc.329.1538824447841;
        Sat, 06 Oct 2018 04:14:07 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id s78-v6sm35409143pfd.138.2018.10.06.04.14.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 04:14:07 -0700 (PDT)
Date: Sat, 6 Oct 2018 16:44:04 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: bhanusreemahesh@gmail.com, gregkh@linuxfoundation.org
Subject: [Outreachy kernel][PATCH v2]staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
Message-ID: <20181006111404.GA13951@veda-VGN-CS3AGH-R>
Reply-To: himanshujha199640@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

comedi_pci_auto_config() function prototype is exceeding more than 
75 characters per line.Adjusted to 75 chars to improve readability
and also adjusted the arguments to match open parantheses.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/comedi/comedi_pci.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
index 4e069440cbdc..d89273e43cea 100644
--- a/drivers/staging/comedi/comedi_pci.h
+++ b/drivers/staging/comedi/comedi_pci.h
@@ -31,7 +31,8 @@ int comedi_pci_enable(struct comedi_device *dev);
 void comedi_pci_disable(struct comedi_device *dev);
 void comedi_pci_detach(struct comedi_device *dev);
 
-int comedi_pci_auto_config(struct pci_dev *pcidev, struct comedi_driver *driver,
+int comedi_pci_auto_config(struct pci_dev *pcidev,
+			   struct comedi_driver *driver,
 			   unsigned long context);
 void comedi_pci_auto_unconfig(struct pci_dev *pcidev);
 
@@ -41,7 +42,7 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
 				  struct pci_driver *pci_driver);
 
 /**
- * module_comedi_pci_driver() - Helper macro for registering a comedi PCI driver
+ * module_comedi_pci_driver()-Helper macro to register a comedi PCI driver
  * @__comedi_driver: comedi_driver struct
  * @__pci_driver: pci_driver struct
  *
-- 
2.17.1


