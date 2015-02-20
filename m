X-GM-THRID: 1469972480000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d9de63814c425282
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.3.106 with SMTP id 70mr11418601yhg.20.1424466765766;
        Fri, 20 Feb 2015 13:12:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.168 with SMTP id k8ls325940igx.16.canary; Fri, 20 Feb
 2015 13:12:45 -0800 (PST)
X-Received: by 10.66.224.238 with SMTP id rf14mr11671467pac.11.1424466765527;
        Fri, 20 Feb 2015 13:12:45 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id kt5si5706518qcb.3.2015.02.20.13.12.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:12:45 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f45.google.com with SMTP id h3so16241244qgf.4
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=j3RL5mXql6uZs6bkG+NTqqS7aMuRCHQkixBw8hixGGQ=;
        b=ORRUuFpXoQmEsbB8/Vtmg8uDmoHsiWlWGqMAVvaV2IAhnaFfVVZCHkPHX+9JttvGB/
         0ltGWVEOmWGWHxdm5Na2NsUEHA6p7/qNtu1QtUJL38cqub3K8QyL46WEp8C9xDeGaWl7
         XFErFMAmKRIKUc2DS7ETk5l3umgAN29cMNFcmSzYrkn+Q8DxTo1R7BIlRpXv4UJvki80
         RG6vicdk36TTxPcVaFwZyZ12+6S7yM8L11wtWMJUksTVpajKUaS2i5IbCmy+jkWft4Ul
         A3n6XW8FQFPAx9w46a8VGwHJU9GFD0VzKgWGCuHdIaUWhjnJwBbciY8SfvVTfCNCitL7
         E+rw==
X-Received: by 10.140.164.8 with SMTP id k8mr28752265qhk.23.1424466765387;
        Fri, 20 Feb 2015 13:12:45 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 81sm12606338qhh.46.2015.02.20.13.12.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:12:44 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E7A34A.60404@gmail.com>
Date: Fri, 20 Feb 2015 16:12:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?S3NlbmlqYSBTdGFub2pldmnEhw==?=
 <ksenija.stanojevic@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Replace
 <asm/string.h> with <linux/string.h>
References: <1424460720-6136-1-git-send-email-ksenija.stanojevic@gmail.com>	<54E78F3E.7010704@gmail.com> <CAL7P5j+ucoNiBEbRfkwZFObjPxH8=i0yMQTNxsoCj8fubdbSHw@mail.gmail.com>
In-Reply-To: <CAL7P5j+ucoNiBEbRfkwZFObjPxH8=i0yMQTNxsoCj8fubdbSHw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/20/15 15:45, Ksenija Stanojević wrote:
> Ok. Should i make a separate patch or v2 of one of them?

Yes please merge and repost - and as Julia said, please don't top-post
it's bad email etiquette. Community people generally frown upon it.

Jes

> On Fri, Feb 20, 2015 at 8:47 PM, Jes Sorensen <jes.sorensen@gmail.com>
> wrote:
> 
>> On 02/20/15 14:32, Ksenija Stanojevic wrote:
>>> This patch fixes the following checkpatch.pl warning:
>>> Use #include <linux/string.h> instead of <asm/string.h>
>>>
>>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>>> ---
>>>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>> b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>>> index 5533221..80dfa07 100644
>>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
>>> @@ -15,7 +15,7 @@
>>>  #include <linux/module.h>
>>>  #include <linux/init.h>
>>>  #include <linux/slab.h>
>>> -#include <asm/string.h>
>>> +#include <linux/string.h>
>>>  #include <asm/errno.h>
>>>
>>>  #include "ieee80211.h"
>>>
>>
>> I just noticed you were generating two patches for very similar changes
>> errno.h and string.h. Since these changes are to the same file and
>> basically identical changes, doing them both in one patch is preferred.
>>
>> Cheers,
>> Jes
>>
>>
> 


