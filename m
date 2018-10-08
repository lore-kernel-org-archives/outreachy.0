X-GM-THRID: 6609200682225369088
X-Received: by 2002:a5e:c206:: with SMTP id v6-v6mr16005909iop.9.1538993762632;
        Mon, 08 Oct 2018 03:16:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a81:: with SMTP id v123-v6ls106302ita.6.gmail; Mon, 08
 Oct 2018 03:16:01 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62WjWNQYn5UJc18NR8PBQ4vLd9YaJzKMa3yvcJzKZ/GxlfAmk46fZ1627EsZHuEQy0v4hCT
X-Received: by 2002:a24:6e92:: with SMTP id w140-v6mr15922448itc.35.1538993761908;
        Mon, 08 Oct 2018 03:16:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538993761; cv=none;
        d=google.com; s=arc-20160816;
        b=H1BaCZwd8Gqj3gBf3eWaTXUamyizOUh4WyKpITjznVBMEMO1wSYKpRHJck74ZFWdtL
         xT9LMkv7sZpp6rBLuwuvAhq3WJtiQOD2v2/Nr5iSCK1/LoYBa3VQh96XS0rk/Rd6T2KX
         yaWOhQtJaed5vOVhK8jF5czCTmeS+vivPYaWuKGhmi/T9xfLsxUHx35I0IqcBF/r53rP
         /yW/jcLejuPhYLfqDxi7NW241PsdKW22p9ihw3zpEB8Bk4yOlLAEfMBR9FsekeRxMXIs
         QA3hj+DeLXn8yKNuNW33Vl5fW+3Zk8ndxl6rlkGnQW6Piec461SrngDMLzVmJkcQmyCb
         DHqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=yqhKiZfTumU66AF0UETPk+q3qSjkBVqY2hdgx+grXXw=;
        b=EHYt17ZMAC0Z55vRqgKFyazd1HGVobiBlY+0YGsa6k+oy5H5gcf1Hu0AZBtaDun/zj
         v5n3NeuOmq0B0iDhVkiAt6OK5ZJc2TFxPey6PWm8VIP0KW6o/SlTl6TxaMjxlH9YAPTB
         /QnSA+1zyHbUqHntBi5zyZ3iIVx5MvbGFVAzdXLNNtPGr0rIP4KV65UwK72RupGExRe5
         fHrwVLutkF3J0vjcpyK+fQ5qXyCLLYk9urI2Of4EgpiuEH6ecghE4EHxuZ2oPw1LOC0N
         eMEiROUQvUixcNl41NWs7zo6k2+ErkOKRkKKBusHMOJiGGrOhioSb4paSqbKid1WF/L9
         xNhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UjAR+2jd;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id s7-v6si668613ioo.5.2018.10.08.03.16.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 03:16:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UjAR+2jd;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id y18-v6so7634379pge.0
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 03:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=yqhKiZfTumU66AF0UETPk+q3qSjkBVqY2hdgx+grXXw=;
        b=UjAR+2jd6r2t8O2bEXQSdWlS+zi8OnyeNOJShPlzQbn7WDtSTh89Q9BoWtS5m9nisn
         uq0kYfpy4OKgkX1t6YkLBwc4H3WAKmy5JLE24PSK8RZI212PtJPf9b6qd8ToJuGxXsQF
         46ehL7/olCh8Ae87MVkmtfbiCT5by9YmRLL799+9PTYrRh/vZ60cv2VLO+W+hWo+CHI6
         f2A9nG5uBtEbIoEx7BWhCGwEBPBOBJIfuvFlMWMQKIATSoiFrbk3SccNw9ORK4spvQ+E
         dDEbxlRz0mTh5W7b+tflNOvpbmjKjbm+/gAIV5eyLHJ198jLefbm4eLF3CtDRZmno9vs
         WjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=yqhKiZfTumU66AF0UETPk+q3qSjkBVqY2hdgx+grXXw=;
        b=AUyp+Iliv+vEQR9Aa9NCXPiw176QgD8CwQBXK8u6e68WGEP21+2T9+yvZRldThGfC1
         NaUNDjlPRUKiWsgsI4nhHX1/bCkrid+AXcHwdds1xCKSFQqyPpnTDVm9uQl/1oR3QREB
         QSDiTlXfTHpKX/Fjyr3bhAgMfasD0zm8cwvKebq8qDnQGe63FD6/Rrqhj+td8dJmrm3j
         rqZDLsPIk3AsLqfzxUCczsPim6jT1b7BC2QUU9YzfqOc33Mf0Ej68B2aKROJTPcxiJTK
         mnJvFtvIHRcycHc+pOKwqy/Q5ZXjdgSSkD7nPEeZBbQhstkd7ADJ2Me0RVI71jWu3/ob
         6UfA==
X-Gm-Message-State: ABuFfogSiaCsOXefMQ2EVOsJb3wxQBBYqmUtNqINZxcVFoCEF2wgWtKS
	1jrWXfj2dGo5qEPKW3Ox2NWIQkWv
X-Received: by 2002:a62:d841:: with SMTP id e62-v6mr24347030pfg.60.1538993761020;
        Mon, 08 Oct 2018 03:16:01 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.3] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id f1-v6sm29658881pgc.4.2018.10.08.03.15.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 03:16:00 -0700 (PDT)
Subject: Re: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
To: outreachy-kernel@googlegroups.com
References: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
 <62c732c8-8f6d-6a2c-3256-ba3386444f76@mev.co.uk>
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <f8152fce-71dc-6771-a33e-bc9d95fcf46a@gmail.com>
Date: Mon, 8 Oct 2018 15:45:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <62c732c8-8f6d-6a2c-3256-ba3386444f76@mev.co.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On Monday 08 October 2018 03:39 PM, Ian Abbott wrote:
> On 07/10/18 12:32, Bhanusree wrote:
>> comedi_pci_auto_config() function prototype is exceeding more than
>> 75 characters per line. Adjusted to 75 chars to improve readability
>>
>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>
> I've never heard of that preference for function prototypes to not 
> exceed 75 columns.  Where does it come from?
It is the warning given by checkpatch. Earlier it used to show if 
characters exceeded 80 per line. But now when checkpatch is applied it 
is showing the following warning.

"Possible unwrapped commit description (prefer a maximum 75 chars per line)"


