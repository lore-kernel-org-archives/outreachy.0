X-GM-THRID: 6251940862989697024
X-Received: by 10.129.109.197 with SMTP id i188mr21571348ywc.8.1455643415341;
        Tue, 16 Feb 2016 09:23:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.11 with SMTP id z11ls1956030ioi.54.gmail; Tue, 16 Feb
 2016 09:23:34 -0800 (PST)
X-Received: by 10.50.79.161 with SMTP id k1mr18762753igx.5.1455643414607;
        Tue, 16 Feb 2016 09:23:34 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22f.google.com (mail-io0-x22f.google.com. [2607:f8b0:4001:c06::22f])
        by gmr-mx.google.com with ESMTPS id xh11si1054737igb.0.2016.02.16.09.23.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 09:23:34 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) client-ip=2607:f8b0:4001:c06::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22f.google.com with SMTP id 9so201707881iom.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 09:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=J8HiImorRyWEgJ+/zS3DDPov6441sDn90ci27BmHJOM=;
        b=DG8eLhr5X/BccepQocNr5sF9+lNxveGUCN/FXPfg4JTHpFk4bS+dP+neRmsCQFwe8N
         N1+poa1sIZvmW22Z6BoJiPG7d6Lfk2AdTH6Q2v8AkRHhYnmux9JG5weP33HhNrbiZg8J
         GfwzzulD6cd4dDNSjLkAhQrLGu1MryIKkGGzLV/fq7fa+SpqcEOBb0Ore+ungB6XF+gq
         OvdKHOHzjqTVd0K27Q5dISmeQVTONjCvYoedkuFPx2AfoKiaVY+vo4bhu5EfCmeaMOFB
         ItTDGmuQz9/S0/VjCL++28hoUWHFTgJ+I6qR0aG3FJlcx27rdOqfBxGyk8w96wuaggdj
         bfbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=J8HiImorRyWEgJ+/zS3DDPov6441sDn90ci27BmHJOM=;
        b=C4TRUmVTR4QdrwzLDLhVKPFI0B7jneH//8+iEiDkUJ/BqSS/I5wFin8sNGTeEDmvR1
         UHrh1Jag5fwiiAJzgC09sULT3RgA8as9DuO1uSJa2euy6rlHxwBP6qbwQgLPy28Zf9Am
         nN7EyUJwsGBdOHzUn2hAPuGtiLuOdeUlSYHmw/QLDrwXWFFW+6Mep/sHn2h1dVnuxtiR
         pZTEdpAbcvS7KV2JvoVilN/o4XLI970PxibtkPOyk7zUkCZF4qolxQDtQdD10zWJB5qC
         ZnbGlwJvl5Kfkgm/0aDe3kF0eWW26rZUg5KDja38vAS3B8XXhE/WrVcTAndF6ao6oWD1
         i1tg==
X-Gm-Message-State: AG10YOSwZg2zunfCY7gQqFiSjJjZ3ey9Tzlm4V570op5FlocNlD2QntvAEulOjpYVCDZzQ==
X-Received: by 10.107.137.100 with SMTP id l97mr27577634iod.110.1455643414449;
        Tue, 16 Feb 2016 09:23:34 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id f14sm14271312ioi.20.2016.02.16.09.23.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 09:23:33 -0800 (PST)
Date: Tue, 16 Feb 2016 17:22:51 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Change kmalloc to kmalloc_array and rearrange statement
Message-ID: <cover.1455661012.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset changes a call to kmalloc to kmalloc_array and splits
the statement across multiple lines to respect the 80 char per line limit.

Janani Ravichandran (2):
  staging: wilc1000: Use kmalloc_array instead of kmalloc
  staging: wilc1000: Rearrange statement to respect 80 char limit

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

-- 
2.5.0


