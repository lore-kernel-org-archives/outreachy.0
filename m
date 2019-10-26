X-GM-THRID: 6749323707377778688
X-Received: by 2002:a92:1f44:: with SMTP id i65mr8466433ile.90.1572073458559;
        Sat, 26 Oct 2019 00:04:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c142:: with SMTP id b2ls1307842ilh.9.gmail; Sat, 26 Oct
 2019 00:04:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzax/8fHtfiw8V0CAHrLFmKTtqEVkVc4WITMwoLhA/3XfdLphcvMYiTZ/K4FNAobnGI2+o8
X-Received: by 2002:a92:7982:: with SMTP id u124mr9046794ilc.161.1572073457258;
        Sat, 26 Oct 2019 00:04:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572073457; cv=none;
        d=google.com; s=arc-20160816;
        b=wq9EJhegrt9lCuKNT6KhjmP0oQCJE9U2M25ZyoLbFkZUAp7rKDmiZ20kkrB9yAyLDW
         2w21ylsJ9wvkGygKdNwEGuNA7yUm1fCvwRzJ83krAHk+TF27EIXH8kM0Tos57ZWdlw76
         zDdjNcE6jBv1AqoQXCaz8i9zwlikmdZJm+MnRmiX3UvIHwke64vNmy3p/W8NVdGHA0PN
         L6K7bUyVbA/9WbdUoTe9PvaWbYE4cfyaEDhd2+qSBtIhH2xf6hRoF/Z5DJI+FqCupjh/
         b5gSSSOOOY2LvjiVdJ3mcRj4tCvN4EzeDhWF5KKwP0Ir+Mcd2COiudx09nB5q0Z2D1mj
         BWyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=hlo5uW0qarX1kt+V3QgLwV+seCp99eVA6g1T51IeIfg=;
        b=sUV+wgAJGPIVrILEsI+I5kz4jRqxZUCeDrVN0mBc9HBjuCm5q3caeYErPk6mtPhl/P
         R5iXoRpDNgTp7kfcE6UtXhaCbgMxd2FmXeXm+GaW2ddb3B/UwQ31cmKCYJUSfNPvirdl
         O868hPXck2aO0GsHClnXbKA3Vw6bCNO9F6EjlBYIapp7dNAgTNi1xh8yqgDfIGeSQR/L
         7C+A2fFhyNcBw0K8Ldy5L5DkFqivKYRdHIiTgdxlLJFqx0g1err3FedvBpuvN3ZPyJB2
         B5/Z7nxTHX6tHmwbb3vNB1Fsbb6sXR2SL7j+oQHFelkePu6zuErYejVUz5czxFtu+7ug
         ckSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.235 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-06.prod.phx3.secureserver.net (p3plsmtpa12-06.prod.phx3.secureserver.net. [68.178.252.235])
        by gmr-mx.google.com with ESMTPS id g1si218909ilh.1.2019.10.26.00.04.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 00:04:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.235 as permitted sender) client-ip=68.178.252.235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.235 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f43.google.com ([209.85.167.43])
	by :SMTPAUTH: with ESMTPSA
	id OG7Ti4QASoidyOG7UiJl5l; Sat, 26 Oct 2019 00:04:16 -0700
Received: by mail-lf1-f43.google.com with SMTP id f5so3788753lfp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 00:04:16 -0700 (PDT)
X-Gm-Message-State: APjAAAUo6BI9Qo3j5cV43FvUpu7N3cyXbC1wWbYt+FVRZb+SdKHUnKmd
	RcrfIbSLmSK6zHkxi1JhdccNdOvJ7KHWF80Z8Zc=
X-Received: by 2002:ac2:4184:: with SMTP id z4mr5153468lfh.46.1572073455078;
 Sat, 26 Oct 2019 00:04:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571448899.git.jarias.linux@gmail.com> <eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.linux@gmail.com>
 <alpine.DEB.2.21.1910190832180.2701@hadrien> <aebb6e6e-5415-4e97-95f5-f882ee01f88c@googlegroups.com>
 <20191025132053.GA552416@kroah.com> <3cc42615-39cb-4f9e-b162-4f4f800f2cca@googlegroups.com>
In-Reply-To: <3cc42615-39cb-4f9e-b162-4f4f800f2cca@googlegroups.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sat, 26 Oct 2019 12:34:02 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKTQQBO-4wtsFVYRMcGG-LgKpgZMMPWi4uTuiG+TVaJWA@mail.gmail.com>
Message-ID: <CAK-LDbKTQQBO-4wtsFVYRMcGG-LgKpgZMMPWi4uTuiG+TVaJWA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: Fix line over
 80 characters
To: Javier Arias <jarias.linux@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfNA67wGvJ4mxiT39bz0vNfq2Cmp7aSPV+5LQfG4V46Lo5l8P7MGpQDa2GcV5GtVhksaAxb6pwz67pZuMaCE8za1FKwZ/hnzBAnHy/+Y4HwaWPjs49E4E
 oRoH0OhHmDVud0q05q7doiHcqf0CDf9X8d/lqNcegYqfYFliNP4RRr4WlnyqPuMobW7fphRIoEEZgvTxaX+TW6biQDF8yfgU2/U=

On Sat, Oct 26, 2019 at 10:36 AM Javier Arias <jarias.linux@gmail.com> wrote:
>
> Ahh, I just was a bit worried that I sent them incorrectly. I'll wait. Thank you for your time!

Hi Javier,

Please don't top post. See the section 'Responding to emails
and responding inline' in the kernel first patch tutorial over
here: https://kernelnewbies.org/FirstKernelPatch

Thanks!

> On Friday, 25 October 2019 08:22:51 UTC-5, Greg KH wrote:
>>
>> On Thu, Oct 24, 2019 at 10:49:06PM -0700, Javier Arias wrote:
>> > Hello again Julia,
>> >
>> > I updated the patch but I didn't receive any feedback nor acceptance by
>> > Greg. Is there something I'm doing wrong?
>>
>> I have caught up with almost all outreachy patches, but not all.  Give
>> me another few days to do that.  If you have not heard back about a
>> patch within a week, feel free to resend it.
>>
>> When I have caught up with everything, I will email the list letting
>> people know so that if they sent something and did not get a response,
>> they know to redo it.
>>
>> thanks,
>>
>> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3cc42615-39cb-4f9e-b162-4f4f800f2cca%40googlegroups.com.

