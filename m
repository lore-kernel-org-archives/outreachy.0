X-GM-THRID: 6670193586677481472
X-Received: by 2002:a1f:8d0b:: with SMTP id p11mr12449013vkd.0.1553097510663;
        Wed, 20 Mar 2019 08:58:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7489:: with SMTP id p131ls612247vsc.5.gmail; Wed, 20 Mar
 2019 08:58:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxsD9Z2SKfA+Yh9qPH7SjEdItcNpaINnkFQNYPwNLceIdsXVr8H1XDgVa28vU85Hc8Ui5R4
X-Received: by 2002:a67:7d43:: with SMTP id y64mr16679817vsc.30.1553097509763;
        Wed, 20 Mar 2019 08:58:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553097509; cv=none;
        d=google.com; s=arc-20160816;
        b=sXiidy3F6Gjd9mJomahWFP3TPfZZevOvfFpuNHeoD9nGoZ7RZGPm+vBmOidrCBtzJ+
         eXUZmnZ2qZisBw3I/k5rwpndkLJEQedunRfu12htoINReQOzcbKeg4GwRimgDzoVlSTc
         Q3aWtrFxz5wflxnd/i+lSCKwyicJ3bxgpwYmqNCtrNKYBDwn3YXiYUQlE87cRftXulzp
         BMczMfbN2bigJDLzpCVtrwxwZ6Q0ihfAItVEgjAMQPSpknAeNAqhzy8WXe1eY1BIXgEo
         8hHzCO0kgSH49J0hrg8BFSGUY10AN6DstWUL3I1m5TEG437UBgG4r7yQ2ssYQ2Q6Jt1R
         pqqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ZvqvIQnlAIcNK0ib5CQ7m32ZjDwKjp8kgXNY7+SKS6g=;
        b=k+A0pXiGfY//+mthYGhXZKi2qpYTqb/6nL1rUwbZTETwvAlu+4n+CTw9bFqAeoTvjB
         1E2xVmMANtZ3WN2XHgXkVB9iv+sC5pV/nIyzvhh0Em1I60RtODJ4ju0kDtFblI77YFZl
         gt+GZUXk8Xe34NdbouPios+pxOdxCniFkcuNktUCvp4OkUpiK91NDtDutN1ZMcwKdtpo
         r8gCikXSQXk/2B02PU9L+77z8JOlLIvZFXFvcV4Cl5nw4gekySkZQ3sA+i68NkeF/Wbz
         8aAi8h+xIZIJZlvGznNwFQKtTIc8ciHsFawOIzF8Ubyq7eSJeTALxsdIark3cggWXB7T
         istg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=rfIQU881;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic314-19.consmr.mail.sg3.yahoo.com (sonic314-19.consmr.mail.sg3.yahoo.com. [106.10.240.143])
        by gmr-mx.google.com with ESMTPS id c15si133545vsp.2.2019.03.20.08.58.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 08:58:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) client-ip=106.10.240.143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=rfIQU881;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.143 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553097506; bh=ZvqvIQnlAIcNK0ib5CQ7m32ZjDwKjp8kgXNY7+SKS6g=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=rfIQU881brzunqex2N2jN1JB7mRsr5B9eJRo9uNYB4fUPmmSd82XSLeSRWS2dhGNjAwIOl1WJKPw7fUNP05AqmGyP+DkeAoyKKwAebG07o88Vhe9+Kipz/WUW7GObx7vTCd5XwSMzKSQamVw+VIFkoxq3wYr3GxwUdJPTirfYv31JChCh+1wwrSSjLX56ssdKAsBkx8YURLidGE8dRuUoXQCY7GvhnoINTQFCXm0iWR1PYJG9CxLLvVOCdASy61AD/B5ZJwLE7pTo/aphNJu9DksQB5vhUxUXGI1ddCs8HGNgcgmEJvK7U8YAYdPWQ/xHI+9ShpuHtXUo8840y9kzA==
X-YMail-OSG: NNrjjzQVM1ldVWQWptZgZcZxk0oDhB_uYM5V4muep8nvQf30WLSiZS7DeHNR4oN
 vFuuX_vuirgicRM3JwBBWhTvLAT9E6Hago7iYsjaYiZ_3we3fNydu6ulP18EIQ0QWzhaAMUZob21
 6HeQs59QdtJQW1h58FBs1VUyEphqNuVZA3CuN1sSdasEn7Jn6KowPEFgf2sLDMTHOM0ynWxxsRJa
 V2yiJxFAXmtHcvb_0klxzmdlP._K9y4E7NgKeb_OhO4lMfwk9_xuIQybFrLveyaUSSY7wzGal4DF
 DJC83wnCUeu9s8jpqwXEudxq8dviZ1KfwFUCKOXgqlNLRVPIW4mb_NLLMQCsNwMF6Zdq0InCoMe3
 HmL9qAqUMBDIbfqRfMJpKA6K8PLcoSf7lTxFKJAuGrxu90H5euAHgZ7txzbyCUBNb4Z1wZ6cNsCY
 haLu7sYzNzfgB0L8ohg8yLd7xTX6WWq6OWk0uVuymMrf19Y9dQu_ZEvFNoieiuL0IbHK9wWYhf4Q
 GotH5LZXBHDp4__.YcXljTgAh7A4s1.vHntFYf0xmaNPeJzJi6weMVynikBVqVidskcYkammN4DZ
 o75NvwZGLBFZDeDngzov4ua.NAglnQk6nRy26OZ3xRf2ce259qq19ON7ZtKzAOR4._T3h5OzlPY_
 qXnBgBhBW7xr6EBOlL4hh061eOZw0mmf6gU68lcRpnDrIzgJFueThKFQXzFF6nnPSrVRZjUzylkm
 bs0cdqVQb_TzOe5ZZ5iIxwlr9jag7kgvwqL4uz2xNSHspt5UdXUehA10hXgSYc2XREC97PBWcrgO
 rdAUh4.YZoKJi7UrcC7r5n7rGnx0l0WysZI1yYGGrq2tZFhausviyNtNX1jSFaTTJIlzKdQ_T67p
 id92qVt4xO7BQHEWICJZneexR75Ig0cbnkFs6bfwBnDUnJ2MWiS0RSXvDgsaCFvrOAcPfvO__INz
 VPVkI2e.ZdqGkD2B4LHWGDUMY6KHW9Db0XETGR920s20.GZaFARpDvz6vJuU54qLLqsHI4NDBBz.
 oK8dJfBFz.F9VL1KB3xVpT0eHVaanJ22RgK6wc_kcdG0_KHB3QdBwTZesqg1E0OpxWKZfJ0vjUqV
 jkLVepOTqv_g-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Wed, 20 Mar 2019 15:58:26 +0000
Received: from 103.7.128.210 (EHLO [10.0.2.15]) ([103.7.128.210])
          by smtp429.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID a5f943c9df526d7486eeaff882f5b9b4;
          Wed, 20 Mar 2019 15:58:26 +0000 (UTC)
Subject: Re: [Outreachy kernel] [PATCH 0/5] Remove return variables in
 multiple functions
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
 ajay.kathat@microchip.com, adham.abozaeid@microchip.com
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
 <alpine.DEB.2.21.1903192102070.2460@hadrien>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <0310644f-84f3-2aca-1a90-5463b2dc37b3@yahoo.com>
Date: Wed, 20 Mar 2019 21:28:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1903192102070.2460@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 20/03/19 1:34 AM, Julia Lawall wrote:
> 
> 
> On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> 
>> The following patches remove the return variable in multiple functions
>> and return the required values directly. These issues were suggested by
>> Coccinelle using ret.cocci.
>>
>> Nishka Dasgupta (5):
>>    staging: wilc1000: Remove return variable
>>    staging: wilc1000: Remove return variable
>>    staging: wilc1000: Remove return variable
>>    staging: wilc1000: Remove return variable
>>    staging: wilc1000: Remove return variable
> 
> I haven't received the other patches in this series, but just from the
> above there is a problem.  Every patch should have a subject line that is
> unique.  On solution would be to incorporate the file name, but it seems
> that you have only two files.  If the changes are not too voluminous, you
> could send a single patch for all of the changes in a given file.

Since you've acked one or two of them, should I send a version 2 of the 
entire patchset or just the ones that need adjustments?
Thanking you,
Nishka

> julia

>>
>>   drivers/staging/wilc1000/host_interface.c | 11 +++--------
>>   drivers/staging/wilc1000/wilc_spi.c       |  6 ++----
>>   2 files changed, 5 insertions(+), 12 deletions(-)
>>
>> --
>> 2.19.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1553025265.git.nishka.dasgupta%40yahoo.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

