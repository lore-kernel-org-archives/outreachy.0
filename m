X-GM-THRID: 6205781635135176704
X-Received: by 10.50.41.7 with SMTP id b7mr25928874igl.12.1444897743180;
        Thu, 15 Oct 2015 01:29:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.5 with SMTP id m5ls289930obq.61.gmail; Thu, 15 Oct 2015
 01:29:01 -0700 (PDT)
X-Received: by 10.182.126.47 with SMTP id mv15mr4289649obb.44.1444897741717;
        Thu, 15 Oct 2015 01:29:01 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id q68si932264ywf.0.2015.10.15.01.29.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:29:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x233.google.com with SMTP id s79so33582686qka.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/j9VmDFlslcByCinC7ritFpGx2kmQqjkOyXlqmCl2P4=;
        b=hBrItfazCjKxYiie8d6dZhEcWHyEnxmL6lPFP7p4mDz0w2/vJoyPutFIk8SgifnGxU
         uT9FvTeTxiVASSW6idqgGzKqfB8A3k5Xpq/1+t01ijv7XvyLkQJ54AI/1oDO9Yt+OaPV
         TCBIHcF6PGShytXgzJyfJzf0V/ABfAU2VNpguNE3uVs/Cm7XYG7Fb13Z/QFtCDZiv/j/
         JlF/hb8hM4202P9CHIe372Jub22tVwlO5uOYXhJ73YheUR+/BIE5uJuz7lX8rwzcei1w
         ijp1o/uM37ltDthBCyykYB6pnxQ/AicdTpH1PvnvNiqK5h4XqUcfYuC8uXJ+fOeAXLGA
         3M+w==
MIME-Version: 1.0
X-Received: by 10.55.43.37 with SMTP id r37mr9924015qkh.57.1444897741565; Thu,
 15 Oct 2015 01:29:01 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Thu, 15 Oct 2015 01:29:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510151004560.2350@hadrien>
References: <cover.1444895817.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510151004560.2350@hadrien>
Date: Thu, 15 Oct 2015 13:59:01 +0530
Message-ID: <CA+5yK5F+aegUFW3UVE1S+j=9B28q_0NRQK=UHN93pd7jYLP0_A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 00/18] staging: Remove useless initialisation
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 1:35 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 15 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> This patchset removes multiple useless intialisations of variables
>> which are immediately reassigned.
>
> The patch is probably fine, but in general, you may find that it is more
> comfortable not to send quite so many patches at once.
>
> julia
>

Hi Julia,

Since all the patches were essentially doing the same thing, just in
different files I thought it would be okay to send them all in the
same patchset. But if you think it's better to divide and send I'll do
so in the future?
>>
>> The semantic patch used to find this is:
>>
>> // <smpl>
>> @@
>> type T;
>> identifier x;
>> constant C;
>> expression e;
>> @@
>>
>> T x
>> - = C
>>  ;
>> x = e;
>> // </smpl>
>>
>>
>> Amitoj Kaur Chawla (18):
>>   staging: rtl8723au: hal: Remove useless intialisation
>>   staging: rtl8723au: core: rtw_wlan_util: Remove useless intialisation
>>   staging: rtl8723au: core: rtw_recv: Remove useless initialisation
>>   staging: rtl8723au: core: rtw_ap: Remove useless intialisation
>>   staging: media: lirc: Remove useless initialisation
>>   staging: media: davinci_vpfe: Remove useless intialisation
>>   staging: lustre: ptlrpc: Remove useless initialisation
>>   staging: skein: Remove useless initialisation
>>   staging: vt6655: Remove useless initialisation
>>   staging: vt6656: Remove useless initialisation
>>   staging: wilc1000: wilc_wfi_cfgoperations: Remove useless
>>     initialisation
>>   staging: wilc1000: coreconfigurator: Remove useless initialisation
>>   staging: rdma: ipath: ipath_eeprom: Remove useless intialisation
>>   staging: rdma: ipath: ipath_init_chip: Remove useless initialisation
>>   staging: rdma: hfi1: diag: Remove useless initialisation
>>   staging: rdma: hfi1: sysfs: Remove useless initialisation
>>   staging: dgnc: dgnc_tty: Remove useless initialisation
>>   staging: dgnc: dgnc_driver: Remove useless initialisation
>>
>>  drivers/staging/dgnc/dgnc_driver.c                   |  2 +-
>>  drivers/staging/dgnc/dgnc_tty.c                      |  2 +-
>>  drivers/staging/lustre/lustre/ptlrpc/client.c        |  2 +-
>>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c |  2 +-
>>  drivers/staging/media/lirc/lirc_sasem.c              |  2 +-
>>  drivers/staging/rdma/hfi1/diag.c                     |  4 ++--
>>  drivers/staging/rdma/hfi1/sysfs.c                    |  2 +-
>>  drivers/staging/rdma/ipath/ipath_eeprom.c            |  2 +-
>>  drivers/staging/rdma/ipath/ipath_init_chip.c         |  2 +-
>>  drivers/staging/rtl8723au/core/rtw_ap.c              |  4 ++--
>>  drivers/staging/rtl8723au/core/rtw_recv.c            |  6 +++---
>>  drivers/staging/rtl8723au/core/rtw_wlan_util.c       |  2 +-
>>  drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c  |  8 ++++----
>>  drivers/staging/skein/skein_api.c                    |  2 +-
>>  drivers/staging/vt6655/card.c                        |  2 +-
>>  drivers/staging/vt6656/card.c                        |  2 +-
>>  drivers/staging/wilc1000/coreconfigurator.c          | 10 +++++-----
>>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c    |  2 +-
>>  18 files changed, 29 insertions(+), 29 deletions(-)
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1444895817.git.amitoj1606%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Amitoj

