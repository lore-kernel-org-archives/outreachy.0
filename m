X-GM-THRID: 6388169805845757952
X-Received: by 10.129.49.211 with SMTP id x202mr2529338ywx.25.1488016534752;
        Sat, 25 Feb 2017 01:55:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls9429376ote.14.gmail; Sat, 25 Feb
 2017 01:55:34 -0800 (PST)
X-Received: by 10.129.155.201 with SMTP id s192mr2370317ywg.159.1488016534436;
        Sat, 25 Feb 2017 01:55:34 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si1822480pfa.4.2017.02.25.01.55.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 01:55:34 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p185so1941765pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 01:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EQvZHkvILIGPbFCcwDtHFn3/gc5zFBCDmY9Ma8FY5Is=;
        b=IjwxNot6w5+wFtCxrk4Lb7pemNzwSjnvXtvMWAzCc4h3dFBwn9/q1c+zm8txkrv88d
         BNgBo1frClv+HNhNwhhJV0DFRd9dVM4BKsDtw2D0rkY5EU83umIVCpaYiijozyZK95Qw
         fh2WWPk53DfqFjP8AsspQ71kZ3nT4OQuKycM/jkEeT7GzVQJHMvEIh6KGkNOT5fue8MQ
         AFMo/pjSHWLM4K5I3qFvIez7exyeHG28F2CLm9CytHf3DeRxtrdt0IEkpzXf8ApTRgjB
         f4ax3ED0ypugNdY96DjiL/egysnsxdCUDMq5ubyrjM/OG3xlx03DQRYlhvqbHlSrEYZk
         x3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EQvZHkvILIGPbFCcwDtHFn3/gc5zFBCDmY9Ma8FY5Is=;
        b=L6QxXTACjOsbuArJTH9X7pFzMnMLm3Oi+r3Ic+fTqg1PYtdvqLDNJdTBYHJsLqRqkt
         o2+533r9pAV6QGBEXW/iS9PPmDonCi2RhB75lLR2jI1ICtqejlYFPSc+9CUhLEybZ8ux
         CbNKD08DNwpQS7BDcBvWNOb5H0LtzoyHUnd1S0ef8WggEraOz6zJgaqKWcly7t5SZ/w+
         451y3ljCAm/bpXcZsK3YFz9WQ+soFJXDEOuTdiZJkWjmnQFXhnlk0YBaeHHX3mV9NvNp
         dt+MfpgNF6ZQ1r+oayyEIDRk2aBBh4n9HpeZj9kVEslyf6XFoJEtEUQsMltAI8NtD44w
         5h/Q==
X-Gm-Message-State: AMke39kTESIGx+BSc/DSFCjJFv30RUUE13W9QHCJj1KtY/Ix6ODAfH7CExx+iUFRjz0f6Q==
X-Received: by 10.99.102.134 with SMTP id a128mr8921056pgc.215.1488016534206;
        Sat, 25 Feb 2017 01:55:34 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id 202sm14353940pfw.63.2017.02.25.01.55.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 01:55:33 -0800 (PST)
Message-ID: <58b15495.d316620a.79234.0c93@mx.google.com>
X-Google-Original-Message-ID: <20170225095530.GA4316@<rvarsha016@gmail.com>>
Date: Sat, 25 Feb 2017 15:25:30 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8712: Remove space after a cast.
References: <cover.1488015591.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488015591.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch fixes the following checkpatch issue:

CHECK: No space is necessary after a cast

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/rtl8712/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 5f43a1a..8836b31 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -164,7 +164,7 @@ static void loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
 	registry_par->ampdu_enable = (u8)ampdu_enable;
 	registry_par->rf_config = (u8)rf_config;
 	registry_par->low_power = (u8)low_power;
-	registry_par->wifi_test = (u8) wifi_test;
+	registry_par->wifi_test = (u8)wifi_test;
 	r8712_initmac = initmac;
 }
 
-- 
2.9.3


