X-GM-THRID: 6396343645329424384
X-Received: by 10.46.92.131 with SMTP id q125mr4504080ljb.15.1489330529868;
        Sun, 12 Mar 2017 07:55:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.9 with SMTP id 9ls1351886ljn.46.gmail; Sun, 12 Mar 2017
 07:55:29 -0700 (PDT)
X-Received: by 10.46.21.28 with SMTP id s28mr2596460ljd.14.1489330529446;
        Sun, 12 Mar 2017 07:55:29 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x22a.google.com (mail-lf0-x22a.google.com. [2a00:1450:4010:c07::22a])
        by gmr-mx.google.com with ESMTPS id b186si425206wme.1.2017.03.12.07.55.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:55:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) client-ip=2a00:1450:4010:c07::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22a.google.com with SMTP id a6so55393866lfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 07:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=a5GYgOo9bS515+48Mi2247Z4LimDe+CtSUCEi3q5Xq0=;
        b=N4x/Tj4ydk1okpx+zrFsm/FVyz5D5wcXIYLlVzu++7h8HO0QWo4wm4xlVr3elKihaV
         007ycTD9H7zhVlCbd9t1CGlrelgxVPbOBWsXJZeWwIF5AWnqTjT8zZ0tM4iSAOFF3XOj
         ycAuNZAm5an15PjEPEKRDDlxpqMe6ZYGrIS7iRfy87xXk+hRTMR9wksPRaiJAZNYMh1p
         WuMZauEX5WaS4CY9YQcSYL72DTRHXRhqBzHYUMLWd/N7GHNCSxaZUZof8M8ao38sqYT3
         VmgiqswP7gZxl144JmEBA6YI1em4lyKJqjuh9jsx9kbySS32hj7GScfcapJJDACjic8i
         JRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=a5GYgOo9bS515+48Mi2247Z4LimDe+CtSUCEi3q5Xq0=;
        b=LsuHnVhQTgX2Rzqr8v1Uxt1B6LcbclGpx71+yspziwtESUWYBqT4aGGZm3Z0eFS1xK
         he/04Yen15G+qTFxcjE39V2ol9MOjdLmuOsBHrfZmvTRdGldhLbNXKkcVHYAoE/klq4J
         ZjBZqazG5AeQSacQz5vvkfIxZvmdYLswFCmx7FH/sEdcMSS7jB/2Hz+k7zRfsvOwXxpI
         b+jjy+K0Iv2iT3FCPaY+p8CI450UYxpvR2Vuq6aEqmLksV6ApwKiZ/E3rGLj7zjZm5wL
         v4jjcemPDHJ244Q8+02bHX5Bx4bzfZB8DbLdcQWilXW/b1hdiT+V6R746dUIiU65EqlA
         fqUQ==
X-Gm-Message-State: AMke39k9I2rWignzWhXJcSNsenc/y8N+frG77GYP9zzZp49l36VoHqXcW5CghqtDaTJx9g5WxsLdBQ4cOnaL4w==
X-Received: by 10.46.9.136 with SMTP id 130mr8882314ljj.87.1489330528866; Sun,
 12 Mar 2017 07:55:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sun, 12 Mar 2017 07:55:28 -0700 (PDT)
In-Reply-To: <20170312133457.GA27791@kroah.com>
References: <20170311220244.GA21700@singhal-Inspiron-5558> <20170312133457.GA27791@kroah.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 12 Mar 2017 20:25:28 +0530
Message-ID: <CALrZqyP=eMdcFQvM+ZvGiyrcSdnYJxiyOkmr5H6GyEG9qo-ggQ@mail.gmail.com>
Subject: Re: [PATCH v3] staging: android: Replace strcpy with strlcpy
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com, 
	arve@android.com, riandrews@android.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 12, 2017 at 7:04 PM, Greg KH <gregkh@linuxfoundation.org> wrote=
:
> On Sun, Mar 12, 2017 at 03:32:44AM +0530, simran singhal wrote:
>> Replace strcpy with strlcpy as strcpy does not check for buffer
>> overflow.
>
> Can there be a buffer overflow here?  If not, then strcpy is just fine
> to use.  Do you see a potential code path here that actually is a
> problem using this?
>
>> This is found using Flawfinder.
>
> You mean 'grep'?  :)
>
> If not, what exactly does "Flawfinder" point out is wrong with the code
> here?  At first glance, I can't find it, but perhaps the tool, and your
> audit, provided more information?
>
> thanks,
>

Flawfinder reports possible security weaknesses (=E2=80=9Cflaws=E2=80=9D) s=
orted by risk level.
The risk level is shown inside square brackets and varies from 0, very
little risk,
to 5, great risk.

So, here in this case I was getting risk of [4].
This is what I got:
drivers/staging/android/ashmem.c:551:  [4] (buffer) strcpy:
  Does not check for buffer overflows when copying to destination (CWE-120)=
.
  Consider using strcpy_s, strncpy, or strlcpy (warning, strncpy is easily
  misused).

> greg k-h

