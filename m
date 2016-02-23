X-GM-THRID: 6254479074591244288
X-Received: by 10.140.101.242 with SMTP id u105mr4397576qge.12.1456235752314;
        Tue, 23 Feb 2016 05:55:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.133 with SMTP id w5ls923912qge.29.gmail; Tue, 23 Feb
 2016 05:55:51 -0800 (PST)
X-Received: by 10.129.88.135 with SMTP id m129mr31179215ywb.47.1456235751841;
        Tue, 23 Feb 2016 05:55:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id t198si1601299ywe.3.2016.02.23.05.55.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 05:55:51 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x232.google.com with SMTP id b35so136058549qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 05:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=vG2NZir8SxmBGbJ0I+q+qUjyb9Hq6roTTZR/jPY7ecg=;
        b=Lptxfq6Qg1Fz36iMM50jUcuMjv065SBQ3CecYHXLMC9M+Yn521atHasE8BpYLw/u0x
         Zi8WWCubqFQ4Q1QrI2PSBlSTtgWp4TDqKwP4xje44htiu6FZ5ZZFEpWl5zOpmHyix09E
         T41PJ8YJN5aAkqv4L9TMyBvNNjUtPkOuUgdczbcQ7GWuJbXiNyrlQpdWNRvs2irYcRbY
         BkluEj9XCofUkFkXHjwSUf16fCa+IVCS+f0yeQAw4a+Yhd+E2ZH/UNwCJq6f//RpyCz3
         cOosGPAvFVkqfnHsTDFC8hdObSSYActtpIvbtaB/oof7VL4TQsZcybzVr49J4h9mYoYk
         b/UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=vG2NZir8SxmBGbJ0I+q+qUjyb9Hq6roTTZR/jPY7ecg=;
        b=IvFKtKpvkalVbITN5xkvZwLPgStbzITBXahKcpv5q2nZKdsVM7U/L2gd3gADyCWA9d
         04YXbjQcGY5G7fa6g2HVrzwjvTvYU2f5wDBInnMlbcOa937WqrLft7KeYIykLhrJVlZb
         bDlbF5r2AZeFGyAu9W+gSSLALudmWzb8qncpCaxnrdHNaezLgt4PtVMeuq+DhRdWE2iS
         pFSvg2Tj9tuLKabMW3Pybri+eP2CLI3/0f9smALrcuqbLAU25w7xBWxCQE4plKz80BXz
         ZCyJ+YXgyfpWUj3RvpWQiAVNmYU8yokIWh0T8uo6vwJN1LE5qyV1lRQbmm9BiGwxVvri
         Grcw==
X-Gm-Message-State: AG10YOTmefSoS47AZuDrEJBYJ+ra2jAnKXvZ+vYf5VbN3Mg0kEPIYkLm+DW4uWwkWQN4/TOsGuTA1u79v8E41g==
MIME-Version: 1.0
X-Received: by 10.140.167.135 with SMTP id n129mr42153828qhn.73.1456235751685;
 Tue, 23 Feb 2016 05:55:51 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 05:55:51 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602231454000.2168@localhost6.localdomain6>
References: <20160223133302.GA3944@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602231435060.2168@localhost6.localdomain6>
	<CA+5yK5Ey6zJzef7jzbgsUk2TYYZ_+AdJ8Suk7L6PKYGepzwHRw@mail.gmail.com>
	<alpine.DEB.2.02.1602231454000.2168@localhost6.localdomain6>
Date: Tue, 23 Feb 2016 19:25:51 +0530
Message-ID: <CA+5yK5GnUXVvJUnw8f6_8O7uhQ4HwcaDfHWF6PAsZcTqDAoW-g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: libcfs: use swap() in cfs_hash_bd_order()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 7:24 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> Yes, it would be better.  The swap has really nothing to do with the if.
> You can also make a series with the other change, to get it done.
>
> julia
>
Okay, will send a series.

Amitoj

