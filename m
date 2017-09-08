X-GM-THRID: 6463333308428189696
X-Received: by 10.36.46.201 with SMTP id i192mr1021987ita.55.1504862054092;
        Fri, 08 Sep 2017 02:14:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.139 with SMTP id f11ls2946331ioj.36.gmail; Fri, 08 Sep
 2017 02:14:13 -0700 (PDT)
X-Received: by 10.31.94.203 with SMTP id s194mr38441vkb.92.1504862053484;
        Fri, 08 Sep 2017 02:14:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504862053; cv=none;
        d=google.com; s=arc-20160816;
        b=NoViAzWFU67//yz7r6kCMpjaCxPdwOuFsTBT2kmQDBbSx6pyD+0I4uP6ecCwD5dRK1
         QwimvJlpwTuKoaRQfhriTrW/STnIBV/urDdnN1le7lOEnsKs9HJnS0uuZusTHm6qDXo/
         HG4QZLMH8w0sGkgGjXd9h0hzpweRY0J9v4YcFR19UZVe6LBHw7R2fZsQgtikyNm9clte
         hso0sQfN2mK5CkJwqlNS02CziQ0xonzxausneGVvqs4QwmHZbE8Mw9PiWI50udfxucSb
         9n299kR0dZeXJcfE1o+6eanKvOum0Sra74GVPU6AVUFDpNv/fs3znZdPyt8HWsiiVise
         IaJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=ai57d4JpXLVSPd+BsmG8pMfis/qFJaGa8esvpEvSZe24HA9cO4/1N44KMPvd/CkwHl
         QIfN6YcXtPT5ex7G9iOGa8xPIUi8wT8IJDK4PnyTyVg4oY55eVk3xOtfiX7LFIiyLb1l
         ijOerXbXhUtqt2AdcjM53BaJUpPMgSz34AeW6rufsNPsDWlRtwTd+we0BIW+TgAbMhTM
         o9/x1uI4YiMqJ321ztZHnZH7Zr4ZLC+9306PrF6HGeBEZWrIZht7xAeNbx4+Ij7PGYMD
         z/3+DOpKPnVWIk7JXQKu+45ES/+AaU64r9859ep4H11IcAa60LAf/CUVd7DI7qk0GzLO
         5XHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S7SHZZQm;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id i15si182506pfa.20.2017.09.08.02.14.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:14:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S7SHZZQm;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g13so1156715pfm.2
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 02:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=S7SHZZQmRtvj0dsg9Ajh8rNLysVQSc3+4rY+BuXIwqsdS83RC+OCwiUaP60Ubv8PIg
         KxrEMzO5/2Z6LArCSJSwXfyv4op1lzghZjCfnlOIrzMy021VvFqwJtAAvhSCaGzj4tLW
         ytEsCk6ej4GRd+012yEsUL/S17WBXRC1hmpkK/PDfWeSIzIhgWw6BeGZGjpXdpAHt0y3
         2jMuwjTnvYwlyWEBmrCWloteU6f67UKLuAi692kunfvydPrpHocv6lA0Gv7G7HBnjd39
         aZRh20Ea6ThboROJJwaI2eUFzItyHUWMRHfZbJfKmdCz4hRGPVQMg45wEidIs14ZxxnX
         3Oww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=FpBPCgi4opu1umm7cgN3nkbJ5jVDQUZ2USkdAmkq2FKax2XrC3Onbl76qRvtZN2qsY
         30I8DSMZoQ4ke0F9pDtp3naX98fPbvVU45BLjtlzthVvS9bBunf8kYNKQs7tbkQyRtre
         qEObZV/T5AvRO4klRq9/Je/pcqlylSZpCwCwY0BxVCQ64gbSvivkCCt1netzWJNJ8KFo
         zSkpI6IzcS0VycMhnsZANabOSI8BRvb0FSOHwI6kjuaitQnV51m1Qe/N67Vba7+ydN5i
         RrVLWYYEWKb5ebuidtARyrWZbEGp54oTEAnbPdoF8tHHLXQh4oIr2hnvLYrV34nyUpwe
         +cJw==
X-Gm-Message-State: AHPjjUhKxEAxgOeeJ/gWJyWbEkGU1AFgTG5/Yp6pouRJ8Tkg4KiXpCBt
	g7vNYyUWf/hvyW70
X-Google-Smtp-Source: ADKCNb5/O7kck00kmxE84ew3rdlt6ws2SqqhFqSBqZMmJids/n+TGHC06pqSM4iiWOuBmFs8AykO2w==
X-Received: by 10.84.199.170 with SMTP id r39mr2657393pld.375.1504862053223;
        Fri, 08 Sep 2017 02:14:13 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id c2sm2709786pgq.61.2017.09.08.02.14.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 02:14:12 -0700 (PDT)
From: harsha <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	harsha <harshasharmaiitr@gmail.com>
Subject: [PATCH v3] staging: pi433: Fixes minor typo errors
Date: Fri,  8 Sep 2017 14:42:14 +0530
Message-Id: <1504861934-15419-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixes checkpatch warning -- "occured" and "succesfully" are misspelled

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 6b9b7df..6a10478 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -473,7 +473,7 @@ struct pi433_instance {
 	}
 
 
-	/* rx done, wait was interrupted or error occured */
+	/* rx done, wait was interrupted or error occurred */
 abort:
 	dev->interrupt_rx_allowed = true;
 	SET_CHECKED(rf69_set_mode(dev->spi, standby));
@@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
 		if (retval)
 			return retval;
 
-		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
+		dev_dbg(&device->spi->dev, "%s successfully configured", name);
 	}
 
 	return 0;
-- 
1.9.1


