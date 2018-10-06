X-GM-THRID: 6609200682225369088
X-Received: by 2002:aca:d846:: with SMTP id p67-v6mr12453750oig.6.1538853201418;
        Sat, 06 Oct 2018 12:13:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:27e1:: with SMTP id c88ls5593075otb.10.gmail; Sat, 06
 Oct 2018 12:13:20 -0700 (PDT)
X-Google-Smtp-Source: ACcGV638WwGBgmULnnwnI8kWPvaNB8+qs0XGZCtQsvMrJZhdS3FDdJfIJVw//yddLEoWp5sZUhEA
X-Received: by 2002:a9d:2157:: with SMTP id l23mr11039593otd.55.1538853200734;
        Sat, 06 Oct 2018 12:13:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538853200; cv=none;
        d=google.com; s=arc-20160816;
        b=ALAEAYWVIv65M3nshSLxMLUL9ZRCeSOpO6y9LPEUpIqB9GBgaqz9RJ0DheqFoPP/CM
         2GnjuVnEerugorhyt0cB+qNLTEj1ynUI0T7EVHKEc94/OZU/3VSbW+QgIWVVKwAfACS/
         ex5wCTV7Z1RE5T3dAc3duq1SGf5eKiBlANNbgwrHfUeU2FPZiCI7JZar5TMBD28hZXZu
         kG/shDn18NwtKC1LRObffrcQuZxn5jOgSBOgjHMVv02/RTOXhrBWDRP87SJ/E9h5u2Wf
         +7bBYgiD4+lckdqMWthsxOD+l9q3SIzxdjizhTSiG7qlx3uXpz/bBrXVbWVW25QIEh0E
         C1ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=UImVWdHsGFpxPusXRDVsTC9mFr87fj5cydmC7UeMw94=;
        b=tOUuhpAFrcu6YaP1TybztfZbFbKzmnPQvlP0DVbypCCUWO6U/XqS8qUbgAYdk6TIWF
         1f48qhdjEZ++lQBRpibvhhVhspW3fbSVT2NjQU7p2qIqkLB8o0qn8OJhrQsvZGsypanL
         SAYAqldcXLG7tDWWvzhyJonluyeRo4ow/2K/cOy1p2CtV8WXe2X4kxm6e0kG4+46lGfK
         gOKyLQnlFJzVaYd5cArqciD64XZOAfcnAGN0koA1MT5U4fmjapva+Hl30Ep7AzS8Y9f9
         fjk6h3B/yak2Zfg6ihhJvkNGRZm8/VrODUMp/u2AokRPPhDHVx/qJLKWwzywKmsrXwZy
         NEbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhL3DglS;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x7si1656oth.4.2018.10.06.12.13.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 12:13:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhL3DglS;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id 30-v6so8297386plb.10
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 12:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=UImVWdHsGFpxPusXRDVsTC9mFr87fj5cydmC7UeMw94=;
        b=MhL3DglSTgV/JIEUvNffwr3ODVSiWkn8yUhUko+/ZhU7UEiWrTh+swylfL+SG25eGO
         AWfxwqfEcNU6NG2HR8ZKA+Ylc78BXkDRY2rxE40kUAEW/Vx96Z8yfl8UDDwmwLa21eT1
         B3vOADZqr3AS/QELqRUG/aZJ63Mv322wAxNZ8i/CGx7xmRhA4NaMYuLxoisepstwXI++
         1orK5CWR4g9y1+mj6DJ3CWtvB8kWDe1k+6qjY96bz4ZHWIamQvkmU7HyCvMw59D7SSWp
         izn+37yW39UQpeAQ8RmqJLV5ifTvurv04ScbIrnn0o4N0vA9vm0ACAydEmgQB/v5Ac0c
         tSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=UImVWdHsGFpxPusXRDVsTC9mFr87fj5cydmC7UeMw94=;
        b=tkoON/9Uj6LmGxuevPcHFH+ZbsDUAw2kv6cWBGZmPelU/UOXkv4MoVjSMHqTxzrr27
         sdNzUTEMB9mdna54V/Yi3eNP1hIA2553kUUAT70Fo13Ezaqv6Im44nzAUfLK1B9v6y40
         DYKGdJTwRlwr/c6duv0w5c6+PF20zvjSsREkqLvzFJyE5zOXQ7s/9Rt5AX1i8vKRr6Sb
         9lq0biIeYDkLfLXwr94mrCsVWIRL0alXUfH1U91aYCDGH5MJkH7prbCeGu0XG+ZU2+2m
         oabPAou9HqtrW52YXooc+KQHk+UEKDt1Rbvlpgh7JiK7yR3W/PXEYZ++lkJTM1HZ43wR
         /igA==
X-Gm-Message-State: ABuFfojoFefIiIAoHaB84XZS5j0J7uDch+qSo688oekscFZUX51L4Vg7
	P2Hkje0UQW3lnCQaHwyp0jY=
X-Received: by 2002:a17:902:bd06:: with SMTP id p6-v6mr16728700pls.226.1538853200001;
        Sat, 06 Oct 2018 12:13:20 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.5] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id v81-v6sm23985817pfj.25.2018.10.06.12.13.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 12:13:19 -0700 (PDT)
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v5]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
 gregkh@linuxfoundation.org, hsweeten@visionengravers.com
References: <20181006190246.GA14037@veda-VGN-CS3AGH-R>
 <alpine.DEB.2.21.1810062105410.2402@hadrien>
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <6efbf8f0-a008-1b78-9a2e-e90af0f7e0ff@gmail.com>
Date: Sun, 7 Oct 2018 00:43:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1810062105410.2402@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Sunday 07 October 2018 12:36 AM, Julia Lawall wrote:
>
> On Sun, 7 Oct 2018, Bhanusree Pola wrote:
>
>> Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
>>
>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>> ---
>>
>> changes in v5:
>> -Fixed Change log
>> -Change in subject line.Do not send as 'Re:'
> It doesn't matter here, because this text will go away, but please get in
> the habit of putting at least one space after punctuation.  That is:
>
> Change in subject line. Do not send as 'Re:'
>
> Then things don't run together, and it is easier to read.
It is taking time for me to understand. Sometimes I'm doing it in haste. 
Thank you for making me understand.

