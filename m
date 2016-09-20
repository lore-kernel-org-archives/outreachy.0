X-GM-THRID: 6332110016814776320
X-Received: by 10.107.19.87 with SMTP id b84mr6070826ioj.73.1474394395160;
        Tue, 20 Sep 2016 10:59:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.6 with SMTP id a6ls2476233ote.22.gmail; Tue, 20 Sep
 2016 10:59:54 -0700 (PDT)
X-Received: by 10.237.32.228 with SMTP id 91mr16774210qtb.22.1474394394856;
        Tue, 20 Sep 2016 10:59:54 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id f12si102740pfk.0.2016.09.20.10.59.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 10:59:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hi10so1200368pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 10:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kLOyZ9MWjgsgTixX6ADWbIqB+xSviL20mqzhE5WJhkE=;
        b=BdnNKDIQB4AkqUXZ4r0hlvixsGcbwAq1tF3w6QCVqrJWQ/GTLTxzxGFoJriMcemCHX
         DDLDtyyisk73D9WaRG+WsDeuBqVFq1nVQ44y2hrZGv2vcvp8Q3b9kBXogKy+q/1iZnSj
         YfM/uInC/8029dQO63WAefX4VCG330yPPkIIY5xFWUX3Ybr9JZnjYqt/tvI0CVzPFQq9
         q/AvawiYiqoXn4jj8WelNMODZntRLnPc86zsiElrNJyTniLrJir9nW8ayZi7fORQh16/
         mWRNtxG60vMG4VMu94CvwG3Q7kf6xouz/2tMdYKHNZzylAl8drSLw9c5skaXanIM2tu5
         z5Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kLOyZ9MWjgsgTixX6ADWbIqB+xSviL20mqzhE5WJhkE=;
        b=kDXRg4ZpA+/KJ9uXMAXQe2/ctK6lyinfUvsYH81ZxzlozIVAL65Gfs0oWO+XOI80W4
         6fPVpHWOdlKG35ZJ+Ii+hMfuSYICf4slp1AutlwuUUP+awjqCyi3FC4fC3p8CyY1psUI
         apBKvdgHj4dfcX07lq2CsyoWq/aRH5X6eYNJRm8EZZTVYVqJMhevqOFCuGWgKxEMznn9
         0QLZJT5z9AjKNN1j1gRlxKtd+TiRmqyr9QFOM+spSS+85pud17DVkuAFiRaUqPPw5/mq
         swX5Eu9b6fRyj72Ix1pxyN5YwN+5UiMWexL1K/wiLaSWdYFvs+z74R0l52NuKibL+D3N
         E6Mg==
X-Gm-Message-State: AE9vXwO8XNG77nrRzjXIJ+sdduzYgYKUOGcfSScI81uV6wrSm8i7MUxS5pjY9AvDhWgliQ==
X-Received: by 10.66.149.138 with SMTP id ua10mr39924424pab.146.1474394394664;
        Tue, 20 Sep 2016 10:59:54 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.237.254])
        by smtp.gmail.com with ESMTPSA id ae7sm40837558pac.19.2016.09.20.10.59.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 10:59:54 -0700 (PDT)
Date: Tue, 20 Sep 2016 23:29:39 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/3] staging: i4l: act2000: Add a blank line after
 declarations
Message-ID: <cd625e3ef14e82ed878dea47da457fdfa3e8e6d1.1474393521.git.karniksayli1995@gmail.com>
References: <cover.1474393521.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474393521.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following checkpatch.pl warning:
WARNING: Missing a blank line after declarations

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2: Rebased so that patch applies to the staging tree.

 drivers/staging/i4l/act2000/act2000_isa.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index 38ccf4e..5385587 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -256,6 +256,7 @@ act2000_isa_receive(act2000_card *card)
 					netdev_warn(dev, "act2000_isa_receive: Invalid CAPI msg\n");
 					{
 						int i; __u8 *p; __u8 *t; __u8 tmp[30];
+
 						for (i = 0, p = (__u8 *)&card->idat.isa.rcvhdr, t = tmp; i < 8; i++)
 							t += sprintf(t, "%02x ", *(p++));
 						netdev_warn(dev, "act2000_isa_receive: %s\n", tmp);
-- 
2.7.4


