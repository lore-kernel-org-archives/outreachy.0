X-GM-THRID: 6251877540046045184
X-Received: by 10.98.33.209 with SMTP id o78mr21327490pfj.6.1455628671310;
        Tue, 16 Feb 2016 05:17:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.137 with SMTP id h9ls2643319qgh.22.gmail; Tue, 16 Feb
 2016 05:17:50 -0800 (PST)
X-Received: by 10.13.248.4 with SMTP id i4mr21056199ywf.20.1455628670528;
        Tue, 16 Feb 2016 05:17:50 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id l85si1807714ywb.2.2016.02.16.05.17.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:17:50 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id y9so133463659qgd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=V3FUAb3IAXhahMDzCKUna+T6mA1CXWJ8xi2rx6ePxMo=;
        b=Doks8SNJEd4iiyhgaUnZzO37xZz5nOuXK7is+uanUMGmSDE+tdTrznQpkRgz9cp9pF
         uiGcLTFgEBxNU4+acNMgiKpNnaVFDBjLajKl/O0c++1QZJqiSC2GQJfOv+yQNhkr39nT
         lsfqqZL4F9UvVSyj/Y0Dito8MYCUjExYMSkzZTa5l5oU0u7y1dwWxdbgLfHcY6pX/j89
         nt9Cqe/rOcBl276NwjVC0oX34+bKO2ot8FIZZ8rK1U3DkjbLyRhIR0TaG9c1A3YOq/1q
         /int9/Jv6FndQileeG4XjLHLetmVcn/9uKpDUeoOmKENyxiPHYp0KddFIN3OPrqEVN58
         4YHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=V3FUAb3IAXhahMDzCKUna+T6mA1CXWJ8xi2rx6ePxMo=;
        b=CxuxrUJry0N1Lj7nY7tB29OuJXn2mAYZPrAyki4DB+6YnJPxT6qvfTOOQp4jdCfTf/
         WheWD0wGz8TyqT4PgINDHXNWxwNmMpZ14O4GtZmaIVXHzpWreweHc/hRVAOci+aKwZj+
         0DIAogezbO0kYyXdB09KgmvYoJICx9Tj2XeyDE+pNRdygHLtao9lOMwzAewSciiNqqod
         8buLvWyvSVgpvsB5Jqi0j5nVFEfh7LtwuWnvRdy1nanhps5+nWXl0GR0pJZvpUzlSBKE
         OZt4HT6/SEG5Gmy6Z2/HmFdeympsAp0sCvjI8Fvh6EwwI3SzA6Q/02of+Ft6W4RUbEUh
         OHmA==
X-Gm-Message-State: AG10YOSXXBrAY/2M5L3pUZGqCcEk8yFrqGXdW0EOauwApEeMVFm5L86UIUVK7BtDUrhL3A==
X-Received: by 10.141.0.212 with SMTP id b203mr27657516qhd.104.1455628670395;
        Tue, 16 Feb 2016 05:17:50 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id x76sm13033050qhb.19.2016.02.16.05.17.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:17:49 -0800 (PST)
Date: Tue, 16 Feb 2016 13:17:08 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-wireless@vger-kernel.org
Subject: [PATCH 0/3] Modify function return type and remove local return
 variable
Message-ID: <cover.1455645880.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset modifies return type of tcp_process() from int to void as
the value returned is not used anywhere. Furthermore, the local variable
used in the return statement in the function is not being initialised in
all code paths. This variable has been removed as it is no longer
necessary.

Janani Ravichandran (3):
  staging: wilc1000: wilc_wlan.c: Modify return type of function
    add_tcp_pending_ack()
  staging: wilc1000: wilc_wlan.c: Remove local variable ret
  staging: wilc1000: wilc_wlan.c: Remove empty else blocks.

 drivers/staging/wilc1000/wilc_wlan.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

-- 
2.5.0


