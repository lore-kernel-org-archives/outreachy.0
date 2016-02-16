X-GM-THRID: 6251461618501156864
X-Received: by 10.13.242.134 with SMTP id b128mr18786854ywf.28.1455596577183;
        Mon, 15 Feb 2016 20:22:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.208 with SMTP id h16ls1046000igt.36.canary; Mon, 15 Feb
 2016 20:22:56 -0800 (PST)
X-Received: by 10.107.169.88 with SMTP id s85mr10718358ioe.30.1455596576823;
        Mon, 15 Feb 2016 20:22:56 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x231.google.com (mail-ob0-x231.google.com. [2607:f8b0:4003:c01::231])
        by gmr-mx.google.com with ESMTPS id p10si1527709igg.1.2016.02.15.20.22.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 20:22:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) client-ip=2607:f8b0:4003:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x231.google.com with SMTP id xk3so240331604obc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 20:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=C5F/r9g9i0DAs+wzUNd3uw+ilgRyyyT9dMbogC+GbWQ=;
        b=clR6gaTEqg3pY+zj2Z6qZoXJv36qXWW2Qnq7l9hjdaJWxItwwlh8GXvlN5i3BL33Yu
         gcze+Fya1azm9Cje4b6k+VEC2ZYsFXpe5/4QLzrX6V0OImu+EvjFdPIc5ArPnsBCxYUI
         6zZ6WPCs6rTmKEMpZTeXAlEw7gfEHx28kGfYJ6rN51aEFym9AnDK27QCwWvWo3sV0xbN
         Fli3zcd0TISXONEQW4wuz6n9WwQvEvbH20S/HjIsOFgbe8vUakIz2CG9e+aZ4XrORORn
         23GNqV/kNbBT5hYJUBXZvEUr+21syQWxDiiVTp/5XEQJedsu5tdVdr1ZMsaQYPEM02Bo
         6uTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=C5F/r9g9i0DAs+wzUNd3uw+ilgRyyyT9dMbogC+GbWQ=;
        b=bVZoel9ia39YotUCMVIClqXw/sptPKz+HHC8CrEMXmDd6pwCDFyFwp5TmExlZ/7AFI
         NfnQKRG4gLtNfdUOJqZoTz5KdjFmYNEip+JWTXyeBMyppO38WMZuUJVI22PvdXe3z5lW
         KSuFcor71dhZ2EMBQGJ6iIGwVJlERJNCzz8GDdmbKMVdpXIAc9D2WDseNIT2ZfGP15WV
         dzSwygK3eVWqWlqmlFdIYsaG7+T8gWCDtI430dj8i4drofN7Qf+h/e0rZ0aqsecm+YUG
         CnCbkyyC9NpXMTU6kqHvHE/Rz5ktbloq9a2BweoMi+VCUhxj29y5Jkxl6VlvBuSGercj
         nJWg==
X-Gm-Message-State: AG10YOSY/eTjps4YL35MgkDWGgKD+uXVIY4ZwabFF8CQW6o2SJ4y1mfIhK+g777V7z+cXaKi//k53gzoALja0Q==
MIME-Version: 1.0
X-Received: by 10.202.217.136 with SMTP id q130mr14709976oig.127.1455596576605;
 Mon, 15 Feb 2016 20:22:56 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Mon, 15 Feb 2016 20:22:56 -0800 (PST)
In-Reply-To: <20160216022855.GB25122@kroah.com>
References: <1455531820-14913-1-git-send-email-bhumirks@gmail.com>
	<20160216022855.GB25122@kroah.com>
Date: Tue, 16 Feb 2016 09:52:56 +0530
Message-ID: <CAOH+1jG1hAjB_NVh+euAADHBtrsVWKdEskqJjnKZsmO-wKs+iQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: include: Remove
 do-while(0) from single statement macro
From: Bhumika Goyal <bhumirks@gmail.com>
To: Greg KH <greg@kroah.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 16, 2016 at 7:58 AM, Greg KH <greg@kroah.com> wrote:
> On Mon, Feb 15, 2016 at 03:53:40PM +0530, Bhumika Goyal wrote:
>> do-while(0) around single statement macro is unnedded so remove it.
>
> It doesn't hurt, right?  I'd just leave it, as it prevents any bad
> side-affects from happening.
>
> thanks,
>
> greg k-h

But here the statement will execute once with or without the do-while.
So what is the need to keep do-while? This is my understanding so
please let me know if I am wrong.
Thanks,
Bhumika

