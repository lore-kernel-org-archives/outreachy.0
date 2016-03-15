X-GM-THRID: 6262299386982694912
X-Received: by 10.31.9.78 with SMTP id 75mr23098320vkj.9.1458059999392;
        Tue, 15 Mar 2016 09:39:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.34 with SMTP id t31ls445883qge.98.gmail; Tue, 15 Mar
 2016 09:39:58 -0700 (PDT)
X-Received: by 10.129.104.69 with SMTP id d66mr23390627ywc.33.1458059998765;
        Tue, 15 Mar 2016 09:39:58 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id t192si96130ywe.0.2016.03.15.09.39.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 09:39:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id w104so19238602qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 09:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=rkLaHA3xJ9t8VaI7zfaOHUaxp5VczneAUk5Ru4Y7VK4=;
        b=0We26cJh9jSNR2yeWAyYDnxectW6h9dbqq61OPI0Kv1iFvLda+LvjHMf65YPE3L6ng
         QPzCEZZfx7G2t/qx0YEOR+avDoJNviBDsDKfC+StlCy1F+hOYzRAAWWzuaXMPMFciyqR
         J36ecjPSZ4ZD1kVF6TkCpc+prsYUf6OiFDVb1CAIq7nRCdqdqtetUnfaWYsj102ZiHfE
         m6mwv6yZbnEb6hPcMknyjZaBccc+6yJm//HYGgT8hpRWcviqs4WkVtNyBRwIICRwMRFl
         7/K9e3SvnZ8PJGSYrJYI8+hgzC+fMuSl2npZihk/VQ8RiI0yQ1RweS9p5y/62NUqkfWa
         P6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=rkLaHA3xJ9t8VaI7zfaOHUaxp5VczneAUk5Ru4Y7VK4=;
        b=BEOLAJeXIDlv+MuKw5W8hzBLSzBC1Dg9D8FN9icRRrZxGcAja76otzlaA9r9zny/sN
         NkwxqOJKWYDSzYLJDnXrHVlr5aJlT5CfLGjv7enD4MjIuToxXTDEXGl8/WSyx/vE/nQn
         EhZSXtOciFBF0IyyxRi5djIB/qpNgFlpDwZ3fWyBm36Lb0u+bz99gzdmv3ITVJz/RfXE
         XJ4ejQ+jhjJkRCveMA7Exr6FO8QZRND27wKj35KjrDVgNpsuj5976SeHKf//f/ACoEPK
         eZ8Rd1MyWf/AWXxS3nLAKzQvFUO09jRKqSPcw0yx/OBy5NPh971LOMeMagH8ZSOMKm6E
         Q3vw==
X-Gm-Message-State: AD7BkJL3wwsfYBMHRfaaTBCjaKB29goybRwAzCgq+B1r1OV7biWLMkHoizwPhzaL6R8aXhcuEGnC83sxd1v52Q==
MIME-Version: 1.0
X-Received: by 10.140.143.134 with SMTP id 128mr31176084qhp.25.1458059998564;
 Tue, 15 Mar 2016 09:39:58 -0700 (PDT)
Received: by 10.140.44.99 with HTTP; Tue, 15 Mar 2016 09:39:58 -0700 (PDT)
In-Reply-To: <20160315154440.GA23557@kroah.com>
References: <20160315151951.GA5890@amitoj-Inspiron-3542>
	<20160315154440.GA23557@kroah.com>
Date: Tue, 15 Mar 2016 22:09:58 +0530
Message-ID: <CA+5yK5H-ubVPv7_h12=sB9_TcWAaVh69Y=C272VQbZbY58swUA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: light: tsl2563: Remove flush_scheduled_work
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Tejun Heo <tj@kernel.org>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 15, 2016 at 9:14 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>>  drivers/iio/light/tsl2563.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> Please only touch files in drivers/staging/ for the application process,
> I can not take any patches outside of that area.
>
> thanks,
>
> greg k-h
Actually, Tejun gave the go ahead to move on to other drivers since
the exhaustion of opportunities in staging drivers hence the patches
in drivers/net/ and drivers/iio/.

Amitoj

