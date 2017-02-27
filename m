X-GM-THRID: 6391852583766458368
X-Received: by 10.25.162.77 with SMTP id l74mr2126099lfe.31.1488226960315;
        Mon, 27 Feb 2017 12:22:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.74 with SMTP id 10ls160457lju.24.gmail; Mon, 27 Feb 2017
 12:22:39 -0800 (PST)
X-Received: by 10.46.71.15 with SMTP id u15mr2340214lja.9.1488226959694;
        Mon, 27 Feb 2017 12:22:39 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id v70si966782wmf.0.2017.02.27.12.22.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 12:22:39 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id z127so6971064lfa.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 12:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Ord3S7rYCO9Ve3GlRUwNh8KrnC9gOizoGKq9cYmu6LE=;
        b=DkRauwmnLrNkNkaxn0gvYxOnKH+ngMS+O24NztWTrw453FhcOujwKxZDuRXIspj39I
         9Z4QIiIWDj7twPY+bXyaY5u3DTMFn2MKmoF53YhWhfSKnMvPCTqC98it+t1ufDX1aUhh
         a/dkFmvrxb5UbtazVQmUdbMyKfg6g6VQNqh8oS2jRYlNXl9yIVaCfiBevnXcrXcc/QsW
         +jLkNlDqKzkPFH1iHnIS2ZnVPzdZlE952xIdxXvOX+KeiXE9JaJZQg+DJVZTmXDNKhVk
         2HhkYjdgv4GeAdbvFbRJ5//QzIftWEUoX/+HGA27s4ueNNKfelyyGATdCyO2w/LID8xK
         9vuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Ord3S7rYCO9Ve3GlRUwNh8KrnC9gOizoGKq9cYmu6LE=;
        b=SxLuwZ9v4vqlk2XtRgeOZ7ony0s5k1Vjawu4MOUZDlWHzcKmjjJF7ai/42f1auLMZ0
         guIheET2JYp3dnlvLePpGDAUvUXmTYGQgMapmnnbC5o3A1eY1c0MsKH/4Eb2vQZ72CVm
         mqtGAUDbpekPr8J4xrcg4zBYWBO+WROSs4iFOQ8Hq+FL6CuUlJSRynagpcjjt5bxDQYC
         0RDlTIU9DH5rGYovLSdL0Kd56fMDvveD/9E82CK5ymYnlGlowAwx9VEJK+HKqtAjnOIo
         6IXvzvJ+gFdwMBfh9UxTgJwsMVQT/6FbSUXQNxGjRUN6iUjCwYoFDUBRQuO2c3sNbz/r
         VaIg==
X-Gm-Message-State: AMke39kyeIOTD9sCm4LX2jJWwMuu8odgezZJw2QauDc1Kgq8lqQEdETGOWpSIYbNx0OTpBmbOqid2CHn8NjOCw==
X-Received: by 10.46.33.75 with SMTP id h72mr4862787ljh.37.1488226959160; Mon,
 27 Feb 2017 12:22:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Mon, 27 Feb 2017 12:22:38 -0800 (PST)
In-Reply-To: <1488223868.25838.10.camel@perches.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
 <1488219268-3006-4-git-send-email-singhalsimran0@gmail.com> <1488223868.25838.10.camel@perches.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Tue, 28 Feb 2017 01:52:38 +0530
Message-ID: <CALrZqyN3CwopAAU7eCnyQYr=bhDJGfKvvkBNLbdLcEfoMANrFw@mail.gmail.com>
Subject: Re: [PATCH 4/5] staging: sm750fb: Remove unnecessary else after return
To: Joe Perches <joe@perches.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 1:01 AM, Joe Perches <joe@perches.com> wrote:
> On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
>> This patch fixes the checkpatch warning that else is not generally
>> useful after a break or return.
> []
>> diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
> []
>> @@ -295,8 +294,7 @@ static long sw_i2c_write_byte(unsigned char data)
>>
>>       if (i < 0xff)
>>               return 0;
>> -     else
>> -             return -1;
>> +     return -1;
>
> Assuming -1 is some sort of error,
> it'd be a more common style to use
>
>         if (i >= 0xff)
>                 return -1;
>
>         return 0;
>
> Looking at the code, it might make
> sense to use something like:
>
>         /* SDA still != 0 */
>         if (i >= 0xff)
>                 return -1;
>
>         return 0;
> }
I will send v2.

