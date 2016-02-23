X-GM-THRID: 6254552091181711360
X-Received: by 10.107.8.216 with SMTP id h85mr35697443ioi.0.1456254224226;
        Tue, 23 Feb 2016 11:03:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.19 with SMTP id y19ls1070037iod.105.gmail; Tue, 23 Feb
 2016 11:03:43 -0800 (PST)
X-Received: by 10.107.135.209 with SMTP id r78mr33952030ioi.19.1456254223893;
        Tue, 23 Feb 2016 11:03:43 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id w126si1615346ywe.6.2016.02.23.11.03.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:03:43 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id b67so144231299qgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+XbSSf3LhIomMTNpBwfQNnZm94TKiYdhWBAcslLqT4Q=;
        b=YyKeKRBPzUV8ekJI9MXxostd5zNf2cRcXRYnUcu37hm8NHvrHxIdiXe4f10OihC1Mj
         0ZC1szJsHKkYDoTsA+/m43A68dyXfujP1ZjV/7oJDJi5tLNR0u26cMQ0zfa3f0wXNeTs
         fwKTwUlwPIBIZlB7hsd1m8ImOdE2VEzsn3IMFdepyC2GXuMATdWkUmjWeuP3Q90AkbvQ
         RX9kjoqVOc40JnI2KI24OoM97ZOsn3m7rciaUZPZsqlmhdfzZDvE68MftnygIJ+XCG17
         gk+WtJ/c5lLxh8F/cJ7YSD/e5fpiftXfpWE12YhYBO+kwVX+kh37sogXhNI+iCJqYHTa
         Feew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=+XbSSf3LhIomMTNpBwfQNnZm94TKiYdhWBAcslLqT4Q=;
        b=l2gNc/eTPUxUXGy4RPbfcFRCHT1EW4oIyJwBu5VaWZn3gUUx40U8bSZYKwriyKYmyK
         3ML7qbJVeehND6eSVDaNNEzwwd0fomtalIbiOEQwAUIe3od6hWeQ1Hujgek5wu/63crQ
         BYD72UnCbi+OUitDGlhZsdvb93omdGYYB2wYNCRwiZwIe/BFpQoBgCHc/HeD2N6eI1Au
         +Kbd3GqNuGBWo/2bEevhlOZaXsDiUXfYTC1SFIGBeCqAzOX2retWMtDEbMLSEE46bpmE
         04BF/tSRfvM/YhQzSznMsIjNTNZKWPIzyihl/Y6bX7QK8FisbWMbxuPhhGQkgEde9DCm
         DQdA==
X-Gm-Message-State: AG10YOSXi3RoJlHGhFrq5nH0PZT2iWOX1dlzXuarPqAlyfwHWkaEXrRrK5rQQXmapVDEFEIOiX+XFduO//rwSg==
MIME-Version: 1.0
X-Received: by 10.140.23.81 with SMTP id 75mr43475425qgo.35.1456254223684;
 Tue, 23 Feb 2016 11:03:43 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 11:03:43 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602232000530.2040@localhost6.localdomain6>
References: <20160223181623.GA20782@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602231950320.2040@localhost6.localdomain6>
	<CA+5yK5HbDKJoRZYOa0PuJjAOuQt68yVM-=_aGR=C7im=E5Vo3g@mail.gmail.com>
	<alpine.DEB.2.02.1602232000530.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 00:33:43 +0530
Message-ID: <CA+5yK5FFL0JV8t+XjOh-CsGj2EdngD7e-GKrYN24ZH99bn1KVg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Use
 devm_ioremap_resource() instead of of_iomap()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 12:31 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> The link for the two patches doesn't work for me.  Do you have the commit
> ids?
Commit ids c3f0dd38996d5f4e7c681099ba18cc1587155edb and
b5f3b75d9d3b5526d973fc0bfee5680bdc6acf2a

Amitoj

