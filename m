Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE406123
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 19:29:29 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id eh3so23821349edb.11
        for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 12:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678908568;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mvkO7UDbuPRDH05xZJanCSXbOIYedfaVaxGdkCJjof0=;
        b=L1McOB9dG10XPVxof2VimAVz7SYwwIAIxhmaHm2NHD+E4cjAQLJPToQfnHWLQ2fNfT
         xNcz8HQrGUKLxZoR+pCz7l6++u2G6J75GvDM8S/U0UpyWYvwotksZqTUxVK+SYCXRbgf
         mwfqoRVlRzk2Yxd9P11dYJlovGLIHSIry+k2gW7nCZC0jG0GAwnqqxk5ky50tRMt8IwD
         PGi3wGb+6nmM9BiEEpXBHh6sXV/wiScExTNfsKZiX0P+D7I2MTIk3rDSQpmRzvzwok3v
         aX7Wxdswbx/bRpG0MFC71KXbWZZS/xO/27A1jv7LERLWsvRzMYLuWkdUssjV7nkd5gRc
         zi2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678908568;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mvkO7UDbuPRDH05xZJanCSXbOIYedfaVaxGdkCJjof0=;
        b=zQ/8UONWFx5SJMoSv94LLKgv5EnNxXr6nMBpQtFQ6hznRN8V7/Tm9wOuGjy+tfyle3
         XFelEza2xR9ASY+YIU3Ai/gjx3SChwhNKT3j0HDO8gVvneUbuF2m9NikJGK164+FApKp
         wn2F9vrlhhrffiT8dnIbzuqSHsIt5QKI1Pj0ExzgYj6GdJmHKOG2gP69yYQXkz8jRnoU
         80YgFmS1mkbzIRuttVMQqeZLZ+wv0bv5wLgflhlHhovpW2kH4dJRtighgwgVpGhJZVDJ
         O+WUS7CIHP/ulfc+fa+OKbXm8OeQPXBrHlGotanvEPk2MNHDmIIt5dHTumEnKXSvxjeZ
         3qug==
X-Gm-Message-State: AO0yUKVtnVxMutXhzbojt0Wo6dmji2/wmq/emmvwN+URuxnY6kE3/dWC
	w3AL/0KS3pgi3jE7mZW+oW4dhPyvsEI=
X-Google-Smtp-Source: AK7set/JhUIIwYT0RLm1HhHPmCswg6PAZOPc1KVVGIjji79AJPF779Wx9NjMLE2MzqxlBAtmf2pgow==
X-Received: by 2002:a17:907:a4ca:b0:92f:d900:9c66 with SMTP id vq10-20020a170907a4ca00b0092fd9009c66mr1179063ejc.10.1678908568032;
        Wed, 15 Mar 2023 12:29:28 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id r23-20020a50aad7000000b004f9e6495f94sm2917335edc.50.2023.03.15.12.29.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 12:29:27 -0700 (PDT)
Message-ID: <0dbd4f7e-fc49-491c-0b7f-99d900aea7a3@gmail.com>
Date: Wed, 15 Mar 2023 21:29:26 +0200
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
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
In-Reply-To: <6412107d9fcab_253a1e294b3@iweiny-mobl.notmuch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٥‏/٣‏/٢٠٢٣ ٢٠:٣٧, Ira Weiny wrote:
> Menna Mahmoud wrote:
>> Hi Mentors,
>>
> Hey Menna, welcome to Outreachy!
>
> First I'll make a small comment on your email subject.  Remember that when
> posting to a mailing list the folks getting the emails may be looking at
> 100's or even 1000's of emails on the list each day.
>
> A subject of 'new patch' is pretty generic and is unlikely to result in
> any interest in reading your post.
>
> With that in mind lets look through the below errors.

I see, I will do that.


>
>> Is it okay to work on this error reported by checkpatch script:
>>
>>
>> ```
>>
>> drivers/staging/iio/frequency/ad9832.c
>> --------------------------------------
>> ERROR: Use 4 digit octal (0777) not decimal permissions
> This error is trying to flag a mode permission which is not in Octal form.
> Are you familiar with decimal vs octal vs hex notations?


yes, I am familiar with them.

>
>> #256: FILE: drivers/staging/iio/frequency/ad9832.c:256:
>> +static IIO_DEV_ATTR_FREQ(0, 1, 0200, NULL, ad9832_write, AD9832_FREQ1HM);
> What do you think is wrong with this line?
>
> Hint: I'm not sure I see the problem.
>
> So your email should have had a subject which reflects this question.
> Perhaps a subject like:
>
> "Is this a valid checkpatch error?"
>
> FWIW I'm concerned this is some corner case checkpatch bug.  But I'm not
> seeing the issue in checkpatch (My perl is very rusty).
>
> Do you see the error checkpatch is flagging?  Or do you think this may be
> a bug in checkpatch?
>
> Ira


I'mn't sure too, I sent this because I submit previous patches but I got 
comments from mentors that no need to fix them so

I asked if these errors need to fix or should I ignore them.


Thanks,

Menna

