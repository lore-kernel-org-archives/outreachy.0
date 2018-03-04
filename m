X-GM-THRID: 6528628385749401600
X-Received: by 10.101.68.129 with SMTP id l1mr2568912pgq.80.1520192264487;
        Sun, 04 Mar 2018 11:37:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.13.6 with SMTP id v6ls4311452pfi.12.gmail; Sun, 04 Mar 2018
 11:37:43 -0800 (PST)
X-Google-Smtp-Source: AG47ELt8HNep1DMfitlOlvP7igQ2SK1/Brj4ZqaS15hf8I8szqxVuIoOVSsOttwO1AneIYf8wvMu
X-Received: by 10.99.191.68 with SMTP id i4mr2558335pgo.175.1520192263287;
        Sun, 04 Mar 2018 11:37:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520192263; cv=none;
        d=google.com; s=arc-20160816;
        b=YbvL8PRPn3wO2AzNpvf+q39UkWdHvETMF1dKxrUrsnywR8mI4l6hxAAc8GlxYttKap
         3Mik6oOYbv4DcuEhae0Hhl1ih0hJOrH13CxVs3vLIdsSIBy3Qzd2QNrrafBeb3E1wETh
         trC+i9eihYb7AL8uFPQXlqoY+H4Xg8jftnrSbZFpvIJq6v0ZU88pEl4OcM0qAO1Qq5sL
         R19NRqg/sLP6lusiRAIYviWSVpQ4Mh6h5C+3bZWCRrbJADcTG1/gP1Kioah49F/Ok4SG
         cqAqQnQVe62ZAtj7ICaYiPtkMSPNuvWSlc8elMzE4GcqsIkfMn35u0O2dfjquTvx2q1+
         r9hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=S3Mz10z8OrAPK9ozOp2lQyNeqdK/Jx0qW4DqrayK/Ao=;
        b=fiF0DKwJYb8N/CWADO1gYtgosU/pQYsvxec+ei7IdKTeS0IABvejwD8phW/qHOdxRk
         CnudcBiBgOuSctu+iTCu5p4TLuaevd3LB3bKpxGUJf5oVKLhUYzw/pCjpNkvgdDsjhPD
         Ctnf+85MddQ4cUDPjZ0zBRxvoRvSLx9BKKwBd2TxMwi+DDkDvFxMpPhmZNyrpusGLRQI
         ahKWOuH8Ole5CvJuRvi2qtThKu+VMeiGA0cf7Q21Jk8Arp+sHJ8B69nU+U1gy3DsM7RK
         fHqkj0kyd6FtSbxsvZ9gjqOqJLm64mneSze2lBGj1jp4MywXFM9KbvT/AQJgZNK9yx+D
         F6Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C0yycrjU;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id 10si200273pgg.1.2018.03.04.11.37.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 11:37:43 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C0yycrjU;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id g2so18194734qkd.12
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 11:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=S3Mz10z8OrAPK9ozOp2lQyNeqdK/Jx0qW4DqrayK/Ao=;
        b=C0yycrjUeuQ6SeEopfmMPQ7CZUyuXpFsCYrVOZJ+6iaB97F3nfRqRgDeaElLbmgR6y
         +ttcumkL2mm2lisEyoLCu01OXY6vAxzQa5Ao5wDFKfU2N4O4o3f/KqJ0Fr7uIEvkMCG/
         C3ERzusHpNuEpZpqVcni980T+V9wYuPdUIgNav/Uf3PdR9/Vm7Kd4O851rPIZDS/PUpp
         5zT1VzUtMtvcGg11wS9L8DMAf8G+C56NMGk1Jhfxcg+uFindCxfRkhnxhqDIxGN1r9r1
         VUuhkgkSaPcy/gyKTBhjxL236Sua/Q8wr66LjHIXyJThFbQmwgrPkmG6NOM+8Az03io0
         lw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=S3Mz10z8OrAPK9ozOp2lQyNeqdK/Jx0qW4DqrayK/Ao=;
        b=edbn9RQnhwVHOaL4NSrMdpyO16XHjEMpg2kkfeMz0DONHXGay7/jQwZK96RWiPLInU
         4qHfCvwSQl8YAoJRPRS7gEdxN/hFPKY2Sc68eMvJ9taZ7tVNyZN4pRb0fquWC7cApENO
         N8jjfMca2d1wndbfjHqiubpok+t5PfvRyeIwjLZlJ7lcbqirSP1Lcf11CJ1b9p2rbFDk
         FI/jsGSMtpCrO/OKwfYjfRWmPZLo9f8xNj9w36Q6nb0e8rtoHjbFJ1TpdFw34gZ8DWpS
         GCpgx6bawnShX5u2rRiPB7xhNELF4Neh3BTDQf0HNvCJygXYJ5g91IBL0wowfb98mhSZ
         JdVA==
X-Gm-Message-State: AElRT7FSdwTykA5ncxp0owgzeDQLvYMQaXx1qAHEaBCGGaT53xyozG+M
	YQ0fEFnoszpwJIgXhqIT2/Vf801Oflu9MRRHek4=
X-Received: by 10.55.161.205 with SMTP id k196mr19396213qke.113.1520192262896;
 Sun, 04 Mar 2018 11:37:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.32.8 with HTTP; Sun, 4 Mar 2018 11:37:22 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1803042005060.2182@hadrien>
References: <cover.1520153895.git.dafna3@gmail.com> <alpine.DEB.2.20.1803042005060.2182@hadrien>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Sun, 4 Mar 2018 21:37:22 +0200
Message-ID: <CAJ1myNQ4EL6od8MOEh7JpoFUr6fKS7bwvcS0P8QDP5fDc4nCew@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Cleanup for staging lustre obdclass
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 4, 2018 at 9:05 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 4 Mar 2018, Dafna Hirschfeld wrote:
>
>> Fixes of issues found with checkpatch.pl for the lustre obdclass driver.
>>
>> Changes in v2:
>> patch 1:
>> 1. Revert moving the constant to the right side of comparisons
>> in order to keep the condition in the form of
>> 'lower bound <= val && val <= upper bound'
>>
>> 2. Revert returning '!!ptr' instead of 'ptr != NULL' since this is
>> not part of an 'if' statement.
>>
>> patches 2+3:
>> No Change.
>
> I think I acked these two.  You should keep the ack in the resubmission.
>
> julia
>
Hi, you did ack, shell I send another version with your acks ?

>>
>> Dafna Hirschfeld (3):
>>   staging: lustre: obdclass: Fix comparison to NULL
>>   staging: lustre: obdclass: Add 'const' to char* array
>>   staging: lustre: obdclass: Replace 'unsigned' with 'unsigned int'
>>
>>  drivers/staging/lustre/lustre/obdclass/cl_lock.c        | 2 +-
>>  drivers/staging/lustre/lustre/obdclass/cl_object.c      | 2 +-
>>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 4 ++--
>>  drivers/staging/lustre/lustre/obdclass/lu_object.c      | 8 ++++----
>>  4 files changed, 8 insertions(+), 8 deletions(-)
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1520153895.git.dafna3%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

