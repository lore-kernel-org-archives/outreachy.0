X-GM-THRID: 6470117861435113472
X-Received: by 10.129.146.207 with SMTP id j198mr19783922ywg.27.1506857845369;
        Sun, 01 Oct 2017 04:37:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.231.12 with SMTP id e12ls1409525ybh.3.gmail; Sun, 01 Oct
 2017 04:37:24 -0700 (PDT)
X-Received: by 10.13.202.5 with SMTP id m5mr20649724ywd.190.1506857844410;
        Sun, 01 Oct 2017 04:37:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506857844; cv=none;
        d=google.com; s=arc-20160816;
        b=OgnRGTFDtvYqRS711f7BuwhSIuYtlSyS/raj15JBN6FnmzimdK4VDjjqrpByYxO8sJ
         IxsAmU3V0J+lEAuYqpi1QL/3PTZsl74OGz/mXBbTjZerP2G28NIsIE5KeN8//hWGvjra
         65QcKbhG6Ap2qpICXn2NkdJx8hmYjHfJsRMsiIZZdc5F1s74d6EB+hREpy/KLYIMIP7R
         TfSXSWP6Ce/xTsWOn6v5oFbd+K3N6qWDxtMBmcK4Isl4kSswXsCJ1v/74zHLbY+DXoze
         gCQAm/eZNq1taX2ozrvYd0Jz08YJ4YSiIED0mJeqVIuV0ppdy413oSFTubslAXSnXSCk
         JMrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=B5n870v1Narv7uFNEoNctPVxGT4o9sXQazVcTzY7zDc=;
        b=Yoi1uIpqKOP7gZ6K9UXAkL2J7DH54I4yxs42t0VYc28HSo2tMHDfxM1h8KpbZvkiod
         yAHH4epbRpK6zuOggRb4Toh/0k+vm0MSWj3MSN/lGFUSKobYIyR6Wn7Xhc/2Pa9OwiBl
         W/KK+oLPN/ZjV8M+bZd4SSgFk0pceODblGxSUNMzjY6z/3FOWIh1ldWxheioDXA0kOf0
         eibmhO9XgOdXCui0NzeERL0AkuyWLZjkIGDJXVLW9G7g/9XBEXWLTxMmE47CuCW/hELo
         EB3f9tQEXgLIadcwGraoo8SOqdRKLK3bvAlyhGdSGx1ByO9HM/H6V8vCSqLVdEsWqDAV
         FEXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e9cUgtbp;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id n131si464356ywb.20.2017.10.01.04.37.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 04:37:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e9cUgtbp;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id w63so746271qkd.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 04:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=B5n870v1Narv7uFNEoNctPVxGT4o9sXQazVcTzY7zDc=;
        b=e9cUgtbp+cOpOnVFfIwIxHBW3dnwhNjyrGyhSv9H1ZVONr+Z0VZaO7Z99DWDZMGrIh
         qirf9HUCQ08qs/FDfrqILCdqQK3iV980hofRd4gaDuElHbXexJIrl/naenVcJbRf4BgQ
         AL8mzX/4ttMJxiqzqPvC3crOtHTJ02CruLRbxgMWK5nsbt7oFt+Hjt0Y6RoCWyMcHgdZ
         pv8LEEhQAJo8RGoxmYpKpjN7GYDJQc0a4AqukFyvUmH6co5TPst4IyIRrVkmAVAJtMV5
         ceVf/tpyk6NjEI1dbtf0zrVXE5DiDRx8E3/UVrr7Lg3xPvPH5X51Xo8v3w3aIXLDvdl3
         ojQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=B5n870v1Narv7uFNEoNctPVxGT4o9sXQazVcTzY7zDc=;
        b=f+jjZaXHiQ+wX7vykaOP038q3vdwqbOA0DgE3cT5rFv4mAQdUiM7mhU4Go7NWIoyam
         ePE/GZWLqZrNgaZmSUD+5TfkfPyYOD81LqZaZKu24aLJfP5RZV2bQx1KF0OiUNQRQHqh
         xP98Max0BJmQ2ko31BT4E8XlC+4sM5w5KlLsmoVpu3j2d3AsK+mp+eQx7bR7yM9jN1yc
         SCO8jFHew2OeSz7NAk87thvzKZIvQ0niZfpKFsvlAXqcpTjWz5NV3MuEMOkFSnPj85tG
         I9RUi+AHZ7P2DpKcMyNe12IsynPJkKDZvIV2tOvD+Bg8ga+8UMgDbly0XGyn4H05VXKF
         HKiQ==
X-Gm-Message-State: AMCzsaUxL9a+Xqb/rCiBtOZxNrbVmW3CLyhHgBtiayoqFzDyyJuBiM57
	uuvvaH2rqfzsRnzJ+aQiYPjgfJfBOn6V29guVe8eYw==
X-Google-Smtp-Source: AOwi7QDQcM6IezxINU20sjpxi3wHyIf8Fxr+nChm2MIetv2p7AkW+5PYcWfjKh2a8XCe6nat5amvFPGCIhWSqfCVWPA=
X-Received: by 10.55.188.131 with SMTP id m125mr11254407qkf.12.1506857844102;
 Sun, 01 Oct 2017 04:37:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.105.75 with HTTP; Sun, 1 Oct 2017 04:37:23 -0700 (PDT)
In-Reply-To: <20170929133417.GA4057@kroah.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
 <6994f57188755df17d3ef47a36a4f4ec032dcb4d.1506436974.git.georgiana.chelu93@gmail.com>
 <20170929133417.GA4057@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Sun, 1 Oct 2017 14:37:23 +0300
Message-ID: <CALta04wMbvf3BDh9+_7TT_VbnApMt3HfqwD+_4qSNBpY2xaUQQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 02/10] Staging: media: atomisp:
 Remove useless 'out of memory' messages
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On 29 September 2017 at 16:34, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Tue, Sep 26, 2017 at 09:01:30AM -0700, Georgiana Chelu wrote:
>> OOM (Out Of Memory Manager) reports memory allocation fails,
>> so there is no need for the error messages.
>>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>> ---
>>
>> Changes in v2:
>> * this is a new patch added to the patchset
>>
>>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 4 ----
>>  1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> index 5232327..8667466 100644
>> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> @@ -728,7 +728,6 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
>>       bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
>>                               GFP_KERNEL);
>>       if (unlikely(!bo->page_obj)) {
>> -             dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
>>               return -ENOMEM;
>>       }
>
> The { } should also be removed when you do this.  Please fix that up
> here.
>

This fix is done in
[PATCH v2 07/10] Staging: media: atomisp:
    Remove braces {} for single statement blocks

Do you say that is better to remove the {} in 02/10?

Thank you,
Georgiana

> thanks,
>
> greg k-h

