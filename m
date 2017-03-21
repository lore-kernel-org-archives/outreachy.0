X-GM-THRID: 6400014269629333504
X-Received: by 10.107.152.149 with SMTP id a143mr4992456ioe.30.1490119441370;
        Tue, 21 Mar 2017 11:04:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls15783404ota.23.gmail; Tue, 21 Mar
 2017 11:04:01 -0700 (PDT)
X-Received: by 10.31.169.133 with SMTP id s127mr610333vke.3.1490119440972;
        Tue, 21 Mar 2017 11:04:00 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si3481853pfb.5.2017.03.21.11.04.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 11:04:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r137so19309583pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 11:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fpUa4+mcO0qKp5da68pbbhkgsNfJ43zvkdodao9pih8=;
        b=prdfKDXzIGPCwQTTboc2OigtQqxFt1Eqty8Upd958V+4gFDXMbPQS3IKo2hC4L1Q49
         EU38vmeSK7U94/w8L2YqcPHCZNnJHFw4zBbnWlU/WKg8IxX9eMoselPLE/daqxTQaoWP
         JK2SFTHpamBcL+jzmxaIdcYNvd8iFWoWBwtAxYjS+9lZnwCEJmL3klmrUOkfmsSq8V67
         kJv0NmoUBZa/bFJi5E/fr5adH1DYzZ7p/x6aictybI7giOVmJMTxDw+qO+PMaaU8Sa+o
         hlv6grUhJGwZW4+f2GQ+3lAqFHix0DXqfSA8B25FkYG9V6/qjMWqNfkAy6KfBUx33Zcu
         uR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fpUa4+mcO0qKp5da68pbbhkgsNfJ43zvkdodao9pih8=;
        b=M/V/SayiHHMWillB7SdzWzw8QffFDWiD9YU/w9b0SR9OuCbGRDlCeh7euALlXb09HE
         d0P3E8b1+Yah6d7NdWrEfpjF7AV3yUlYoM9wc/LQXVlCUi1mNXy0u1PCssPuJLJUcpyV
         AY2seBfLLj4x0yBuPZh31VEcmfnj+BibkBvDVP5XNfgwl+teLvwzJ1f6GQ6VRQ0BnmOE
         Z/rBGQ6BUhElp6QqGYJOTBWBwrJsK9K1jHJTRF8w2Wf9AV4E1RLGkHqbj5Xb5zfQ3vW8
         AOS1qU6S79sslwxGnmzLKkxxe8uO5jZuxAUMNbtWXyQnCPftzKgYiAEe2RNl0Ke2cYXQ
         AcIg==
X-Gm-Message-State: AFeK/H0RbWM2HISaTeL0tTUBm28BJZjG/qtr6liYO34jjISH+DnsUToFDbeLcHb6OIM99A==
X-Received: by 10.98.156.23 with SMTP id f23mr41344846pfe.3.1490119440735;
        Tue, 21 Mar 2017 11:04:00 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o125sm40888387pfb.109.2017.03.21.11.03.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 11:04:00 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Replace mlock with private lock and delete whitespaces
Date: Tue, 21 Mar 2017 23:33:54 +0530
Message-Id: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

The patch series replaces mlock with a private lock for driver ad9834 and
Fix coding style issues related to white spaces.

v3:
  -Using new private "lock" instead of using "buf_lock"
   as it can cause deadlock.
  -Sending it as a series of two patches.

v2:
  -Using the existing buf_lock instead of lock.
   

simran singhal (2):
  staging: iio: ade7753: Remove trailing whitespaces
  staging: iio: ade7753: Replace mlock with driver private lock

 drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

-- 
2.7.4


