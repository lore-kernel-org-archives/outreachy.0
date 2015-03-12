X-GM-THRID: 7869323804672
X-Received: by 10.152.6.232 with SMTP id e8mr6346158laa.2.1426167176796;
        Thu, 12 Mar 2015 06:32:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.227 with SMTP id gh3ls832522wib.19.canary; Thu, 12 Mar
 2015 06:32:56 -0700 (PDT)
X-Received: by 10.194.178.67 with SMTP id cw3mr2014423wjc.2.1426167176416;
        Thu, 12 Mar 2015 06:32:56 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x230.google.com (mail-la0-x230.google.com. [2a00:1450:4010:c03::230])
        by gmr-mx.google.com with ESMTPS id wz2si691155lbb.0.2015.03.12.06.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 06:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) client-ip=2a00:1450:4010:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x230.google.com with SMTP id gm9so15763044lab.13
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 06:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=oMuUPjbvIZXJTG8RWLkm1TYf8geTqWqVkEdt1bFiQyE=;
        b=qJqopRt0XgbTziJK4Sh8Y14mgA6/hO7xS34+FzU6UesKoU7qo5CrUN7HNkJL3umu8A
         EICtkzweMRp6n6dj0LKrR1UxBuvQ8gHh5Ljonu3/kPNMfIevqifQMWEkhmq+pw+qaCTf
         mWrY7JwJQ1ZX7hs9cpk4xhPGHyjc5c1a/UizUtLwP9bSF7doEnzzMmPAiPeCdw4xgXdT
         KDipWQdR3uAx2qxjMRMBW2OU8bSf5jsbnSvjZv9Hc+FOgIQxo6gi+E2BqdOV/ezZOPSi
         0BH9hRyD0mXCN0dcN1T5hVY/kPSi6IdvgI8xH7WZBRomZDsGrJmRTFu8zXeKwD2QRiYa
         eCAA==
MIME-Version: 1.0
X-Received: by 10.152.19.228 with SMTP id i4mr39831046lae.77.1426167176328;
 Thu, 12 Mar 2015 06:32:56 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Thu, 12 Mar 2015 06:32:56 -0700 (PDT)
In-Reply-To: <20150312133123.GB31417@kroah.com>
References: <20150312124643.GA16399@akanksha>
	<20150312133123.GB31417@kroah.com>
Date: Thu, 12 Mar 2015 19:02:56 +0530
Message-ID: <CAHjTdYf5W289fQ8g4JHq4aCq=R9R9vL=K22wgqLvH=pTixegdw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: power: Replace use of
 devm_kzalloc instead of kzalloc
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e01493c22ef7b670511176b8d

--089e01493c22ef7b670511176b8d
Content-Type: text/plain; charset=UTF-8

Alright, I'll keep that in mind :)

--089e01493c22ef7b670511176b8d
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Alright, I&#39;ll keep that in mind :)<br></div>

--089e01493c22ef7b670511176b8d--

