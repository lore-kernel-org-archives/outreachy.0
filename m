X-GM-THRID: 6401842104590401536
X-Received: by 10.98.218.86 with SMTP id w22mr4668661pfl.15.1490545411579;
        Sun, 26 Mar 2017 09:23:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.197 with SMTP id l188ls3271850ioe.23.gmail; Sun, 26
 Mar 2017 09:23:31 -0700 (PDT)
X-Received: by 10.99.105.5 with SMTP id e5mr6457270pgc.0.1490545411122;
        Sun, 26 Mar 2017 09:23:31 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id d20si746588itc.1.2017.03.26.09.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 09:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id 76so6991137itj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 09:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1umWc43d18ZqxvaXFUYvBjuKZqJ9NqWjFpGsdrClusk=;
        b=GWEAUODnvsODrSHSNmoEeMajbL13Ob3zO73K1yUwp9lboeY/bkvgp+wo7g3tP05W5G
         2QUMdDqmzL3Kzh/w26G4goyKTnja2stp5AWKbV8qP/yyHYzFaYQvAuyyzfhXhZWurir2
         W+gg7dIVscWJB222SaCT3tO60wKbxKE3PHxSB+J9fMFxjcobtM0sVX3ANnuNYQKyI/A0
         1YBIMo3Nt38cZ0g/iPwTLsa4mOFpHOqVMJfOVmFshQKMof0HiuOSmkgCNqU+Pn3AFS8E
         TTI8oK8IfjzIUDItgKmZqvSvzDfc5QSI0lvmFOjMzKhDuyOWR6PNp27OCMdFCcP5ctRH
         JOvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1umWc43d18ZqxvaXFUYvBjuKZqJ9NqWjFpGsdrClusk=;
        b=JckZIYDy/5ID4o72QlnMFUX4x/J2HiTK9l1LCNUucFZcAXouCVFB4TT/HI1+7ewaAi
         vf+UVggNJNJO/CbigSYszz7jKfWZA8DGTNdzpW7hthMhY57mqaNQWh01RNrhTAqjILpA
         dlZXOcmJCrXWU3ld/vBqHB8jkikfIEen0aQ+VhcYVCVaRt+sFy2V5/XMuGBmh23lTpM2
         6zT/oeIAqg10RBXPUwxtjT11gAyboeXS6vq66rThFYI8ll/zMSVE1zLi2g4t9o9CQM8K
         SMtXtJyQ5lLorsx08R/X8ArUqo5y1JoTL3971UqsTLK9Qryec0x24EozLbAE7IKxWObb
         LhPw==
X-Gm-Message-State: AFeK/H2fZqmZI0KodxhunymS7X2W3Uxp9CcpSdViOpyP+/D9XYQOpkH4y7S2YfO5ZNqa3PQX2KvZO6jKPF/uQw==
X-Received: by 10.107.137.226 with SMTP id t95mr17505500ioi.79.1490545410858;
 Sun, 26 Mar 2017 09:23:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 26 Mar 2017 09:23:00 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703261818450.2204@hadrien>
References: <1490544994-32649-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703261818450.2204@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 26 Mar 2017 21:53:00 +0530
Message-ID: <CAOCi2DHqDJ9U8MrPzD=Juz3TaEdRO94GtP9r=eCg7bMHA3iZug@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] kernel: pid_namespace: Constify
 ctl_path structure
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Matthew Wilcox <mawilcox@microsoft.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 26, 2017 at 9:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 26 Mar 2017, Gargi Sharma wrote:
>
>> The struct kern_path of the type ctl_path is used as an input
>> to the function register_sysctl_paths which registers a sysctl
>> hierarchy. ctl_path is simply the path to the directory the sysctl
>> table is in and is not modified anywhere.
>>
>> Done using Coccinelle:
>> @r1 disable optional_qualifier@
>> identifier s,i;
>> position p;
>> @@
>>
>> static struct ctl_path i@p[] ={...};
>>
>> @ok1@
>> identifier r1.i;
>> expression e;
>> position p;
>> @@
>> e = i@p
>>
>> @bad@
>> position p != {r1.p,ok1.p};
>> identifier r1.i;
>> @@
>> e@i@p
>>
>> @depends on !bad disable optional_qualifier@
>> identifier r1.i;
>> @@
>> static
>> +const
>> struct ctl_path i[] = { ... };
>>
>> text   data    bss    dec    hex filename
>>    5462   1698    192   7352   1cb8 kernel/pid_namespace.o
>>
>> text   data    bss    dec    hex filename
>>    5526   1634    192   7352   1cb8 kernel/pid_namespace.o
>
> You should say what these numbers represent (one is the result of size
> before the transformation and one after).
>
Oh, I missed this. Sending a v2.

Thanks!
Gargi
> julia
>
>>
>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> ---
>>  kernel/pid_namespace.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
>> index 071ebd3..f8a5a0c 100644
>> --- a/kernel/pid_namespace.c
>> +++ b/kernel/pid_namespace.c
>> @@ -323,7 +323,7 @@ static struct ctl_table pid_ns_ctl_table[] = {
>>       },
>>       { }
>>  };
>> -static struct ctl_path kern_path[] = { { .procname = "kernel", }, { } };
>> +static const struct ctl_path kern_path[] = { { .procname = "kernel", }, { } };
>>  #endif       /* CONFIG_CHECKPOINT_RESTORE */
>>
>>  int reboot_pid_ns(struct pid_namespace *pid_ns, int cmd)
>> --
>> 2.7.4
>>
>> --

