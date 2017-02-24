X-GM-THRID: 6390634706454446080
X-Received: by 10.159.40.163 with SMTP id d32mr597755uad.15.1487941444953;
        Fri, 24 Feb 2017 05:04:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.66.83 with SMTP id i80ls558598itb.6.gmail; Fri, 24 Feb 2017
 05:04:04 -0800 (PST)
X-Received: by 10.99.143.21 with SMTP id n21mr845501pgd.132.1487941444075;
        Fri, 24 Feb 2017 05:04:04 -0800 (PST)
Return-Path: <arndbergmann@gmail.com>
Received: from mail-oi0-x244.google.com (mail-oi0-x244.google.com. [2607:f8b0:4003:c06::244])
        by gmr-mx.google.com with ESMTPS id b188si199481ite.3.2017.02.24.05.04.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 05:04:03 -0800 (PST)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 2607:f8b0:4003:c06::244 as permitted sender) client-ip=2607:f8b0:4003:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 2607:f8b0:4003:c06::244 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: by mail-oi0-x244.google.com with SMTP id f204so1446936oia.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 05:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=lq/DkDaPPdx/NX8121LMePqfsH+kqUNXGkoPh2V/2I8=;
        b=Zyjf38s+mSH++cOAXAfs02YiZLGVF4USa9KTEgqO09SLZ3ce/+7PB7QZDtBkn1wcDz
         471asx1s9jA5eyNdCV+q+Jr8uEi2ENYpBfaTsJN+2q0URAH2e+g5rEN+z3ky+d3v50U7
         9MZMv7Ho7YRQj9zJikEDWD+8ea/kqKEnMZL3V4A91JPSL5hIwnHowTqc1KzV8EYWauG3
         2bf5DjWBplJvroTZ28Xa2D72/Jk6rIfXUKxZP8xIZj8L5sLK6K7bLGfkLthvmJw/3fOq
         qUMdAdoGJYhHb+Zgh8C53GFm1KchvD5fDh6ToRfe7NC6ZheWRvw1n9OywRbOquCKai69
         IA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=lq/DkDaPPdx/NX8121LMePqfsH+kqUNXGkoPh2V/2I8=;
        b=VrJkUWMnBnywmXk2zY7xxzsTyTi9MZpn2hiREmiEHRzkwOWw0TS/5adbKzkV3GEOsh
         g5Wneo5mSYF5rkl1G0JaDiXcJZdjBM3GcbwX62ukVrUxhA/u1ytELgm24LJIYsCyKt7v
         DK7DYbeNJNGh9w3AnHO/hDZidD8TL4T0jTxyTJu6toieq5s0EGY3wbZ65wAsuZV+/Kdm
         yK6pQd++ZR8+5QLkkcrYZ2RwjQ7hbYxMl6S9cN9XoD+Z5RjVv7gibdlK24KnkxR7Ze/5
         ZmZjfUe2IhkvZYjR8G+QZvtJmPIvXPlwhmRH++Idn/qW22XQHGbpeBkHuNmZbQA7AqCH
         wVQA==
X-Gm-Message-State: AMke39kgin5+YFU/EYHJsBMoShiNWsJt8EQSkWvP4YkChj5j1CThdt/WAczo7rNGHV0ZySD5fJtYyQX3YYN/kg==
X-Received: by 10.202.204.138 with SMTP id c132mr1530192oig.155.1487941443672;
 Fri, 24 Feb 2017 05:04:03 -0800 (PST)
MIME-Version: 1.0
Sender: arndbergmann@gmail.com
Received: by 10.157.6.42 with HTTP; Fri, 24 Feb 2017 05:04:03 -0800 (PST)
In-Reply-To: <58b01867.c756620a.e6490.ed1f@mx.google.com>
References: <58b01867.c756620a.e6490.ed1f@mx.google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 24 Feb 2017 14:04:03 +0100
X-Google-Sender-Auth: xWhULtLFpoZ3ED1s4M4Rko3DRpQ
Message-ID: <CAK8P3a3-Xx_TsY50ZxunNiaTcUct1SkNLAE2VFpqwCbRWL7ZTQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Replace BUG_ON()
 with WARN_ON().
To: Varsha Rao <rvarsha016@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>, Chris Brannon <chris@the-brannons.com>, 
	Kirk Reiser <kirk@reisers.ca>, Samuel Thibault <samuel.thibault@ens-lyon.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 12:26 PM, Varsha Rao <rvarsha016@gmail.com> wrote:
> BUG_ON() is replaced with WARN_ON() to fix the following checkpatch
> issue:
>
> Avoid crashing the kernel - try using WARN_ON & recovery code rather
> than BUG() or BUG_ON().

> -       BUG_ON(!group);
> +       WARN_ON(!group);
>         spin_lock_irqsave(&speakup_info.spinlock, flags);
>         retval = message_show_helper(buf, group->start, group->end);

You are still crashing the kernel by dereferencing a NULL pointer here.

When you use WARN_ON, the kernel must have some way of continuing
without crashing immediately.

    Arnd

