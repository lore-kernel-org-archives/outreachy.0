X-GM-THRID: 6336120731935440896
X-Received: by 10.157.54.174 with SMTP id h43mr1771823otc.140.1475243068588;
        Fri, 30 Sep 2016 06:44:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.202 with SMTP id z68ls906179ota.47.gmail; Fri, 30 Sep
 2016 06:44:28 -0700 (PDT)
X-Received: by 10.157.45.200 with SMTP id g66mr1846563otb.84.1475243067953;
        Fri, 30 Sep 2016 06:44:27 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id f12si4640983pfk.0.2016.09.30.06.44.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 06:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so5038097pfl.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 06:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mOprhY0P5xgXLZGOVyIPPyRPLGlP3YndqZNwxiVWpRo=;
        b=TiBIXHpRlFtUjyLVvCPxNENIuoQUrBngqAoJRA/undc41Bngey8RVN4/MovdOFJmLE
         m6suv6UMk0vxYH2HEJIXANt1mozP/JZep87/Xs6rHYI3kE6PxW+tkSXOOH4SoMrGRBHK
         6gpf9pD3/ciEzymXc7LP7YxJQ2opTJ/Ff3DzuP3TxBQKfNmHfYC0BLI9Rl3DB/qWHiui
         r1qHpfR0ucv1yDYhEm6IdNoGhRpdZMTKONc4qxMjpKwi9VRNiQdfuWXU33zER8WTDEcD
         rg7Boqr2Lbu43PrRswHdk170cP8BW/TNrOU5aShcvF26slJWPh+65t3SrVj/03/finHu
         HaRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mOprhY0P5xgXLZGOVyIPPyRPLGlP3YndqZNwxiVWpRo=;
        b=DT7fOvN2pdY2SfqtXOfbjXriZLpkuxvzD4uPrxTckiqUo6S1r10RyYqgylnG6xAETN
         ux/mEtil1YmXnVhSh5wW3I3WlD533RukR3/4O8t9XXbGnVAt81YrDgnua5HmX+8sRAKC
         5Lf7ZG33DQFCTxL3b6oukSiOykoANQCB8uCSwbi857ABF3hZfHZrWCIHucl0RuU5XTDb
         HcvPXpfCIlXzjkCFFeccnXqPMcu+G7KK+kZhlWEZ9+HR9aexfWylA9WM8rOhz70HGdQz
         PphYuxq6SgyHJvdqC3V/QvJwyS1ANiCR3fMyadLTT+/qRCz7pe0Q+Zu08QgeEvTtyd3A
         ZGgQ==
X-Gm-Message-State: AA6/9Rldh34lykN57lQj/ePx96Py/vM3Lk7U9/rkduTy9AHQUUJIp/TH38uk2WjAbYwBlA==
X-Received: by 10.98.103.8 with SMTP id b8mr11801008pfc.122.1475243067759;
        Fri, 30 Sep 2016 06:44:27 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id c64sm21830928pfa.0.2016.09.30.06.44.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 06:44:27 -0700 (PDT)
Date: Fri, 30 Sep 2016 19:14:22 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/3] staging: wilc1000: Fix multiple issues
Message-ID: <cover.1475241561.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix issues found in wilc1000 driver found using checkpatch.pl and
coccinelle script.

Namrata A Shettar (3):
  staging: wilc1000: wilc_wlan: Compress return logic
  staging: wilc1000: wilc_spi: Compress return logic
  staging: wilc1000: wilc_spi: Remove unnecessary blank lines

 drivers/staging/wilc1000/wilc_spi.c  | 28 ++++++----------------------
 drivers/staging/wilc1000/wilc_wlan.c |  6 ++----
 2 files changed, 8 insertions(+), 26 deletions(-)

-- 
2.7.4


