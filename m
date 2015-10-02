X-GM-THRID: 6200732724667351040
X-Received: by 10.67.23.163 with SMTP id ib3mr11836809pad.45.1443776165577;
        Fri, 02 Oct 2015 01:56:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.110.4 with SMTP id hw4ls480059igb.28.gmail; Fri, 02 Oct
 2015 01:56:05 -0700 (PDT)
X-Received: by 10.107.8.93 with SMTP id 90mr12718180ioi.30.1443776165028;
        Fri, 02 Oct 2015 01:56:05 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id w5si1483913pbt.1.2015.10.02.01.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 01:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ex6so101785745pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 01:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=5hz1mm/u0ZlIA1ShUYMbCXnDixlxtYH9rXd3NT/KX3Q=;
        b=tlvv7KzK2Ea8+mnzbEMZRDxLmCiNGOjNnssAObjrpzy+YtWqsLyfCM7bOWRJ+2EdZJ
         Yie4KsjVhTB79oaheVPGtRwJMhzx6LJI//uRAQfBRiyKHklAIrdylDF1ZedixefG/d/n
         p1rgexbIFtNV0F4pXh5JBTdPFuEyLUTrsdjAIpNuMN1cq39G7OaDCVisjYNvXl3NP08x
         cgex6mVVSY+Cg7JLqXYXcwkysIiUYIaED8UwHgb8XZN9b0drXjE7qTHF/CCVGreDoluA
         JXxB0b+HogGGkAf0qH0Jej9MoogJHOo/toNZd2qPm3CR/E4uB+RyQfCDmb5NyBIWrxsU
         /IFA==
X-Received: by 10.66.252.5 with SMTP id zo5mr18199099pac.96.1443776164896;
        Fri, 02 Oct 2015 01:56:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ip1sm10915030pbc.30.2015.10.02.01.56.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 01:56:03 -0700 (PDT)
Date: Fri, 2 Oct 2015 14:25:55 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/6] Staging: lustre: ptlrpc:
 Declare sptlrpc_rule_set_merge as static
In-Reply-To: <CAK-LDbKTvK=vqNnQaCHcpwMg8fODzoTy1QZZ42dxX1Bvy-Q=nA@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1510021424120.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com> <1443773747-2985-2-git-send-email-shraddha.6596@gmail.com> <CAK-LDbKTvK=vqNnQaCHcpwMg8fODzoTy1QZZ42dxX1Bvy-Q=nA@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.560E46A3.0060,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Fri, 2 Oct 2015, Vaishali Thakkar wrote:

> On Fri, Oct 2, 2015 at 1:45 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>> Declare sptlrpc_rule_set_merge as static since it is accessed from this
>> particular file only. Also remove its declaration from
>> header file
>>
>> Changes in v2-
>>  No change
>
> Hi,
>
> You need to write 'Changes in v2' part under --- . So that when the patch will
> be applied, part under --- will go away.

Shoot. Will I have to send v3 ? Or just that one patch again?
>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/include/lustre_sec.h | 2 --
>>  drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 6 ++----
>>  2 files changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h b/drivers/staging/lustre/lustre/include/lustre_sec.h
>> index 1d2c572..96a717e2 100644
>> --- a/drivers/staging/lustre/lustre/include/lustre_sec.h
>> +++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
>> @@ -331,8 +331,6 @@ static inline void sptlrpc_rule_set_init(struct sptlrpc_rule_set *set)
>>
>>  void sptlrpc_rule_set_free(struct sptlrpc_rule_set *set);
>>  int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
>> -int  sptlrpc_rule_set_merge(struct sptlrpc_rule_set *set,
>> -                           struct sptlrpc_rule *rule);
>>  int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
>>                             enum lustre_sec_part from,
>>                             enum lustre_sec_part to,
>> diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
>> index 0d29b87..6fb5b4c 100644
>> --- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
>> +++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
>> @@ -285,8 +285,8 @@ static inline int rule_match_net(struct sptlrpc_rule *r1,
>>   * merge @rule into @rset.
>>   * the @rset slots might be expanded.
>>   */
>> -int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
>> -                          struct sptlrpc_rule *rule)
>> +static int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
>> +                                 struct sptlrpc_rule *rule)
>>  {
>>         struct sptlrpc_rule *p = rset->srs_rules;
>>         int spec_dir, spec_net;
>> @@ -370,8 +370,6 @@ int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
>>
>>         return 0;
>>  }
>> -EXPORT_SYMBOL(sptlrpc_rule_set_merge);
>> -
>>  /**
>>   * given from/to/nid, determine a matching flavor in ruleset.
>>   * return 1 if a match found, otherwise return 0.
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443773747-2985-2-git-send-email-shraddha.6596%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>
>
>
> -- 
> Vaishali
>

