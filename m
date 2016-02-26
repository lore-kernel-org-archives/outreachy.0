X-GM-THRID: 6255063011291037696
X-Received: by 10.140.108.182 with SMTP id j51mr17233452qgf.16.1456471670893;
        Thu, 25 Feb 2016 23:27:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.214 with SMTP id 80ls951412qgj.83.gmail; Thu, 25 Feb
 2016 23:27:50 -0800 (PST)
X-Received: by 10.140.222.72 with SMTP id s69mr37249qhb.15.1456471670260;
        Thu, 25 Feb 2016 23:27:50 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id t198si748487ywe.3.2016.02.25.23.27.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 23:27:50 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id b67so59442242qgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 23:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=yIvI9cl2E9sVCgnwXH2RZK74v8ia6ix67GqIQuU7jGs=;
        b=sIguh+VKExahgk/SJRJpPggEJvX3HVEqmbJHnfyBUjvVZB5DhUArKF6mkxihTrygpU
         0q0cih3mABN9mmzwmPwuRboedJJYzLFZa6SjVjVtktHRajzKG4sMZzGWi6Tc0894kYpK
         DfEz6PzT0JxGtJQtxoFep+AirnMeHSy6GGU9nktdWgDVE/1SVyr9XSBwX8ZLqYke6Spk
         7BIBvJ+awFqBs583SBdEdtHFzvHuOieseijjEwEkngShTF7KDyaeontNlJz7+PNjqbY4
         fmOD+Hcl0OAQb/4B9Q/hbS/DL9FnanGAlzJ5hqiswLIutynKgPchK2CLXpQ97yUEqwmE
         6eTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=yIvI9cl2E9sVCgnwXH2RZK74v8ia6ix67GqIQuU7jGs=;
        b=BA/z0sRacwWCewNdB+MotaIHXG5YAfCgpZhWozJyM/Pkx5uFPnABzrvpUryZKWSAhB
         GGHObst6qQJbLrTVJROAj6qz1qvbstcrv5+WD8LjTL2o++1PCng3qhZa6TZQn1fKYFbu
         zk/xxR+8pZMurwRR20BYgrGq70bZaGwJ9Y1PZJW1oQjLULkBhsdL/t+wawRSoOVgIlLu
         9QBkynBIOglxS3eNTwtL7GhY9VR9no8C4IyzbsseBZES1h+DWgm5JxxuutWSBiqRrCvg
         9il59qWj1ConLGLM47G3+jUR+KxXMI+vnir5+IillH3NFpkug9egtTYfQsWuShq83ixS
         TeJw==
X-Gm-Message-State: AD7BkJLYGWiUL2l4gKGAPO/4pjadzEbcIVYoZ0ndB/WRrtHxyxfOTyOw6uSN4CssyXiloJkGXXzKCrtiKGIYyw==
MIME-Version: 1.0
X-Received: by 10.140.32.100 with SMTP id g91mr52683qgg.47.1456471670011; Thu,
 25 Feb 2016 23:27:50 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Thu, 25 Feb 2016 23:27:49 -0800 (PST)
In-Reply-To: <20160225212114.GD6092@mtj.duckdns.org>
References: <20160225031900.GA23782@amitoj-Inspiron-3542>
	<20160225155402.GP13177@mtj.duckdns.org>
	<CA+5yK5H2T4=sO50YgsV2G9zLgbpK4364VyObK=JmGUFJLgkqsg@mail.gmail.com>
	<20160225212114.GD6092@mtj.duckdns.org>
Date: Fri, 26 Feb 2016 12:57:49 +0530
Message-ID: <CA+5yK5FraSGsQJV-qmqPiRKf5QwZM-XGUxUo43fRaFbqEMaefw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_usb: Remove create_workqueue()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 26, 2016 at 2:51 AM, Tejun Heo <tj@kernel.org> wrote:
> Hello,
>
> On Thu, Feb 25, 2016 at 11:40:17PM +0530, Amitoj Kaur Chawla wrote:
>> > Excellent work.  It'd be great if the somebody can test the changes on
>> > the actual hardware but for the workqueue part.
>> >
>> > Acked-by: Tejun Heo <tj@kernel.org>
>> >
>> > Thank a lot!
>> >
>> > --
>> > tejun
>>
>> Thanks Tejun :)
>>
>> Not sure how to go about testing on hardware. I guess the maintainers
>> should be cced?
>
> Yeah, reposting the patch w/ maintainers cc'd should work, I suppose.
>
> Thanks.
>
> --
> tejun


I checked in getmaintainers.pl, seems like Greg is the maintainer for
both gdm724x and rtl8192e drivers. Should I be reposting in that case?

Amitoj

