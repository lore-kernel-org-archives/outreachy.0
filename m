X-GM-THRID: 6470043684863737856
X-Received: by 10.107.164.148 with SMTP id d20mr6140615ioj.95.1506424435127;
        Tue, 26 Sep 2017 04:13:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.107.24 with SMTP id g24ls3977083ioc.6.gmail; Tue, 26 Sep
 2017 04:13:54 -0700 (PDT)
X-Received: by 10.107.53.87 with SMTP id c84mr6146986ioa.134.1506424434233;
        Tue, 26 Sep 2017 04:13:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506424434; cv=none;
        d=google.com; s=arc-20160816;
        b=fLaEy2aoxbcELFkE6yFT8VNUjYOjlih2qgMGKbp2Pa0hFgn5/FEV9+aFRbftQbgL0z
         DzVD48xHYZEpLz7SclbQWpgDqrvOunFBTJnAUFOhByRPMg7iPvLZopo0u+kEU5BFiNVu
         CQUyIadyJ50MeA5+w4/9xLSYOUNdDbflATzQL6nALAiDbHDR9f0cszN1aZEjViCStH2a
         3ihOHHbi/mo2/JCwx/3cM1D7sYwZ5CUOX+f6SrMKc4Vr9nwRZ8ftI/YNDxnQ/ZKedOXr
         mOuPIig/0ABl3SjBrAapX9HzR9PJLAC82fSKdL8dLnsejOu4z/dkMTbDdadyi8kRcpf9
         1YCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=Uake/YnXkdMk1lS5L2kX0XyQFHmmu4xayRTQGtnBaYo=;
        b=e0a4IE8FEHhJp1DX4i+ehL55J+TYYME812K3r0sKqH5omqjPLhMC5TWQePH/yu8ARK
         ld9gC/7qLZu0M+WuRojsyPLcD5gvI1efSh4OJUKJGfeBPS4au0p1P4PUeP1JS1/XWOCi
         06jdQjW55S86K9L9eM1hRHu4e2muzYYuMiBdFEZXYXoHeSbPLZ+Do1uO0YUrJn0d59ux
         NYqCsnyLqR62oj58S7UfuoinON4/BZJmjGbs7X8RsYsieRs72JMQqDAViwH1oYzUPaO6
         eIlU4qHfaQ1ugEV4qeR0m31OX34qLztYgrIvZQml5vw5qOXPM+NVHEauiBwXYb8ccRgd
         jEkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=OfSWpwKY;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::22d is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-it0-x22d.google.com (mail-it0-x22d.google.com. [2607:f8b0:4001:c0b::22d])
        by gmr-mx.google.com with ESMTPS id t84si335450ywf.14.2017.09.26.04.13.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 04:13:54 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c0b::22d is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4001:c0b::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=OfSWpwKY;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::22d is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-it0-x22d.google.com with SMTP id o200so8215100itg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 04:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=Uake/YnXkdMk1lS5L2kX0XyQFHmmu4xayRTQGtnBaYo=;
        b=OfSWpwKYOjzd/iWaS0HYj0OlvD4SsHnORMO5F/7ARnKrNi3RCx4eapEeXLt4cyhFGw
         ks4NDUVDTII+HsBVHoFF3GLDlT7UxGa3yXEilU3IMWuwyH1qTi4TDd6vaL4V75Xr1dI7
         TbjhQD3VwvXOxj9+Q2/+6WGKUk9ko0Q3C6+t0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Uake/YnXkdMk1lS5L2kX0XyQFHmmu4xayRTQGtnBaYo=;
        b=KR3RcM/NBEWeigMUjxeUxaLpbMPhXTaJupZlZXyE65YMcC/hpQsgCzhmaOkLpVirjN
         jubKzAiQHzKbEOggpTZZDG05P9IpWupTI09UInWb2otUzHXc4XPeOuqn6BOIZ15Q4aND
         AMhtmbi7KjYjF17BcTox7btq47tcL5RUW/sOq1ExQN9i8t1vbZxvdoZDilRt9w8+LBRa
         l4gnNS+sZg5XLmdmreEhj1vUreR5gSvxr8lp/4kBZYLFKN7PqV6hyDTpqyAvEGH0HIoW
         3/VbXBsCQUm5v1zFnIDBAOpbJV0OdJYlGWApKuWugwb3BTuaLyIYmEeSCwyS5/8m/b45
         8lzQ==
X-Gm-Message-State: AHPjjUhvXGVZcU9lFy/HlyX92P1nk/5xdmxGARRZMll1Bf5kcdeUufdv
	28ZUGJ9EcA8wGrfNsKuZLW0Q+svK76i5bH/ka1lwvGZS
X-Google-Smtp-Source: AOwi7QCeLxDs+sPxo++vyOEqscSX0c+4mo1aaKzyrU6Do3DcZdp2m0DT4bYsGMBzxmlLSXrod15pg5+39tcDMlf1Dkk=
X-Received: by 10.36.107.146 with SMTP id v140mr5294243itc.95.1506424433438;
 Tue, 26 Sep 2017 04:13:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.196.218 with HTTP; Tue, 26 Sep 2017 04:13:52 -0700 (PDT)
X-Originating-IP: [2a02:168:5635:0:39d2:f87e:2033:9f6]
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 26 Sep 2017 13:13:52 +0200
Message-ID: <CAKMK7uGtMznSP7xXpLcodJbq4mHepZvjpFvD3vQdAA=MfaKD1g@mail.gmail.com>
Subject: GPU subsystem outreach tasks
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, Sean Paul <seanpaul@chromium.org>, 
	Srishti Sharma <srishtishar@gmail.com>, Harsha Sharma <harshasharmaiitr@gmail.com>, 
	Meghana Madhyastha <meghana.madhyastha@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"

Hi all,

We seem to have a few coordination issues with gpu tasks. Please
follow these guidelines when you want to work on the GPU subsystem:

- First you need to successfully submit patches to staging. Guidelines
is around 10 patches merged.

- Before you start any of the todo items, pls chat with mentors.
Currently the todo items aren't annoated with the experience needed,
and some of them need full driver experts. Others are easier, but from
the work load more suitable for the entire internship and not for the
application periods. Others need acks from driver maintainers before
you start working on them for a given driver. Harsha Sharma and
Srishti Sharma, the tasks you've picked are not really suitable for
the appliction period.

- To avoid duplicated work, everyone pls list what they're working on in

https://kernelnewbies.org/OutreachyTasks

If you have any questions, just send Sean or me a mail or chat with us
on irc channels.

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

