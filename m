X-GM-THRID: 6803435195586314240
X-Received: by 2002:a0c:90a2:: with SMTP id p31mr9434469qvp.2.1584048252399;
        Thu, 12 Mar 2020 14:24:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ecd2:: with SMTP id o18ls1683594qvq.0.gmail; Thu, 12 Mar
 2020 14:24:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu1XY7SW/PBGFkOGftG+7TywtcK4xYdD7IgTUsZc5eixByNTslQ1y8oJhoBDfqyUxf94IVE
X-Received: by 2002:a05:6214:427:: with SMTP id a7mr3425467qvy.10.1584048250824;
        Thu, 12 Mar 2020 14:24:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584048250; cv=none;
        d=google.com; s=arc-20160816;
        b=SD5PJDC3rF8g5h69hopqqXt+KwX4qxZGoUYj5I1JP1YcAMgJB+h76Tvy0AZI0n3PIJ
         k/gMi8+0N1HYJpmcBtJQlwng+j+VkMpsw6LE+KHFTc6VRDll1L/K83Wz7dxoKyzQMaM3
         EFRmAM+YNw+ZW80reT1+bod9wRpZXjsPi8T31JQPcrUZ5ECXac5YEmgugVXAj+koF1Mz
         QIbbw5P7bSvQo5BlnbU/4p7HPZBqWBwq2lzINvieZaeLWlRFsqQnOoPyp95CdljNsBBk
         CRDRBA9CNL9hvPItH6ejWkGJFT9CmbSuy8zVYvggOhq91mSLIWElrmFq6sRNfYBK9hk2
         JArQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=ZRyIecdxR6VAm+gClhlVfiXkoPo8oqgUhSqhae/xXkuu8duVrkvvcI+v+xJuG5L6cF
         WkqO1BsMHMELL7pn+Fq8TNi8FgDUCMPH4eguzkFQtSsxBBLbzo/w71sz0tYaO3HEoMxk
         PpQGrRX9GWIeutP20nquUAwS//pdIcFsbfm2xmiOaUH1lTfJob8BZjSKPg4FSBheFOyT
         x7rhdTXl1MdUbmfYgV8nxocgaPb/9/EEljfb6PcpApih+aGkd79yRzVv8jtHCxAWqTqf
         MXAskl4fYHCnx7Rbj+sMcq7PV0vlq/zKsohksJUd+cQXahRShwRDAtL+sJSxl3Ut75Zq
         cRQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XI8q9FYL;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id c6si443264qko.3.2020.03.12.14.24.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 14:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XI8q9FYL;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id u10so3073823pjy.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 14:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=XI8q9FYLEvya3s208OYP2RZmcBlEpcTE4WUpQq9JR5V0ZZZ3Dhg7CSwF7FYcqSU4WV
         e19HWlBrY5/86qwk6HB3lS87Mcjz3mktuOYyMvAQSXabfSv2K03NCLhD+ft9K7ap6CBp
         E4T0Ckp3nXv6zYfi8vmqmAgDn2lq+X9Vtq2Vl5goqwNXuetFTX2o+p+GQzZcynSWYYH/
         eZ3uiFs3xYj9OO8FdXOTYJZhWWm1B3DDIYSDzovOSB/5oMPm5ov+WZhxCSW+Lg/bnVsT
         awnrWfjRAqcRlVOzJPp0TlSY+A+UeVtG5UhaYQMDgiSzfDNqh76aaagYFB8hyM9CBFA2
         iT3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=CE4J4Q/GX5/IPQJCVnA2evRgd6vMbBp7BvI5N1bBrIQNyOHGT2pTblxUmY0yOzcsP2
         O+UDlXXbQXziQ6xhq49Tggv9EWph7ZbVvtKHjkq+tSDVPHCwJgo8HRMP500L80DD0H/1
         1t8RTckjlpsLoCGz6cjoZZvxnOVJzJ4xwAHw49C2+IV7BEkqN/gN4PHj/Mcne9GZ5XkB
         uPYvDg+6Yxuvy2cdHdlhgrI5ENf5I+Iml1pCZWvS9ny6grLeuh4kS0pGuk3MNq7M1cH1
         TZ7ziqdL8LcZnbGI3rS0AkXY1m/KCJ1tS8MtWSyJDpLekkGnHH73XMNuG7QIuz1OpYqn
         p36g==
X-Gm-Message-State: ANhLgQ0Wyef6T+Geeyo1yKZqvq6yfulnmBv3Pefv2U8HkwKGelgdXaF0
	5HrFWzGnk8eiZxL+ARMiIQMHl/Mf
X-Received: by 2002:a17:902:d88d:: with SMTP id b13mr9428899plz.228.1584048249744;
        Thu, 12 Mar 2020 14:24:09 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.39.128.28])
        by smtp.gmail.com with ESMTPSA id gx7sm9812420pjb.16.2020.03.12.14.24.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 14:24:09 -0700 (PDT)
Date: Fri, 13 Mar 2020 02:54:05 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH 1/4] staging: fbtft: Reformat line over 80 characters
Message-ID: <0fbcf3ff3a2b31a643293c0098d70f54e994a405.1584045569.git.mh12gx2825@gmail.com>
References: <cover.1584045569.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584045569.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

A long variable name beyond 80 characters gets exended into the next
line. Reformating the line makes it more readable. Also adding an extra
line for the next instruction following current if block helps
understand it better.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index d3e098b41b1a..4f362dad4436 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -1186,7 +1186,9 @@ static struct fbtft_platform_data *fbtft_properties_read(struct device *dev)
 	if (device_property_present(dev, "led-gpios"))
 		pdata->display.backlight = 1;
 	if (device_property_present(dev, "init"))
-		pdata->display.fbtftops.init_display = fbtft_init_display_from_property;
+		pdata->display.fbtftops.init_display =
+			fbtft_init_display_from_property;
+
 	pdata->display.fbtftops.request_gpios = fbtft_request_gpios;
 
 	return pdata;
-- 
2.17.1


