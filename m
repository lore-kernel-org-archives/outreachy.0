X-GM-THRID: 6463854288984604672
X-Received: by 10.176.18.89 with SMTP id s25mr8305518uac.11.1505149231876;
        Mon, 11 Sep 2017 10:00:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.77.78 with SMTP id l75ls5882673itb.9.canary-gmail; Mon, 11
 Sep 2017 10:00:31 -0700 (PDT)
X-Received: by 10.31.152.79 with SMTP id a76mr5286466vke.53.1505149231070;
        Mon, 11 Sep 2017 10:00:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505149231; cv=none;
        d=google.com; s=arc-20160816;
        b=W1/LYF/S7q2fLEYkpVQCeed/wnkVn2vM/l0coNpoUNR5OzRDR5yQ2E1/5XRInI+tme
         LutkfEtZBus+dtJB2iYsY1jzuyK2BcSCaplhYqaMpKIbWpZSOey93UUB/zgI//+0QDZv
         uiprmlUB7Vl/XzONef8AY3YwUh3jjsuqluRdurO73tBbkwSL4c3VbqqOLZiNh3AaS4Aj
         mCZUDawKzRatUGDNd1b54uQNmsnIZsx2bQwdBpFU2TTzbVeEPEhAj3EynqssB0ZMJy0K
         3QaO347CPRMCjSUjeYTkvvJDNfjWCpatBDsLk+5USFJ6beodgZS1uCta8SpmA4cWVyzl
         7CxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=4LGYu2l4RQM+CHXNTdyOxPO29drRhe6l2VO9jyG/8KQ=;
        b=n6b/9gNxlnDmSwj4AC30jindntKmvFye9F4NTZW9XN4TNFEB5OzPt7ldMGKkbx5gyy
         zT7YgSnY2joRSuMfkuTy2A7LVCezmy+PzCY6A6dhWZF2HsocyXGpe/brHPK0nj9T5j4k
         oNq77QxSl5cV7czHyVuFVsLWUSt+AfrQ/mwQ0G9EW82tGdYUeTymQ0iiAw+Po0G099EA
         7tkLe3WbnMIpdVIZ/00vSl8QBfafgzrSxlPidxsrfHZ0b1cmlNZgIKO74hYMkAEX19MA
         IeeiE3yb/9K7Bl4D8p3KieSi4zQXaOGqkbIKFNrdB9euKhivch1s26O1dILXDrnAkuZH
         YEVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ibnYJZxl;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id b186si273921ith.0.2017.09.11.10.00.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ibnYJZxl;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q76so5126586pfq.5
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=4LGYu2l4RQM+CHXNTdyOxPO29drRhe6l2VO9jyG/8KQ=;
        b=ibnYJZxlqWvSVg2NfF0Tq/3HdJCBA3DmECOF67TiOU0dUSVKBL4EADiEi/xRtq1xiZ
         WQivm5hN6D9PVZ4ykVnFFilKACD/UNvOWCxh6s3jFjWoT5e0zNHikT/JE8V+r3qKljA/
         +dbb59mVBNzjngyRPXO9ddqL2MKZ+90Vmsx8raOaFP1feBtBR0aJD3eFlWnBXzi7RF54
         IFGaVhxq2dIdbM8e8xmYWYn0EQka7SLb2cg5wvGD+gr3SREW2+uOAuJpnKgYI+xbCLAd
         Ptj3r/L5mT7sEQU2rKEHHi8NFQ3559Q36KeWk6ItdNwC1MUV7MmhC2iChqVamm6ovJc5
         XB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=4LGYu2l4RQM+CHXNTdyOxPO29drRhe6l2VO9jyG/8KQ=;
        b=iaCEDhCY3+awRET82nmglFAMCbkft1IjMhnrM9EWlM9A0UopH5IRzvjjfY/dVQBRp8
         Uz6d09WLTfEHPvJfRFCe7mzJkwAeucbya1z4OfW508P1ua/Ucw2mNrToXbpiasamf3hn
         XXfZSFCHqgZkTU429N4BOmp7JKblzd7w7k57Ts8CHBayMWcw4yYHuFj3xFClPh+Wy+Cm
         +HJAKOfC4QG7AQ+nF5EoewnZnw6m4dbYwQyotedivpj9nTvnMTSbomE8o1tlQly+ncW+
         v3qgeAllU1nU80M4bCJ0tuoM6OblnkFd3ldRfoE8iuD8hXVGQ+b63+oCqvHXL0ch8iLy
         T5/g==
X-Gm-Message-State: AHPjjUieB+WP8gfWN5uRetfirbno2Pf0OmmUyE7cJ0w8UrKk2Bpt6HZs
	FYNAYqNH3cwezM3SXNg=
X-Google-Smtp-Source: AOwi7QAXgRlvUH6jHYRfuPp8d0M9y8uwsLibagDzqb+r6hscsnssApHhNoUsmVGVCwsdsKxgcaqwbQ==
X-Received: by 10.84.211.36 with SMTP id b33mr875049pli.47.1505149230505;
        Mon, 11 Sep 2017 10:00:30 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id l27sm16415315pfg.172.2017.09.11.10.00.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:00:19 -0700 (PDT)
Subject: Re: [PATCH v4] Staging: rtlwifi: Remove unnecessary 'out of memory'
 message.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
 <20170911163210.GA26981@kroah.com>
 <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
 <20170911165721.GA20428@kroah.com>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <e40c7636-257a-cf7f-a6da-3a447d945daa@gmail.com>
Date: Mon, 11 Sep 2017 22:30:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170911165721.GA20428@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Monday 11 September 2017 10:27 PM, Greg KH wrote:
> On Mon, Sep 11, 2017 at 09:48:15PM +0530, Shreeya Patel wrote:
> Please turn html email off in your email client, the kernel mailing
> lists will reject it.
>
>> On Monday 11 September 2017 10:02 PM, Greg KH wrote:
>   
>>      This patch is sent corrupted (leading space is gone), and git doesn't
>>      like it.  Can you please fix it up and resend?
>>
>> Hello sir,
>>
>> If i am not removing the leading spaces then checkpatch is showing me errors
>> for trailing whitespace.
> That is correct.
>
>> But there are no leading spaces present in the file which i have modified.
>> When i convert my changes into the patch, the whitespace errors are shown up.
>> Can you please help me with this to make me understand why this is happening?
> The problem isn't in the original file, but in the patch format itself
> that you sent.  What ever tool you used, stripped off the leading space,
> making it impossible to apply.  So please fix that.
>
> Try emailing the patch to yourself and applying it to ensure you are
> doing this correctly.
>
> thanks,
>
> greg k-h
ok, i will do that.

Thank you.

