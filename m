X-GM-THRID: 6609200682225369088
X-Received: by 2002:a37:cf4c:: with SMTP id e73-v6mr12380153qkj.31.1538851714512;
        Sat, 06 Oct 2018 11:48:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2cac:: with SMTP id 41-v6ls1832737qtw.2.gmail; Sat, 06
 Oct 2018 11:48:33 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61p+XK97uAVpSAeU6m4VuGZ9VnN4bQL/3WV7leGDNlPMfHc4dyqrr4J8SnYN8y+iFI0DZ9G
X-Received: by 2002:ac8:160d:: with SMTP id p13-v6mr12287876qtj.62.1538851713960;
        Sat, 06 Oct 2018 11:48:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538851713; cv=none;
        d=google.com; s=arc-20160816;
        b=jFVh4AO6WUpjynE6qLimkejOjvv2DCcwpJ8ibBq+/Mmzx74K0kO4Pk2R4//UcYTQX2
         Cf40JXyz8/Rx8QVqdc3j4iIsZrbFBv9hhWmEI/DWuiHddINXAz0hfMo4i5WZhrmWcD4Y
         ovqTpi8/XXksqO88miScqcBY1GvtbrjTmGwJXCGXfKNtjg7GQ3we4lR/TN12LCK1ddzw
         RhtqhBhIIx1N7dMmqFXrD1A+CJ5LqKdhcdpNFl5VAeqRC7MhhkT69T4r0pP8RB95D23r
         uBSBIycj+WowV77gCCZ8fAOG8XvL2qXEpP/EBbgVwQn5z36eS8Ja/MryGcxotKjCLfdk
         0f4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=B/JVsPT+HJJfgBKn3dz7L25MGO7NEDTBmLN5EMyqOhE=;
        b=G9uuJfG8skrPKp11RjfHsCfbliiUyebuxbnHKkynvudDReXdFcyUKLcLxofIF+cy/J
         3HGRqWRUUXzbn0jHpYdSQaxv9QDRh6ps+TAGPOz2Hf7uoAF8RizSzydUAKlkNOxxZ5IX
         5r81ToW5TC4bIWqALYiNdFlFzZRBw5aqTQ3laMj5zfX9O9sszWeuU/+H7AgFnmZvbBjm
         TtmgNHBHN59BaRkOsQ4gt0PKCjBfphAOYHXjQCZxZcEuOxm7nXfxjD9M2fWYKTiluL6b
         qrWyHVk6Y/YEs4dzCw+mFVWj3fk7ZlkdMw5I6t1qXD265AcVbTYA8tQRmHHB/xuJ8Du8
         kq+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IjGjtP7g;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r25-v6si667475qtb.0.2018.10.06.11.48.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IjGjtP7g;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id u12-v6so3419708pfn.12
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=B/JVsPT+HJJfgBKn3dz7L25MGO7NEDTBmLN5EMyqOhE=;
        b=IjGjtP7gQrbHRzvJWyqIWqFUP6XAuWo4g3aVmVHOBJcoEK/KKMGSJ12gHp0nOD7PEq
         DQ4ap0Y2OaY8o+4eUGkUTP7LM3XClTnfpYt2fGjn6aVwGEKgVy/bzdVYIt9k+CG1yvb9
         oEc+BZLRdIZv3jazjB7rIbjofZN1T4h7IohoxxV8zUaJFzfPCEyQJVBfZL+bAV05qf4n
         Ap6JLwYwpJ4XTSVhIyqjVVXoDUkaqGab/9qqxU6N9D4xvLs8u33V7KyVmtSA9yfISbOl
         QYASrb3MehsRYZllb26k+5DTPvlgUBX0SYoLCdxCyFY7OyR3rc1mXeTrVKq9gGzP8/0o
         B9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=B/JVsPT+HJJfgBKn3dz7L25MGO7NEDTBmLN5EMyqOhE=;
        b=E/ZkaKwEKHmNWU8NiH5FroS8EfiO0YT/5OBCL19skVf/SlMMnzTGRsx33mWJgNiCgo
         gN0x/HQj3khTmSGkIlpl5SVjlKJWa/EwXxIb9PcR+G7CMYfBwc2lmSLzGDw2yZvnwc19
         TMbuNfgIl+waiJD/LdFa5q6MmPNJTD7TayARyjQ3Xb6YWFE7Y/V0UGyR6Fvn6+6R1Gsd
         tZxC/Z8dwZ9L1kts5Q2bZcR4s+QrTclJBdKUvbM81W8m6cIaie91r72IZpI5X5WKb9zC
         nsVS8DTh79mdjfytW+xusJDh4zhUxzDSDKxJ8GLtbahhHfFQlqjGXt8W5W1Bf+tXyYV4
         BlCQ==
X-Gm-Message-State: ABuFfojvdT0YxgWNVHDj0zqEoOxDDr5zsq+aPfD9aavWAFjxWdCEBKak
	WnbOq6ojeLP81dF58sZ31T8=
X-Received: by 2002:a63:e749:: with SMTP id j9-v6mr14898293pgk.246.1538851712974;
        Sat, 06 Oct 2018 11:48:32 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.5] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id d2-v6sm15244277pfn.118.2018.10.06.11.48.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:48:32 -0700 (PDT)
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
 <20181006175555.GE6283@himanshu-Vostro-3559>
 <68d61f32-294d-6056-7b3d-a89735bc539f@gmail.com>
 <20181006180243.GG6283@himanshu-Vostro-3559>
 <087647bf-36a7-870e-ff41-1b775e47cb47@gmail.com>
 <20181006182737.GB7070@himanshu-Vostro-3559>
 <c1c8d1b5-9e9c-9797-bbcc-4af9e9c2a826@gmail.com>
 <20181006183240.GC7070@himanshu-Vostro-3559>
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <4e37d6bc-9b6f-f128-38fc-8fca295573d4@gmail.com>
Date: Sun, 7 Oct 2018 00:18:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181006183240.GC7070@himanshu-Vostro-3559>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On Sunday 07 October 2018 12:02 AM, Himanshu Jha wrote:
> On Sat, Oct 06, 2018 at 11:59:02PM +0530, Bhanusree wrote:
>> Please let me know what to do on this ?
> > Send a new patch with v5 with changelog.
Can I mention 'No changes in v5' in change log or am I supposed to 
mention any ?

