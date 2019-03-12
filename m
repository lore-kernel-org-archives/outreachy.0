X-GM-THRID: 6667542272641335296
X-Received: by 2002:a02:31d:: with SMTP id y29mr22543434jad.18.1552408158013;
        Tue, 12 Mar 2019 09:29:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls3133195ioc.1.gmail; Tue, 12 Mar
 2019 09:29:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxcu5vp0KHxo3rE82QEAtbVW/f1fsoqr9PwpCWCTDXQD0jC3jyX4Z25fLKEN7D+7gXI9NBi
X-Received: by 2002:a6b:4402:: with SMTP id r2mr9106566ioa.30.1552408157029;
        Tue, 12 Mar 2019 09:29:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552408157; cv=none;
        d=google.com; s=arc-20160816;
        b=PqCTXfZ8dxlXO8H7G29i0TAzk8i+kW/V7P7H01HTDHveb276to4H9snxyY5LB694pa
         XOFoXishGJvOh18uxO/Zhle3Ax7ZKJamrdGuYIV4Y4VkWL5bUk1Mc/2Qemm2VVv78Boy
         62yLN/UIF6YOwHw3yrYwK6boBHk6DH8gAU7VXLcRkaxs/0IYGgYUff6zEnvPhvNTGop3
         09WBp2Kv4C2VdUmUtPVqBLylyEKYmse6sTID4Ln+pEoACmQPkdZi5tnWBVJOnKx0G+7D
         U20YNoOS1hfI0IrJr4Nc6/DkfrXV7nogWBuuou9IjdRg6nF+0BHqDHHdKj8WF+1MSbOI
         Kycg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JAPRo2wggAw0nvPD4//MSGmZIAXjuMyJV2tn4KPFIUw=;
        b=FI/EM+gk7kYDk55bs11ztCU4ZLfuLtgvZSQJsjWeL00hl+7W/o0c14Zhg896f8tuzH
         x2O/TOEuFw2OenZqCeWUw5dUsOmqVPETy5L4ZN5zrF/gj9QUZ27YnJSGZUGaFCoGnDun
         P/ELqpb7UhWbD5Tkx3J1fabgUabNqiFmr05mMSxOHDRKc5dY4A/3re7Do7AOyK6BPU6p
         oAcZozGo/FCf48WwOgLxHJoZcsW8p7IUKQyMNPOdi8qxOcSDu6m5Y7VeYVUX5WJfTJ0r
         OVZP9PXvhtGc9Gujj/u+tA8QWoOHa1Zgxbe2LB6bwksBP0vvvEhN4bgRbHwyiKS58nSb
         BXSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ONxuuyug;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id y204si111400itb.0.2019.03.12.09.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 09:29:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ONxuuyug;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd35.google.com with SMTP id u12so2602617iop.11
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 09:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JAPRo2wggAw0nvPD4//MSGmZIAXjuMyJV2tn4KPFIUw=;
        b=ONxuuyug+K7sAYG13ULu2g+NJs7RYNVPhOx/uALnp+6CwLYmJL2WY9pmWO2Qk0E1nY
         aS0C4UE4RYHxfQDVJsg6QkcJeCdrfhuZ27nIREeNKtKCTIrMxxDyUHZI0L51bxk0fRei
         5m0GolLPfnpE93bDmxsGo5VRp+R0KiLdnkuoCdrTpFasx9nMjwDWdicq6ITAU4+4iR+K
         whayMOj4iDzRGOmOtJWHOjnYfJx8677VLjoetI5e4ByDp2TCJem8A6EsWW0JjzPYMq9R
         16jQMyuIaP0ezX7u0UFBMV6+1fe3duXjX2My5S7e9bq22p7zhED6NQoOAvdaZFJo+Ww7
         xvRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JAPRo2wggAw0nvPD4//MSGmZIAXjuMyJV2tn4KPFIUw=;
        b=T3bp/x0K9vcOOfWsexTKM4WILLUzFFAKzmliPzTrOT1mnz1YtoeQ+JhQSIMxRBNvQq
         drb9kutimyPmVn1E5wRfN+XidTWVjH6ZjDF8IkXuqr3wDlE2jBwPLZVE7ZabM+lwW23i
         K6lxSucv70eiJfI5YGWtR5Qf0VVauRQJyIouSelU8EYOcbrdTD1oDmmW2ZUhPFGgSNTL
         +27idCwqUpzWzK0bOgB1BzR9kZnIrJQ6JbpQjaPaOsVVeagowkG/qtAwzVflxZbhf9aX
         i4kIy9En0Rxhh5YJRkgyPyQ5cDfsQRevTNnlKUlvClbHCz/62HyG5aUK7nKe/qoDTBRJ
         Hzig==
X-Gm-Message-State: APjAAAVA9r5Z7VRa2jfrA91ZEliJvHEAIFNlEpYEucVnmKDyaMw2H5CZ
	XmlH3nGluPRFSYfUhIWoE/EXHtilTE05
X-Received: by 2002:a5d:83d6:: with SMTP id u22mr19849712ior.202.1552408156634;
        Tue, 12 Mar 2019 09:29:16 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:79ab:d48e:7983:368a])
        by smtp.gmail.com with ESMTPSA id h7sm3713654ior.49.2019.03.12.09.29.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 09:29:16 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: 
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: mt7621-pci: IF statement expression comparing to NULL
Date: Tue, 12 Mar 2019 12:29:10 -0400
Message-Id: <20190312162910.4653-1-brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove comparison to NULL in the if statement expression
to match the Linux Kernel coding style.
CHECK: Comparison to NULL could be written "res"

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 379ae780c691..03d919a94552 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -275,7 +275,7 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 			break;
 		}
 
-		if (res != NULL)
+		if (res)
 			of_pci_range_to_resource(&range, node, res);
 	}
 
-- 
2.17.1


