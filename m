X-GM-THRID: 9790095884288
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2ff1775a6d87248a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.87.97 with SMTP id w1mr2410571igz.1.1427472436996;
        Fri, 27 Mar 2015 09:07:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.73 with SMTP id dy9ls841092obb.2.gmail; Fri, 27 Mar
 2015 09:07:16 -0700 (PDT)
X-Received: by 10.182.97.2 with SMTP id dw2mr23430018obb.0.1427472436757;
        Fri, 27 Mar 2015 09:07:16 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22e.google.com (mail-qc0-x22e.google.com. [2607:f8b0:400d:c01::22e])
        by gmr-mx.google.com with ESMTPS id z1si412195qcn.2.2015.03.27.09.07.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 09:07:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22e as permitted sender) client-ip=2607:f8b0:400d:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22e as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22e.google.com with SMTP id y5so20378181qca.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 09:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=3mIxdDGNeGlwhWgqZnpfMvT1PpBRokN2xDrpPJZIj+4=;
        b=QfdMA9znRq2a3NOOiEuC+RnSS7qqDYYkr0H8Eq/D8vxvgM6QHdBDcsKn0Rffhdlz2x
         cGlolLyRlJhmlybNSMh3djZhPtRS5RLW3zQjvamcs+9ZfY++m+/DUDg8SHEkCokmtvcS
         e1JYoI0MjeD9ECjVYEOL3gTZckxHarIz72LT2zYT0lujNnAgxD7L5aqXqT25erZDCOIz
         D7RCkTEtD48zBdTravRLESBZ2WI5ARf+ZMXBKT2uwk19uT6lAhVDfq6SDJgIKJRC3wQB
         f13um2PFuKlncf0eggiSVIj4P/gjsqb0xyD3Vcsr5eRNfWEshTXYoJylEnQOm5vDgpWQ
         M1aw==
X-Received: by 10.140.232.15 with SMTP id d15mr26269746qhc.52.1427472436648;
        Fri, 27 Mar 2015 09:07:16 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id w68sm1713519qha.32.2015.03.27.09.07.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 09:07:16 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <55158033.5060704@gmail.com>
Date: Fri, 27 Mar 2015 12:07:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Greg KH <gregkh@linuxfoundation.org>
CC: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Add new variable
 to make code compact
References: <20150325131311.GA10728@akanksha> <55145A95.909@gmail.com> <CAHjTdYc0-dAGWOLq=Bvm2Mcy76XNyc3w_Z6kxtrKZDHgk=xa7Q@mail.gmail.com> <55145E92.4080209@gmail.com> <20150326204051.GB5122@kroah.com>
In-Reply-To: <20150326204051.GB5122@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/26/15 16:40, Greg KH wrote:
> On Thu, Mar 26, 2015 at 03:31:30PM -0400, Jes Sorensen wrote:
>> On 03/26/15 15:26, Vatika Harlalka wrote:
>>> Hi Jes
>>> This was to align the declaration with that of hal_data above.
>>> Should I change them both and send in a new patch?
>>>
>>
>> That would be preferred!
> 
> Not really as I've accepted the first patch.  So just a follow-on one
> would be good.

You're too fast, slow down and give the rest of us a chance :)

Jes


