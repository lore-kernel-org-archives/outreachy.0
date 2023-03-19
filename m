Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A101846
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 16:10:25 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id z21so38102516edb.4
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 09:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679242223;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XTfGGHkoYCPHFxKc7i2LaWp9QVKcdzeiPAxLm3CvjVA=;
        b=IuZpOH4oHRDJJ9JsWDowFG4aFzhkjT9Qpt/CjRlYz/XVkBNJ90P1VUWooX7nZwqlrV
         LRa8nnTwUekTP88YpIzGN9/CE9unhiwv0E9dm4hJtNQ1mvfjm7l4x53Rg/qyuYIRYwre
         vD1svqxz/hEEtFqwkrrJokxTu3bk/Mh2eWV2NLL4iuuOHTOyfuWmxSJEvApnzkFpgQQN
         X93ve1tjYMPAqofw+tDo3ECAS+VY8Wo3bUCbhkSb0dGRy07WYOUtIIq4PAAOc1TXC+bo
         sf4C0f08w6AyKF658MoI7RWQldryub5t5N2thODRZBNSUgwtwwK1HRuZkdqBYlU7fw/s
         xUzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679242223;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XTfGGHkoYCPHFxKc7i2LaWp9QVKcdzeiPAxLm3CvjVA=;
        b=nEeiTVPkjLHBBqW2ojgq7Vcs/2Yk5hinOuCIaHwKstbjvsRFYkg0SmeW0XrqyWpN5l
         QIccYTf+7SOPLwR4IJhcAtGfo7TYUpgCvjtM8Lk7AvZ553yLrkBXqZTtgnlq3IGJnK7n
         b6XIjOTFGo+EwD6/CI4tZA+COZcvQhTaV4KhaE5aflJmSQHBoCcfSpHGe+7cAH3u3t20
         nAJSmPT1B9aWIgh61bqrkbmTJ/ucWPFt0IVD4sShJNAlJRXbt+CPAdOJMIdcgNBIByCj
         Y0Qry6Mp+x72IL4dnBEdVN9ZwUyhCtmAaKgR0tnvi7q1/BInMK3aJwmqLDdhrHmmhHsR
         mwoQ==
X-Gm-Message-State: AO0yUKV4Z8R98uKG05S6lJivEpVSASCmQSKXgWd6oF1cW9IYu15BM4yW
	IsoFSl5kCbanvpcE0mG6mVc=
X-Google-Smtp-Source: AK7set8nNa0DAM3jD6jHzciQV2TmzMr7beR6BQ+Xw/QvWwaCQgjCG8R6YrIEZ2k+p2k3Ry82jKxsew==
X-Received: by 2002:a17:906:360a:b0:92b:846d:8928 with SMTP id q10-20020a170906360a00b0092b846d8928mr5600377ejb.65.1679242223624;
        Sun, 19 Mar 2023 09:10:23 -0700 (PDT)
Received: from [192.168.1.16] ([41.42.177.251])
        by smtp.gmail.com with ESMTPSA id qq24-20020a17090720d800b008df7d2e122dsm3373402ejb.45.2023.03.19.09.10.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 09:10:23 -0700 (PDT)
Message-ID: <8132a849-49f1-d280-5ce0-9d1904c8b2ec@gmail.com>
Date: Sun, 19 Mar 2023 18:10:16 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: warning when converting `to_gbphy_dev` into inline function
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
References: <16c61a62-c149-bf0e-0dd7-21e4ba9c6d1d@gmail.com>
 <alpine.DEB.2.22.394.2303191625290.2867@hadrien>
Content-Language: en-US
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2303191625290.2867@hadrien>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٩‏/٣‏/٢٠٢٣ ١٧:٣٣, Julia Lawall wrote:
>
> On Sun, 19 Mar 2023, Menna Mahmoud wrote:
>
>> Hi Julia,
>>
>> I tried to convert to_gbphy_dev to inline function but got these warnings
>> while building:
>>
>>
>> ```
>>
>> drivers/staging/greybus/gbphy.c: In function ‘gbphy_dev_uevent’:
>> drivers/staging/greybus/gbphy.c:76:61: warning: passing argument 1 of
>> ‘to_gbphy_dev’ discards ‘const’ qualifier from pointer target type
>> [-Wdiscarded-qualifiers]
>>     76 |         const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
> If you look at the code it is complaining about, the context is:
>
> static int gbphy_dev_uevent(const struct device *dev, struct
> kobj_uevent_env *env)
> {
>          const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
>
>
> So dev has been declared to be const, meaning that the current function
> should not modify its contents.  But dev is passed to your function
> to_gbphy_dev that does not declare that its parameter is const.  So the
> compiler is concerned that your function may modify its contents.
>
> There are other calls to to_gbphy_dev where the argument is not declared
> as const.  So one could be concerned that a function is not possible,
> because some calls have an argument with a const type and other calls have
> an argument that does not have a const type.  But this is not a problem.
> You cannot pass a const value to a non-const parameter, but you can pass a
> non-const value to a const parameter.  And to_gbphy_dev doesn't actually
> modify its argument in any way, so changing the parameter type to const
> struct device * makes the code compile.


understood, so, no problem to keep the inline function as it is, right?


>
> Also, in your patch, you have the parameter named dev and the third
> argument of container_of named dev.  This will work, but it is very
> confusing, because the two occurrences of dev are not the same thing.  The
> first one is the argument value.  The second one is a name that will
> be used to construct a structure field reference when the macro is
> expanded.  You can use the parameter name that was originally used in the
> macro.


I see, I will fix it.

>
> When you have a question about a patch, it is better to directly include
> it in the message, in the normal way with a --- etc, because then it is
> possible to comment on it.  Having it in an attachment is not so
> convenient, and it seems that my mailreader has decided to drop the
> attachment in the reply...
>
> julia

Okay, I will.


Thanks,

Menna


>
>
>> |                                                             ^~~
>> In file included from drivers/staging/greybus/gbphy.c:18:
>> drivers/staging/greybus/gbphy.h:22:64: note: expected ‘struct device *’ but
>> argument is of type ‘const struct device *’
>>     22 | static inline struct gbphy_device *to_gbphy_dev(struct device *dev)
>>        | ~~~~~~~~~~~~~~~^~~
>> ```
>>
>> I tried to figure out the issue but don't know how to solve it, I attached the
>> patch. Could you please check it?
>>
>>
>> Thanks in advance,
>>
>> Menna
> >
