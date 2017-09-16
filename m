X-GM-THRID: 6466352868892868608
X-Received: by 10.202.230.18 with SMTP id d18mr8050850oih.78.1505566735877;
        Sat, 16 Sep 2017 05:58:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.107.24 with SMTP id g24ls8553084ioc.6.gmail; Sat, 16 Sep
 2017 05:58:55 -0700 (PDT)
X-Received: by 10.31.207.1 with SMTP id f1mr14873614vkg.96.1505566735113;
        Sat, 16 Sep 2017 05:58:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505566735; cv=none;
        d=google.com; s=arc-20160816;
        b=KsfzaEfPFdDzU2994a5fiEaCcAw5Uf2SEi1Y6hx3gfvWVDSCgrgG0SGdg++PpQ5b8g
         Ipz+LfS1JLI6sRD7Aiw95X/fHj6bJegApRFXqnnwXif9cfPbaPEo1qBw70i4rQtHTe96
         BW9Ijt8KyanMzT0SmN3cU7dHXS7uH4eb80wPxRf+/eyjmvTKZKaRHJad/krKsa7+bGNN
         bPhaDbVmP4jGmESL9PzVrSWiTnDVmcBft68OI6L193ZlXtZpBPHCE93Tau2sysZQeRyv
         KXdAb2P1N5SnB6mtB/MYxpT7CetHhnJIcs15/9C54g4ZqWY+6M4EQ0yFTJEqq5/uYmhc
         S0GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=6AjA6kiGSXMgGU+KfVkYLvf7rtoJeI7t1C9FuWTHJvU=;
        b=NpJaEAeNLwnXSCO+jw/KvQkMb4yrkS0SWrQN1H6HhzIKvqAd6SuZGqgSj9+Xwxa6+f
         aLYM87JBbGpDU/e+J0SEl2YZl28HGX87mVSK1AO6aC1NKYo1074qQv4VuauNYaktB/di
         Qt5mxLBzInCRJS7HMHr9qhlQv+LynN7EOnj/+6Fqg2iPHGzDP3BEkm82KJHhkvpcnuZf
         oKl26pHFwvM6E5Bryq3uRmx2oItYk8M3GEc/cGBF7b93NMoP7A2+07xaNBUOa3z2uTgw
         92/NTxhK7cabgZ/RX9YmbK/7PhDLKvsh4dYEWJK80HZFoSbdxibElob7tUYgp3B+8XV2
         R9Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTWoOkzB;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id e5si106614vkb.2.2017.09.16.05.58.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTWoOkzB;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id t10so1194150vke.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 05:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=6AjA6kiGSXMgGU+KfVkYLvf7rtoJeI7t1C9FuWTHJvU=;
        b=cTWoOkzB8JttkhyWTkVBrxyxbTiHMpofzq6RhXqEdqoTrLQ00o94R4dJk74JovxLyF
         Q9VkEmqwks/Oeb80KG13BWesAa2vv3pK3nCSFrrZ8YQtiL2h4cp1bU6rRpKfm/5WTTIq
         7p2nrthdU4YjVU0bslTLMV/e9G157i8kCCMghV93EE7ynXzEJa0Y90vsns+EQaZzOgAs
         YaUs1zG+fcuW/Pq1K5tOLrUJR+2eNCAYrhRFg67moRbegr8QIH53i5+qQAK5FJ5Yt2nJ
         HdFzgM4KPg3KAPQtinOoIiT26/rFDJXtEX8cnRUgmjU+SALePjVxiFFAxwTagKWseG+U
         6VdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=6AjA6kiGSXMgGU+KfVkYLvf7rtoJeI7t1C9FuWTHJvU=;
        b=UHq7xQpdU6qeZdFmA7VUQIO0XGC+2MpPgeWmXSX1xv058d/itjHw9q0HNKYYaRbC3i
         rwob+u+UZ73PxuzKPZk9YBoQKt+GVu25iLPtOkx6Ki6VTpg2i1I8qQ9tqIkbBiwqljem
         YP1xL5quFjbedBKEZStoshfuN+8bclLlqI29t0PPxXusMR897sT1oyWh8a5oNhpGSSfB
         y71Ld4zW3dgWDUy+dKD82+yWNrPTF+Uf0cYldDi9nG8Wz1Y7ziBdvZRkajs6RlMcjnCT
         B135He8gmuFbElDqwgYNnj7MC15RZTo/dY+KmglYYXqUClL4LxXiRjbfWjB/qDL6Rd9S
         9j6w==
X-Gm-Message-State: AHPjjUiiwZqw94l8ZJu/QPXMjBYXNbRri2FtTXjnqEp5woUK64YIWNSc
	4Tg5Mlmiwi5KMdw4cLyhS9UQ+WmU6MwwoEgiB6A=
X-Google-Smtp-Source: AOwi7QB/oz1w69SSnye6VMu//6YarGzKbD8kfLuhPEtZyhe3rneZbW+h/ZO0zV0zJwcDX8O/q5aNaPe1JuquBVwokTU=
X-Received: by 10.31.99.134 with SMTP id x128mr20567663vkb.87.1505566734586;
 Sat, 16 Sep 2017 05:58:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.2.149 with HTTP; Sat, 16 Sep 2017 05:58:54 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709161435500.2943@hadrien>
References: <1505565088-9210-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709161435500.2943@hadrien>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sat, 16 Sep 2017 18:28:54 +0530
Message-ID: <CAHXiS58ZG0qJmQHM9q=3Weq5R2LSWFiySdaVgUHtP+ysS0Dqsw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: remove variable rc
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Lidza Louina <lidza.louina@gmail.com>, 
	Mark Hounschell <markh@compro.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

>
> On Sat, 16 Sep 2017, Aastha Gupta wrote:
>
>> Found using coccinelle script:
>> @@
>> local idexpression ret;
>> expression e;
>> @@
>>
>> -ret =
>> +return
>>      e;
>> -return ret;
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  drivers/staging/dgnc/dgnc_neo.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
>> index 1943e66..a8491d7 100644
>> --- a/drivers/staging/dgnc/dgnc_neo.c
>> +++ b/drivers/staging/dgnc/dgnc_neo.c
>> @@ -1199,12 +1199,9 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
>>       un->un_flags |= UN_EMPTY;
>>       spin_unlock_irqrestore(&ch->ch_lock, flags);
>>
>> -     rc = wait_event_interruptible_timeout(un->un_flags_wait,
>> +     return wait_event_interruptible_timeout(un->un_flags_wait,
>>                                             ((un->un_flags & UN_EMPTY) == 0),
>>                                             msecs_to_jiffies(seconds * 1000));
>> -
>> -     /* If ret is non-zero, user ctrl-c'ed us */
>> -     return rc;
>
> Maybe the comment should be preserved?
>
> julia
>

yes, the comment should be preserved. will do that.
>>  }
>>
>>  /*
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505565088-9210-1-git-send-email-aastha.gupta4104%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

