X-GM-THRID: 6394514785010974720
X-Received: by 10.99.98.193 with SMTP id w184mr5546784pgb.83.1488838993009;
        Mon, 06 Mar 2017 14:23:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.77 with SMTP id c74ls4967403ioe.29.gmail; Mon, 06 Mar
 2017 14:23:12 -0800 (PST)
X-Received: by 10.107.50.198 with SMTP id y189mr7013712ioy.81.1488838992179;
        Mon, 06 Mar 2017 14:23:12 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id f73si333318ita.1.2017.03.06.14.23.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 14:23:12 -0800 (PST)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id 68so16501726ioh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 14:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Gzc5qIRGil5scbV7OZiWEP56CqpE9L2KprbpshK/xPM=;
        b=HkCPPk1dNOEwIzBkAQzvZIhi5am54cv6Gx/wRhr6u2T2B0LcSxSeP/gaRQ1ZHf0Oyd
         seI7Lfmog9AFcyr/zRn9aoKKFJI8ftvpV/nPfZr7e8beNPqaj2JUdjQrV1pJIW3FLxzq
         V8c3qZyMHPnG9bnsg+F4R+majJrg/WyxolE0lVyY3OJ4eIGyA2fV9hqt087YwUaoaR4O
         RlSd6J5HF2WwMq3VCmNx6CapX1Ij7bp5jxXxd9iUNqIZvuhy3MntqqgYk0NJuf5KVcZs
         TQdEAbV9HknLaAKTASwSRXQHrCIiJ9RL77625xXFT6ebZtAlteDZ9wAQfMpN2ReVewwW
         yfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Gzc5qIRGil5scbV7OZiWEP56CqpE9L2KprbpshK/xPM=;
        b=sz71NBVFwikorqnYG6e3NILeoGmePagXkk34s5m+p8NVjBbcVWRhGdvSOjq0UWXUR3
         GR9w2ySrsk4GlcYR4FhPT4quJoKFb1XsMjsicv2wENq2uwK+rryGjMuOFhQ3G/9589cD
         66L5Nxe8gErn+1dacL8T3r7ttn/ez29lLP83alRfHQMlsEfbNPt5YKlFmFdc4aUdCLXo
         pXRioJ7MXNNQGEuuTBZFSqA4uqC2IhrhdSncCUFY0RsKtx1q2HGLx+BlrooPMQUkibtW
         PocUGcf9hTYpkj0rLd3S/g2b1YFuuwVRNMNzuTXTQDvIqbUxHZDnRxyabdH0O2fb5ioI
         E1wg==
X-Gm-Message-State: AMke39nIxOOjC+CkTpB4IpvFHemg+P6zwynnXXpe3qbLlgGYMsPWhK9T4KcOhXYJd8aaiQ==
X-Received: by 10.107.30.213 with SMTP id e204mr3772505ioe.203.1488838992041;
        Mon, 06 Mar 2017 14:23:12 -0800 (PST)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id l79sm5484239itb.24.2017.03.06.14.23.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 14:23:11 -0800 (PST)
Date: Mon, 6 Mar 2017 17:23:10 -0500
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: [PATCH 0/3] staging: wilc1000: renames multiple camel-cased
 parameters in wilc methods
Message-ID: <cover.1488838177.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Multiple camel-cased parameters renamed in wilc RX buffer 
manipulation methods. Originally reported by checkpatch.pl.

Tahia Khan (3):
  staging: wilc1000: Fixes camel-casing in wilc_scan_complete_received
  staging: wilc1000: Fixes camel-casing in wilc_network_info_received
  staging: wilc1000: Fixes camel-casing in wilc_gnrl_info_received

 drivers/staging/wilc1000/coreconfigurator.h | 12 ++++++------
 drivers/staging/wilc1000/host_interface.c   | 30 ++++++++++++++---------------
 2 files changed, 21 insertions(+), 21 deletions(-)

-- 
2.7.4


