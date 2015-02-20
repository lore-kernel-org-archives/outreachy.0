X-GM-THRID: 1080518770688
X-Received: by 10.112.119.141 with SMTP id ku13mr1087672lbb.7.1424420851299;
        Fri, 20 Feb 2015 00:27:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.65 with SMTP id b1ls250369laf.99.gmail; Fri, 20 Feb
 2015 00:27:30 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr1078902lbb.14.1424420850799;
        Fri, 20 Feb 2015 00:27:30 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id el6si54136wib.2.2015.02.20.00.27.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 00:27:30 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f177.google.com with SMTP id bs8so1240207wib.4
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 00:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=s8GeYG7isyzBbIim6nVvG+dCtjUdNOV/tv1muGxs7/M=;
        b=soQn8I5Mv7N+josEACXwF/DrPBe7JPwXYQ2wu3qspGrKZsTK6CvehBNTXNjL18k+oB
         7sBuYYT+FY/a66dCPkjuTWGJRREAmkpeb6rAe3+nNPtdhD6x2wLHNHj7VnePtPBAS0zZ
         /Zxoj3AZIAvx8X62jNBefiQW3vpf51yt0rmcr4AZWPNnv6Rx6eKqqfvCb6NoLJklHCfQ
         x3bnVxd1aVjYhFV2X5GS6lOhi4T7hGzs2lOeUGhNwLKjiu7h4pQgnUoA11zgRYc21GfY
         ZbrMfIPki77ij1tI57LNy8oGLQIyi2ZtlyHAHfBCtqEgqXX41JsZmGR6J1EsVNdJd+H7
         gtug==
MIME-Version: 1.0
X-Received: by 10.180.208.20 with SMTP id ma20mr13471257wic.22.1424420850569;
 Fri, 20 Feb 2015 00:27:30 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Fri, 20 Feb 2015 00:27:30 -0800 (PST)
In-Reply-To: <54E6EA07.2020603@linux.vnet.ibm.com>
References: <cover.1424402536.git.vthakkar1994@gmail.com>
	<9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com>
	<alpine.DEB.2.02.1502200816570.2045@localhost6.localdomain6>
	<CAK-LDbKo2E2gua_=z+5ibpnY-Qf3qnzaJZLW6AdG_KekBH9BZQ@mail.gmail.com>
	<54E6E471.8090107@linux.vnet.ibm.com>
	<CAK-LDbL70HbEiDNmE3A499dAvxP7JteJB9nvmEs_tMRePggT_g@mail.gmail.com>
	<54E6EA07.2020603@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 13:57:30 +0530
Message-ID: <CAK-LDbK3d16DmtibtZF6SkmW0D5=cmkiBPnTGrWWLb9rZTbMLg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: rtl8723au: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 20, 2015 at 1:32 PM, Preeti U Murthy
<preeti@linux.vnet.ibm.com> wrote:
> On 02/20/2015 01:20 PM, Vaishali Thakkar wrote:
>>>
>>> Yes I would suggest that. I missed this. Additionally I would recommend
>>> in this case to not prefix any version number to the cover letter.
>>> Instead prefix the appropriate version numbers to the individual patches
>>> mentioning the changes from the previous versions.
>>
>> Ok. So, in next patch-series cover letter will not have any version number and
>> both of these patches will have v4 as I already prefixed them as v3.
>> And for this
>> particular patch I should write that there is no v2 under signed off
>> by line. Right??
>
> 1. No version number for the cover letter.
> 2. Retain [PATCH v3 1/2] Staging: rtl8188eu: Use put_unaligned_le16 as
> v3 itself.
> 3. Change [PATCH v3 2/2] Staging: rtl8723au: Use put_unaligned_le16: to
> v2. So it would be:
> [PATCH v2 2/2] Staging: rtl8723au: Use put_unaligned_le16, since it has
> undergone just one revision.
>
> The reason I ask not to change the version numbers again is because
> there is nothing that has significantly changed from the previous
> versions. There will be a change only in the manner of sending patches.
>
> So now the question is about how you indicate to the maintainer that the
> fresh series that you will post now is the one to be picked up. Usually
> under such circumstances we append RESEND to the patches.
> So now you can resend the next version as mentioned in the points above
> but with a RESEND tag to the cover letter and patches.
>
> Something like: [RESEND PATCH 0/2] Staging: Use put_unaligned_le16.
> The maintainer will thus know that this is the one to be picked up.

Yes. This makes sense. I was confused about how maintainer will know what
to pick in these kind of situations. Thanks for clearing this. :)

> Regards
> Preeti U Murthy
>
>
>>
>>> Regards
>>> Preeti U Murthy
>



-- 
Vaishali

