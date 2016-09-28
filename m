X-GM-THRID: 6335309199946285056
X-Received: by 10.66.145.1 with SMTP id sq1mr8463782pab.72.1475079528119;
        Wed, 28 Sep 2016 09:18:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.18 with SMTP id o18ls561998ota.40.gmail; Wed, 28 Sep
 2016 09:18:47 -0700 (PDT)
X-Received: by 10.129.105.193 with SMTP id e184mr8240726ywc.91.1475079527625;
        Wed, 28 Sep 2016 09:18:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id e66si2282648pfk.2.2016.09.28.09.18.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 09:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id cd13so14884872pac.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 09:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ELh70YS2HrpDAfd9XEiBadLwrGHixMHQaDlhxtV51U8=;
        b=uIes2KCIvM3y9MBzFzDnb2QRaLmpKOlXUfWDSZLHCesv0fsAe5VJCvlTAQkYBkpHzR
         Yw6oyaKaXGYJxM9U48mAMuDkKgNvTS9kppaSfXqGlp9Sy7XvylR1cfwBCjvFcXSfTMwA
         7G9pbM1NBZjuawrfoLT7IkIcWjux2O5XZWapylkXv8Gt4pX3rxilm50an2rGaUOLdCiS
         /R9gNKiP+4RCOBj2xe2waqXyqNcellftu21kv2Les4k7YEUXIfB1v8D6pM1sBryzwzZM
         pklfRbjVCf2XAPijhiO70K/2+JJAKeZcOQQ/awT1o0eIT9Mje1MDf27tyrOBo+s606Ge
         MhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ELh70YS2HrpDAfd9XEiBadLwrGHixMHQaDlhxtV51U8=;
        b=ILVRqmC/nhVu6hnhTRtJ+WeGUtwtd6TLbdeU62V06Ri0+rcGfcCJOwlRt5voz430rd
         if4uSL9g6VH+m24Vo4TwT0qIgawIlBuRos65FyF2Ye/OqklInWm9MzI+scr5sb58MFkG
         Sc/LlUC5UmGvO7wbdJeUSr+wE2VPcj+UZKt9VapN5Z8i97FVgtVzhFy38FvbM6FtLSUt
         PpNkr0V3byty6rcAbSZC/sv7VapVIZHxWXRpNkuYySXdK8Q84JcYcokzUDATm/FSAs5/
         7IXICRdB0K4ddHEmMQZeUsOqLcHrZPL+0KBO5XZ4FNqeQGvwAksZfdnkmrIkgsYlqrkP
         UM0w==
X-Gm-Message-State: AE9vXwP4hQ3N8GGqmvNXDYbF3UxPNb2+s6Q71BLs87UCq9YPuZhvD0AXvU9h8Tvt23s9qg==
X-Received: by 10.66.75.39 with SMTP id z7mr58704881pav.83.1475079527300;
        Wed, 28 Sep 2016 09:18:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id 138sm13742739pfx.41.2016.09.28.09.18.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 09:18:46 -0700 (PDT)
Date: Wed, 28 Sep 2016 09:18:45 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] RehasSachdeva
Message-ID: <20160928161842.GB8677@d830.WORKGROUP>
References: <20160928091511.GA23826@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928091511.GA23826@toblerone>
User-Agent: Mutt/1.5.23 (2014-03-12)

Done

