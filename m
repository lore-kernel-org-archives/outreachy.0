X-GM-THRID: 6947432106689560576
X-Received: by 2002:ab0:4285:: with SMTP id j5mr13752533uaj.38.1617625500035;
        Mon, 05 Apr 2021 05:25:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:70d3:: with SMTP id r19ls1071564ual.0.gmail; Mon, 05 Apr
 2021 05:24:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwUtuvvGSH5qFSv8eiuCTE3LqbQdnT8IHxJ9XClbAVQ11DPcpdKQNIeSqpFwO1LLYWqI3Sz
X-Received: by 2002:ab0:7593:: with SMTP id q19mr3433430uap.74.1617625498926;
        Mon, 05 Apr 2021 05:24:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617625498; cv=none;
        d=google.com; s=arc-20160816;
        b=uI1WZLoKFCZG3W8Dp5x72W5RhLwyP0x+XuhZJN+2J9kaDI2bQxKMyjwbBZAGybwFON
         QYcKFEKD7AadOlEHfLRBTdFi+LSiM+5sZUDiT9pl+VTLQd5KSTI23Dh4RVbEzzhLbpSq
         fF4aquKzUpJLNGVvguxhl5UmnZkZrIzkvFQNN4tQnm8yvv50tCZSssd23KaNvyAke2u0
         F2EBzWvVJAOMpXdFFviUfikWvLuVGZ8x/ir6JAk7VfGY3DvKrSaZoqzghAbjicMpd79I
         eWZ7aMVKxF6RFfdDtnh1WTcAOdzgy6LfQP5l+hQ3pwnAkianpefTCATxncPS97RdR4qB
         LX0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=BV8CATdRLAvIdnuUnJgPQHpNKQEI30j1mt/hYI5ki/4=;
        b=RsZLNWi+IzltWXlq5gOy8+Lu4Qvmhk1rvPtgAaqUAU9+AXeqTucIRiYJiB0S+soPmf
         2KyRt5KGOShenU603z/pdGWYQmTjdSkbyhc98tj7l64DdmuloJg4cD/1rH+VzpYFjuA+
         aaizsA3hcFUgA9JNlnPkiFBkO/4domF2BbASb0cA6HsDpDfdFQAaAsezGDNCgY6LLhRb
         GOfXAxHCOrPodHUl2C7ASDpoDzsnxDA71oV+uFAFjSoCgu5usJ2l0Rhx3Ivd3djRK0PU
         97HOkDwbrPpKs3HRsdYuWsfRH3qKKjzxYX3KY44J3FS/oT6xyGItrao+12EYM3tJhf4g
         M0kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.237 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa07-08.prod.phx3.secureserver.net (p3plsmtpa07-08.prod.phx3.secureserver.net. [173.201.192.237])
        by gmr-mx.google.com with ESMTPS id r8si957112uat.1.2021.04.05.05.24.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 05:24:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.237 as permitted sender) client-ip=173.201.192.237;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.237 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vs1-f46.google.com ([209.85.217.46])
	by :SMTPAUTH: with ESMTPSA
	id TOHplaQJTtQVETOHplI8Fa; Mon, 05 Apr 2021 05:24:57 -0700
X-CMAE-Analysis: v=2.4 cv=VvXmv86n c=1 sm=1 tr=0 ts=606b0199
 a=ETa63E8NIqjfcZzh0WMDaA==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=VDxRAwm8vqx6A6xO54EA:9 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vs1-f46.google.com with SMTP id d65so1834988vsd.6
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 05:24:57 -0700 (PDT)
X-Gm-Message-State: AOAM5330L0658Q3kJoAcsflPePzVIuX4SR7ki+ZNgwOQshGuQThSkLGy
	RxmXqUu+EumYhR9K3/dS6s/hkPwIgt0ryYQ4F7M=
X-Received: by 2002:a05:6102:2e5:: with SMTP id j5mr13469215vsj.38.1617625497136;
 Mon, 05 Apr 2021 05:24:57 -0700 (PDT)
MIME-Version: 1.0
References: <YGo8q4R5dqgtDMlg@fedora>
In-Reply-To: <YGo8q4R5dqgtDMlg@fedora>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 5 Apr 2021 14:24:44 +0200
X-Gmail-Original-Message-ID: <CAK-LDb+Sdd3ubX-Mv-pPcnkrBPp_Q0_O=D4dq+b75LiSUfJrqg@mail.gmail.com>
Message-ID: <CAK-LDb+Sdd3ubX-Mv-pPcnkrBPp_Q0_O=D4dq+b75LiSUfJrqg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: cdc: remove repeated word
To: =?UTF-8?Q?David_Villasana_Jim=C3=A9nez?= <davidvillasana14@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Greg KH <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	linux-staging@lists.linux.dev, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4xfJ+vFlRWGx4mbdmTfJnrliT2svAw/yN1eb2yISMg3GD5A0x98sz2lB6raoZqZ9OIEOVMkf9h/U/XYn4Yp+uECzSuIp87VF3PVZWR1rokeFLd8MmREDjY
 cAxFwP+F7CiXy6evJH7aWOQGM0VGWy1GratQAgxel7vHpjlQ2UldzsZrOvyGZwebF0ALPaTe7WFaB6PXZ5MK/mgcB1tqKUc+vnSoHDzOR7bhcE0iefHI1WVQ

On Mon, Apr 5, 2021 at 12:24 AM David Villasana Jim=C3=A9nez
<davidvillasana14@gmail.com> wrote:
>
> Fix checkpatch warning:
> WARNING: Possible repeated word: 'from'

You don't need to include the checkpatch warning in the commit log.
Your commit log should just be able to give enough information about
why you're doing this change. Then you can give credit to the tool by
adding a line like this:  'Issue found by checkpatch.pl'.

> Signed-off-by: David Villasana Jim=C3=A9nez <davidvillasana14@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7150.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/a=
d7150.c
> index 48132ab157ef..1be214512ff8 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -57,7 +57,7 @@
>   * @threshold: thresholds for simple capacitance value events
>   * @thresh_sensitivity: threshold for simple capacitance offset
>   *     from 'average' value.
> - * @mag_sensitity: threshold for magnitude of capacitance offset from
> + * @mag_sensitity: threshold for magnitude of capacitance offset
>   *     from 'average' value.
>   * @thresh_timeout: a timeout, in samples from the moment an
>   *     adaptive threshold event occurs to when the average
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/YGo8q4R5dqgtDMlg%40fedora.



--=20
Vaishali

