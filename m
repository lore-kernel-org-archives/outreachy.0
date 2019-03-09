X-GM-THRID: 6666346191524986880
X-Received: by 2002:a24:6f15:: with SMTP id x21mr15338664itb.2.1552129674837;
        Sat, 09 Mar 2019 03:07:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls3587824ita.0.canary-gmail; Sat,
 09 Mar 2019 03:07:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqxglZv2SyRZWd56TC9DYmyHn369koGDLJ2uQtYIAd4LnBZ5/RuFkEU1/A4mnjhXwX1KZj/6
X-Received: by 2002:a24:1452:: with SMTP id 79mr15305592itg.17.1552129674017;
        Sat, 09 Mar 2019 03:07:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552129674; cv=none;
        d=google.com; s=arc-20160816;
        b=qKr9C9o1L3e5oKr//lsC+EhHl4fzmD9TEnu72cVQRdFaIDg/PS0h0lCBKgLGDKs09Z
         Q+VKYYjsAflUdjuhrqi0reukPHbNUxPEvVQN5R4tUfw03akw0H1bMWHTgbNUGgkbkZXP
         crK2Zd4x8X0ppGbi8PFnAoXcuIjScwncQlDoG3fs5AnWq7Qwauu6n22SknnUDL40L8g5
         UIWGuXHyEDFsMJnQXFE2BWfrV80PncB95kiAOVzjIi5UzrSpsqe2KNlvrL9BGJHJX28O
         0wd1AbrFrzgDG5YPOxVUYLo0uvyQFlx/LSbSdL6LNe+Y3p0qnGQXw2RonlS82F53bOkB
         9j2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=P8W7lh7oXLFiW1/79kC5gAcXrsxZ258lIqpBQ1Fpa60=;
        b=GnSroqXmh+UZj0HEK4JNo0k67tce6bG2J86gQX+28z/vmyMIFnekbAnAU1LFWp6orz
         qlxh5+3c1afq2izz7za/JiwHmKs3F+8+yMJ//SmqjIwOqv5lLC4ck7z5q81bViPplzPJ
         B+N5CYQKBvgtZH98DL9WrRC6eUmtwWWo+O8CxoPjY9RosDFp+uX5jmkRAz1PRPCeVExD
         MBTW3pc+c9mYJPiB+97Xpg/WFVxPaKy97OALWooCY+Fm9k2rdK1nsEp5dnl6lyZqXHSw
         dbQV8QGe+T5jDJGdB+Gh1xXvmM+8DrCqb6kmUmGqCSVsLW0utjv2Uwx4QpZZT2aCVhl1
         wEjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I6dtbfgI;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l23si9563ioc.2.2019.03.09.03.07.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 03:07:54 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I6dtbfgI;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id u65so229546pgc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 03:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=P8W7lh7oXLFiW1/79kC5gAcXrsxZ258lIqpBQ1Fpa60=;
        b=I6dtbfgI8Vbbw3gTdjsNz3MlQznK4vCDf1TWqvVb9DUWp/+uZbT6L9TXZstG6to4t/
         ELU0sHO/l5Se5hdFu0IM2R2clQyt4mbNG3flz/NeEc6VtLS8Mo9C0InGXCrrmKSeXQn/
         ML6ew9aHwltt3KQmy6uckojDUNda7cWKlXEMkDvIh64yGq8xILgnQpQgchzw8Qk1Me6n
         mrGbScqsL8oJYoN29uDYad/d8x+Rm8GJ65PWqO1g6I3mYQnbScCWfDgZO/qJCzSjysJM
         yftepBcbFv7iAVMl/ZMo0CWMrclmzQDTJwn1sJD1lCKpjeEdXZyjJk9oaHxh8vO1CiXj
         F9JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=P8W7lh7oXLFiW1/79kC5gAcXrsxZ258lIqpBQ1Fpa60=;
        b=JiYI01tB6VAgPL0rDDVBE306pXjPs0ZKZBD4J9+uZ4TQyzYhFpWvHVWuZISjG2mvi7
         az9DL6Spw+2DnYfw1L8sZHBCLvGW16DFO0QCIjgz3d+/D7hN+E1zt7m3hOhkTY2FFmVh
         5VYTQ9YdXG8ejMM9voqvP5Cx7wGi2Iqb+pqSyA+U2xxsKONEhLJ1/KGnD26K8aHv8OQE
         gt87DzTdnVnn0u6UictfdUiA/54pvf4PhlMf9taVhd3B9uoZc0wNr1m+7CYtAhOKlaZ4
         oq6Zxs/G7gJZyrKdAGw3MUDXyNHYpUgkbjaU7xtU9y6XMLqCkLl/r4pznOn3I1jwpwTQ
         Aoaw==
X-Gm-Message-State: APjAAAVk4/60CaU+t8aqi0y8RQD0hrA+M0BVFugRzmjN+TseqsekZCXN
	XHRzAd2XBuNwLmrAlKzjWrg=
X-Received: by 2002:aa7:8b0b:: with SMTP id f11mr16368537pfd.123.1552129672827;
        Sat, 09 Mar 2019 03:07:52 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id y37sm1860732pgk.78.2019.03.09.03.07.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 03:07:52 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 0/2] remove unnecessary local variables
Date: Sat,  9 Mar 2019 16:37:41 +0530
Message-Id: <20190309110743.41443-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset removes unnecessary local variables from functions
wilc_set_tx_power and wilc_get_tx_power.

Himadri Pandya (2):
  staging: wilc1000: remove unnecessary variable ret
  staging: wilc1000: remove unnecessary local variable

 drivers/staging/wilc1000/host_interface.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

-- 
2.17.1


