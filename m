X-GM-THRID: 6205612297408217088
X-Received: by 10.66.163.102 with SMTP id yh6mr26770696pab.23.1445267809527;
        Mon, 19 Oct 2015 08:16:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.41 with SMTP id j41ls1331495ioo.52.gmail; Mon, 19 Oct
 2015 08:16:48 -0700 (PDT)
X-Received: by 10.66.136.40 with SMTP id px8mr27337066pab.11.1445267808758;
        Mon, 19 Oct 2015 08:16:48 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22c.google.com (mail-io0-x22c.google.com. [2607:f8b0:4001:c06::22c])
        by gmr-mx.google.com with ESMTPS id hx4si976219igb.0.2015.10.19.08.16.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 08:16:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) client-ip=2607:f8b0:4001:c06::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22c.google.com with SMTP id l68so33818086iol.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 08:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Fxh0F+MfrQNIYFxEOJZiQrXpSGI9DVpTINTtTrVjqrk=;
        b=wkG3dfvWwUuN3qzJ3GV1nDnFv9pP2lpnz+8DGarquUn1jtfXLK204qSJBK7CvKk0yv
         +CI3mVdTi7vmcnKHayYAQkHdg3tGvr+IfYGuA9lCqFxsvqKXTAdiOvcdKSKUls3Qxl2t
         hMWBbnoQkwn6IMFkU5rPVN0YBeF8Wn8ATDq3EAIijIRGcFwVxP9HXIhPRnlqj+QljrwW
         BXpBTGbZsz0yynGNfUL21toDNYNF1aWZ++nXkSZthqob8QmOFO78/6HvChZ9yGX3Rvk3
         TVwArvD02edIoxeQjQTtXEqCwFjpqJvP3tOsb7XHJgQjGbL/8pO2rJRx24BSbjt9wiJa
         p77Q==
MIME-Version: 1.0
X-Received: by 10.107.151.195 with SMTP id z186mr20550957iod.8.1445267808315;
 Mon, 19 Oct 2015 08:16:48 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Mon, 19 Oct 2015 08:16:48 -0700 (PDT)
In-Reply-To: <6422089.hfNKf1xMHR@wuerfel>
References: <cover.1445097871.git.ksenija.stanojevic@gmail.com>
	<6422089.hfNKf1xMHR@wuerfel>
Date: Mon, 19 Oct 2015 17:16:48 +0200
Message-ID: <CAL7P5jJOcfSakK7sAjF9DXJyjYNiT0A+7+AdWD6XNLLkoi4VPQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 0/4] Staging: lustre: Use static
 inline functions instead of macros
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi Arnd,

On Mon, Oct 19, 2015 at 3:27 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Saturday 17 October 2015 18:13:15 Ksenija Stanojevic wrote:
>> Convert macros class_export_lock_get and class_export_lock_put into static
>> inline functions and also remove some unused macros.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>
> Whole series,
>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>

Greg already merged these patches

