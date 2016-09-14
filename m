X-GM-THRID: 6330303746353922048
X-Received: by 10.157.10.138 with SMTP id 10mr3933333otq.36.1473888695158;
        Wed, 14 Sep 2016 14:31:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.86 with SMTP id c83ls675777ioa.46.gmail; Wed, 14 Sep
 2016 14:31:32 -0700 (PDT)
X-Received: by 10.36.57.69 with SMTP id l66mr4203854ita.5.1473888692919;
        Wed, 14 Sep 2016 14:31:32 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si1625303pfx.2.2016.09.14.14.31.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 14:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so1276247pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 14:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mfm3AlXPS8Pw6LWybHv12ShZ14UBCG3F2tY4EEP3cuI=;
        b=QOFNBkqEG6TxxlWi6A2C+91DvxmtGI9iIXWU5wSqY1FtHp82YHqOTKuT02lXO2TwEd
         I9wv5CB24KK/2fARsyJ1/64VNJJ6/a2r6DNgUIAyRE8yal4pMI/7dFlFh5AfKowwgMny
         SXlE+L8la4H77h7WObvVtHFYikm9K0LsF2liJtWrmW3tpTHiTVis9sFvnlzwzvgCRqIS
         j0ylFcMQcYqbyVXeJ+pXuDfwzPrC2vCVLq5nGWQvMDY65OVgPBlxmTfhQCydRZn/1JQz
         Vnqte/rMOqK5NB8EgcSyBLbUXrCyk3Kqd1fWXQ9MEpdC7u1b8IfV/y4PJNgplMTfrlMb
         KFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mfm3AlXPS8Pw6LWybHv12ShZ14UBCG3F2tY4EEP3cuI=;
        b=ct4mLBL5b7f1KKn3suU0vOBfWXy8AcuDiepgTLSHCEapGTVkFG36JtOoSi4mNLhJA6
         tpfLr9di1asHng6WMR4YBLP3rskV2gE74Bidn0ly8r9UPKjXZgkYRxrdZbc9MR6SW34e
         naKMQku7VNg/0o7H7nDTXNBc/cpifxfpNGRw769fZ6I6GTYUjtFJH7V/DiQyfttD3wvs
         GfmePmERvHrHoIk3YwUAA/P1bX2OirekxCDTHrXsWftCpx2QDeIOQk6PXOMv5VaGBsFd
         E5Gf9xw8I2d4bkenqnimrHJIgITItRWlRZPneEVKt7l2IITJAT5CuR0FiOHMcl4Uj0cP
         dW6A==
X-Gm-Message-State: AE9vXwNfNuftR5NmDGGyP+gVkOLrJn+2VK7h1nZOg7dQN2ogaF6bViGBYcErJl4iEusYLQ==
X-Received: by 10.98.80.156 with SMTP id g28mr8274247pfj.19.1473888692747;
        Wed, 14 Sep 2016 14:31:32 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id i78sm7889970pfj.67.2016.09.14.14.31.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 14:31:32 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3 0/6] clean up of xgifb/vb_setmode.c
Date: Thu, 15 Sep 2016 03:00:37 +0530
Message-Id: <cover.1473888416.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

The following patchset contains patches to make the code more readable. This patchset fixes various issues that come up in the checkpatch in patch 1, 3, 4 and 5. Patches 2 and 6 are based on Julia's suggestion when a one patch was sent fixing the checkpatch issue of moving && operator to previous line.

---
Changes since v2:
    reword commit messages in all patches to explain the solution and use imperative form for the commit subject.

Gargi Sharma (6):
  staging: xgifb: move AND operator for logical continuation
  staging: xgifb: remove unnecessary parentheses
  staging: xgifb: remove blank line after open brace
  staging: xgifb: add spaces around |
  staging: xgifb: remove blank line before closing brace
  staging: xgifb: fix alignment for if arguments

 drivers/staging/xgifb/vb_setmode.c | 48 ++++++++++++++------------------------
 1 file changed, 17 insertions(+), 31 deletions(-)

-- 
2.9.2


