Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0971366
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 11:24:54 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id b20so3616840edd.1
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 04:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679225093;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A1jg5jG7Z0iI8be31S69Q0UsHUkLg1XyCrL9oiPdj9Y=;
        b=TZzh0kEzCJiApssCFZlq6UClbT6xaCSmhrnYTFBt0W5+eXDd3ibJyHtMtiZNv9bt0i
         aqR1mmoSch2Phc+2wtQ5aDFiC0GKvaxhcjrD6dK7WM8aejX7A+NoscsIpqozTGYfb2gf
         8/T+btLutSkaeawmL5iO8rGXW2I1/vfyiGxSkvx9F7zTgvM/DgquvvQ4lwuHXOlbq9kx
         c1TFK9M4n+su7nktOFn77se9jWmkvT622iX8SnzW4HfC1YauNkvAhvwKidSSUgd9vchB
         dBTXTvwgWNGvl3PVk0UczG5JlhwDmxPBxIWK8w/HefBnMkmVNA8VsjaXHOChBvsGO5kQ
         080w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679225093;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A1jg5jG7Z0iI8be31S69Q0UsHUkLg1XyCrL9oiPdj9Y=;
        b=Z+Q5h4PUFQjeWTW6f5Iy1ao81K0VorzP9cccvjl/IIfqaraWVvVRUmi2CXtNxzgy6A
         ruQw69oo93VXQmqytxii8/7IF8+sGIQkUR7q9y77fLxAPpka1SATEkYgI/5Ax9o0Ubeh
         SUd+bcxhmzQzpFim/tZuPD6ALrfe+twI+Iq8IbqhPeVaPXajUXkGqwtTVnRVb2yO7eLJ
         Ado6CwxrXnylLhF14XfWR9yFlZ17COy+DkRYaLQONrMhoyhPRAyVLgpp44aqKaNHOa7Q
         +ZqM3A9njsxmUs6wntot/U5zaypG56UrxlhNHZAGa5sVAt4ie+WQATy14RUkSk56CEL1
         qOjg==
X-Gm-Message-State: AO0yUKXuMFFPEwRpLimyv4u5sLghP2sqfooGMuTmfNS46o52Em41KLNk
	zuJjrMGRvD+2CX7UbmyfuMNAjFs29Ts=
X-Google-Smtp-Source: AK7set/kMP3/CTw6gfwB9ZSElLlKjR3+Psb0unsdsfSsGNvoWuKrRYttlq7L4gbmk6k8EarobZuMJw==
X-Received: by 2002:a17:906:4954:b0:932:35b1:47f8 with SMTP id f20-20020a170906495400b0093235b147f8mr5345960ejt.34.1679225092905;
        Sun, 19 Mar 2023 04:24:52 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id e6-20020a170906748600b008bfe95c46c3sm3164332ejl.220.2023.03.19.04.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:24:52 -0700 (PDT)
Message-ID: <4bf41550-0e84-af8a-33ab-97ca36113f2f@gmail.com>
Date: Sun, 19 Mar 2023 13:24:51 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: new patch
Content-Language: en-US
To: Ira Weiny <ira.weiny@intel.com>,
 Outreachy Linux Kernel <outreachy@lists.linux.dev>
References: <1cf83508-9fea-05c2-f197-16fdf3edf030@gmail.com>
 <6412107d9fcab_253a1e294b3@iweiny-mobl.notmuch>
 <0dbd4f7e-fc49-491c-0b7f-99d900aea7a3@gmail.com>
 <641261c2c3083_25952229423@iweiny-mobl.notmuch>
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
In-Reply-To: <641261c2c3083_25952229423@iweiny-mobl.notmuch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٦‏/٣‏/٢٠٢٣ ٠٢:٢٤, Ira Weiny wrote:
> Menna Mahmoud wrote:
>> On ١٥‏/٣‏/٢٠٢٣ ٢٠:٣٧, Ira Weiny wrote:
>>> Menna Mahmoud wrote:
> [...]
>
>>>> Is it okay to work on this error reported by checkpatch script:
>>>>
>>>>
>>>> ```
>>>>
>>>> drivers/staging/iio/frequency/ad9832.c
>>>> --------------------------------------
>>>> ERROR: Use 4 digit octal (0777) not decimal permissions
>>> This error is trying to flag a mode permission which is not in Octal form.
>>> Are you familiar with decimal vs octal vs hex notations?
>>
>> yes, I am familiar with them.
> Awesome!
>
>>>> #256: FILE: drivers/staging/iio/frequency/ad9832.c:256:
>>>> +static IIO_DEV_ATTR_FREQ(0, 1, 0200, NULL, ad9832_write, AD9832_FREQ1HM);
>>> What do you think is wrong with this line?
>>>
>>> Hint: I'm not sure I see the problem.
>>>
>>> So your email should have had a subject which reflects this question.
>>> Perhaps a subject like:
>>>
>>> "Is this a valid checkpatch error?"
>>>
>>> FWIW I'm concerned this is some corner case checkpatch bug.  But I'm not
>>> seeing the issue in checkpatch (My perl is very rusty).
>>>
>>> Do you see the error checkpatch is flagging?  Or do you think this may be
>>> a bug in checkpatch?
>>>
>>> Ira
>>
>> I'mn't sure too, I sent this because I submit previous patches but I got
>> comments from mentors that no need to fix them so
>>
>> I asked if these errors need to fix or should I ignore them.
> I've just caught up with the other thread on this.
>
> https://lore.kernel.org/all/48571e97-8766-e67d-c263-29fd67a31f06@metafoo.de/
>
> Do follow up there.  I think we should stop posting on this thread.
>
> Do notice how your subject of 'Outreachy' and 'new patch' become
> meaningless for these 2 threads.
>
> I suspect you had some issue with the mail client and that is why you
> emailed this question 2 times?
>
> Anyway, I'm caught up.  :-D
> Ira

yes, you are right i had some issue but fixed, thanks a lot and 
appreciate your help.

Menna

