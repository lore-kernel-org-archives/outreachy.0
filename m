X-GM-THRID: 6331255217033576448
X-Received: by 10.157.62.164 with SMTP id b33mr1410222otc.63.1474110227963;
        Sat, 17 Sep 2016 04:03:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.227.70 with SMTP id d67ls1759871ith.3.canary; Sat, 17 Sep
 2016 04:03:45 -0700 (PDT)
X-Received: by 10.107.137.217 with SMTP id t86mr1266253ioi.68.1474110225811;
        Sat, 17 Sep 2016 04:03:45 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id um12si3481741pab.2.2016.09.17.04.03.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:03:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id z123so35353653pfz.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QiF3x80U24Leha32kiiuUQsfA7pmon64yEEQTbUxais=;
        b=G4f8IKqsXlvHN+3esTJBa8BMP+LUBDbQIswzQRGq9d5UwV0glic/cr0+SqR7Lp1QDF
         hs++Y+HqVrfL0URqsJrxZRkmq6C2fXheJHNLCe57zMDbHzzDITgPgcU8l08kM6Y04BkU
         Zpcp/BpCU0GwaA9MIKtdw0/4RfluyM4DO/0jqHDqvXNf2tYnqUi1xwljSBsr9tS0vxuD
         FoYYLJmojzz7MhLu1AoFZXZLAcAQcanrLepo87ytKjb7VnTqCUvguyGT+LYRINpLbTgX
         p0vGG7vtXuFR6J7Od0b+6Z0wgFNXLWqBx+zoI6BcIlq2U6BRFo/DaOG2jRzw5ShPxvr1
         qIYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QiF3x80U24Leha32kiiuUQsfA7pmon64yEEQTbUxais=;
        b=cuIqDTfjlaO1hxfN8qiF4+HaGGR0gU0ikQaw62JlhTgSaGbHwAP/2D7NeWvcgK7Chy
         u/bXUiszdLKjZOnMd6WZvUoSTjDFMpTfvaw8ejhEnnHwZ+ZQdQ/lwfKFWGMiTlRrCQ+a
         OcvPp3zejk0JJ3rfg2HRhHl/0Vc0tVeN93IV3OS7iKgbBn6kOiXyHhMu0IyyFM+xVgdQ
         nc7vAwIStnA7DBrk9eKs27uA5ZB37jk7RRNNUc8ofsNvzvK3F+ZV+vydzNaqOoU9LMFA
         oujDKzGwKyEkWLGNFvGdKoyYsYLQ1QIHmHGXD2MMCKNz5Tq4OXTL7xTv5v3OuxODZIu/
         cDhg==
X-Gm-Message-State: AE9vXwMr2ac7dsp7FfETDjGeV6T4ioUCOHzz+Z9VE8YzeWg7upQ1sMI7hY9EWXaJIr6/0w==
X-Received: by 10.98.12.29 with SMTP id u29mr30750199pfi.80.1474110225460;
        Sat, 17 Sep 2016 04:03:45 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 70sm58404975pfw.92.2016.09.17.04.03.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 04:03:44 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/2] fix multiple coding style issues
Date: Sat, 17 Sep 2016 16:32:53 +0530
Message-Id: <cover.1474110016.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Patch 1 fixes the issue detected by checkpatch. Patch 1 modifies
multi-line comments to follow kernel coding style guide.
Patch 2 uses kernel coding style guide for macros.

Gargi Sharma (2):
  staging: wlan-ng: use kernel preferred block commenting style
  staging: wlan-ng: change indentation for macros

 drivers/staging/wlan-ng/hfa384x.h | 626 ++++++++++++++++++--------------------
 1 file changed, 303 insertions(+), 323 deletions(-)

-- 
2.9.2


