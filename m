X-GM-THRID: 6398158236087746560
X-Received: by 10.46.8.90 with SMTP id g26mr1609494ljd.16.1489687300558;
        Thu, 16 Mar 2017 11:01:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.2 with SMTP id w2ls486030ljd.48.gmail; Thu, 16 Mar 2017
 11:01:39 -0700 (PDT)
X-Received: by 10.46.22.86 with SMTP id 22mr1623361ljw.9.1489687299318;
        Thu, 16 Mar 2017 11:01:39 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id b186si213204wme.1.2017.03.16.11.01.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 11:01:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id u132so10991370wmg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Mar 2017 11:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uSQBhHwV4j5EJ0L9jHAgWH39IeJ6kfm83ECZmH7Mils=;
        b=sezR+gxAS6mGTesRnFoIj0tgieAC0rg6BqRlqR9Io7UgZ7OUNBt6vlPYMhyhBHfGIL
         y/uNVBYFrSpddCljKKEV4tLzDtZGNTis+F96aHlKi0tSMjGLhf7V8rD9mm8Ybj2cIMdf
         0M55Qu7qU+RNUsaocDCYQLk++VaR/P7clLgLeYSidiLktPSwM6/sJsvMQhbKEFPJMtgo
         M+sljSkvTgLX8NnGzabU+eRCpe6jTHf4QFcGkFHRzhbblURLFQ99YEGMSO4q/f36Qv/j
         ATjmu3PWX2zJVbKtM66ni5VkOJoKPbgaARpRUg3CJrvvfnhLArOqCKiPnbJTItWPrZ+q
         FE/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uSQBhHwV4j5EJ0L9jHAgWH39IeJ6kfm83ECZmH7Mils=;
        b=Fp0EalEH7wj/1X8yCl5HkQ1Cz+11iuInmacxjiZ/tJsA+avZP8piTla1A5gMDBo1h1
         3I7Ai3SS4UoNhG4/INX4ZLD9sKe/2IkdAkKgaX6BZXTdnPAVgDT54Bna3Wbculs66Ww0
         MA9jTiDRGxk2MJFeLFLr2F7ToVctpJ3raQP31LWuy4sG6MASYmmTlY0bOdqX2IBElZgn
         Qv0XW5YyBeDJ4kCSrfwRkmvnU0Ek7HkeDDa1mibSIgEFDQQEFmg4cfVVYEqfCVCUzpYV
         BFwz3zkW+OHO7U0Puh9GmK75FeZRlduQ5mY+Yquo32EtA46FmTonV3cnGJlI8xSXgcpD
         0Jzg==
X-Gm-Message-State: AFeK/H1yFqoLy8vAyYWiAaOb+9up07rHE9G+CpXn7zceHXiMd75ZPuQGJF6ViwxCqGhZUw==
X-Received: by 10.28.0.136 with SMTP id 130mr25005998wma.126.1489687298941;
        Thu, 16 Mar 2017 11:01:38 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id b58sm7032394wra.47.2017.03.16.11.01.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Mar 2017 11:01:38 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 0/2] Replace printk() with pr_*() and define pr_fmt()
Date: Thu, 16 Mar 2017 20:01:15 +0200
Message-Id: <cover.1489686964.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert the printk() calls to corresponding pr_*() calls
and define pr_fmt() to easily introduce the name of the module.

Narcisa Ana Maria Vasile (2):
  staging: lustre: libcfs: Replace printk() with pr_*()
  staging: lustre: libcfs: Define pr_fmt() to include relevant name

 drivers/staging/lustre/lnet/libcfs/tracefile.c | 59 ++++++++++++--------------
 1 file changed, 27 insertions(+), 32 deletions(-)

-- 
1.9.1


