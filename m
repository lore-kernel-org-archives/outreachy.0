X-GM-THRID: 7892013940736
X-Received: by 10.112.148.10 with SMTP id to10mr1357178lbb.18.1426172956805;
        Thu, 12 Mar 2015 08:09:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.43 with SMTP id bt11ls617914wib.37.canary; Thu, 12 Mar
 2015 08:09:16 -0700 (PDT)
X-Received: by 10.180.109.34 with SMTP id hp2mr5200285wib.4.1426172956489;
        Thu, 12 Mar 2015 08:09:16 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id ew13si567529wid.0.2015.03.12.08.09.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 08:09:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by wesx3 with SMTP id x3so17084821wes.4
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 08:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=3Vq/NNSOvfvFUMfdo1JmiZwPy8p/gD2W0qD9RVPOrFo=;
        b=nXvjd48lxii3h/agz7seVOLWimcwkOJs/aXdJrw62qJP0Simnun0QuVv/Guc+xbs/R
         M0qUnOMuYzonvDf9RaXs+HialsO2cuOLANsQDLXcxqAbB5rvERipvmu3XiNWcNtgTheu
         +c+cOe1rtakHQYFsCKrVtLrmgb7PxRsl+QOo+8qsoAEfm/TVCWOUbQOszhek0YJh2o97
         FL1z2BBjvvJB3mvAaFkxL5SzrPS64daOzykZ5BpCuUN+YQpS5Vf8yqXt193Y7gz2z8Vk
         +2M9lAqzJynirfRynerE8fqruBJ75tNLPpbBS9TyG+7Bke3Nd59u/VNM3SWZbzeRn9RY
         E5Rw==
MIME-Version: 1.0
X-Received: by 10.181.13.148 with SMTP id ey20mr87942116wid.18.1426172955802;
 Thu, 12 Mar 2015 08:09:15 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Thu, 12 Mar 2015 08:09:15 -0700 (PDT)
In-Reply-To: <CAEnQRZAK-aLWvcgMrJy0+xiHFAX+2kGgy4nek+q_OtqCmkrwPQ@mail.gmail.com>
References: <20150312145536.GA20026@haneen-vb>
	<CAEnQRZAK-aLWvcgMrJy0+xiHFAX+2kGgy4nek+q_OtqCmkrwPQ@mail.gmail.com>
Date: Thu, 12 Mar 2015 17:09:15 +0200
X-Google-Sender-Auth: z_Chrbox8FXvqGqhqleZWRi_rTs
Message-ID: <CAEnQRZA=4DfNUNPL3YH0C70PUe9OYdymoy2wB76=qygjwmjLgw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: Add ABI documentation for
 proximity scan_emlements
From: Daniel Baluta <daniel.baluta@intel.com>
To: Daniel Baluta <daniel.baluta@intel.com>, Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 12, 2015 at 5:06 PM, Daniel Baluta <daniel.baluta@intel.com> wrote:
> On Thu, Mar 12, 2015 at 4:55 PM, Haneen Mohammed
> <hamohammed.sa@gmail.com> wrote:
>> This patch adds ABI documentation entries for in_proximity_en,
>> in_proximity_type, and in_proximity_index in the scan_elements.
>> At lease one user for these is present, the AS3935 Franklin lightning sensor.
>>
>> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
>
> I know that Greg won't accept patches outside of drivers/staging/. I
> think this should go via linux-iio tree.
>
> Thanks Haneen!

One thing. There is a typo in the commit subject:

s/scan_emlements/scan_elements.

Could you resend? Please keep Jonathan, Greg and linux-iio mailing list in Cc.

thanks,
Daniel.

