X-GM-THRID: 6250414434247770112
X-Received: by 10.13.202.79 with SMTP id m76mr1973702ywd.10.1455291738308;
        Fri, 12 Feb 2016 07:42:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls1625334qgf.25.gmail; Fri, 12 Feb
 2016 07:42:17 -0800 (PST)
X-Received: by 10.129.3.69 with SMTP id 66mr1886605ywd.41.1455291737852;
        Fri, 12 Feb 2016 07:42:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id g136si1102488ywb.5.2016.02.12.07.42.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:42:17 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id e61so5726777qgf.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 07:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0lVm5cC22KfLnZ/8VRe16h5V5TdyPmRtlun1PWdqvTE=;
        b=GTHTCFvM/j/RCapfRPr6VFladdvesrhRMZH6B1hL2QJ8BIVEmREdU1OsWvJN9AyTBK
         VChVSTrst/a4+0TOr2tbfDKgkt8DfYwO6q+f/tw2+HR2A7HbNkeF7ZM4inrwW2zSTu8y
         xE/+bIqNpI1c2uIHY43ac6Ca5Vehtlq8BLdwqasdNrcS0Dl9RCjrcR1AuEtqNsC0vv1k
         3FE+G09mSEpyfKFScWoI/5YTLlvgxCVdxDtjWYkLUaVGPVZOQmUWeSQbLn1NcsuONOML
         2HNnj4WGfNA49aGI8K/a8DmqO9gVzkGLmL8lsGVQq2mebEmAeUOYQUPNsYc7I5COnGC1
         UWSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=0lVm5cC22KfLnZ/8VRe16h5V5TdyPmRtlun1PWdqvTE=;
        b=KE2XHLIBTAP+Zlg7i0rwx7ddNy3AbsUP7P/dYCGtVHdBevQo/JBQ/C4G+B3A4o989q
         1JBmQEIy++CdCkXN7WO/08Tl5ltMw3uuwAY91UXmTVzl39ckpnWofXLee1t3HL83cdKh
         wOIPRNtGXdrUsrXbpChh6YviHFsft1zciHwK+Ttua6UdvYpoKVzJGhycPTY68XQdQfCv
         m4UR3nl7yOnAUpqiXzNhDQ0QjY6OF9XakDZf5wwmd/XynSQ8o4zVX7Q6EjKBqn/pOoL2
         OGhJyEp1zL54ImBE83QGGdYeStVlsiG9VgViXEbwswwHt7Q/cYOMyHPESE54vkpQNG9d
         Toyw==
X-Gm-Message-State: AG10YOSInEYEi53wJWrgul3dgFtppaNrBG33irhGZXjEqZMqp5JmQnehD+tpYWL+rjSRJEOsg2kBNYho3PuBkQ==
MIME-Version: 1.0
X-Received: by 10.140.233.85 with SMTP id e82mr2781181qhc.86.1455291737653;
 Fri, 12 Feb 2016 07:42:17 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Fri, 12 Feb 2016 07:42:17 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602121600160.2510@hadrien>
References: <20160212144011.GA1274@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602121600160.2510@hadrien>
Date: Fri, 12 Feb 2016 21:12:17 +0530
Message-ID: <CA+5yK5FqSaMvdFCXthhWODoVmkgsNcXx-PP0TTMidYsBZMs0-w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: rtl8192u: ieee80211:
 rtl819x_BAProc: Replace MSECS with msecs_to_jiffies
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 8:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>       pBA->bValid = true;
>>       if(Time != 0)
>> -             mod_timer(&pBA->Timer, jiffies + MSECS(Time));
>> +             mod_timer(&pBA->Timer,
>> +                       jiffies + msecs_to_jiffies(Time));
>
> I think that the call would fit on one line.
>
> julia

Yes it does. I assumed it wouldn't. My bad.

Is this the only change required in this particular patchset? For the
other patches, your suggestions seem to be best incorporated as
separate patches?

Amitoj

