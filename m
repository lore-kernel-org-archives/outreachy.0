X-GM-THRID: 6664742734726692864
X-Received: by 2002:ac8:362e:: with SMTP id m43mr13003824qtb.53.1551756340406;
        Mon, 04 Mar 2019 19:25:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:8b55:: with SMTP id d21ls3199461qvc.2.gmail; Mon, 04 Mar
 2019 19:25:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqyFtMckcDLaX9EwkvOb3XsXLHYAGd5n1bjjlVPJa3DZ7pypDrcA6mGNHm9apQh9EU5r++3o
X-Received: by 2002:a0c:d05d:: with SMTP id d29mr326148qvh.44.1551756339802;
        Mon, 04 Mar 2019 19:25:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551756339; cv=none;
        d=google.com; s=arc-20160816;
        b=u10XB3dq6zttaIzK42LyDOoNmeB8nVFGh9dyb2glEgSnuIQZDZO1c3SS8SV2CEtg8P
         Ol244cNgciEtCv7IZfbOU1iYio9VlK0ut5KY94zg9urD3Pkizi6unaBCtIJuSDb/A4jO
         ePm+ekR3ttIuyhjT8YjTnpjgKvn9NK392LliOHx1tm7yDMmPHoI6FwDEVgfi7H5DN4Nj
         9axVzBAj41BGcNo5OAAJzojtRZoPtn9bl2u4s3wkQY6qqeDJ+EoAreQoEmqox0MQvhne
         QcJ36lJPAh9G+Z9x+T2Ok9s1caKjD9YT8Ozdrgd0PF5SZoAxyNlLdFkrZTaDuIAnDDe5
         Utyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VlppK6ovVpFjDshQlrF3RQHNbRvDaJMIC1odSC70X8A=;
        b=Sw5JKtsFZoHyF38GQ9Wb2lS8v4iCgLB0UNQLr8+qrYZPZqExVXX57wyU6O+VNX+yg8
         Yes/lciHQ8aBc/tjZch5NklhCGIUnmayCvSokQZqkNqtNmdVcQ3hArPh9UZDKWMLupWI
         tDRPgC7QG7+YF6iKogkSQrit4y47GXYzaFED0mYD84QT2rN33oRThBbCo16EG29hgZbD
         CuRVCaj5x9loSrQkhBjFIq252no9+oS6rce2vZVbATHAMO3ygZlPbvbAyia5FsLHX8p5
         X1Y1ToFpm/yGA6uS+AONABpg6zpRCGsIPE6IBZwzH18H7irgBeQnDzDY3XvJFpKUfzx0
         511w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bTffw8+v;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a3si308429qtc.0.2019.03.04.19.25.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 19:25:39 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bTffw8+v;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id n74so4545476pfi.9
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 19:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VlppK6ovVpFjDshQlrF3RQHNbRvDaJMIC1odSC70X8A=;
        b=bTffw8+v+WGp9Uz+MCo+0KJtaCZ3HNHEX6iZ5vG6JBcJO/GGp8GeJcbtqFYXfj9En9
         BsDAXC90uf4Qa5eLukC8HVgWMVTrVMqxRz5NtlECPfbnmXDgYJIn0axSHj0+zAAbKB0x
         +VtUWVkjIBfh4RCE6ILNaqzNpu+ZzEpmQ4oCCmJw4b0Dz5EzQ/xnI/76G5cYSAtLMLHk
         Pgx30Xr+kVa7PCZZB71snl+/gPG2TfZOeAdcTP9eQkYMLl7uPMYKF1kpFHgQeMPgkzri
         VNvGgpyeH4hbDmPp8brtoA/OZkIGkHN7L6oBiPYYU2Ml0bjq+H0a7G7NGlLdI+dqhedT
         HC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VlppK6ovVpFjDshQlrF3RQHNbRvDaJMIC1odSC70X8A=;
        b=FI6rsDnANQKuU59TPWAeLsV4MIzN/GYY7MfVliHGPemq0PxZvabE46/ze4WCYibCbJ
         Z3fUlGbaea25ZIkQGcUcU7lLamrhmRK4RAqE2eXTomTZD+OEnj14easxnCS/yTN+PpTL
         7pCg9lzkDRmHZhHpWhuBOkaS2+N9+YgYv8seyt9AlbQ0N9egYiq4q89vcpm3oVVYGLMo
         KEz6aKmtUXm8krzAZA8CSssJCs6vrUtUARkbWYBc/8kx951WNPw1lvEl3zT7Ez2MKJsU
         ETgIoSlcHvR4nIZD6Zpjz+mVGSLBtEnQro2gbRf/NzGGlqEVigu7sAF8VhNIFheB9/4B
         +ReA==
X-Gm-Message-State: APjAAAWGBv9mX3YFxxtuP/7+kPTqHLLCX5TT/6He1NEzwuMmMKcEcOYW
	4AnYk51qbsQ2L/FhiZml2IkFJT57EniruQ==
X-Received: by 2002:a17:902:f095:: with SMTP id go21mr23502055plb.199.1551756338818;
        Mon, 04 Mar 2019 19:25:38 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([112.122.31.4])
        by smtp.gmail.com with ESMTPSA id v186sm12591487pfv.184.2019.03.04.19.25.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 19:25:38 -0800 (PST)
Date: Mon, 4 Mar 2019 19:25:35 -0800
From: Wentao Cai <etsai042@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: r8712u: Replace '--help--' with 'help'
Message-ID: <20190305032535.osg6wtrk2v4x6nfo@debian.etsai.site>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

This patch replace '--help--' in Kconfig to silence checkpatch.pl
warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/rtl8712/Kconfig | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
index f160eee52f09..622ad14f232c 100644
--- a/drivers/staging/rtl8712/Kconfig
+++ b/drivers/staging/rtl8712/Kconfig
@@ -4,14 +4,14 @@ config R8712U
 	select WIRELESS_EXT
 	select WEXT_PRIV
 	select FW_LOADER
-	---help---
-	This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
-	If built as a module, it will be called r8712u.
+	help
+	    This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
+	    If built as a module, it will be called r8712u.
 
 config R8712_TX_AGGR
 	bool "Realtek RTL8712U Transmit Aggregation code"
 	depends on R8712U && BROKEN
-	---help---
-	This option provides transmit aggregation for the Realtek RTL8712 USB device.
+	help
+	    This option provides transmit aggregation for the Realtek RTL8712 USB device.
 
 
-- 
2.11.0


