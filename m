X-GM-THRID: 6609200682225369088
X-Received: by 2002:a17:902:468:: with SMTP id 95-v6mr8797445ple.26.1538852571954;
        Sat, 06 Oct 2018 12:02:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:9f13:: with SMTP id g19-v6ls3593443pfe.2.gmail; Sat, 06
 Oct 2018 12:02:51 -0700 (PDT)
X-Google-Smtp-Source: ACcGV639UZn0WiwE3feZavhomcJmyVLVkTmDLHHS6kXFih+kLMtHLzQd3NFIiGYzxzbe9KNABMdu
X-Received: by 2002:a63:4f23:: with SMTP id d35-v6mr6686794pgb.8.1538852571125;
        Sat, 06 Oct 2018 12:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538852571; cv=none;
        d=google.com; s=arc-20160816;
        b=nHLcZYkUWqgq4PO0DP0tDh0eqbdjSeV1ax8u+6Qzo/oG0uAGQNNMKLxK/RR8+pEQwz
         tuySCL/QmzYKqb/KRS7CjyikOWrANxeRjIEAke26tFkuK/1l661GBsh1cSIFSY7bPs65
         jcX3oXKxZatO6to4VtWUzIOO0OF7wAaXMWihGVkSvF9y/R8iRSnIbECEwS+cPAPslYrS
         J+1NxNkeFIthUpEwG4YSlERSi3nUWijIYT2owt6MoSxz74J6kgejHZTi/dPwIuTpBjit
         Pq8JZIs8v3jvFsL78f/qJOrki03mVm4lrUcgE4wCQoCHGEy3u25OQJ2UFOpkhwmkUZS6
         PfqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=GyMSRM4PrRmoRczGhYMKfzn7GQVsOGIQ699pHJ88gW0=;
        b=NwMBwMmXl3tFeyOUT98Hen1iwVOzLmXsabLbLp0K2YNCOwzB2Ulb2UJO6VuQBOcW/9
         8qRrv/cVwf9A1pA1f5pQmZuDpTHwmhpjyVkiara17odaxLQGig88UzuriD5ODOkBSspv
         NRiCkbCjVD23nUgopV2GzHogCUk0jHTvKGbxMo26MvunjRX6rtEHSEV15rFwSEYuczjJ
         p3y3A0K27+IuVyx7Ntc7JN2C45IhuIJyOH2TMcJ7Jwjd0K/cPcXh6KYj2I9kKGuFexbZ
         qVBQ3Fg7WLNS5qYV/qIiDwFzHNBJyya18UHkgCOcLrXBA437beX0TEeHoLVpa2LfwaJE
         kLNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AnxPrfLh;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id c4-v6si421956pls.4.2018.10.06.12.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 12:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AnxPrfLh;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x632.google.com with SMTP id w14-v6so8288356plp.6
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 12:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GyMSRM4PrRmoRczGhYMKfzn7GQVsOGIQ699pHJ88gW0=;
        b=AnxPrfLhUGtBq8HYU8nxR6+zJ9FTRhY1Xi3uTIyFH4nBMfg2DS2cqVuyD2FUxQ3zpB
         ou7s/m+N51SIhrBsufITpyud69zonzMjhdkpfE73wuSlXhp2bGidyVvPvkD3DCvtef0a
         VzD83TVJb5rwEh71t3lpCtkFOUiVvVUhIy3t8vMgPQN7USS7Hr6ufVUJTcesgyGgXuvh
         /CdO4T59cYgMwu/leaGJ9JT8WE2xOISDbi6WDtk3JWTYnW8QF08MvVxz/SMYzeCYAhbZ
         +Svlbf8ffsogrmjsw6rofH/ki1UjBssnMSZeCzvE2x4PKst+A8acCe4XX+RX8u5Y7cnx
         merg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GyMSRM4PrRmoRczGhYMKfzn7GQVsOGIQ699pHJ88gW0=;
        b=ZtVrQtWSenJqJhauXT60P0rjKg7vOxDJ+tkZ7QXdA8LbYrqeE+djGIs1GL0/q5+1AC
         4N3iw2SwaxE2lDnU/FyL6svsLKrpSG7ZcioWyKOisuaJNZtEtLOJaIqU/wcSFyBvTQyG
         NTPcPHBnGCRH1KHTC23A8HnqL31yahf3+VIgdf16X90J3z03ldI3Uh82+n/MbU95jMTN
         LbgnYtyq/bEpfmPRQ531EYLX8X5sHOTygncZh121vWjRknh1oCJM3hUijyBgH1kdQRZb
         IYTJ+oCn3yITZXfyTZnf4nUNvzU+IMWyl9+6mzPaNOHGyfQqrOAIOnkAYVN3foOOa/w6
         4V6g==
X-Gm-Message-State: ABuFfog1+WynViQLB8u65SdxT0SLxJOHHoXNcMXPRF6wL2lfUxWCksz6
	uXZlhm0C/ZZZ39lCVttZ+OWE4OGkH/c=
X-Received: by 2002:a17:902:7613:: with SMTP id k19-v6mr11414768pll.98.1538852570809;
        Sat, 06 Oct 2018 12:02:50 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id a2-v6sm13379764pgc.68.2018.10.06.12.02.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 12:02:50 -0700 (PDT)
Date: Sun, 7 Oct 2018 00:32:47 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk, gregkh@linuxfoundation.org,
	hsweeten@visionengravers.com
Subject: [Outreachy Kernel][PATCH v5] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
Message-ID: <20181006190246.GA14037@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Adjust all lines exceeding 75 chars per line to fix checkpatch warning. 

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

changes in v5:
-Fixed Change log
-Change in subject line.Do not send as 'Re:'

changes in v4:
-Remove Whitespace in comment section of module_comedi_pci_driver()
 to fix checkpatch Error.

changes in v3:
-Comment section of module_pci_driver() exceeds 75 characters.
 Adjust the chars to 75 per line
-Modified log message.
-Added change log.

changes in v2:
-comedi_pci_auto_config() function prototype is exceeds
 75 characters per line. Adjust to 75 chars to improve
 readability and also adjust the arguments to match open
 parantheses.
-Comment section of module_comedi_pci_driver() exceeds 75
 characters. Modified contents to adjust 75 chars per line.

 drivers/staging/comedi/comedi_pci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
index 1cc5436cb415..7291d3c0b7dc 100644
--- a/drivers/staging/comedi/comedi_pci.h
+++ b/drivers/staging/comedi/comedi_pci.h
@@ -42,7 +42,7 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
 				  struct pci_driver *pci_driver);
 
 /**
- * module_comedi_pci_driver()-Helper macro for registering a comedi PCI 
+ * module_comedi_pci_driver()-Helper macro for registering a comedi PCI
  * driver
  * @__comedi_driver: comedi_driver struct
  * @__pci_driver: pci_driver struct
-- 
2.17.1


