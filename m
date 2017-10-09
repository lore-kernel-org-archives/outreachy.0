X-GM-THRID: 6473369006202945536
X-Received: by 10.31.96.138 with SMTP id u132mr1154650vkb.115.1507552430958;
        Mon, 09 Oct 2017 05:33:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.153.129 with SMTP id b123ls1174157vke.20.gmail; Mon, 09 Oct
 2017 05:33:49 -0700 (PDT)
X-Received: by 10.31.114.201 with SMTP id n192mr957935vkc.14.1507552429917;
        Mon, 09 Oct 2017 05:33:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507552429; cv=none;
        d=google.com; s=arc-20160816;
        b=s5FabNReIhJ/afcKIYHr40oki4Cx38+iGzb7LxEFfKrMt7f/ERXDspl2KzNNB8Qs4y
         SavQnL7QE1QaoAmn/BJd06UIMwLeN9jf7sEs7060sFN8AzSCQqtcWHpZMjtzi7nH3nVa
         qft1P95WDi4xsG8/6anW7aNStnwFmn0Ij2CpfYHmE9sdLZv8uVA7IRVMBzM1K2ecAjxX
         2+JTH661qsZi+tfSE6Bto7UEk5h2AWYRyIYKhE2MkwrEiaQu1xNL5YWdq9IUxzVlxqPw
         x+N5aA/LZP6yo2YR5XN2VZrqtqJfCMRvVDMxNItPCBKbqm9GYwckZllpxJFl4xEvMdan
         ao0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=zF0mN9NH75hUPu0VrgBd4GjOCJHzJiQ+9PqiAhY0u+0=;
        b=NY+ofcPbKEpgu2vNImCU7z9/JIepcAxWZiEvor6vnd3xZvLxW8FFsiUI1fLb6ibxGk
         +yYNV65ViG9zNr0sj8SRxvNuJ7i+JJaZiX+tZF+kh67YlJqigeXjy0aHd4IwwSWPsU4k
         PC50j9mXQyoDO5rFWAp/HJ2D2to3mv+FBZuxpNldXo4Qb7RQ29OtUYLQymEJWjXunES9
         kx4iFkf/fF8eTfcg5QTs/I8gzLBXTPXHhMy9WoonZ3Ye7jsvsskEIrvsI0F5UZ/rgEvs
         5WDTQiL257ynmXm63n3Xo013LS28Dbhu+QZgi37GYlZaur0zeZUmgmZBZJMAcLQfJnUD
         Whvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J7Jph4UQ;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id n19si419110vkf.13.2017.10.09.05.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 05:33:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J7Jph4UQ;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id b5so5991655vkf.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 05:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zF0mN9NH75hUPu0VrgBd4GjOCJHzJiQ+9PqiAhY0u+0=;
        b=J7Jph4UQjxqUnRnPhQQcPue/pXIhdJ/OWFxueae895MOsNxLB7WiKbO/MRWIjw7kAa
         RV7pT4vj4Gk96PsBwrglr74rwNORJ38nSsd5Pbum1vR9bH4it3kA4a11X5RkXQhK23+O
         rMlHK2BNH0o+hq3OwDiInS2Cv/rIgm8dUOiUg9A2p+8OKt6MOLfLGwEAKVkXpxeTf9p2
         9ILXrcFChHsKI2zTSmDDJnrB1DBnR0LfsGD/CPx8+U4n0TjgIGRlZUMxe+sYLCDDykBD
         8UoqEKpykja6oHWXn4nirJNU0kMwJnyGrB0Wa9D/dCAHvzOExtVk29ueyvinefq/CfQ4
         pwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zF0mN9NH75hUPu0VrgBd4GjOCJHzJiQ+9PqiAhY0u+0=;
        b=QrPGESjS/PXUKmZLG0EzgQoyRSdPEPLLRqZG0xZUUqmNXDLSz9plbCyP7TC3cowh9a
         HSCUuRu13LgBiiMxCpWVhiWuGvb00uqghgmuoFBD3YxqCpi6MFExjTbgHsus4HI56kun
         w3TbScn8r5e1ceBLU16ond2pAU4huwJhkTGxKZmjYspUYziEfJYdn1sIyxrvE1KJCRr5
         UfpUcBUkeSCGGR8gx05Y+axNP4PtnTfrE9ACK+w/JdDXOTOgMf1UcAOF/g8VEPq02JRm
         c8yBfVWZKLlmA7YECvyjWxhz0xNO5wTvbTNczjarIX4NG53gY1hgs5t1S/5F9zDo1obj
         WLEA==
X-Gm-Message-State: AMCzsaUtT3A7Nqy8/TBUAA3xQ47f/w9Y9f2r5xi8XDamPQRd+GT4jwN2
	rfpVOht58xtjO3FGY92hiOaBgIHs9cIVuF7Lq6Q=
X-Google-Smtp-Source: AOwi7QAlBdEntaXcDa+IlIaEaCYTIbpxe3Xn7NxXglQHHnnOHx71G3wSYmS/Zy9zvyyFVlFpGkZvcqAh0/FJ8EPPzXg=
X-Received: by 10.31.165.11 with SMTP id o11mr4568678vke.103.1507552429444;
 Mon, 09 Oct 2017 05:33:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.70 with HTTP; Mon, 9 Oct 2017 05:33:49 -0700 (PDT)
In-Reply-To: <20171009120233.GA7926@salvia>
References: <20171005101539.32010-1-harshasharmaiitr@gmail.com>
 <20171006123835.GC4713@salvia> <CANMOCy0E1zpo_0ajtf0jvvZ7oGB1YKtQNkHAK8wEViiaVnsZ8Q@mail.gmail.com>
 <20171009120233.GA7926@salvia>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Mon, 9 Oct 2017 18:03:49 +0530
Message-ID: <CANMOCy0orSvkh1+nRRAdFcnbqmbCwNWckrita3Y2-Q8fcq1TrA@mail.gmail.com>
Subject: Re: [PATCH] tests: shell: add testcases for named objects
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 9, 2017 at 5:32 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> On Sat, Oct 07, 2017 at 01:11:17PM +0530, Harsha Sharma wrote:
>> On Fri, Oct 6, 2017 at 6:08 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
>> > On Thu, Oct 05, 2017 at 03:45:39PM +0530, Harsha Sharma wrote:
>> >> Add testcases for creating named objects with unique name, defined
>> >> by user and referencing them from rule.
>> >
>> > Also applied, thanks.
>> >
>> > Could you add another tests for 'limit' objects too? I think I posted
>> > an example to the mailing list.
>>
>> Hello,
>> I have pulled to latest tree, then make and make installed all changes
>> but still I'm unable to add named 'limit' objects. If there is something that
>> I'm missing, please let me know.
>
> Are you using a kernel compiled from nf.git tree?

No, I was using kernel 4.10 but I have build the kernel 4.14 from
nf-git tree now.

>
>> Can you also please suggest some more tasks ?
>
> Yes. It would be great if you could update tests/py/nft-tests.py to
> add a new option, basically to take all tests from files, place them
> in a file and exercise the 'nft -f' path with such an autogenerated
> large file with all tests.
>
> Would you have a look into that?
>

Yes, definitely.
Thanks for your time :).

Regards,
Harsha Sharma

> Thanks.

