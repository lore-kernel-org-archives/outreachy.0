X-GM-THRID: 7260793208832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,809a18290a909c60
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr3932279laj.6.1425907059940;
        Mon, 09 Mar 2015 06:17:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.9 with SMTP id m9ls530263wiy.16.gmail; Mon, 09 Mar 2015
 06:17:39 -0700 (PDT)
X-Received: by 10.180.109.34 with SMTP id hp2mr2685341wib.4.1425907059610;
        Mon, 09 Mar 2015 06:17:39 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id l8si824690wia.0.2015.03.09.06.17.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 06:17:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id l61so9239098wev.10
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 06:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=mOeRvHvTw1cuD/KZeZsBLU0qnAwSB0MI3W44/XOHPws=;
        b=VCfHSxBlWTUEoo6cLkvq5Il+45PaqQhSJ7dfCN5F1JF/zudH3pVSWgk5k/YCx8dDt0
         8RG6LePUv8zyqIKRlKS58/5/iHi3vtjmT5o8+0KYdqOspKXDzDFpv4KyS/PGhCrx+G0n
         qDa0Y4q3Va43rRk3EC4eqB9ATP4m8z8dP44GyRcRoINgFUr41+fGqS7W3lpELG8hLuih
         LWHLno/6cx1ysHgpbOySgbV+R5YR/D0g/7jmUd6Z+y9iQutNNGU7PQiLSOJy/9VO5P1e
         uIPKVlqGpDCGJGm2d3oCWAVpnb0x8CKyLg3a+vV+hX2rgX+ytfzxi7BLvx9P8HSxwL23
         SEHA==
MIME-Version: 1.0
X-Received: by 10.194.6.228 with SMTP id e4mr57026764wja.63.1425907059502;
 Mon, 09 Mar 2015 06:17:39 -0700 (PDT)
Received: by 10.28.3.68 with HTTP; Mon, 9 Mar 2015 06:17:39 -0700 (PDT)
In-Reply-To: <d6eac998-ae6c-4982-bf32-700b0e14272e@googlegroups.com>
References: <1425906256-31780-1-git-send-email-ciorneiioana@gmail.com>
	<CAEnQRZBycngrivXv9jMQdVji7Lpf9gnAgBaQVmgjn0kRFPQw2Q@mail.gmail.com>
	<d6eac998-ae6c-4982-bf32-700b0e14272e@googlegroups.com>
Date: Mon, 9 Mar 2015 15:17:39 +0200
Message-ID: <CAEnQRZAzXaSNzVjmwBO24ZjnupS-b4SZt2xxj7b97JCrU13otA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: rtl8188eu: core:
 rtw_security: Misspelled word
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 9, 2015 at 3:16 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
>
>
> On Monday, March 9, 2015 at 3:10:57 PM UTC+2, Daniel Baluta wrote:
>>
>> On Mon, Mar 9, 2015 at 3:04 PM, Ioana Ciornei <ciorne...@gmail.com> wrote:
>> > This patch fixes the checkpatch.pl warning:
>> >
>> > WARNING: 'halfs' may be misspelled - perhaps 'halves'?
>> >
>> > Signed-off-by: Ioana Ciornei <ciorne...@gmail.com>
>>
>> Hi,
>>
>> Commit subject should contain a verb :).
>>
>> In this case:
>>
>> drivers: staging: rtl8188eu: core: rtw_security: Fix misspelled word
>
>
> Hi,
>
> Should I update the patch?


Yes, please send v2.

