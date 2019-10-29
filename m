X-GM-THRID: 6753034664415330304
X-Received: by 2002:a0d:c246:: with SMTP id e67mr14798458ywd.393.1572313407510;
        Mon, 28 Oct 2019 18:43:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:6ed6:: with SMTP id j205ls2155451ywc.13.gmail; Mon, 28
 Oct 2019 18:43:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxpMvVLFLM7FQrLOO4DcrlWDR3qfKMisyVP+zhl6FrT4geVmETxKXomifq8MZG3msSbq5kT
X-Received: by 2002:a81:9952:: with SMTP id q79mr15078357ywg.89.1572313405536;
        Mon, 28 Oct 2019 18:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572313405; cv=none;
        d=google.com; s=arc-20160816;
        b=PHvyM8HCj1XbGgIwnays0nsG3YStZQM0jqsLw/xMvm0WSY6xFjOdiSNUAlh1FI61Ec
         N4gffL8BkIJq0JYWMI62DkrioF+mSxFKjFryfwd9w963jBbTyEw3T4l21DtwmrmTLFhM
         e+4atWyzt6mCi9xXk2GA0xgfHAsMoXUxaSeTKtEFPv9bItdteCIubh3Q0FmsHBqvsqK0
         bXTo8v0v+M9hlxF7FGm6QB8sGO4c3uDjLslFLcf3Tr5hrUR+UQcTOyUN8SeCFgJzBmgl
         gwo73EOAUc2LJwVZcPtMV0V09rLAwE4sfNyEmVgCmRfacv9b4w5K1ClzQMmjFdN8rbPk
         TI3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BHHKDkrvC4BZQPC9acPCLWkbuvwPNUCU1LdyX5p7xGc=;
        b=f3Tv9aTYSLLTACxIiNPIOvLwT9izckD8aTmEIXJ3VboHbZoMi4mCuQPMRCsbCiljCX
         owyu6zzcAetLWFudA/wuOi23J5AO/H7UJwkICbOm8uhaDeih6l+Lv89Yv1uJI3ZLZhXI
         zF9k9Xfnvp5WvBA8BFPM14Lqhbwwt5qNDmihB8XSUSSyPmD3dfXuvhLUMKDbz6YBnyot
         2GxB0LX/KghYPDxxT8Hy0ZSKm2GCEJpf5p+RbAXJenL4mcd8hztcb21P7QWdrpYYIVVu
         cem05ki3Swu79I8jH3xy91Eu5qfxXi55HPssBqjnSE/MYfL5UbIbE1FbMIxCgNxUvqxB
         AoDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+NRsZnS;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id c5si12298ywn.5.2019.10.28.18.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 18:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+NRsZnS;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x733.google.com with SMTP id g21so10574108qkm.11
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 18:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BHHKDkrvC4BZQPC9acPCLWkbuvwPNUCU1LdyX5p7xGc=;
        b=V+NRsZnSrhbWtb1cKoFmRuRrzMGQfakcuaG4zAflDwBbHRd4mSt9Q68RMf88gioHTa
         mGQDxZwh6Fj8rCU8574qQaJq7lyHkhF6I9SEuHPCWzruYkKLQTok9lLCZBlIGw+Wva02
         /ayVhQoRzaga00rwqgXxDIR+2JFqsv2maLTpgMqgzKEAg0AgTgiifbsk25Khjr0rMkuK
         hP9cpxIvMo4LvEyV+JvhDF0H+jAOkjrVqZSyE6B/I8LxzaUQnQ5tZ4Od1S+NPIulwHXA
         5qAYWoEsa+bhcTIKQU0LTHZ/iZk3O7LrRBtv1jJTXXnr8PV9oN3QGDxkgl3SroHKlnOr
         qvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BHHKDkrvC4BZQPC9acPCLWkbuvwPNUCU1LdyX5p7xGc=;
        b=LVhkmRfeyWuLaUw+4tcMw1P4q3qkkjOEJy77CDyt6TQJSTERAFbw4rBBZw5MKpuK9G
         BWjXXKU2yJSpprMmZrxiKQK4BFD/ARRYPE5W9o62zZN8iJbXkPDDD0M1guk/AV5wD4gR
         2r2+9ms50pUYLk+52benYh+sl0ujr+ZPPQIdaCIYGwG5kj6O3vWBRuIhNhzR0fCPdHfP
         Wno17xdZnG3ALv2WIV5x7ZUVoekzOuY4fs8eqN7cUfMjAhjrkvJaCCRVwh3TI9dB+bxt
         CpnNSL2LZsTVPB4SOx2eVqB65kwCmta+aykMm7YLQkVN6RWFFIdcN/0cypBx+DMrHmI8
         tclw==
X-Gm-Message-State: APjAAAVpc6p3D7uhp1+e86DF20KQPe7svJ4OBcEMQqgU5GSVYI0fGqqH
	/JFx3RrivqNaHcpWnor9yiiruR3pFM/MQg==
X-Received: by 2002:a37:dc45:: with SMTP id v66mr17521790qki.345.1572313404932;
        Mon, 28 Oct 2019 18:43:24 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id 197sm6698394qkh.80.2019.10.28.18.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 18:43:24 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 0/5] staging: rts5208: Eliminate the use of CamelCase
Date: Mon, 28 Oct 2019 22:43:11 -0300
Message-Id: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in tree rts5208


Gabriela Bittencourt (5):
  staging: rts5208: Eliminate the use of Camel Case in file ms.c
  staging: rts5208: Eliminate the use of Camel Case in file ms.h
  staging: rts5208: Eliminate the use of Camel Case in file xd.c
  staging: rts5208: Eliminate the use of Camel Case in file xd.h
  staging: rts5208: Eliminate the use of Camel Case in file sd.h

 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++---------------
 drivers/staging/rts5208/sd.h |  2 +-
 drivers/staging/rts5208/xd.c |  8 ++--
 drivers/staging/rts5208/xd.h |  6 +--
 5 files changed, 86 insertions(+), 86 deletions(-)

-- 
2.20.1


