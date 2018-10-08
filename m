X-GM-THRID: 6609200682225369088
X-Received: by 2002:aca:4ac4:: with SMTP id x187-v6mr17735296oia.16.1539000151133;
        Mon, 08 Oct 2018 05:02:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5843:: with SMTP id m64-v6ls121342oib.5.gmail; Mon, 08
 Oct 2018 05:02:30 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62HxuAq1StF6a4Pn9LECl6iIcewuwkjFu3sZCNbaW4rFk68EGpozItlGe9X9QnWR6aUhuEd
X-Received: by 2002:aca:fc13:: with SMTP id a19-v6mr17763380oii.29.1539000150514;
        Mon, 08 Oct 2018 05:02:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539000150; cv=none;
        d=google.com; s=arc-20160816;
        b=SdLDuDCJ4Fz764m8ea/E0TcUBV8ENjp4CD7xLMp9Ke8/iZ3hLHZVP1HveacE16Y9y4
         aKS/czPm/TNWG4KIYCQDO4bTa7d6y7C9YsCc8hi2CDjj6v0eNYyJRk9cfh6l4YP+x5j7
         C9+keWHNaenQY5uV/87nhjYPCXrcSbwu83EnOVodQMa5m0M05F90Qnh86ObHgoMP+R+f
         FmCClOFQRvFSZ06DLZzcaBilpKXF7mQYm+2bnG4Cl6F8tks2jM1O2Qrkf5VVd4hcMRGZ
         jz+bMtnSE1jFtQ2o415lI0RsN4mUATNEK73W+aTrd01YBdGnVnEZA7lMtIDs8zdpeumD
         QZ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=+M3sjiV3a8zIs92XT4KhXZOJ/4HiqeJEMVByE3naCLU=;
        b=gpp0GFCet33DzUnH1xqck7+ZaV9R8yF/HblFCvtnkTP8OmvjwDUrKoKR7iipSULCdf
         s7ngLPjpPe4gUXYPbg5T0UwKq+emIroG/HwEGUy8g6uEY2dvHDujNNPaKC8pY36P6Px6
         knSWxuHtlwK0/0Uli9a9HsTKcjW0RkJ3VeyDotY3bX3oGAaqfA6lPUxM1LhVjsJkPXiK
         0LjfEGzFAo4eur17u09Jhj+POC0X7Jb1hNATkaZrFvhDSsVpuK4sklyd26SwvPMcVmdT
         3ioryf6RUxbcSCAfdW4Xh/xEk0NNkiF3rLiVj8D1N9IzQXO727YhFB/MyqO8bJmC/I+E
         b/Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SI+/RvWM";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id v207-v6si950850oia.3.2018.10.08.05.02.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 05:02:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SI+/RvWM";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62e.google.com with SMTP id 1-v6so9979990plv.7
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 05:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=+M3sjiV3a8zIs92XT4KhXZOJ/4HiqeJEMVByE3naCLU=;
        b=SI+/RvWMc8CcJgQ69Rv20nsvLiaekyh+6ppZ3QL+GiN6EfBgveY7m8DHsHhENS21MZ
         dQUj/iI9HJwFBX1yCp/jyxtCvntiy8G9taBm6KrGGJjFKlvDAqt3cXU3LZsLj0GMp8QC
         yULE996zGvWSZQbW066mEwnrSJHqnCftR/TErPq7IV+Xjcu4/pOXRV3F7Fu9Abelo2QQ
         xRQMVuPZCowRISld4BCYHbzGq1SjdrW+F5jeaEswATpfxwTkeSPI56rb0KkbKIuirXcj
         n/Y11Fq4p/67K9srsqmysemChjEAFc6dtOjydJo/kPLVcAsauLO6cgjom3nc2veTx3oc
         Bt2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=+M3sjiV3a8zIs92XT4KhXZOJ/4HiqeJEMVByE3naCLU=;
        b=PNTfc/HaBU7TA0glWGlRZ1myEf6nTWFQwKB2CZC/TjDpxJpV8Oh0xDk17mw0OEgnyK
         rXI2GqnwzZRyBR7kKjNxJDRqrb/rDjCbeqIyvoFNzJwC+Dc+iuDU2jH3vgyiIT1/SKBt
         THFaIetNo4XGBqkQp77TbdObCRXZtFQgjKf2Ugn0+am83GsW5RFoDOpPlHkxt0np9hq3
         +l6+oZQK2lnoyUaJlPwV9EhTxtyHZZlAKqxxxrs7kbZ6Wyfzxuny0nQGRAl534hk2axz
         6gXuxykpcuXlom5TGUPwZhb+PvHFZ7HKKhet7+OnZD5yZ2vDJ5eDXyqT8p4AXGy4ciwL
         GOAA==
X-Gm-Message-State: ABuFfoh3IIUxPFikKH2Lnvq2I82nZdMjQf7lyN3VcUCwuaND3WVQu3Dw
	qLZ400XMOr+f+v7nDjuGD4+KOCvi
X-Received: by 2002:a17:902:20c9:: with SMTP id v9-v6mr17279862plg.156.1539000150052;
        Mon, 08 Oct 2018 05:02:30 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.3] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id e134-v6sm23781090pfh.26.2018.10.08.05.02.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 05:02:29 -0700 (PDT)
Subject: Re: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: outreachy-kernel@googlegroups.com, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, Ian Abbott <abbotti@mev.co.uk>,
 hsweeten@visionengravers.com, Greg KH <gregkh@linuxfoundation.org>
References: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
 <62c732c8-8f6d-6a2c-3256-ba3386444f76@mev.co.uk>
 <f8152fce-71dc-6771-a33e-bc9d95fcf46a@gmail.com>
 <CAK-LDb+bPph5Vd++WV18jMRAr75HO+qJcRk8a2L-jvmBGmDVFg@mail.gmail.com>
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <c3eb49d9-6662-945f-c436-40713735feb4@gmail.com>
Date: Mon, 8 Oct 2018 17:32:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAK-LDb+bPph5Vd++WV18jMRAr75HO+qJcRk8a2L-jvmBGmDVFg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Monday 08 October 2018 04:10 PM, Vaishali Thakkar wrote:
> Adding Greg, Ian and Hartley
>
> On Mon, Oct 8, 2018 at 3:46 PM Bhanusree <bhanusreemahesh@gmail.com> wrote:
> Bhanusree,
>
> When you reply to email, keep everyone in the loop. Use reply-all
> instead of replying in the mailing list only.
I missed it some how. I will make sure not to repeat that.
>> On Monday 08 October 2018 03:39 PM, Ian Abbott wrote:
>>> On 07/10/18 12:32, Bhanusree wrote:
>>>> comedi_pci_auto_config() function prototype is exceeding more than
>>>> 75 characters per line. Adjusted to 75 chars to improve readability
>>>>
>>>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>>> I've never heard of that preference for function prototypes to not
>>> exceed 75 columns.  Where does it come from?
>> It is the warning given by checkpatch. Earlier it used to show if
>> characters exceeded 80 per line. But now when checkpatch is applied it
>> is showing the following warning.
>>
>> "Possible unwrapped commit description (prefer a maximum 75 chars per line)"
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f8152fce-71dc-6771-a33e-bc9d95fcf46a%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.



