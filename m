X-GM-THRID: 8600984485888
X-Received: by 10.42.243.68 with SMTP id ll4mr63739633icb.19.1426611006275;
        Tue, 17 Mar 2015 09:50:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.47.74 with SMTP id b10ls185807ign.43.gmail; Tue, 17 Mar
 2015 09:50:06 -0700 (PDT)
X-Received: by 10.43.104.69 with SMTP id dl5mr60400641icc.20.1426611006032;
        Tue, 17 Mar 2015 09:50:06 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22a.google.com (mail-qc0-x22a.google.com. [2607:f8b0:400d:c01::22a])
        by gmr-mx.google.com with ESMTPS id kt5si1722027qcb.3.2015.03.17.09.50.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22a as permitted sender) client-ip=2607:f8b0:400d:c01::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22a as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22a.google.com with SMTP id o4so13933107qct.3
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 09:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=2+YtmRD2YYDqD+eyuMe08P/LMIY+eiPb/ez6aTpaMZc=;
        b=O42nj4L/2rMk46ZMRqqOhQ3ZgsVE/ZgX099OrTsUimkbRn8LUdgskNlpXiXnLu9FOU
         uZSLFxoOHFYzC1i6tJGUYCR7fnUTGZIuADZqv7jmVNy9B7ejtrEAz3SJjjlHSUCWXujL
         kDZuCL+eS2qRzaD3+Pg1HvyK9RdWJUmZ73TOnb4+Md/6nJJ4Anvurpg6SQ5307GGLXPC
         vclKXuH3f4+3jL1vShFPiHnGkC0kmb10iw0a8bLxlphbH1wjRzqwlzo3HcT6Sxkd9Wq/
         nJGkC4zUZgQoehtaAF8cIvvDE9jRobkn3EFYIsOsshDiL3uksuKOXQaJ+0lUG0DB4AQ7
         0nsQ==
X-Received: by 10.55.42.137 with SMTP id q9mr119710279qkq.14.1426611005930;
        Tue, 17 Mar 2015 09:50:05 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 9sm9992632qgo.38.2015.03.17.09.50.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:50:05 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <55085B3B.1020703@gmail.com>
Date: Tue, 17 Mar 2015 12:50:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Julia Lawall <julia.lawall@lip6.fr>
CC: Cristina Opriceana <cristina.opriceana@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8192u: Do not add
 new typedefs
References: <cover.1426534970.git.cristina.opriceana@gmail.com> <b16e872b9c5244f790cbcf81f3d801fddcae95f7.1426534970.git.cristina.opriceana@gmail.com> <55084703.4010906@gmail.com> <alpine.DEB.2.10.1503171746270.2527@hadrien>
In-Reply-To: <alpine.DEB.2.10.1503171746270.2527@hadrien>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/17/15 12:47, Julia Lawall wrote:
> 
> 
> On Tue, 17 Mar 2015, Jes Sorensen wrote:
> 
>> On 03/16/15 15:55, Cristina Opriceana wrote:
>>> This patch removes the dig_t and DRxPathSel type definitions in order to
>>> avoid the following warning: "WARNING: Do not add new typedefs".
>>> Done with coccinelle and this script:
>>>
>>> @r@ type t; identifier id; @@
>>> typedef struct id
>>> {...}
>>> t;
>>>
>>> @script:python get_name@
>>> t << r.t;
>>> tdres;
>>> @@
>>> coccinelle.tdres = t.replace("_t", "");
>>>
>>> @r_match@ type r.t; identifier r.id;
>>> identifier get_name.tdres; @@
>>> -typedef
>>> struct
>>> -id
>>> +tdres
>>> {...}
>>> -t
>>> ;
>>> @r_replace@ type r.t; identifier get_name.tdres; @@
>>> -t
>>> +struct tdres
>>>
>>> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
>>
>> Removing pointless typedefs like these is clearly a win. However for
>> something like this, I don't think you need to include the coccinnelle
>> rules, simply stating that you are getting rid of unnecessary typedefs
>> is a win.
> 
> Actually, I think the rule is nice, because we can see that she is taking
> care of the _t before looking at each case.  I would tend to put a
> complete rule like this in a cover letter though, but it depends on how
> the patch series is organized.

There is definitely a level of personal preference here. IMHO the rule
doesn't add value to the commit log, since it doesn't deal with an
actual bug. Having it in a cover-letter would be fine.

Cheers,
Jes


