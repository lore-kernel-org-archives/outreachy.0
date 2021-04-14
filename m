X-GM-THRID: 6951014444226838528
X-Received: by 2002:a17:90a:af91:: with SMTP id w17mr4026038pjq.205.1618411192169;
        Wed, 14 Apr 2021 07:39:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1315:: with SMTP id i21ls1158267pgl.8.gmail; Wed, 14 Apr
 2021 07:39:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw1VyBqnogiJVaA/a6fWqs++nzde9dq8Ok1/FyvxloYr2tIa0JmkH2ia1um8kb0SE6jMi7G
X-Received: by 2002:a65:4887:: with SMTP id n7mr37766947pgs.14.1618411190822;
        Wed, 14 Apr 2021 07:39:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618411190; cv=none;
        d=google.com; s=arc-20160816;
        b=zh6mfrs+dcEvzDlwntfXKsf0H6c+/EXYokLwWRMHZ7XKk9xo8W5tWyzWmJWY3poUUu
         g9Ke6ON5Kzg+6JMO03R+5CBa9nOd8kvFDnXRG93s9gBcpLlIR1hAi8Bk3P0mjSh57Okr
         VcmutzQRbGxMt5O8uTI0BTxf/vF8OWj3UH/h6RsB4FLJUVkV4+8uch9a0TYBG3hTzgfM
         Kjrpqik7nqkWCfxLIRUXObBqcU+Cpa98OzKuVR5SHptVKYHi93FIZ/tEWCA8uDjNspvl
         A1BPMKjDsovdKGpCzt9jsCrslKbtb/fFnTglhi7IqJWV3JwH+k1Pl4z9CNuPgxEDIq57
         M9eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=2B1LMPTBMBAU8JXDhbFQ2mBUnwK8BELBWD2+5f+8D7U=;
        b=gVj10CNlcpCqfL8YGpkZg4f3EXUvUQBvTMNPhtTbwI0XkZeepODh//XWVMQ3efWB6L
         7TZULw/+Zs8lP+UCstyjZBH/V4vZWc+zh01KzcQyoXaJlGyzNDDCLR5dlkBufhGJrG/P
         2J7H+Lec5uhvcY7UcnKmFp+RMjFj1gXE7mLs1CWi8enpD12w2WBn8K7LIA2IJ+ESq+Cb
         f1aw2lPQHVf9Oic3VZebUkXtryT6cfoXGza06PAXN+ur2ra0vl9HMz82jWix4L6LZH4r
         YyXMykchldfn0zytV2e5gGwAI3hI7f6sgGbBjT1jOzJWqvbupEfAx+g4CA4Pg9NBTH0I
         zPlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FiLrkyTD;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com. [2607:f8b0:4864:20::82e])
        by gmr-mx.google.com with ESMTPS id 7si1293485pgj.1.2021.04.14.07.39.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:39:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) client-ip=2607:f8b0:4864:20::82e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FiLrkyTD;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82e.google.com with SMTP id c6so15585587qtc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 07:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2B1LMPTBMBAU8JXDhbFQ2mBUnwK8BELBWD2+5f+8D7U=;
        b=FiLrkyTDp6GJ98Bu7H48INTpDWgOiffBp7x8jMPGeRWaKcfr6Wjy9rIxsWrwBT1grG
         4CJmyGp3XeYv1b9pjxXkPE7U86VFDyfKu0eYDXEK8nUkwG99ccg3pa99IH9wWhkyb+O/
         Y32m9Gh3xdf3GYS0QFrqzlzN6nnGns0ggN2ZGryzQOaaCFFfFA/6AsgMZpkamHaeubTh
         pF4g2J8zoeLFSuKrLMSAkIaXO7wVtM0h88tfIYoe+4tRKcuBnENHX3lbPSd2UiZ7Rab8
         WQ7NNhX0qo8vhuUxpgVbirIuKT8sdSmBRshkAQG6mLNHzEI1rhPbxCet4CNlEpPdg+79
         uDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2B1LMPTBMBAU8JXDhbFQ2mBUnwK8BELBWD2+5f+8D7U=;
        b=I/AaJNU6LT0rl0svkhW1crKHtPXMJiqEHnHe7O77nqSuXlUqn+zCCnmGzLzwICS3CH
         MREV8gWfvmEWSLaOAXG8akjcF30yP0BxctOQ64vpdbF/a0St5dsX9sJJJQHCRfedTn5+
         jE78Ppa4OQ1x6hq70UkuHbbLxUTsJI0mG7SK+b0QTkNK1wQk356PUiNDvOq/MDnfEkwM
         XZHUnn0b+i/kFgvozTptkpCzbJ7gGJRWimWHVHofjZu8Uhhx0a9tYz89QiMtsvKdwA/V
         Owf0s0DggHrh2HAV49SSyku9YgW3zD+rfpxwRgGJCdIYRbWUsXQYdRWYaQt6/DJDp0zz
         zXxA==
X-Gm-Message-State: AOAM530m+UTObRkN+Q5jnCYDB9yIfpLd21o08NF8YGmivzuzV85TJW+p
	5Z2/haAf0QoxVMfYsm21hrY=
X-Received: by 2002:a05:622a:30f:: with SMTP id q15mr4076305qtw.4.1618411190499;
        Wed, 14 Apr 2021 07:39:50 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:7038:c088:ae60:452d? ([2001:1284:f016:a037:7038:c088:ae60:452d])
        by smtp.gmail.com with ESMTPSA id l24sm3425807qtp.18.2021.04.14.07.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:39:50 -0700 (PDT)
Message-ID: <45412a2374f2fb324973796105d7bf0ef2bfd36d.camel@gmail.com>
Subject: Re: [PATCH 1/2] staging: media: atomisp: pci: Correct identation in
 block of conditional statements in file atomisp_v4l2.c
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Wed, 14 Apr 2021 11:39:46 -0300
In-Reply-To: <20210414143011.GV6021@kadam>
References: <cover.1618409028.git.alinesantanacordeiro@gmail.com>
	 <0ef18a36d6905628fa596fd5e0a32fdb9c6a8ada.1618409028.git.alinesantanacordeiro@gmail.com>
	 <20210414143011.GV6021@kadam>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em qua, 2021-04-14 às 17:30 +0300, Dan Carpenter escreveu:
> On Wed, Apr 14, 2021 at 11:06:02AM -0300, Aline Santana Cordeiro
> wrote:
> > Correct identation in block of conditional statements.
> > The function "v4l2_device_unregister_subdev()" depends on
> > the results of the macro function "list_for_each_entry_safe()".
> > 
> > Signed-off-by: Aline Santana Cordeiro <
> > alinesantanacordeiro@gmail.com>
> > ---
> >  drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > index 0295e2e..6d853f4 100644
> > --- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > +++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > @@ -1178,7 +1178,7 @@ static void
> > atomisp_unregister_entities(struct atomisp_device *isp)
> >                 atomisp_mipi_csi2_unregister_entities(&isp-
> > >csi2_port[i]);
> >  
> >         list_for_each_entry_safe(sd, next, &isp->v4l2_dev.subdevs,
> > list)
> > -       v4l2_device_unregister_subdev(sd);
> > +               v4l2_device_unregister_subdev(sd);
> >  
> 
> It's really more common to use curly braces for list_for_each() one
> liners.
> 
>         list_for_each_entry_safe(sd, next, &isp->v4l2_dev.subdevs,
> list) {
>                 v4l2_device_unregister_subdev(sd);
>         }
> 
> regards,
> dan carpenter
> 
Thank you for warning me.
I'm going to send a v2 adding the curly braces.

regards,
Aline


