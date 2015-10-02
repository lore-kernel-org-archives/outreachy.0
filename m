X-GM-THRID: 6200732724667351040
X-Received: by 10.180.107.167 with SMTP id hd7mr697606wib.6.1443776437974;
        Fri, 02 Oct 2015 02:00:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.104 with SMTP id gl8ls323332wib.41.gmail; Fri, 02 Oct
 2015 02:00:37 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr690399wij.5.1443776437574;
        Fri, 02 Oct 2015 02:00:37 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id xl3si25747wib.1.2015.10.02.02.00.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 02:00:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id fx3so20348076wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 02:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Z8AASMlcJCmbqfNXwh2PS1Yubow5V9R3FKYbZ5BFePo=;
        b=CFYvWwZj4ggLtIvtRKf2qTMwI+PAdDIDUc6KYwRKrCbiX9stoiuQwkYXjmaO3llfT4
         y+q726mehGsDtskXS6HUAhAQyyocxvFmpEQ2v0ZEpHQf/6gd9TCWAlI/8voQdpNST5so
         mU9Eh7V3EkGcHJgkbNsiuTM4xgn4u+p9QaVf6/AilDIjSktV84xmrOg41Jqs5WJZw8Tr
         1ufhoIDQshiRpILw/OX14i3FqyuAlPVAnk5N7kvgnm6rue7gDJn9O3UM8LBHCCDoqcY0
         efrL36bowZbOvTX2gs0kIv+tKf+sZ44Ic5YL+Im21a8W9Ffx3IOnq4OWy5J2dWrO1cCf
         KoYg==
MIME-Version: 1.0
X-Received: by 10.180.182.116 with SMTP id ed20mr3179962wic.19.1443776437427;
 Fri, 02 Oct 2015 02:00:37 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Fri, 2 Oct 2015 02:00:37 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.11.1510021424120.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443773747-2985-1-git-send-email-shraddha.6596@gmail.com>
	<1443773747-2985-2-git-send-email-shraddha.6596@gmail.com>
	<CAK-LDbKTvK=vqNnQaCHcpwMg8fODzoTy1QZZ42dxX1Bvy-Q=nA@mail.gmail.com>
	<alpine.DEB.2.11.1510021424120.27480@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
Date: Fri, 2 Oct 2015 14:30:37 +0530
Message-ID: <CAK-LDbLcy7Nie2-i0_FYrVTqf=WVH=D3MdFciK9Ei3Wv5XYO6A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/6] Staging: lustre: ptlrpc:
 Declare sptlrpc_rule_set_merge as static
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 2:25 PM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
>
>
> On Fri, 2 Oct 2015, Vaishali Thakkar wrote:
>
>> On Fri, Oct 2, 2015 at 1:45 PM, Shraddha Barke <shraddha.6596@gmail.com>
>> wrote:
>>>
>>> Declare sptlrpc_rule_set_merge as static since it is accessed from this
>>> particular file only. Also remove its declaration from
>>> header file
>>>
>>> Changes in v2-
>>>  No change
>>
>>
>> Hi,
>>
>> You need to write 'Changes in v2' part under --- . So that when the patch
>> will
>> be applied, part under --- will go away.
>
>
> Shoot. Will I have to send v3 ? Or just that one patch again?

If Greg has not yet applied any of the patches from this series, then
it is better to send v3 of whole series so that it will be easy for him
to pick all these patches at a time without any confusion.

>>
>>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>>> ---
>>>  drivers/staging/lustre/lustre/include/lustre_sec.h | 2 --
>>>  drivers/staging/lustre/lustre/ptlrpc/sec_config.c  | 6 ++----
>>>  2 files changed, 2 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/staging/lustre/lustre/include/lustre_sec.h
>>> b/drivers/staging/lustre/lustre/include/lustre_sec.h
>>> index 1d2c572..96a717e2 100644
>>> --- a/drivers/staging/lustre/lustre/include/lustre_sec.h
>>> +++ b/drivers/staging/lustre/lustre/include/lustre_sec.h
>>> @@ -331,8 +331,6 @@ static inline void sptlrpc_rule_set_init(struct
>>> sptlrpc_rule_set *set)
>>>
>>>  void sptlrpc_rule_set_free(struct sptlrpc_rule_set *set);
>>>  int  sptlrpc_rule_set_expand(struct sptlrpc_rule_set *set);
>>> -int  sptlrpc_rule_set_merge(struct sptlrpc_rule_set *set,
>>> -                           struct sptlrpc_rule *rule);
>>>  int sptlrpc_rule_set_choose(struct sptlrpc_rule_set *rset,
>>>                             enum lustre_sec_part from,
>>>                             enum lustre_sec_part to,
>>> diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
>>> b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
>>> index 0d29b87..6fb5b4c 100644
>>> --- a/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
>>> +++ b/drivers/staging/lustre/lustre/ptlrpc/sec_config.c
>>> @@ -285,8 +285,8 @@ static inline int rule_match_net(struct sptlrpc_rule
>>> *r1,
>>>   * merge @rule into @rset.
>>>   * the @rset slots might be expanded.
>>>   */
>>> -int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
>>> -                          struct sptlrpc_rule *rule)
>>> +static int sptlrpc_rule_set_merge(struct sptlrpc_rule_set *rset,
>>> +                                 struct sptlrpc_rule *rule)
>>>  {
>>>         struct sptlrpc_rule *p = rset->srs_rules;
>>>         int spec_dir, spec_net;
>>> @@ -370,8 +370,6 @@ int sptlrpc_rule_set_merge(struct sptlrpc_rule_set
>>> *rset,
>>>
>>>         return 0;
>>>  }
>>> -EXPORT_SYMBOL(sptlrpc_rule_set_merge);
>>> -
>>>  /**
>>>   * given from/to/nid, determine a matching flavor in ruleset.
>>>   * return 1 if a match found, otherwise return 0.
>>> --
>>> 2.1.4
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups
>>> "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an
>>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit
>>> https://groups.google.com/d/msgid/outreachy-kernel/1443773747-2985-2-git-send-email-shraddha.6596%40gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>>
>> --
>> Vaishali
>>
>



-- 
Vaishali

