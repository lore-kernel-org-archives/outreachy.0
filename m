X-GM-THRID: 6332712433108385792
X-Received: by 10.129.153.69 with SMTP id q66mr358412ywg.96.1474558448225;
        Thu, 22 Sep 2016 08:34:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.38 with SMTP id x38ls5876149ioe.42.gmail; Thu, 22 Sep
 2016 08:34:04 -0700 (PDT)
X-Received: by 10.36.204.68 with SMTP id x65mr374670itf.3.1474558444909;
        Thu, 22 Sep 2016 08:34:04 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si845050pab.1.2016.09.22.08.34.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 08:34:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so3954447pfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 08:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=C1WkXUA5LF6Y6Xy5irrEgESAD4BR9OjsGV07tb0yZ4o=;
        b=yQuD56YqSOG6dSwFaimgl3e+gh0pM0rYw4Rd6ypBcXfOiAwgoUPOIZE3T09yrSW0BT
         wsD+vgNd+3OpME4NyAaSCsw8KBT+O5h65IDCEdSuvifyrtWrinVgjPv3hxLl7UAXncL5
         6cghP82DS6quHUjIJlxccQW30OfFlsOFMK+dC0FdXoYy+LoMzalpZi2h/7pmVvui3FH4
         KBnzZnBDBiOy8Z+qUeWsCnHCISte+l3ZzRYqQxca8Z26Sz5nhQTO2ekJor9yaWgAsCTn
         m9MDhJ/q9uoAks+C/G3uj1E8v64YW1OcJejLAr8aWrEjbSrTpKxgkA7928hp2ei8SuFe
         b8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=C1WkXUA5LF6Y6Xy5irrEgESAD4BR9OjsGV07tb0yZ4o=;
        b=EMKZBUDE88ayoEsqDehNEpOXNAXblI48tb0NTOV9TjO/ehbulOP105dbCsPlgfRSZ8
         y7vnmNA5E8rTawAj68tcqnskr3nO5AqiiYdo4MlsBpadmik6K+x1vx1r7nyvx8Af+wms
         F1u4NsME8XXBR4aaaQj4tTAWunq0jWAMBsw4gbRFUcTzNOCLQJSB4nZHSDQCZsCmxUE3
         J7+luNFyCW2INPXipbbbxBp1TNG4HxHtbWNillHT9o9x+qWVfVU2lyFTT0tjqfi9jDCJ
         bpBDfGkDdcN4lTmpz039mtnZpXQmzL41kFhDvw0WP0pHs3n+X9zRKR03ru2Vww7v8vYu
         CbQw==
X-Gm-Message-State: AE9vXwNIcS8JVlE6MF1lyL0dwsumOs1trn6Jdd5LO3zktvaZxSQsa4GkQ8OwjCUYZTM8bQ==
X-Received: by 10.98.93.85 with SMTP id r82mr4290314pfb.168.1474558444736;
        Thu, 22 Sep 2016 08:34:04 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.59])
        by smtp.gmail.com with ESMTPSA id s7sm5078020pfk.11.2016.09.22.08.34.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Sep 2016 08:34:04 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 0/2] staging: greybus: declare struct of_device_id as const
Date: Thu, 22 Sep 2016 23:33:32 +0800
Message-Id: <cover.1474557838.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4

Address the following checkpatch warning:
WARNING: struct of_device_id should be normally const

Change in v2:
* Explain in the commit message why the change is correct

Eva Rachel Retuya (2):
  staging: greybus: arche-apb-ctrl: declare struct of_device_id as const
  staging: greybus: arche-platform: declare struct of_device_id as const

 drivers/staging/greybus/arche-apb-ctrl.c | 2 +-
 drivers/staging/greybus/arche-platform.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


