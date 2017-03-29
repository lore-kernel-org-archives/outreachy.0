X-GM-THRID: 6399870143121326080
X-Received: by 10.31.194.12 with SMTP id s12mr4930067vkf.21.1490778958324;
        Wed, 29 Mar 2017 02:15:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.35 with SMTP id 32ls1229243otp.21.gmail; Wed, 29 Mar
 2017 02:15:57 -0700 (PDT)
X-Received: by 10.157.24.27 with SMTP id b27mr11154151ote.36.1490778957958;
        Wed, 29 Mar 2017 02:15:57 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id a198si576810vki.1.2017.03.29.02.15.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 02:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id z204so1307534vkd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 02:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=g6jVn5iLNSsx+gHQ2q4kNLfWDJrrzOdsIcMNFlppsEE=;
        b=eBQlncCyoIZrBoYzWNHm2sCxUhBDsT7ocFsvCuAlSBm2P/wbR4BldFBdqT7JS/npMo
         csRf+856yW3/1jw+lbLKJ4HhiaLvQgD0ikAh/unEgZ1F8Qr1yzc2iYk0hkTnvt+s+s2Q
         d2ihYXIwMPOXQZ4kMJt/OC/epzbUDZ0pV2sG+e6abcY4J+2ywxOa7Kdwi/nVQ0vI+9G0
         hYQIdPPA8MUt+hmlxqkKQkDK8Bxli/FWEEOP/sZajm/FBmIo76oaDGHC1jhvEzQ2sMzM
         f57htP1nKUhsDHgJMOtdWz68hNPKU+xaC3mWW8gVOGRznvWfA444MBjtf3bESPdBklHl
         gFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=g6jVn5iLNSsx+gHQ2q4kNLfWDJrrzOdsIcMNFlppsEE=;
        b=UjExMsFUWWxhNbQ72felcSyG2n9Zzq3/xmgftHmepBHTRkDNT17QHJMBs/hXLoVjTA
         tZKwGL0NuWsP6PmvCsX6pPnD1PcF9VQaTCjhNFJaw2rW0trC5ycc9zLppHHmP/bWscKT
         0O755lrX0CIeM2TB0JNkQtSPuF2hDHcbBNTcj24jK3ZwMWWnmvcOiytMFPoQpM/Refx2
         NYh/0MmQETl8aZoTp3lzYdHElEPERMaAiN0Be4zvqS+UwMEVKIVW0R7eRmuqf6MZ3ldI
         UOYPqxWL3D8BL+dlxE/Bi7wgZZRskwg2d5QscsOGSOF8zNC2YKjoL50XUNBwFv+BchZ/
         HKKQ==
X-Gm-Message-State: AFeK/H2nwouD355Uh0RNjmyw5jDHGDRqWFNu3Hlnf6kMwCvgqNtokKa0yJ20u77gmAosdI87PO7Sd6Z1TjddSQ==
X-Received: by 10.31.13.200 with SMTP id 191mr12951058vkn.28.1490778957627;
 Wed, 29 Mar 2017 02:15:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Wed, 29 Mar 2017 02:15:57 -0700 (PDT)
In-Reply-To: <CALrZqyN2Vh0J219tY_zj5u-4bUVmD+T=q6yMH9WZN2Y3O7yzpA@mail.gmail.com>
References: <20170328131340.GA19688@singhal-Inspiron-5558> <alpine.LSU.2.20.1703281552040.21255@n3.vanv.qr>
 <CALrZqyPeR6X1RrqOsGfLbbZ2rPQgOf=50Rs+ot0kxkkA464V5w@mail.gmail.com>
 <alpine.LSU.2.20.1703290854390.26906@n3.vanv.qr> <CALrZqyN2Vh0J219tY_zj5u-4bUVmD+T=q6yMH9WZN2Y3O7yzpA@mail.gmail.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 29 Mar 2017 14:45:57 +0530
Message-ID: <CALrZqyOMPfvt1OyH_LrNwj-a316gt=ZU2O0h+s+_NWH49dj_sw@mail.gmail.com>
Subject: Re: [PATCH v2] netfilter: Clean up tests if NULL returned on failure
To: Jan Engelhardt <jengelh@inai.de>
Cc: wensong@linux-vs.org, Simon Horman <horms@verge.net.au>, Julian Anastasov <ja@ssi.bg>, 
	Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, lvs-devel@vger.kernel.org, 
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 29, 2017 at 2:19 PM, SIMRAN SINGHAL
<singhalsimran0@gmail.com> wrote:
> On Wed, Mar 29, 2017 at 12:25 PM, Jan Engelhardt <jengelh@inai.de> wrote:
>>
>> On Tuesday 2017-03-28 18:23, SIMRAN SINGHAL wrote:
>>>On Tue, Mar 28, 2017 at 7:24 PM, Jan Engelhardt <jengelh@inai.de> wrote:
>>>> On Tuesday 2017-03-28 15:13, simran singhal wrote:
>>>>
>>>>>Some functions like kmalloc/kzalloc return NULL on failure. When NULL
>>>>>represents failure, !x is commonly used.
>>>>>
>>>>>@@ -910,7 +910,7 @@ ip_vs_new_dest(struct ip_vs_service *svc, struct ip_vs_dest_user_kern *udest,
>>>>>       }
>>>>>
>>>>>       dest = kzalloc(sizeof(struct ip_vs_dest), GFP_KERNEL);
>>>>>-      if (dest == NULL)
>>>>>+      if (!dest)
>>>>>               return -ENOMEM;
>>>>
>>>> This kind of transformation however is not cleanup anymore, it's really
>>>> bikeshedding and should be avoided. There are pro and cons for both
>>>> variants, and there is not really an overwhelming number of arguments
>>>> for either variant to justify the change.
>>>
>>>Sorry, but I didn't get what you are trying to convey. And particularly pros and
>>>cons of both variants.
>>
>> The ==NULL/!=NULL part sort of ensures that the left side is a pointer, which
>> is lost when just using the variable and have it implicitly convert to bool.
>
> Thanks for the explaination!!!!
>
> But, according to me we should prefer != NULL over ==NULL according to
> coding style.

Sorry their is typing mistake in above.

But, according to me we should prefer !var over ( var ==NULL ) according to the
coding style

