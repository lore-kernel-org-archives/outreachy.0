X-GM-THRID: 6531959707081375744
X-Received: by 10.55.104.147 with SMTP id d141mr5274514qkc.4.1520840382705;
        Mon, 12 Mar 2018 00:39:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.112.93 with SMTP id y29ls2073544qtm.3.gmail; Mon, 12 Mar
 2018 00:39:41 -0700 (PDT)
X-Google-Smtp-Source: AG47ELv170qGMeQwX9eQkSdK+q/hwqj9TS7zq1wWrnh2ovoqcInHN3ItqbdRblsZWU67UmsQupSj
X-Received: by 10.200.26.237 with SMTP id h42mr1195423qtk.13.1520840381590;
        Mon, 12 Mar 2018 00:39:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520840381; cv=none;
        d=google.com; s=arc-20160816;
        b=eP3bkr5+DpXqiH0rTQflr6Z08rWp3TpCphxT6XTqxZdWXqv7j2rMTJcpoBDiKqDTF9
         J4n39Erj0Uiaqq+6vDZOKLy0FkbzwLsIfnEobkyd6akD3RPT85yde5WCas1AaOLnN4JJ
         pOMN18gS4ejARc64g1I8SAIVQfHpGbXk5HSlvZC5ET53TSPZM2+0TDUPf2qg0oJjpXbV
         rSFeP0kZQp26LE/8FaQ4T4e9cC0ti2QVmHvmLByh/dAXGYnhOIJKvRJoI+TJY3cq5VzL
         JnuYC+AFCIOQJFdAyQ7NGi/pUdpActB1Zt6qy+gtYi0XCNfvnGXrpCOeDjklqodDERG/
         PCBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=rs5ZEOwfMwwKV/tKlIauriTTG+678E8chjEnOwKt+6M=;
        b=P9oEbvkETdj0SeLigx1aHA4YUsQkNO+wwkZlrudFdhBVn0ctEv+rhUGU3kMkE6ilRG
         8XpeH0cayDvfwPoNdG8ZSGDYEzDLa1qW7yDoggJ4sMchUjmNQna07PFsr11Pti8KgOrr
         AvrMiChFDaK9F4BL4kx10fc7SWZeMRvV9hleirPps2TF1+8cJrjvJFrdc54irzYgC8Ht
         Q4TYDWP2xKOdL2X2uBDPxIHnqyEm+XmhNZRIqajY0taSub8vV1rbHAF8WK/922xawuDY
         o7hU8hHq1XYTIUB+8sVb+9RaoneWDGe9eMS0Kag0ydV7mWNAU7eYmaD8iqu/l3xdxNUD
         c5Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=d26xiZfK;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x235.google.com (mail-it0-x235.google.com. [2607:f8b0:4001:c0b::235])
        by gmr-mx.google.com with ESMTPS id o5si400149qke.2.2018.03.12.00.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Mar 2018 00:39:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::235 as permitted sender) client-ip=2607:f8b0:4001:c0b::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=d26xiZfK;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::235 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x235.google.com with SMTP id u5-v6so10179011itc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Mar 2018 00:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=rs5ZEOwfMwwKV/tKlIauriTTG+678E8chjEnOwKt+6M=;
        b=d26xiZfKtzXZTjcfuWLbOyQr09cwy6VRnO8w/D8B4e0C4TXZgAefK6sy58/Zvabvoz
         XoGNPzEuj27xZyDd1FZifhgUdVEl49M83gx9L1uj9MI4om8cuX60l28Ks3XrzaEZO8Pp
         7Q4KJYkAf039uM35BYIL4RYaUsZFhWWo1BwoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rs5ZEOwfMwwKV/tKlIauriTTG+678E8chjEnOwKt+6M=;
        b=Yre9YMwIV6tdtUAjamHMHALq25qj5clhCK7Et2x2PjIJWwU59ctZW0d2LhWLOPIGr0
         tnafnB/046/DOcr7/BoQGDU7dy/x2cxV8eLhz34B2u+FD16HQCSuqdRvwpBK/vVn76k7
         6L0C3aPRAAwJfQRssMH0PZCYK/Uas86vFOh2B1rPEOqDuxXoJumuOSaHKACqtcNh6bnb
         XinQeuL8huhrkwIsJKIXYUx4TdgxuVBwQnfCK+gOjVK4IKX9hmZ7J+hdjsSP73JEe/ii
         plc82pIlwnPiCaXRdKYG4oJCFrUAZvKQ+ubAR/CqSvrBb3KzwIh3Z2E7b58g9lPOhZN8
         BSHw==
X-Gm-Message-State: AElRT7Fu3cFxBFfxgkUp8puroAh8qCUmqcxvsfi6DEcExgAWBjmtyROs
	VWTysJoIhe8efzHdlfxN7Uhhf41IJ6poW0OPxHSo7w==
X-Received: by 10.36.225.72 with SMTP id n69mr7907475ith.82.1520840380699;
 Mon, 12 Mar 2018 00:39:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Mon, 12 Mar 2018 00:39:40 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Mon, 12 Mar 2018 13:09:40 +0530
Message-ID: <CAC4++KBe-Jt=qSGezX7b5VO2poV0z88QkHrH5VixWkv6erZVdw@mail.gmail.com>
Subject: Contributions Link
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

Which link(s) should I add for my accepted patches in the
contributions section of Outreachy?

Thanking you,
Nishka Dasgupta

