X-GM-THRID: 6200616774953598976
X-Received: by 10.182.70.4 with SMTP id i4mr7351084obu.15.1443694211640;
        Thu, 01 Oct 2015 03:10:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.133 with SMTP id j5ls192726igx.3.canary; Thu, 01 Oct
 2015 03:10:11 -0700 (PDT)
X-Received: by 10.68.69.102 with SMTP id d6mr7453139pbu.10.1443694211365;
        Thu, 01 Oct 2015 03:10:11 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si762883pac.2.2015.10.01.03.10.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 03:10:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv12so71903920pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 03:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=kR88DO9fZcoK+jx0Y1G1dlSwkIIo1HEixzihhFOqz18=;
        b=raGkSiiDQDu/3ekuHxqqcYcIxZ1y2mEwTQKrf+4x4onY2dAwpYTRbDnUSRXes1U2Cn
         v3v+KsYzhv4Du0FYOIsUBm8iNNEMWfsbyX/KHW0Yv87ed8ShUrBoYN6a2HlOLmXp1iIY
         Bg8hoan57NgsUKwxA4L4al8dU4tJYhoM+9C6CfaQKpg0Sn5Tp5SN/Mq8z+pwCTLNf5de
         qCgQgFo4cpIDBrvp9SJ5OQyGetBtErMmkkP2pMlmDUSsNC+M1nOTXRZdEwcd2psm4S9l
         nEBhe/uQiQGUkeG7GRH4QSuHzmbQx4Z/udASXaqhKkTmS7o2ZBd1Gok3h1g7eMMVNDjy
         G8sQ==
X-Received: by 10.66.228.97 with SMTP id sh1mr11004143pac.91.1443694211230;
        Thu, 01 Oct 2015 03:10:11 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id xd10sm5705561pab.25.2015.10.01.03.10.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 03:10:10 -0700 (PDT)
Date: Thu, 1 Oct 2015 15:40:04 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, 
    Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove
 unused code
In-Reply-To: <1706291.yNGMf0Mpo0@wuerfel>
Message-ID: <alpine.DEB.2.11.1510011539500.9108@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443693585-10537-1-git-send-email-shraddha.6596@gmail.com> <1706291.yNGMf0Mpo0@wuerfel>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.560D0681.0232,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Thu, 1 Oct 2015, Arnd Bergmann wrote:

> On Thursday 01 October 2015 15:29:45 Shraddha Barke wrote:
>>
>> -/**
>> - * Environment to be used in debugger, contains all tags.
>> - */
>> -struct lu_env lu_debugging_env;
>> -
>> -/**
>> - * Debugging printer function using printk().
>> - */
>> -int lu_printk_printer(const struct lu_env *env,
>> -                     void *unused, const char *format, ...)
>> -{
>> -       va_list args;
>> -
>> -       va_start(args, format);
>> -       vprintk(format, args);
>> -       va_end(args);
>> -       return 0;
>> -}
>>
>
> This was already removed from staging-testing on Monday. Please update
> your git tree to today's version.
>
Yes I'm sorry.

Shraddha
> 	arnd
>

