X-GM-THRID: 6473410411176656896
X-Received: by 10.176.2.18 with SMTP id 18mr8598904uas.36.1508331348183;
        Wed, 18 Oct 2017 05:55:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.25.227 with SMTP id r35ls1123136uai.19.gmail; Wed, 18 Oct
 2017 05:55:47 -0700 (PDT)
X-Received: by 10.176.4.196 with SMTP id 62mr8784667uaw.28.1508331347361;
        Wed, 18 Oct 2017 05:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508331347; cv=none;
        d=google.com; s=arc-20160816;
        b=RyqRfCKLAjBUOhy9uwqaF2k+J7TuyBlLtxT0F0+bvPxQZ8kFyKrK5AwojApIq3cVU2
         3wV6AtoCfj8gjHGfNHA95dNItGgzmC30ZEgIKFKWjVoUcJCx9CDbOn+MgP7wVrRFXFXE
         FCMe+xsJX0WtUDRGlPtfFLCQ/wjjFtNmUF4cVBgPRlzzAw6zLLciJbSnHwTn60CntuYz
         oXpgJG6rgsl9aeWI4Vle03fTa0/gewBxVduDntJQpN7Nt0Crlv6r04oMyfWbAgajkpoX
         aha6DjhY4QscbYdvORTtYlt9EC1DrSbD5wyUwYRoy/8k2QMvZACDqsMl6cBn+gNUz6Ln
         wkVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Th9agnKF8AxWWgFQezi6EYSeD0tXu7TDNlKkC5kakUc=;
        b=UnfFAHhZkhZhefIroKhQPV5cWzLvD0khYDjldXo2rO1ID8yBjT+pdxrX8jwmnUOx7h
         OjzbH7QyuQF2ZMl53NxlT0RyR6Wsl9qH1jnwQAiiekGMUs8MPM5n8VXTIRJEwHZE7Zy5
         B7mFLBptZBoo0rsgs3ZG2+uba6R3KkxPnOkNdUPw2inAq3WIjyOtqjKdiPiPBPvLqS7Y
         w6zHC1VGWpGLu2h7mTTxHkOb6tD+ew7UKA2wxo7XBe0hkR85QCcgpen1ujyxdnDSDAYu
         y5+85roYp5S8iY5LFnTNwDbLvzbwn6DL0YIbv0sqL6GmC2l7/1h86oxOwb+cQ0Op9Tmx
         l10g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMJsQXoS;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::236 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x236.google.com (mail-vk0-x236.google.com. [2607:f8b0:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id l14si697841vki.1.2017.10.18.05.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::236 as permitted sender) client-ip=2607:f8b0:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMJsQXoS;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::236 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x236.google.com with SMTP id q13so3224488vkb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Th9agnKF8AxWWgFQezi6EYSeD0tXu7TDNlKkC5kakUc=;
        b=oMJsQXoSivrqjG0i/QfH29X0lScLBr0FpVPr1nNMPZ6OSaNod8O1NFS6mcSmm+w48n
         WZj4PYuDJJVOUh65CPF8syBKXEBLynjNGjXPFJiVChxb4PgGQ7ivtzrX0ho2HDTDHeEm
         gofEuID5HOt3NUHRvWgtfSBjW2mh3N0nSoezjd7MgVQTYTJWNr2yyT88MVHS5ptwieUd
         GnW/mt5byS1i6zCkDUoCdxGXctg4EwqIyB2V+vHS6yHH8uHCgwYiy0InA0GudX05oaFz
         ny8PQS6inaG+LsRHjMo3Cq98Lkcaej3Q2rIv2NcvEFkjQ51le4BKhTd5XJvdrQwVc35d
         I5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Th9agnKF8AxWWgFQezi6EYSeD0tXu7TDNlKkC5kakUc=;
        b=Yhy/G+/vwmf9Gz4uROpFvPj85R7iuUZJRdr+PogIZoKYvZ1lnPnFWzRLjpy42ZEdtF
         zdWYxQWAUA81MRZnORqqmMsJuxXPwJ0cYmqGDNKZ/Re7OY/SXQgGuzVKvBXe0WYbnKNi
         MCWUjfjEK4oRETJlEv4sdhRSDMs/d6Uvhf/vZr1VwarkDaJ81m8K9V9yFVDSUyKgzDh9
         vNr9P3oqcszJnrtSZIJT8kNkjgu+0BGNlfrwuFjI7nvQd1kOHNkWel5N8lH9SqDxga+O
         EvwreiZZknes+rPXSSGUFxTr6xf46QGTyMRl9cs60/qlOTDsxcAhkXdEcx2Ur39NK7xK
         0xlg==
X-Gm-Message-State: AMCzsaV+q2oBsue6rdUzvJtVrtD5w+NmKMfz1FhopUM3xxe8+aeczglC
	Fb5ClUEBln/+C4trMwUinJH92PGA5Hw12oTxmnk=
X-Google-Smtp-Source: ABhQp+Q4RC2F8EdsDMEQMLi2u3/G0xZIbVDyRRGFTdfzMRtlXb5oquj8+rHMS5hfiBXi78KM/rymVOsQQGgUEmc275w=
X-Received: by 10.31.140.6 with SMTP id o6mr5714395vkd.182.1508331346956; Wed,
 18 Oct 2017 05:55:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Wed, 18 Oct 2017 05:55:46 -0700 (PDT)
In-Reply-To: <20171018122608.GA3174@kroah.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com> <20171018122608.GA3174@kroah.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Wed, 18 Oct 2017 18:25:46 +0530
Message-ID: <CAHXiS59_EkRN31+B6+21k_Ohgsj244n0ymi9FVH=uyVS4+OHrQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] staging: lustre: fix code styling issues and
 remove macros without users
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
	Andreas Dilger <andreas.dilger@intel.com>, James Simmons <jsimmons@infradead.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 18, 2017 at 5:56 PM, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Thu, Oct 12, 2017 at 10:01:13AM +0530, Aastha Gupta wrote:
>> These patches fix:
>> - multi line comment styling
>> - line over 80 characters
>> - macro definitions warnings by checkpatch.pl
>> - drops macros without any users
>> - Comparisons should place the constant on the right side
>>
>> This patch series includes all the patches I sent for this driver to
>> show the correct order.
>
> This patch breaks the build in lots of different ways :(
>
> Please ALWAYS test-build your patches before sending them in, otherwise
> it makes maintainers really grumpy...
>
> Please fix and resend.
>
> thanks,
>
> greg k-h

I always make sure that I build the patch before sending it for the
review. I also tested the patch again, and it is building fine. Can
you tell me what exactly it is breaking and how?

Thanks,
Aastha Gupta

