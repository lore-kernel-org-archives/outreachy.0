X-GM-THRID: 6802954785072873472
X-Received: by 2002:a81:7910:: with SMTP id u16mr3557940ywc.30.1583936859465;
        Wed, 11 Mar 2020 07:27:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:74cd:: with SMTP id p196ls535758ybc.7.gmail; Wed, 11 Mar
 2020 07:27:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv7Rc7ks5gv2QF6Psi7/2Ypr+zT4hpavjnYzb1oQu5TysiSHkRPhhXG9TxIVSeaoQAIJo4m
X-Received: by 2002:a25:c50f:: with SMTP id v15mr3382678ybe.491.1583936858040;
        Wed, 11 Mar 2020 07:27:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583936858; cv=none;
        d=google.com; s=arc-20160816;
        b=S5IJzoFNLhUxYlaTpJeafx8cTZ1kI7w5jIS7wh7FDWDNcH4fbXz/c/WHLcBu0gUcdr
         AAqDWa/PxNzNOFMG24afKaytRz8iZh7WU7l2qUWrHUh40dRhE3Mh5p79HKqAeODXx6FM
         6jEmOSUsiJF9AMMzFVNBN3HE5JK5x/hbxLVyWIiRakKzv/P4o+FvweIQEfP7eo8zTpUy
         K6JLXZNUPEYOvKgre6Bhhri+19qw5AaFg43WBONpuinFRrpuqHqiucLd0/+ApLSf0Na2
         iILSvF1ufyHFwlmGt9Wuol4sw1eEYRuulVANCvPJINriEzKGMdEbzB8V3D5mxFNEVYEC
         GmTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1hK/rUYOZ2+k/FvTTTyB+x1iTpJUPoEYRp4CHXKsuC0=;
        b=cLcGoWar2SUwuSCKGZZCMIzNqaajjEeo/FvY90jUqPjEcKgyWPww08jr7DSTzaK1g6
         gNxKMmavp/veKkhmq4CIJxFj9dWCdEZHgOu/AZWNUXsbXLu23nYH00dYvFP8LsTnb6EP
         qkqT5tIWhj1X3+89dDeV31W5hG/Dtjy6XOjKs+IeG7ehC8asTAoo0XBUuEojsfgVN1Rc
         GRE6Zx+EMn0H3vBb6FvFlzS+kvhhi+9aXboLMzPu1bWbxCJMhmBXswWVyDKO1FPbaLKR
         LQyw0XPBg2hFZSRd3n2LaZZMOiFqBHsRPBRAhG/vXekC3oixkrnue/HWbn4HsCxFXi5w
         eGgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=I1tR9MiQ;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id b127si119539ywf.1.2020.03.11.07.27.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 07:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=I1tR9MiQ;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-oi1-x243.google.com with SMTP id d63so2062558oig.6
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 07:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=1hK/rUYOZ2+k/FvTTTyB+x1iTpJUPoEYRp4CHXKsuC0=;
        b=I1tR9MiQrVZyZNSsCLWkiPPY2FbcjGoKvAns08BR1GlUDqnpi5puFxiOJYluRLrbdJ
         k7kOXJgJt/mgf6ed+dfr5BLppwPO56OB1Msx8LH8j/I95mYTqzeuNP4wyinCdT0Ii3Xv
         lyFtoBxk4GasEnGRyKh4lEJOrlCzsdLqVhd9eAtUnfUpgAVkf4euMADzPmH9n0HerG5S
         mK7mjbnM74jsoEkaUb2pRMVarnq7q/Y76Pb5DQGTO0nCWbGp4d/CJeQsSsvz9AjWJtag
         jmlUYOCjc67t/J05WRGgMp1Wbco4wxUNXDp57jUTv+lNhv/24Hg/ZQ/KIjCR6hOEuXWM
         ziNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=1hK/rUYOZ2+k/FvTTTyB+x1iTpJUPoEYRp4CHXKsuC0=;
        b=cIgQcs0mfo/WB8MBWOptLY5cbvo9mYGbCgGWS1jWZ9UNn4PZo/X9AMTTYLMT1QSWFG
         ZJZYYltA7VzSbvZtNgBpRLrNaSimgcPtupGLBO2MGqRCMXo2lGdeZpOuHfSq++Pe5BPr
         xuKD5ieEtgI42S+Wc3jcEPUpzBSmre2FoDIRjS73JdHi5VasjSkfUXKh89u+51m4Ls/u
         ysBaXwEXt9Q+nxyBFqCdRyqoTKInfnU6GT6H3J8AoOAUtqudhj5F8SwSgulMBcacPxPZ
         kiKF7W1xQUh7G+DZOy/MQTj4AoBCdZNjh8AADRjOXC3Bd4DThd0UrvOC4OlRLeK9iQu0
         ag6w==
X-Gm-Message-State: ANhLgQ0qboazmAh0ttUNh+POc8jHodONUK4Q8ui8gGpkVMnVUK6RCwEY
	CIYW7Q9YKz8YP/PjmKxfJlIVAOPYhHVBUQ==
X-Received: by 2002:a05:6808:5c7:: with SMTP id d7mr2185066oij.136.1583936856770;
        Wed, 11 Mar 2020 07:27:36 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from ?IPv6:2806:106e:1f:1211:ccea:c45e:83e9:af6e? ([2806:106e:1f:1211:ccea:c45e:83e9:af6e])
        by smtp.gmail.com with ESMTPSA id x13sm334542oov.3.2020.03.11.07.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 07:27:36 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: include newline after
 declarations
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
References: <20200311141857.GA16781@evX1>
 <alpine.DEB.2.21.2003111522060.6155@hadrien>
From: Enrique Vargas <jevargas@seas.upenn.edu>
Message-ID: <7f54c25f-efad-bdbf-95fd-5033c4661e19@seas.upenn.edu>
Date: Wed, 11 Mar 2020 08:27:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2003111522060.6155@hadrien>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 3/11/20 8:23 AM, Julia Lawall wrote:
>
> On Wed, 11 Mar 2020, Enrique Vargas wrote:
>
>> add newline following coding conventions
> The patch seems conceptually fine.  But it would be nice to make a proper
> sentence, ie start with a capital letter and end with a period.  Also, if
> checkpatch helped you find the problem, it could be good to acknowledge
> that.
>
> julia
>
>> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
>> ---
>>  drivers/staging/qlge/qlge_dbg.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
>> index 670361873d1d..52704c67e110 100644
>> --- a/drivers/staging/qlge/qlge_dbg.c
>> +++ b/drivers/staging/qlge/qlge_dbg.c
>> @@ -1332,6 +1332,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
>>  {
>>  	int i;
>>  	u32 value;
>> +
>>  	for (i = 0; i < qdev->intr_count; i++) {
>>  		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
>>  		value = ql_read32(qdev, INTR_EN);
>> --
>> 2.17.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311141857.GA16781%40evX1.
>>

Thanks for the feedback, resending with your comments.


