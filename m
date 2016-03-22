X-GM-THRID: 6261067908671078400
X-Received: by 10.182.3.40 with SMTP id 8mr25577785obz.15.1458622715240;
        Mon, 21 Mar 2016 21:58:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.223 with SMTP id t92ls2012493ioi.69.gmail; Mon, 21 Mar
 2016 21:58:34 -0700 (PDT)
X-Received: by 10.66.181.7 with SMTP id ds7mr26041227pac.35.1458622714509;
        Mon, 21 Mar 2016 21:58:34 -0700 (PDT)
Return-Path: <tanvisurana20@gmail.com>
Received: from mail-oi0-x243.google.com (mail-oi0-x243.google.com. [2607:f8b0:4003:c06::243])
        by gmr-mx.google.com with ESMTPS id ph8si22540074igb.0.2016.03.21.21.58.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 21:58:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of tanvisurana20@gmail.com designates 2607:f8b0:4003:c06::243 as permitted sender) client-ip=2607:f8b0:4003:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tanvisurana20@gmail.com designates 2607:f8b0:4003:c06::243 as permitted sender) smtp.mailfrom=tanvisurana20@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x243.google.com with SMTP id r187so14580716oih.2
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 21:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=ekvn9dzxWDiIR057ijhrJ/DD+uVzr4Z9m6LEjX9vKDc=;
        b=crSbpzMpws27LklifCdowiFCs5SBGOtaTMXmqEJ770otmw7Wu8bzy3ihFSAPy5qeuA
         kWN1HV+K2L7ezboJJKF6vehPjEUQ9spu9Tmg/CMlUwIXZamVM8sO+byJvEwObAv79BYw
         QmlDMnXfgD4F9JVLPnPjosoEbIbloCpT3vIEpCfQru62VO/iNlVrPYr0ynFM4P6/M6Os
         VJsJTdMnj7GalbBWSmE7gQaY+uxHoXmjz+HiZWoNvd3kKo09v5nZTQ17BIrFEYdf5IMF
         aFp08L2pfy4j2FdllG6rosw5aPxwOaK1wzoNMqlxhxHUB1qrLD3LOI6VeglDG+7nVy41
         ZXTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=ekvn9dzxWDiIR057ijhrJ/DD+uVzr4Z9m6LEjX9vKDc=;
        b=nOcfzYRzbHuSUiAQRxiqoa+6vnU6YW40viyI5pLPvxA/mnwe3We9+vXSL31uFhUJph
         HYnqQEj93CEjCv+V/3aG/uQA7XPEv1Df7ZV67wR9zqH3aOBuBsa+7+w8suhSySDu79EB
         g77DABRYw6WUNZxm80Exk1zenUOr/w5vh2IIDie79xGb4h1hnB8clYyHFngI47YY2b1K
         XPk/zQZ/uQlkDMO21rQdReZwVjty5jrv8z7BhXw9CsXmnAx+OJPY1Uh4W9hN1nCFJeAw
         +sMY8RmDXjN/3IooJDiLxDU442IMMbljzmFzkmiCek0lIENYnJMEmMowx3sgNtIzTl8E
         Ce5A==
X-Gm-Message-State: AD7BkJJqnIN825VeM3HT3xl8ZdHkM9A5GgcRpQTssfmlwTYmu//deDFU6JKgzEntTsGoiUjqRn5bQsoF1BEtRQ==
MIME-Version: 1.0
X-Received: by 10.202.213.80 with SMTP id m77mr17173095oig.102.1458622713776;
 Mon, 21 Mar 2016 21:58:33 -0700 (PDT)
Received: by 10.202.215.137 with HTTP; Mon, 21 Mar 2016 21:58:33 -0700 (PDT)
In-Reply-To: <20160321192406.GA4195@kroah.com>
References: <1457768460-5830-1-git-send-email-tanvisurana20@gmail.com>
	<20160321192406.GA4195@kroah.com>
Date: Tue, 22 Mar 2016 10:28:33 +0530
Message-ID: <CAF6mXV+UGi-obXMzSbHZU+mozwtj2q+HcZijNDCT1uDAw+hGsQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: lustre: modified block comments
From: Tanvi Surana <tanvisurana20@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Alright.

On Tue, Mar 22, 2016 at 12:54 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sat, Mar 12, 2016 at 01:11:00PM +0530, Tanvi Surana wrote:
>> Fix checpatch.pl errors and warnings in lustre
>> WARNING: Block comments use * on subsequent lines
>>
>> Signed-Off-By: Tanvi Surana <tanvisurana20@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/llite/xattr.c | 17 +++++++++++------
>>  1 file changed, 11 insertions(+), 6 deletions(-)
>
> Patch does not apply at all :(

