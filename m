X-GM-THRID: 8071528054784
X-Received: by 10.180.109.34 with SMTP id hp2mr6171976wib.4.1426264000950;
        Fri, 13 Mar 2015 09:26:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.72 with SMTP id lm8ls447070lac.3.gmail; Fri, 13 Mar
 2015 09:26:40 -0700 (PDT)
X-Received: by 10.112.242.7 with SMTP id wm7mr4563193lbc.1.1426264000324;
        Fri, 13 Mar 2015 09:26:40 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id gj20si162694wic.1.2015.03.13.09.26.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 09:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id em10so7595328wid.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 09:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=zyu296Dl7yWjLnzL7NMEuHN3jE4+9+GZY2ipXqJsQG0=;
        b=RJwAoTnMkpR1ie68glJHu+26pf7g+jZRRKsKvTFP20tVcnJkYLlO2ZzBuENXo6KC8s
         1qFAlbo/yY3sqSP3JqGtLmQtS069WGPxJzkBqF29x5AW0+eRgd6g7uheM9LFk+wstKfF
         76mHbYwTfoQhxOmu/kdWmZmg1RT2EhoQgq9E2BhurL0nVb5sr3vGY9+cR2Dts69JaiHg
         OlwCHKMF3ER3qNP4ae0b+7vUmK5+0UcoCqY5ERgyildpP578CWk5YuuaTLJtsmrNgexF
         lVSBxs3aMJaIycFiAHXun1E3P0VtMTqFmvGrK6pE7pZ7ni/PpDMeYPaCJ9WfMsrZ+mlz
         S6BA==
MIME-Version: 1.0
X-Received: by 10.194.85.233 with SMTP id k9mr33262059wjz.31.1426264000227;
 Fri, 13 Mar 2015 09:26:40 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Fri, 13 Mar 2015 09:26:40 -0700 (PDT)
In-Reply-To: <1426261018-6025-1-git-send-email-darshanapadmadas@gmail.com>
References: <1426261018-6025-1-git-send-email-darshanapadmadas@gmail.com>
Date: Fri, 13 Mar 2015 18:26:40 +0200
Message-ID: <CAEnQRZDpEMogqDwpqqH0hAPgV+xoo=p9VTxme4DP=8aJt1JT4Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] iio: Add ABI documentation for
 in_magn offset value
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 13, 2015 at 5:36 PM, Darshana Padmadas
<darshanapadmadas@gmail.com> wrote:
> This patch adds ABI documentation entries for in_magn_offset.
> There is one user, hid-sensor-magn-3d in drivers/iio/magnetometer.
>
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v2:
>     - Removed attribute in_magn_raw as no driver in drivers/iio/magnetometer
>       or staging/iio/magnetometer has info_mask_separate set to
>       IIO_CHAN_INFO_RAW without any modifiers.
>     - Changed subject and commit message accordingly.
>
>  Documentation/ABI/testing/sysfs-bus-iio | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index 9a70c31..4fd3976 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -253,6 +253,7 @@ What:               /sys/bus/iio/devices/iio:deviceX/in_temp_offset
>  What:          /sys/bus/iio/devices/iio:deviceX/in_pressureY_offset
>  What:          /sys/bus/iio/devices/iio:deviceX/in_pressure_offset
>  What:          /sys/bus/iio/devices/iio:deviceX/in_humidityrelative_offset
> +What:          /sys/bus/iio/devices/iio:deviceX/in_magn_offset
>  KernelVersion: 2.6.35
>  Contact:       linux-iio@vger.kernel.org
>  Description:
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426261018-6025-1-git-send-email-darshanapadmadas%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

