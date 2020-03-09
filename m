X-GM-THRID: 6802108389575884800
X-Received: by 2002:a81:1155:: with SMTP id 82mr16416041ywr.262.1583739274983;
        Mon, 09 Mar 2020 00:34:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d851:: with SMTP id p78ls2395200ybg.3.gmail; Mon, 09 Mar
 2020 00:34:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtII2UbxFX/fBU1DlTstSzDi1mLRKIHLzPk16/PsLBf9SyAE+z4LAtbc18uc56b0Ake+v6l
X-Received: by 2002:a25:e04d:: with SMTP id x74mr9377690ybg.105.1583739273558;
        Mon, 09 Mar 2020 00:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583739273; cv=none;
        d=google.com; s=arc-20160816;
        b=ZxcV+33NtsUm4xXEP3A5yJk037SMAQJvix0W81eIFfEIeeCC1yQRDNKziifUZm4CW7
         UaTgCTMMzmrgeIChTy4Fit/AeT8wiTluob8vqalXcl2Gd5uqo4PG94997JjNMx7bIXVS
         5s/ArLiWZ9aDUOvFqbZyWaqR+g1seb99KCLwuIeV4Ep47lr+OATJl/NNbyXtF7f6KqEe
         Fo66fcl8xHwdZAjGhEYtytwYUO7KFzuvesSXyozLOVkFmPI7nxdCOwU0u0bupONXxFts
         7Y8v4Yr/mW5mpptAxW/RixxEopHdn/MKi8t7GGI4/xCEPNRUSAM/qcjOI5Td1R59FgmL
         U0HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SVQ8Zi2K+/T+q9km30N7qSMb/XgMVVbj8eJcfK2z5Tg=;
        b=0l4e5RkdHmSa+8B7p4TUJa7v7PILs0voKPbR0XucqXFXkRezvCqWv0dkqo4BOucFE0
         20Q9sHVS14rdpjpp651R7IxtR2od3Eqrhu0+oyzN1LHDqMFFwF0/byB/pEW+ibn5e3Sd
         C9GsHqF2O7mzvWTt9JORC21jSfbLTwksMtadecGI8M/BcV2j2krnuqmGvJjgv8eiOga8
         rApPQo/74j88JQekkNUuc7sHfZbG5V/J8CAm7muiTBSWnXkHzuLuzB4u1e7QsVWJjsGC
         LmMUYdNOE06E1k4jkZTtP0igHm84CbpqcgtSQgFkKqfuycwwZ+dpZtUXAcH3MPLIUBAZ
         7MKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mKTYts+l;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id u7si694448ywg.5.2020.03.09.00.34.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 00:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mKTYts+l;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id d9so4324172pgu.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 00:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SVQ8Zi2K+/T+q9km30N7qSMb/XgMVVbj8eJcfK2z5Tg=;
        b=mKTYts+lixEZix3zevf2MqhwO2i50nFv8/QauS2WivQ9d/HylFBgqPYPkDF/KwjFSl
         0H1oUXULlaoRyWPYgLAKa6xkH9ZaOvcmzat1eGJT/JKxfUPPOw4bs5iabcE/uayjG6Wl
         xEVwAKNdMoet0ao3A9hwFIclsTfp30W1Zd4Jmd9fkgwiI2op972qrJrSlAQE2J6Y37of
         Id6Q+uCEnvF71f4HdGsW5H6MkLE4fTMAQugdA1XBJeVPxAh1ezTX7fqTlmj/mGeOcLJJ
         xZ2A6YchQs+JBTQP6itjmW0b/TeFOZq4qkfSsQgwDMdaEe186b6kiyWlfPL5dRBtsMM1
         91MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SVQ8Zi2K+/T+q9km30N7qSMb/XgMVVbj8eJcfK2z5Tg=;
        b=niqdo5ej7UpCcQsfqqhSl7Goo0USrMQoNIgq5VLcvX6lbzXc80et647PktFEEUMBMD
         HD5F8WlE81ycjRgfttWY+QbHIZHUmSoXovOueAs09twugIuZdLs9KyLjtQmY/ZT0fBbm
         beQuT984ZxYvpjj3vMn4BxedJ0g1RawhqDML1WhvMqnRifT4EWTZdjJLXYNWCuWnlsD0
         rNJY5qatHuzEUh3PSVpCUqkbgzaLeo6YJJa6cAnVpYhFOFQJbebFW3PHvCtfAIi/Xg3t
         veKvI+3KlFvIEha+WV82B11DF1sz35lvWq9qJhXEnZpTD60+Km3gMJMjqWq2v2usoFe1
         7YhQ==
X-Gm-Message-State: ANhLgQ10+UHqFJRFedEh3GJZ8lftdSf7FqQcy7b7N/aqM6II1r4h0AyX
	1K9G/X1sn/5JKMBAKfFja+s=
X-Received: by 2002:aa7:83d7:: with SMTP id j23mr11899400pfn.77.1583739272583;
        Mon, 09 Mar 2020 00:34:32 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.158.243])
        by smtp.gmail.com with ESMTPSA id b25sm44315195pfo.38.2020.03.09.00.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 00:34:31 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6656: remove blank line
Date: Mon,  9 Mar 2020 13:04:24 +0530
Message-Id: <20200309073424.4920-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

To avoid style issues, remove multiple blank lines.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/vt6656/rxtx.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6656/rxtx.h b/drivers/staging/vt6656/rxtx.h
index 10076efa4522..0e6226af7d41 100644
--- a/drivers/staging/vt6656/rxtx.h
+++ b/drivers/staging/vt6656/rxtx.h
@@ -100,7 +100,6 @@ struct vnt_rts_ab {
 	struct vnt_tx_datahead_ab data_head;
 } __packed;
 
-
 /* CTS buffer header */
 struct vnt_cts {
 	struct vnt_phy_field b;
-- 
2.17.1


