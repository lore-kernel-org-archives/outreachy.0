X-GM-THRID: 6670322768033087488
X-Received: by 2002:a17:902:54f:: with SMTP id 73mr7430597plf.60.1553055543400;
        Tue, 19 Mar 2019 21:19:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:92d1:: with SMTP id k17ls389285pfa.8.gmail; Tue, 19 Mar
 2019 21:19:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw4OB09QAoVo2JgoBBpazAtZvHN6ZorXZ8PNVHHSOLoP03D+i3VL6HZ7IXy/MZMernyJvpL
X-Received: by 2002:a63:f201:: with SMTP id v1mr8273313pgh.27.1553055542766;
        Tue, 19 Mar 2019 21:19:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553055542; cv=none;
        d=google.com; s=arc-20160816;
        b=oVHtcU0v6U1wMavukdkOtLoqng1dwxcJjY4YviGV6rYchb/b0His9lOMoFaN5nqI9E
         ubJUOo58UbJ+/V48ky53dUgV6e0pV9vDx/2DU71zmnK4Ige6MnA2ngRV7mCw8McH46ZD
         UjCunJ6agFuMUzwvkNiYsmFtaY3KGCctJI9/7+XecgD1YEX2t8YITiTD29qzytulhQWc
         0aVXNswFtoAOXGayz1DaBuN9M5m+a0MuznC7l2ioCVSyQtXKqkA5ArtMQg54IEj/VkVR
         5LJQXpgGMnm9YyMfW31lhehLQ8oD/LVfb6r0WIIdbhdE9WJpWEzbz0TMVSWn3B0nDVjl
         psFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nZ9ASnV9lhpr20hIykad3Z4zQvN6XvVazD4C7v9Clg8=;
        b=B91+9/6RAEJ6w0R022uap1sddYZd8tjxFE33lZciHAO3AaT1jUoJS5Ftx3tW7fLm61
         WOAxzqjjDs1lZME22n2rFNQjeMgurLg0RpeoKNTIeCl1AuLg9Vo7qq2IePJTfAscC+F7
         sIr5iOfRFyIH8DMLtXLAEFbd1qtqE3guOALYqaR2QMIfoym3PSP8MmIT8g/kG3YBzTw4
         d5mMDtgtKnqtM2vWG3lu/4mdzWMtTPHZaaS1G7R7olOBL0cHw+U/IihTH7gChqwwfXaD
         dxHlESektovTjYXRohq5O22rJtsQWzr/AJLM3FoUe5Cj6XA5mtDrWiZu14FWmKOe+t67
         iV6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D/ycT1sf";
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id p15si15363plr.4.2019.03.19.21.19.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 21:19:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D/ycT1sf";
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id i19so955629pfd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 21:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nZ9ASnV9lhpr20hIykad3Z4zQvN6XvVazD4C7v9Clg8=;
        b=D/ycT1sfcftM+HoGzIyd8Jj8YNdjnka3IuVhU6oYcCPpI+Ter0tsAC1sjjiahfz86P
         VeXJTuqFBWLYNGfdiRT2rhzriSuE5x/ZbkSl4kS5T0g6uMsRm1WHFvJF9c9jowLiluPg
         lRDAoCw4klZ3SXKJiAVVSX3vhSU3XdSdjtuy5ma1CQCBCrTIAKe5Pgk0p6F5kgQPW1V3
         CuM/t+AD2z/GjAsdUzdWw1PSMZarT12lw+ClL/s6IWARQFao3WT9eafMqpmb1XrPy3Ju
         Qz/J1we4Gc5eV6gAWCab9DrEexnAK8p2zYYWy5kn8zROVWzbFlgsWBQ2GTjLnCNGk3xZ
         jEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nZ9ASnV9lhpr20hIykad3Z4zQvN6XvVazD4C7v9Clg8=;
        b=sENKcMQhyFk9NOyWQBuWhgKxAaTsxTZZX+DXmgDPhlWSGEsI3J7Q7nMaPXbIaaFfyZ
         84rCMuppK1wYEjQEM4oov5p9y1u5DlcxwD8Aev+mUAOi2aqOusOeV5HkOiUGrKCiiYcd
         1FrA+PQlSCYsJzGf2qm3UgoU5XQnxGrOBXLGOxvVc+FMa//0jTpbMTGaEGQ3VxaPgI3E
         Ng9Y5pxbhZflOUnhYgzwdoCgHr3YF8yEsBLuii3umpHa45tB7Pzwt2skWO2CnmG5Nf47
         G9gOslFo+hpAispwOYh1SB5uex6S0OrbPadu7xzgg9VsIVVQ8iiVKR7vzpiizwpUJuJm
         xqmA==
X-Gm-Message-State: APjAAAV5eF5EwjHgNbGlW/MnYPb6jDjJOAencbk8IS6ggBBYHHomOyFL
	fr56H46jAsUPJdkYWzH/LDGqUoL2jXo=
X-Received: by 2002:a17:902:29aa:: with SMTP id h39mr6090230plb.190.1553055542311;
        Tue, 19 Mar 2019 21:19:02 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id 140sm754886pfb.55.2019.03.19.21.19.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Mar 2019 21:19:01 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: mt7621-dma: Add blank line after declarations
Date: Tue, 19 Mar 2019 21:18:54 -0700
Message-Id: <20190320041854.3829-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Add a blank line after declaration to mute checkpatch.pl warning:
WARNING: Missing a blank line after declarations

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 97571f1d697b..beeff4258b19 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -157,6 +157,7 @@ struct mtk_hsdam_engine {
 	struct device_dma_parameters dma_parms;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 
 	struct mtk_hsdma_chan chan[1];
-- 
2.11.0


