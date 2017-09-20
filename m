X-GM-THRID: 6467951789613252608
X-Received: by 10.28.150.151 with SMTP id y145mr558160wmd.22.1505937378020;
        Wed, 20 Sep 2017 12:56:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.139.211 with SMTP id n202ls208976wmd.8.gmail; Wed, 20 Sep
 2017 12:56:17 -0700 (PDT)
X-Received: by 10.28.138.195 with SMTP id m186mr571454wmd.9.1505937377016;
        Wed, 20 Sep 2017 12:56:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505937376; cv=none;
        d=google.com; s=arc-20160816;
        b=rgF31SYF9u0MsdHmXZlXaTwFa2HiB5SCEWT65OllSb1dlkWlpq6+nLEQKW3ueZfwVq
         6od3sW0dMq9owkeJ3M6yaWt54zeSxz1bRB0P0efo55exTFORT6REJMK3cDR+IHiq27r7
         5xD664w/wRNbxlEPffWzZzBc9XMlbZQBeeSc55TxZu91Xa3RjSeLuNIIYOPaOAK9dk+2
         qDdzPjoAUYANtYwyXiImmrxo9PBxucL4YhmtJn0mXuWexjqe8aqpsaKZz+5wn/kJzCK1
         OqWodqm68keEHAlM0XKPJ9qCyPDpuw1gM28uoDGFH81oCg1zA2gaTNH5Oqjbr9gGQYya
         CI6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=P3FA6FWJ3MyegTx6lIBjIpPmRpzveDgxMAOA6OAHEI0=;
        b=OvYRUQ4/JWI5m5/j3acKT/krekDRZVuvQ9/IzK+9BIzYaUh1xZNXKCxcC8oc4tcH9E
         g24tnDbkiORDt254QuM1ndXUaaC9Z+32QX6XmtES50smwCsPABugMijaanWP3zTAbl9u
         9aPUGc6QRu1GVogYMK3a2bKG8fKFTYVDizSiI4/PDNN+tlkha9y+R/6sK/knx+b9W0WU
         BwAN1km5FGmOdwYYxjgeZujBpaL80uvGKuSPo2ao3V/YK67MV3/E+U25+u46zEJwaiU+
         h7xDhRd6IiWDuTtJ4i/1D8dzGZdzDmk/+iFnJCaKZVsxU3KJucuXDZd0/PQk5uqtQZ8C
         OIqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bxZ/tqyP;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id j4si860wmi.2.2017.09.20.12.56.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 12:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bxZ/tqyP;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id p37so2044317wrb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 12:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=P3FA6FWJ3MyegTx6lIBjIpPmRpzveDgxMAOA6OAHEI0=;
        b=bxZ/tqyP6crG7f5z5VTmfEtw45odjcKLAlNxsCyqDpnikubF2t/In/0cEo7G4GBQ5T
         L/iqObvLUQyKM+7nKJ7cpHUjqIsRQ/sGTB+0HZOKZdRrlO64/SqaOtXngHmhy7spRtJv
         L+ljWe1VvJjaiTcHXjhj6o6wkG44O+0ajG8ntbzPE7Tp4GbKtPBhvlIChqEWzhX9KTth
         GV7q3hSoMdE0fLBZtqaoQzUWH63m5jju+leuL1XVPPPhiJa6yYGzbPFxwe8wmMCAsx7W
         rbx6t+KwpURNqR+q6N9D9pHDYm8X+7Ng1CLsRmpLfYNxrO5CpCl7D/z7ZzxqTOsCIB1f
         n/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=P3FA6FWJ3MyegTx6lIBjIpPmRpzveDgxMAOA6OAHEI0=;
        b=rSke3DOsz5BDtWnmjYphHWW8z3WsPCSbjyKmfnpwv7hg7Vaj2d7VZhPGTc5IlXJiEy
         eS6OIYIpCWxFkFP7CiIAXckh0zgRjwrI4Ecoc9QoNQbJS6x9RXxpkNtweoumGLPBLmKw
         Sach2WqfJOKTQsFo+hX8KGzyqJL8Ts3mNKwwFFGEjRziyasIqIEc37yMiacN1oMwdTBu
         uXU+c1tD5IPNF44DtaqJmvnuyzEAPpD8HLNs27gudj4iK62bGhpE2MfYzF9RibZsbeef
         hW32E7JAlIsLtgbdv87Dp8+vyGF8FziHqMyEnP4sQ+Nte7ooHoAbvcbw3PdirIwVLG1i
         yN+g==
X-Gm-Message-State: AHPjjUjb00bC1BwK29c6a0fZH96OOfW4P5RjZFyPUKV4DvR7Ae52fp2R
	/2Sax1n0P1nJGug7pZvYZ9qB3Mw1
X-Google-Smtp-Source: AOwi7QCBzzMLxCKYlOVR0lWrmRKJZC/vJuX0z77IbKJWwKWtVwKJ3JBeextXEf7CzrNoA7g3cHvcxA==
X-Received: by 10.223.192.9 with SMTP id z9mr5582406wre.176.1505937376618;
        Wed, 20 Sep 2017 12:56:16 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id n9sm7782wmd.12.2017.09.20.12.56.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 12:56:16 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Samuel Ortiz <samuel@sortiz.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] Staging: irda: net: Code clean up
Date: Wed, 20 Sep 2017 22:55:53 +0300
Message-Id: <cover.1505936736.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

Adjust the code to respect the Linux coding style convention.

Georgiana Chelu (3):
  Staging: irda: net: Do not initialise statics to NULL
  Staging: irda: net: Use NOT operator instead of comparison to NULL
  Staging: irda: net: Fix style issues

 drivers/staging/irda/net/irda_device.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

-- 
2.11.0


