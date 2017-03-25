X-GM-THRID: 6401457215612387328
X-Received: by 10.157.5.168 with SMTP id 37mr5005117otd.0.1490468041979;
        Sat, 25 Mar 2017 11:54:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.204 with SMTP id h195ls2985129ioe.3.gmail; Sat, 25 Mar
 2017 11:54:01 -0700 (PDT)
X-Received: by 10.107.29.207 with SMTP id d198mr4962442iod.28.1490468041236;
        Sat, 25 Mar 2017 11:54:01 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-it0-x22e.google.com (mail-it0-x22e.google.com. [2607:f8b0:4001:c0b::22e])
        by gmr-mx.google.com with ESMTPS id e196si575726itc.2.2017.03.25.11.54.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 11:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) client-ip=2607:f8b0:4001:c0b::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22e.google.com with SMTP id y18so18619478itc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 11:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=EAcqrsV2liYMVhmNjngLLdBd3SBh0JJ9Tqjl630KX9c=;
        b=apVbtayczE5xbDMIHMZEjyrscqWXssgdmWyuWGxvINtjpthDnAVJ2cD9ymhOtvkeC1
         n986xZQbrHn6S+Z70st0mhTwWFOLHFSM8n+Qv/b14RQJHgD7Nlcp4lF9/w1NNhne701w
         hc5GamCIrsWAaRnFQ65dRCKVU7SOZo3mvF6HvOUWKBwAA39i2N5rRo8S+n+yNfZ5s7v1
         sWaKRhfQMWhzJAkmtHjUKLSkIUNN1WdH9jqedorHhcfhqBRh0W/9NrfpYrhJr6tTviYW
         t0kitCO4GNsoKKM1P6h3vtMp951I0SacDVPcV5MCl7MTE4W3ZfQidiMopkvq1rbJ67r3
         Wucg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=EAcqrsV2liYMVhmNjngLLdBd3SBh0JJ9Tqjl630KX9c=;
        b=W+3zrbTXh5fHYdgQY8ehFDR/B6N4dXwecSCTg0c8IuxnBOuM1ru6An2eSfbTp1fEOY
         1OCi/j/qQmWpUkl7go8ZBqYphIS0/TOwywxJb5g74GC0g49i46gHd7R+Priekh0VGUVw
         m/Eg4y7T3VyxpqWT+5HeKW7S4zPrdS9wwqEa2TYefit4OxumuwxnG+ruEv4HJ4XFqlI7
         NoRLq3294CuJQUM+TIxsDkpYSpr+4GZrVhmijycXMU+TgqI9QINRwDGbuyS9BTXJW9TI
         4Ivnnodp1D8CECrXnPuhnXkpYeTLkHwZ+N5PtLKs+V7TjJU5NghkB5xkoMR0NcTjuvg0
         Xs1g==
X-Gm-Message-State: AFeK/H1VKmcD1VYsmNSnLYU+fyrQBP4o2ijgmCprSqTWIVioAm7J5wHDgf3QLZ6NI2jXzijMR5rPa02CcHfqKA==
X-Received: by 10.36.7.66 with SMTP id f63mr2931401itf.83.1490468040826; Sat,
 25 Mar 2017 11:54:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.15.199 with HTTP; Sat, 25 Mar 2017 11:53:20 -0700 (PDT)
In-Reply-To: <CAKG5xWipwnUZ9kNMG7BJeJRSH2XP-JZ6KovuBpA0_ntb-5SitQ@mail.gmail.com>
References: <CAKG5xWipwnUZ9kNMG7BJeJRSH2XP-JZ6KovuBpA0_ntb-5SitQ@mail.gmail.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sun, 26 Mar 2017 00:23:20 +0530
Message-ID: <CAKG5xWj5NtQ4S-axi+aG=b-=BZgP-7o2Ht+6CQTqjhabmsjG2g@mail.gmail.com>
Subject: Fwd: Doubt regarding Sphinx build
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset=UTF-8

---------- Forwarded message ----------
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, Mar 25, 2017 at 8:52 PM
Subject: Doubt regarding Sphinx build
To: outreachy-kernel <outreachy-kernel@googlegroups.com>


I was trying to build Sphinx documentation. I ran 'make htmldocs'.
It gives me this:

  SPHINX  htmldocs -->
file:///home/sayli/git/kernels/staging/Documentation/output
  DOT     Documentation/media/uapi/v4l/pipeline.dot
/bin/sh: 1: dot: not found
Documentation/media/Makefile:45: recipe for target
'Documentation/media/uapi/v4l/pipeline.svg' failed
make[2]: *** [Documentation/media/uapi/v4l/pipeline.svg] Error 1
Documentation/Makefile.sphinx:70: recipe for target 'htmldocs' failed
make[1]: *** [htmldocs] Error 2
Makefile:1452: recipe for target 'htmldocs' failed
make: *** [htmldocs] Error 2

Am i missing something?

thanks,
sayli

