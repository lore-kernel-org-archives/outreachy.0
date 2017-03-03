X-GM-THRID: 6392971677786963968
X-Received: by 10.36.36.84 with SMTP id f81mr375698ita.8.1488551205968;
        Fri, 03 Mar 2017 06:26:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls9752776otg.39.gmail; Fri, 03 Mar
 2017 06:26:45 -0800 (PST)
X-Received: by 10.13.238.134 with SMTP id x128mr1219106ywe.59.1488551205556;
        Fri, 03 Mar 2017 06:26:45 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id n127si343498ita.3.2017.03.03.06.26.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 06:26:45 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id f103so6878336ioi.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 06:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=96LBpV0icxa8drNB3k6gj6FzwBnhYR+48yWZ+h8rzD0=;
        b=GWP420UIEPw4p5e/diASmg2XmJ9Xgu2e0l3duxAhJnEjTlbjaMQX5mfeLU5rEVJzNA
         Uw4HjmLWCIy9u4ToNKm35Z0fgGMcAUM4JHx9YXs/8tntdu3hipnqV85VmVraIgjy8J9J
         DnSqjJvyy2ulHMlteO5bvuMNMa8pi0+sMwBE9zAorkcNj0ymcU8D6GdCu7CMrp5ZAJg/
         7xFtOFHVQRNGm4e06SAYTXiNfegL9rrCMCrIIA+8KGBYfSazpNiFSqV9VKrrFd5iO08G
         7i0pbNHCeiNmyucW1LxUNHk3f9bPQV1TFwv5RRVOx8F+65rw1Olzz2GcGT9DBE3y80js
         Dd2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=96LBpV0icxa8drNB3k6gj6FzwBnhYR+48yWZ+h8rzD0=;
        b=R50swlAYi/JzFmnci3Neay0LTgfaXZDTnw5IFDNAJI6J+hOmWsWxOWrqrYD3OBim0D
         LTkZHKtM6j9d3OrSHYL/0snGPRSy/Co1cHgq/63+O/9WhvOtt3QDpBk9GbzCKkKiDkfx
         XQdN9Nmfom5zsXLPyVy/k/28bILelRqPgwyMBIIFDnNJEmIBa2fb8aVeZm9vmkOY3D5V
         X9AKyhKki8pgtDwbIML3O9p5GaYbPFSvLqZFzgsACjD0ueOQyo6/nTV+khyz22aguhDm
         IQkFR5GZl+xA4CvHRPDci4wCPNGyiFXp3e7WV54lxaN1EePiRHZYtaOJOrtSHAYLA2dZ
         ctNQ==
X-Gm-Message-State: AMke39mSwPmGT+zfBjU/liJWn4peLf9IYuSFoqKfDNpt5z/b8JHPj0IeWiAuY/oBWaUW0bnP1EZenkbgT32KJg==
X-Received: by 10.107.9.33 with SMTP id j33mr3189799ioi.211.1488551205329;
 Fri, 03 Mar 2017 06:26:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Fri, 3 Mar 2017 06:26:44 -0800 (PST)
In-Reply-To: <20170302183501.3087-1-diaconita.tamara@gmail.com>
References: <20170302183501.3087-1-diaconita.tamara@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 3 Mar 2017 16:26:44 +0200
Message-ID: <CAEnQRZCi6XDVkupMR6myUctFEMH5ByaOORAy7KAAw55-=LnEew@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/5] Resend the first patch set
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: mchebab@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Tamara Diaconita <diaconita.tamara@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 2, 2017 at 8:35 PM, Tamara Diaconita
<diaconitatamara@gmail.com> wrote:
> Resend the first patch set: 'Fixing multiple checkpath issues to improve code readability'.

The subject of the cover letter should be the same as the first version.

[PATCH v2] Fix multiple checkpath issues to improve code readability

notice the v2 and changed verb mood.

Should not matter now, but is to be kept in mind for the next patches.

> Added the name of the driver in the patches titles.
> Changed the verbs tenses with imperative.
> Added a short description for the patches.
> Changed the comment in 'Add struct mutex definition' patch.
>
> Tamara Diaconita (5):
>   staging:cxd2099: Add spaces around arithmetical operators
>   staging:cxd2099: Remove multiple blank lines
>   staging:cxd2099: Add struct mutex definition
>   staging:cxd2099: Change kzalloc parameter
>   staging:cxd2099: Remove redundant code
>
>  drivers/staging/media/cxd2099/cxd2099.c | 102 ++++----------------------------
>  1 file changed, 13 insertions(+), 89 deletions(-)
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170302183501.3087-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

