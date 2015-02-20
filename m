X-GM-THRID: 1328454565888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6f1dd75346e94f50
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.253.196 with SMTP id ac4mr4100176igd.7.1424453315365;
        Fri, 20 Feb 2015 09:28:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.10 with SMTP id d10ls347800obr.11.gmail; Fri, 20 Feb
 2015 09:28:35 -0800 (PST)
X-Received: by 10.182.248.227 with SMTP id yp3mr10958902obc.22.1424453315159;
        Fri, 20 Feb 2015 09:28:35 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id q2si5493285qcn.2.2015.02.20.09.28.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:28:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f49.google.com with SMTP id q107so15111101qgd.8
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 09:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=/T/rU5vr+q7C/aq1fe7O/hzU5TgN9IeM9G5eclLtZvY=;
        b=Qw5uZiQiIUnE1OImADzY/0vngdhVhuEPBwOWv9CCx6+8z7Qmj/V7cC5+ePvliit8Rd
         q/R1oQM0EUiOdZHUkknDQQntoyGTy/Pux/NVXNeImlPi8GiKEZYTKCNILxSX+Frw7ylw
         ++gj1fkClgcDl3ThrTRdu9r2Sih8/qfB+6kmDa1wI7edChokFt+oGVsyBXu+ZjEVjEv0
         m/2w+BOgdGM0ZbGR/b3ANr/Tq0kxCv/xUurkujbfi6AJ5Rzs7AyAzwLjJBmleo6NgO6q
         fH98mZ2wkKN7wFknTgxT7D6s529fW23L0vckMiFiUnUDzM5e9NrC9fTozq41M2Q0Mi+B
         7nYw==
X-Received: by 10.140.165.150 with SMTP id l144mr26443391qhl.39.1424453314949;
        Fri, 20 Feb 2015 09:28:34 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 142sm12200640qhd.14.2015.02.20.09.28.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:28:34 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E76EC1.3070400@gmail.com>
Date: Fri, 20 Feb 2015 12:28:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?QXnFn2UgTWVsaWtlIFl1cnRvxJ9sdQ==?=
 <aysemelikeyurtoglu@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: lnet: klnds:
 socklnd: Deleted space prohibited between function name and open parenthesis
References: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>	<54E76892.207@gmail.com> <CAPYvaxN_FfH_GvmfHAA0ZohHZuHhXX-0GiwxSmL7R3KEXz-V6A@mail.gmail.com>
In-Reply-To: <CAPYvaxN_FfH_GvmfHAA0ZohHZuHhXX-0GiwxSmL7R3KEXz-V6A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/20/15 12:25, Ayşe Melike Yurtoğlu wrote:
> I will pay much more attention to the commit messages and subject line.I am
> using the following command while the patch series.I'm doing it wrong, I
> wonder.
> "git format-patch -n --subject-prefix="PATCH vY" --cover-letter"

That looks right - I didn't receive a 0/4 email with the set you posted.
Normally you should use the 0000-cover-letter.patch to write a small
description of the patchset that won't go into the git commit log. Like
'This set cleans up a number of cosmetic issues to XYZ. These issues
were found because of <something> ....'.

Cheers,
Jes


> Thanks
> 
> 2015-02-20 19:02 GMT+02:00 Jes Sorensen <jes.sorensen@gmail.com>:
> 
>> On 02/20/15 10:27, Melike Yurtoglu wrote:
>>> WARNING: space prohibited between function name and open parenthesis '('
>>> checkpatch.pl warning in socklnd.c
>>>
>>> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
>>> ---
>>>  .../staging/lustre/lnet/klnds/socklnd/socklnd.c    | 448
>> ++++++++++-----------
>>>  1 file changed, 224 insertions(+), 224 deletions(-)
>>
>> When posting multi patch series, you need to use a cover letter to
>> describe the reason for the patch set. Argument '--cover-letter' for
>> 'git format-patch'
>>
>> In addition, please try to write a human patch description for each
>> commit rather than just paste in the automated checkpatch output.
>> Something like:
>>
>> "Remove unnecessary space between function name and opening parenthesis.
>> That was found by running checkpatch.
>>
>> Cheers,
>> Jes
>>
>>
>>> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
>> b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
>>> index 5956dba..aac3a7d 100644
>>> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
>>> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
>>> @@ -65,15 +65,15 @@ ksocknal_ip2iface(lnet_ni_t *ni, __u32 ip)
>>>  }
>>>
>>>  static ksock_route_t *
>>> -ksocknal_create_route (__u32 ipaddr, int port)
>>> +ksocknal_create_route(__u32 ipaddr, int port)
>>>  {
>>>       ksock_route_t *route;
>>>
>>> -     LIBCFS_ALLOC (route, sizeof (*route));
>>> +     LIBCFS_ALLOC(route, sizeof(*route));
>>>       if (route == NULL)
>>>               return NULL;
>>>
>>> -     atomic_set (&route->ksnr_refcount, 1);
>>> +     atomic_set(&route->ksnr_refcount, 1);
>>>       route->ksnr_peer = NULL;
>>>       route->ksnr_retry_interval = 0;  /* OK to connect at any time */
>>>       route->ksnr_ipaddr = ipaddr;
>>> @@ -89,43 +89,43 @@ ksocknal_create_route (__u32 ipaddr, int port)
>>>  }
>>
>>
> 


