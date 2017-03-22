X-GM-THRID: 6400146594222571520
X-Received: by 10.107.201.131 with SMTP id z125mr376210iof.94.1490248630362;
        Wed, 22 Mar 2017 22:57:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.172.74 with SMTP id m10ls1250864iti.0.gmail; Wed, 22 Mar
 2017 22:57:09 -0700 (PDT)
X-Received: by 10.98.34.4 with SMTP id i4mr147602pfi.6.1490248629444;
        Wed, 22 Mar 2017 22:57:09 -0700 (PDT)
Received: by 10.202.88.136 with SMTP id m130msoib;
        Wed, 22 Mar 2017 09:22:19 -0700 (PDT)
X-Received: by 10.200.49.238 with SMTP id i43mr6228630qte.21.1490199739716;
        Wed, 22 Mar 2017 09:22:19 -0700 (PDT)
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id x124si236897ywb.1.2017.03.22.09.22.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 09:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id p64so160153948qke.1
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 09:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=b9csl1SDG3jztpKqUHeInYODDDXTZpiJ4vChxcyvDjE=;
        b=JE7B5KDj2EaOXjypwoPRWfy0ndbldNjVYC8UQsb0ogCMehNLAOWCQ17ga67Rnv5ubu
         T7sd9VoLXiV0r9AD+uoL5YTctU0Q0Eak3udI0A5PY0fDjvz+oJYz8NgowV0yPIS9AXoN
         M/w+Oa/n/x+1qnuUlGtbApuhfgGHMGRgaIadd9IKVy8wbHFzjAP6e09pUxBMr1qjU+xB
         hGdVy1lLxO64/wC1hWJm+BSLGttzefUn3YGmdRZjzWnlL2Kj39kcmH7iC38Bjri6aI27
         gj3GYMijZnPDAVH/swP1h3BrHDClMs0fluUP+vZdOK7O04FJ37Ru1oCSZzIBaws8EnN3
         vEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=b9csl1SDG3jztpKqUHeInYODDDXTZpiJ4vChxcyvDjE=;
        b=ABZMpFpBgwWzNF9f7FDchB1z3dDJrOXO1x8inGbZwOCpeoNoHy3ZTHeH4k80kmsCrA
         2RkFIpH/iYD8UgNeUXnU+OgIeDItF9E33JjTaT/IfgkWYIf4lbML1gZw8ZrNXrKmBHFM
         laIzl9y7zTcPzt8ouM6kFan139HBC3HuoV1oxFJCnv6QM8K5e9MSJvF9HUqw4C58SHDY
         nddgBxUcjAb6o2yZMQY2UjuQkgsDE7RxQrjEgkg0QIWdcRQAByrBAriaadKuncuAZOF2
         ircBqwdw52zmFyxTJ2gSiELQT3RyJquyJSbNIl4FumONO+Pz4tpath6vPyb0fUL2RrwE
         skYQ==
X-Gm-Message-State: AFeK/H3ewqQk8I+TTqdW7XaVrWdKgmkKtxgssxgC++lD9o8Nncc6q67HSU2nptxeFJ40cLtbW5z8bC7AcxbsEw==
X-Received: by 10.55.64.74 with SMTP id n71mr35185120qka.250.1490199739510;
 Wed, 22 Mar 2017 09:22:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.153.93 with HTTP; Wed, 22 Mar 2017 09:22:19 -0700 (PDT)
In-Reply-To: <CAHp75VfD=4BcMV==zKejEPaJm=S6MqxJWrP2PnBhgNH0EQue9g@mail.gmail.com>
References: <20170322023725.GA10711@arushi-HP-Pavilion-Notebook> <CAHp75VfD=4BcMV==zKejEPaJm=S6MqxJWrP2PnBhgNH0EQue9g@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 22 Mar 2017 18:22:19 +0200
Message-ID: <CAHp75Vd7A8vYLO4OdELCDhFkAy-nqC+rsRuhn=KrD9spm_SSkw@mail.gmail.com>
Subject: Re: [PATCH] staging: fbtft: Replace a bit shift by a use of BIT.
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 6:18 PM, Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Wed, Mar 22, 2017 at 4:37 AM, Arushi Singhal
> <arushisinghal19971997@gmail.com> wrote:
>> This patch replaces bit shifting on 1 with the BIT(x) macro.
>> This was done with coccinelle:
>> @@
>> constant c;
>> @@
>>
>> -1 << c
>> +BIT(c)
>>
>
> While using BIT() macro is a good idea, you make it inconsistent here.
> There are at least two options:
> - do nothing
> - define _MASK:s with GENMASK() and reuse in the code (looking at the
> code they are masks, not just separate bits).

Looking a bit more, not masks, but values.
So, best would be define for bits and values like 0x17.

One more thing, you don't need extra parens surround BIT() macro.

-- 
With Best Regards,
Andy Shevchenko

