X-GM-THRID: 9790095884288
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2ff1775a6d87248a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.44.167 with SMTP id f7mr4444198lbm.9.1427445378310;
        Fri, 27 Mar 2015 01:36:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.69 with SMTP id kw5ls316760lac.86.gmail; Fri, 27 Mar
 2015 01:36:17 -0700 (PDT)
X-Received: by 10.112.242.7 with SMTP id wm7mr4284010lbc.1.1427445377746;
        Fri, 27 Mar 2015 01:36:17 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x230.google.com (mail-la0-x230.google.com. [2a00:1450:4010:c03::230])
        by gmr-mx.google.com with ESMTPS id xg8si97499lbb.0.2015.03.27.01.36.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 01:36:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) client-ip=2a00:1450:4010:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x230.google.com with SMTP id e2so64797596lab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 01:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=F1R6JuHzm8gOq6tSfb68HPM94zrwtCy5CJiP2i+jSIo=;
        b=n5ilzqi6zSmrVw5Mv7w7lMgAkMzaggryeZaW6PlATmDUjBYalt1G6jShb5xrNUE6i7
         GpWuad/yrg4bfzMN/lZxVvur6AacIdX+I9v7drYwjCNkK6pNQgKCJlwLXJqTw0rU/isc
         QjNyGlYoFW2yIWOe6cWTU7ZHrSQiQrwESnk78wSKjAyFKy1+8tytZYETz1S1uYilPbyx
         jDAfvGCZouypsIrMCSjdnCoiHkp/totjSETA+X6I2sFQXeWCl9Tg5xhOidvUQd7td5gL
         xfOwI4F09cUH8Oeflo0GblUdgEN0a8W2zW1DOpHRwPX0PVBazjcduQWedU9mWfweIOZn
         sOSg==
MIME-Version: 1.0
X-Received: by 10.152.198.203 with SMTP id je11mr16451714lac.85.1427445377624;
 Fri, 27 Mar 2015 01:36:17 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Fri, 27 Mar 2015 01:36:17 -0700 (PDT)
In-Reply-To: <20150326230618.GA13601@kroah.com>
References: <20150326194125.GA25188@akanksha>
	<20150326230618.GA13601@kroah.com>
Date: Fri, 27 Mar 2015 14:06:17 +0530
Message-ID: <CAHjTdYe1kMAs_zXaq6=akLJMnwxWO-Vs0mj=hLH7Hh1bvicTNw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8188eu: Add new
 variable to make code compact
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Alright, I will send a follow up patch on this one

On Fri, Mar 27, 2015 at 4:36 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Mar 27, 2015 at 01:11:25AM +0530, Vatika Harlalka wrote:
>> Introducing this variable leads to overall more code
>> compactness and increases readability.
>>
>> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
>> ---
>> Changes in v3: Aligned variable declaration.
>> Changes in v2: Changed variable name as per
>>               kernel code conventions.
>
> As I took v2, I can't take v3 :(

