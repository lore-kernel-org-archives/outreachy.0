X-GM-THRID: 6336227865604915200
X-Received: by 10.129.50.8 with SMTP id y8mr2904440ywy.95.1475308706277;
        Sat, 01 Oct 2016 00:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.233 with SMTP id y96ls7093606ota.3.gmail; Sat, 01 Oct
 2016 00:58:25 -0700 (PDT)
X-Received: by 10.13.221.133 with SMTP id g127mr3085900ywe.173.1475308705905;
        Sat, 01 Oct 2016 00:58:25 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si5888485pab.2.2016.10.01.00.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 00:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 190so104517pfv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 00:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2Hr+pqS55sUU/nh6/W4l40cZMasYDhmSgeUWxaGhG7A=;
        b=cYoPj+dD68R/r4nBLLOJ/DS1Yy99RKl/5ByaRe0vlj51zhTD3QuDeSKZGpqbjWHl+y
         7Ms4+P7DIiNC4XyiMhKhKqwI1FFuxFAf6O3QmZVNdDCIdPDW6tBsb6DykWBy7Mtb7ohb
         IXUBdeFNNODL6rChO1+HHIZMVn6NSbnlTiXu9oO+Bk30HUaOPlvrXnIU8hISGW9NRMgf
         iiFSpsbES8p5w6VvIV/SvjkwyASPZAoQJ+yKTt5FZwYdZeuaf/SXn/R4+yaSjseZ1vI+
         mb+6vQVtBOV5TYAP3ivfL+khGwEllhjPoeoAtoLjkLl9x2pqQfX4f+esYyR2OCPiAyds
         8yrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=2Hr+pqS55sUU/nh6/W4l40cZMasYDhmSgeUWxaGhG7A=;
        b=T8FSDo0Fl8sowoIQNPBD30vEAi5wdCeG03kutvK+IokSFkgmFy/PJNvCo52JZknEMF
         egu53znSAK7oSThqkFGmeRPthmllkeYJ+41gdmlN05XE8X/6t7p6VCfS93JgLTbFZh/3
         hl9lqADw0iZ5ObIrKTJRdNmE9dXVrTHb8Ngz7oyRXXLmeea/pkGP3dA/dimmgnczzG75
         vLBKVKrt0p9YX3BmA+fft2JrURoXGfxnRMpeqWrR5HlU+Gv9ILBlbzAkcf8thbMezcpA
         jYUeL5A6FkAlxhH5kolQg0E2i8mEeYcA4IUk31x2yxtD6oWy1mMFEdC7CI01aoEfl8T0
         bQVg==
X-Gm-Message-State: AA6/9RkQoom8AuKZ2AyZBJm6PwrZp/ixE/weWkHp7jf9M8VxCB1L4EK8V9pSvoFOs4nU5g==
X-Received: by 10.98.93.25 with SMTP id r25mr9432390pfb.119.1475308705393;
        Sat, 01 Oct 2016 00:58:25 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.202])
        by smtp.gmail.com with ESMTPSA id q128sm25381884pfb.74.2016.10.01.00.58.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 00:58:24 -0700 (PDT)
Date: Sat, 1 Oct 2016 15:58:22 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] outreachy
Message-ID: <20161001075820.GB3233@Socrates-DK>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com
References: <alpine.DEB.2.10.1609302238110.3399@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609302238110.3399@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi Julia,

My top 2 choices are:
1. IIO driver
2. Coccinelle

Eva

