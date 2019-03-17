X-GM-THRID: 6669000631583244288
X-Received: by 2002:a24:2c48:: with SMTP id i69mr6851482iti.12.1552792427957;
        Sat, 16 Mar 2019 20:13:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls2588771ita.0.canary-gmail; Sat,
 16 Mar 2019 20:13:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHSBykSgDHFoOeRM3H288+1OLEwqFT20CG/448LzmeFxdrfNTpkTJVVB+1xI2AwOdq4UGn
X-Received: by 2002:a05:660c:68d:: with SMTP id n13mr6331929itk.24.1552792427098;
        Sat, 16 Mar 2019 20:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552792427; cv=none;
        d=google.com; s=arc-20160816;
        b=MMjsqtJqL6cgrp/LrtHjwyxgKwZblM++OokpqCAtLoNJTfJsALb8cgOqt1fUN8r3xS
         +tCwcDfE0MKW5Hc9+kqazizBAMmaBbqIcbK7O5lOCcgtUaji60RYsns39fnYTw4hbMYm
         CPsKHNb6pbhkA3S14T5r6rbqRJngZGrdRVZjwnsYYl/F85/qeag2zMuL8Ku9SX+IWuNS
         5vSAxatLJx8m3EBNAv4k2RRQxMOJCGjUuk05Jt4wa9/+p1wleEgCEwYB00v3CxzAAgUc
         yXtQ8QtHmavUR8RX25Mn1ENM+GD3oGekl4nJx7GNZTKbJ1lHspFkCaM3XEtKN4GzQpa7
         /TMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Tc/Ecy8bWmkOc3ZRbuzUz3X0rfafD3RXMHCzL6BqhHo=;
        b=DNRZEPKBYmr/OFWEf/c3VTfy1zaVgXmCzYJp6PDUu95sm54ndI72aUpFvX7dy4QjSU
         QONviadMGp4rdFxKvLV5RBVTpEH/WG4264bKGvQUOXsJtPiTJCWG4kFNZOTBPXYExhgF
         sKjsinbahHKIo1jx1lnz16LMyFWw6qTocxd0DRcb+ylGH21YULa3HH2olWMiKACKPJLr
         ifWnU6oMqnRuIYlvRMoH3xwQ1Bm+mHFZ4lQpKvOFLJlbFaGtPga1S3PgmfMeWBzxMCf0
         vpF3fuXJ/1C0mWS33FWq0R8JriocDXqpqHkeeAERGhvg2Wp+eeEo+9TO7TsPZbjBhZtt
         N+tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E40w50QO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 65si671320itx.1.2019.03.16.20.13.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 20:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E40w50QO;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id e17so9055525pgd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 20:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Tc/Ecy8bWmkOc3ZRbuzUz3X0rfafD3RXMHCzL6BqhHo=;
        b=E40w50QOW69KnHw5er9MGzznH9fvA0iPNaTtr99sRNntfG3iINS/9fs9dJRzmMyhZd
         DHWuraTgBa1ze4T4MwFz0XONUbbzmfiUcYz4C3XIhlsGnLnEXZ5suCcGf2t2lMZ9gSc3
         7YoK37sGkdiJeWUI5G6w7lIKdK73vC6ht/gywxlogNMNP050RQ8XRg5QqXeHFttSmbcr
         33BeHceCrrrMr7p359t95suGE40WYsDw9K51T9xBjYPtQbRhWxDVWgOjW3MPQ5qcHuyN
         /FXcyY4Z+Zyp9pPUF8B01w4BNmyLJ6HXdgUrqZCrWef6ex41idKnmWVcR8OEUsJDbq1E
         W21A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Tc/Ecy8bWmkOc3ZRbuzUz3X0rfafD3RXMHCzL6BqhHo=;
        b=gMmUs+y7iS1zJdRPmlsVMNdHC2qLvqJKHGI/ph0TU9E7pi245gDV+IYCXbHizVs3rL
         k5ijkY2pZjgz+E7V8+HVAlgmxQJ2VC4Q3Jpbv7+VPsoLAELtPu7/yhbQUSORQPfxGVna
         Pf/SIZq/nDZrvBBQyDqKszlaVJufnd9ANss5d03qSTyrek0Ov9D765AM+1GMExJHu8eb
         qpd3ckJLECShzfN6cELHdoEoU1NBOHrIYSPkKCZoL9gIbSNym4DX3IXfWZXY5tVuxW71
         m1diz6NNVYcSsBD5FvT5stfHSqFYewyNSPQAR3Xi4JlRkkVZJ93aoybX7E3EFHf/1k/S
         HibQ==
X-Gm-Message-State: APjAAAV5U10FBXdHqE/cEDsKqAZ2/2kVP5JXUwYV6y3/Z6hsx7bOvVjw
	T1haUNWorB1UM9OYDqeYEkT3yAAtNWM=
X-Received: by 2002:a17:902:822:: with SMTP id 31mr12733622plk.290.1552792426263;
        Sat, 16 Mar 2019 20:13:46 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f87sm8721878pff.38.2019.03.16.20.13.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 20:13:45 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4 0/2] Staging: mt7621-mmc: Remove ret.cocci warnings
Date: Sun, 17 Mar 2019 08:43:29 +0530
Message-Id: <20190317031331.11965-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series does the following:
[PATCH 1/2]:clears the ret.cocci warnings and removes unused locl
variables.
[PATCH 2/2]:Modifies the data type of the function for all possible
values.

v2:
 -dropped patch series and did all the changes in same patch as the
first patch introduced the problem.
-Commit log modified.

v3:
 PATCH[1/2] Commit log modified.
 PATCH[2/2] included to modify the data type of the function for all possible
values by maintaing the alignment of parenthesis.

v4:
 PATCH[2/2] commit log modified.

Bhanusree Pola (2):
  Staging: mt7621-mmc: Fix ret.cooci warnings
  Staging: mt7621-mmc: Modify the return type for all possible values

 drivers/staging/mt7621-mmc/sd.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

-- 
2.17.1


