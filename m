X-GM-THRID: 6463854288984604672
X-Received: by 10.31.180.193 with SMTP id d184mr7145713vkf.16.1505150400310;
        Mon, 11 Sep 2017 10:20:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.43.5 with SMTP id r5ls4639446ior.21.gmail; Mon, 11 Sep
 2017 10:19:59 -0700 (PDT)
X-Received: by 10.13.202.212 with SMTP id m203mr7858457ywd.77.1505150399571;
        Mon, 11 Sep 2017 10:19:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505150399; cv=none;
        d=google.com; s=arc-20160816;
        b=G+UzgR8811wSdGdvQmZ0nJdWsF0OLkYHEkOXlIgpsg5/JrgMeLSbp61iGTEs38N6qE
         vY8XuTTa9NIhW6tFo7k+cbsNPUK8XAMqhHq38DiA5oqhQ9/ZNbbpyDxRaDzSzeW8vxfs
         uQD6BBeKN4G0b4HfYSmMiFF+FZ0vQsSjw+hlRYA5jMLFxeIwGou9obZs1mB4NC4VomI9
         FnTIE2YHzbID63W9kXQz2ofru7/5prYH//xfecYIYS2tLi9gRHTBdzMy40U34uOsPD4R
         DptIt/Fynbg0LB1EgN4b8Lilgn4cIa3CT2QDhjh9hhtjC5bg9vzE9ONxX17uCfbjxgU7
         ejxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:arc-authentication-results;
        bh=8Vjvpo54LTHyiSVOS/RjhsbnT/90/zYEkZQaG6U/xqA=;
        b=ke0D3ddKxsk7dhal7TjeWLMzmRXay3lD9tZN9IpQ9059+Rewm/hDmeOuC3M+njcN66
         jUVp8K7IVxBoFgRYu+TYvPEARl+VkbwUcA+ZLj70QW5KhEDakib55U8Iu/M8Y+nVn7Rv
         /pcCmRdCIZWyey9zQooV/1RpHQXud8gKiV7j/xqXf+VrK2rWRq4qRWuL2pCQ4152lAae
         IfvpQNtd90Vu4wX2DFU3lxndmyT6+hkW9CLOwb3k7RCxK2LuATs1Ryu6DCWfU6x1FToo
         PmoetFqEidxIXM8h2wjS2b87SFWx7Ti32cBvj5jEb1IgUYAKFNu9XZBdBnhT/VgpVU5N
         TvKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DD4iE1TA;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k76si978605pfa.10.2017.09.11.10.19.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DD4iE1TA;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v5so4913936pgn.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=8Vjvpo54LTHyiSVOS/RjhsbnT/90/zYEkZQaG6U/xqA=;
        b=DD4iE1TAfjhzwTZF185mqtU+26bdkzg9zvhZcr2PjkpYXFnqGmSlRdzHCc/UUzC3zV
         DPbjm548QjWHhHvQ7zi9RLqup/VHX+HQZPUVvqX7dk1mcRdMVdl4MsRCseekCpCW3kJj
         aF/clbCZ5ooZxggXIMQe/yRggVmv9PmqOX2bPAD93ac4+V75wiqc8/78/fn5cpBDRyz3
         LsHf/UNHry0iRguvSYL8HlAH7NA9i5Y2EVOyyPfcOM5bEfnYLeRjmE2PSsdW2Ilk5GFZ
         wYeUkqrbG/fJZhCqVLRNkHNbSxy4HkhoMjJZgxpBr1lycbTFmAuTVE+lMBmIoPCW5gjk
         aNKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=8Vjvpo54LTHyiSVOS/RjhsbnT/90/zYEkZQaG6U/xqA=;
        b=Ozwze+8rHgARNyirsYD7zxN2TxWSSSf7/z2yyaP18cZ6preT0EwvkeBxkm1Qq4i9aN
         GPRHeJDBiGDC5+0TE1wIjYmqOu9wWd+hAf8zgHMemhIgQXRZAtHxGl1huIahqWS8DfoV
         l30yZ+yGmj325yHXBgieKhcpvXcQwrb8aQEkjAgCVvbac/MJ4hRitKiZm0yvg6Ya/O26
         3P2wsNK/xRG9Do+VaVwbsxP1PqJVHCqJTEUi8C31yqxhTYPLfSNau3EYLn9HbkI9YVRD
         mvBTfiLCPNvkcSYREEXfmJJowv7o4fQXcx4pH4Zv/7NKscY2F8YWchdwGz92FisMJgOf
         wviA==
X-Gm-Message-State: AHPjjUgFWn99acaUYqi9guafdQh3arY+UjS0QQUDoey2fbwF3cx6JO+o
	3hugo0fAjMk45FL0BE0=
X-Google-Smtp-Source: ADKCNb4c4LdVJOTwW8/DmHH6B1m5/bSsOkTLx0lSBb/RtfSxpF2a92Az9vkFxetSIf71OLvM4Dbfkw==
X-Received: by 10.99.9.65 with SMTP id 62mr8845976pgj.395.1505150399039;
        Mon, 11 Sep 2017 10:19:59 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id a18sm15009990pgd.57.2017.09.11.10.19.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:19:58 -0700 (PDT)
Subject: Re: [Outreachy kernel] Re: [PATCH v4] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
 <20170911163210.GA26981@kroah.com>
 <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
 <alpine.DEB.2.20.1709111900220.16190@hadrien>
 <6ac72deb-edd6-1026-a2e9-df6ea871b3af@gmail.com>
 <alpine.DEB.2.20.1709111909454.16190@hadrien>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <68bf1580-c3fc-fb41-d96b-559eb7b4c7f9@gmail.com>
Date: Mon, 11 Sep 2017 22:49:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709111909454.16190@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Monday 11 September 2017 10:41 PM, Julia Lawall wrote:
>
> On Mon, 11 Sep 2017, Shreeya Patel wrote:
>
>>
>>
>> On Monday 11 September 2017 10:31 PM, Julia Lawall wrote:
>>
>>
>> On Mon, 11 Sep 2017, Shreeya Patel wrote:
>>
>>
>>
>> On Monday 11 September 2017 10:02 PM, Greg KH wrote:
>>
>> On Sun, Sep 10, 2017 at 03:10:05PM +0530, Shreeya Patel wrote:
>>
>> Logging messages that show some type of 'out of memory' error
>> are generally unnecessary as there is a generic message and
>> a stack dump done by the memory subsystem.
>>
>> These messages generally increase kernel size without much
>> added value.
>>
>> Problem found by checkpatch.
>>
>> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
>> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>> ---
>>
>> Changes in v4:
>>    -Include v2 and v3 in the patch.
>>
>> Changes in v3:
>>    -Make the commit message more appropriate.
>>
>> changes in v2:
>>    -Original patch was not sent to the mailing list.
>>     Also, add a tab before the return statement.
>>
>>   drivers/staging/rtlwifi/rc.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
>> index 65de0c7..779a5c6 100644
>> --- a/drivers/staging/rtlwifi/rc.c
>> +++ b/drivers/staging/rtlwifi/rc.c
>> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>> 	struct rtl_rate_priv *rate_priv;
>>
>> 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
>> -	if (!rate_priv) {
>> -		pr_err("Unable to allocate private rc structure\n");
>> +	if (!rate_priv)
>> 		return NULL;
>> -	}
>>
>> 	rtlpriv->rate_priv = rate_priv;
>>
>> This patch is sent corrupted (leading space is gone), and git doesn't
>> like it.  Can you please fix it up and resend?
>>
>> thanks,
>>
>> greg k-h
>>
>>
>> Hello sir,
>>
>> If i am not removing the leading spaces then checkpatch is showing me errors
>> for trailing whitespace.
>>
>> Maybe you are not using checkpatch properly?  What is your command line?
>>
>> julia
>>
>> perl scripts/checkpatch.pl -f
>> /tmp/0001-Staging-rtlwifi-Remove-unnecessary-out-of-memory-mes.patch
> -f is for files, eg foo.c, not for patches.  You should be able to just
> give the patch file name directly.

When I give the file name, it is showing me 'permission denied'.
>
> Also, could you change your mailer to make something visible when you
> quote other people?  Otherwise, it's hard to sort out what is new and what
> is quoted from others.
>
> thanks,
> julia
>
>>
>>
>> But there are no leading spaces present in the file which i have modified.
>> When i convert my changes into the patch, the whitespace errors are shown
>> up.
>> Can you please help me with this to make me understand why this is
>> happening?
>>
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visithttps://groups.google.com/d/msgid/ou
>> treachy-kernel/6e7b1bf6-89b9-a40e-4a67-
>> af79312b12a7%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>>
>>


