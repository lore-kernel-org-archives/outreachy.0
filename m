X-GM-THRID: 6388510642623479808
X-Received: by 10.13.201.4 with SMTP id l4mr3961406ywd.75.1487531357771;
        Sun, 19 Feb 2017 11:09:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.13 with SMTP id j13ls8758140otb.40.gmail; Sun, 19 Feb
 2017 11:09:17 -0800 (PST)
X-Received: by 10.129.112.83 with SMTP id l80mr502262ywc.45.1487531357465;
        Sun, 19 Feb 2017 11:09:17 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id g205si1227620ita.2.2017.02.19.11.09.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:09:17 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id r141so8698098ita.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 11:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ralLLSZiP34o0nqX1rGS5jEJzy0H0R5MK1K04Ec4b8o=;
        b=J53boBdX7yBWw/ojI28UeBmrGnaOsLbJVMnmXFuQ2MmNLOHcrhBCBeZUVKPqgySZ/W
         qlurjd/K6vJ7FU8hz+1GIq29slSmT652zN2Av5BcBmythQcwY3VRSR++/UC/bwhVHveo
         yM8Wn0VXHZRAUerwZVGhjv2mO6/jjgheIypTsogRUCunOZn32KtF+7tjf7rVo+nVWNxO
         KorRIHyJ9BP9OXw4BAK36WmxM84GV7vHmI8NScQrhSPHM+7GBLRWct1lm1gX6HRVGmR2
         zTdPWHxcy8ugNkuPuJ3M4O+Ei0RcQ1E2klBXzDT7NeWNT6pVPRiIgcY56VEbVm/LLHpf
         H1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ralLLSZiP34o0nqX1rGS5jEJzy0H0R5MK1K04Ec4b8o=;
        b=V8jY6cOcoPCzMQeJbqiObfDGe4NDObZ0/9Da4MPnu6zHgI57HLGBccED76LZflQAin
         6GXJaRaSBKy5AjQhRULy1SDXRDCamNl+ZV1N3KNT5QB35QvgNyda2EGnsaGuQ223BCcp
         fXiO12BYvIfrEQwXJqVKFK1jhwzV0bo57TO0aYgvWbtVnP+0GN9WirB2cmNz4PtN6WEM
         jjwFTQNKj7h6OdO2FvFpOkZ8GZBQutLV0SL6CiYNAj2ybbXblQ2H3M6sDUOQN3RAKVBy
         lABKAFyzwEn0Bwm/9xihmTJaeFrhHkPUqAbc+GxqlOOH9bV9sr+e53PkDBw//lHI37LG
         3hHw==
X-Gm-Message-State: AMke39njVG2F6fCu90/I6L0cL71TptziIHPxf4wKTLMvgns2UkmWh/Vxn1Avl/q3J6G5WyuHkTvWOKuZmd9tjA==
X-Received: by 10.36.10.3 with SMTP id 3mr16397608itw.108.1487531357270; Sun,
 19 Feb 2017 11:09:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.6.203 with HTTP; Sun, 19 Feb 2017 11:09:16 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702181910560.3112@hadrien>
References: <41595753-854c-4474-9649-c5c858ffa117@googlegroups.com> <alpine.DEB.2.20.1702181910560.3112@hadrien>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sun, 19 Feb 2017 21:09:16 +0200
Message-ID: <CAEnQRZCU=HQBbA+umqkXHdQAt0sNbuDSHfkQkT=VjCk7tDYfFQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Trouble with IRC
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 18, 2017 at 8:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 18 Feb 2017, Tamara Diaconita wrote:
>
>> Hello, I have some troubles when I try to access irc.gnome.org. I get the
>> message "The owner of this web site has not put up any pages yet. Please
>> come back later. ", and I cannot find the #outreachy channel. The page looks
>> like this:
>>
>> [irc.gnome.org.png]

Hi Tamara,

The best way to join irc is via an IRC client. The simplest way is to
install pidgin [1].

If you are interested only in Linux kernel Outreachy IRC channel there is also
a webchat page.

https://webchat.oftc.net/

Enter your username and #kernel-outreachy for channel.

thanks,
Daniel.

[1] https://www.pidgin.im/

