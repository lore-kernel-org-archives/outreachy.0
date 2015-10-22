X-GM-THRID: 6208147011756097536
X-Received: by 10.194.109.233 with SMTP id hv9mr3301152wjb.1.1445501531946;
        Thu, 22 Oct 2015 01:12:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.209.145 with SMTP id i139ls127350lfg.0.gmail; Thu, 22 Oct
 2015 01:12:11 -0700 (PDT)
X-Received: by 10.112.144.105 with SMTP id sl9mr3294235lbb.3.1445501531362;
        Thu, 22 Oct 2015 01:12:11 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id hs5si1062780wib.1.2015.10.22.01.12.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:12:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wicuv6 with SMTP id uv6so17603351wic.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=dSwq0r9JHNpLtWOxWnA7GQA0Hu4KM8xXn3gVUzSL3AU=;
        b=zbWZpATBNK9uZKWIcsD3e9LyOkskGMV8MlG6aoAh686IPvYAjnBGsyA/OInCzzcgBW
         GSX46e7lL6/yaWgQnvxr3JgqnfAfQ3sT9FuSe83tXxCKbbN/Stbha4L8a5xO0kQ+9I8X
         hIhPrjEwJ1kGlhaZ8kMLlt+gYRubHIZ6+w3lFTJxAgIlAkqB9vj/5QCrvdNXtUSLtmHX
         IHwp+cT71t+hhOoSzJ+UuidbZh9oySXLrf9km7c10wpmRCNbz1kEvXYDjv9g+GL9Djvl
         7naO6mvhBGQOCwCqraFU2xS0aMBamj/HSFxQmzVcxbx7tN90/1QY+rzs9VBbZ0Cwo4no
         azJw==
MIME-Version: 1.0
X-Received: by 10.180.211.47 with SMTP id mz15mr15138501wic.93.1445501531196;
 Thu, 22 Oct 2015 01:12:11 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Thu, 22 Oct 2015 01:12:11 -0700 (PDT)
In-Reply-To: <cover.1445379358.git.cristina.moraru09@gmail.com>
References: <cover.1445379358.git.cristina.moraru09@gmail.com>
Date: Thu, 22 Oct 2015 11:12:11 +0300
Message-ID: <CAEnQRZA46Qw4piJmsfqmp10tBg_+w-EZS1LG7ZFqXUz+84j_YQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Replace kmalloc with kmalloc_array
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 8:00 PM, Cristina Moraru
<cristina.moraru09@gmail.com> wrote:
> Replace kmalloc with specialized function kmalloc_array
> when the size is a multiplication of:
>         number_of_elements * size_of_element
>
> Done with coccinelle:
> @replace@
> identifier a, b;
> expression e, f;
> @@
> (
> - a = kmalloc(e * f, b);
> + a = kmalloc_array(e, f, b);
> )
>
>
>
> Cristina Moraru (3):
>   staging: rtl8712: Replace kmalloc with kmalloc_array
>   staging: octeon-usb: Replace kmalloc with kmalloc_array
>   staging: rdma: Replace kmalloc with kmalloc_array
>
>  drivers/staging/octeon-usb/octeon-hcd.c     | 6 +++---
>  drivers/staging/rdma/amso1100/c2_provider.c | 2 +-
>  drivers/staging/rdma/ipath/ipath_verbs.c    | 4 ++--
>  drivers/staging/rtl8712/rtl871x_mlme.c      | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)

For all patches in this series:

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

