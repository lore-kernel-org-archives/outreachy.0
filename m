X-GM-THRID: 7905288912896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,27fc5814933cc7c5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr6396717lbj.23.1426176368153;
        Thu, 12 Mar 2015 09:06:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.75 with SMTP id da11ls287643lad.95.gmail; Thu, 12 Mar
 2015 09:06:07 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr3574536lab.4.1426176367642;
        Thu, 12 Mar 2015 09:06:07 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id ew13si577797wid.0.2015.03.12.09.06.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 09:06:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id r20so21624647wiv.3
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 09:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=wgPEDiCK3QXB653pwL0SaYq6Ma9fQVzezKw+DweNwt4=;
        b=OW+LfhHtvepjCFo6a0kO9hxqUIWuA+9/QZoH7zin1KHGI2rndMx9/bRHpifjPKUnj0
         dtEdd5f9oL7p6rkZHPd9zY/tUjSxmrywr4PG/kNFsGNRfGsbZDo85ZBXpkYAQN5yBqQn
         tleSB80kNzNy0LOQeUD1xbLwB1G92eiIYHmYHjsvrNdDqvUfqK8TG2F1cZNGyKXZfB6N
         zzz5nTrEl9drTa6tJuA19r/qX9nlG9cxgiQ5LXuNN+UuiD94gCmr2d33ycjGz14eT7FO
         t59f99uRhkmwqTTUYYOtcKbAsOedDV9s7RYVtJJIQOBC2yJklQqzHWYxVdjQgSfKkkKd
         9cOw==
MIME-Version: 1.0
X-Received: by 10.194.86.135 with SMTP id p7mr90016339wjz.89.1426176367492;
 Thu, 12 Mar 2015 09:06:07 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Thu, 12 Mar 2015 09:06:07 -0700 (PDT)
In-Reply-To: <20150312155250.GA20385@haneen-vb>
References: <20150312155250.GA20385@haneen-vb>
Date: Thu, 12 Mar 2015 18:06:07 +0200
X-Google-Sender-Auth: FEHNlDd5-WOhBnEVJOmLYQkJV6Y
Message-ID: <CAEnQRZAEg0QNRAonD6ODvfYymWT3nMNLoqz8XGqx4uN+GZFDQw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] iio: Add ABI documentation for
 proximity scan_elements
From: Daniel Baluta <daniel.baluta@intel.com>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Daniel Baluta <daniel.baluta@intel.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 12, 2015 at 5:52 PM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> This patch adds ABI documentation entries for in_proximity_en,
> in_proximity_type, and in_proximity_index in the scan_elements directory.
> At least one user for these is present, the AS3935 Franklin lightning sensor.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> v2: Fix typos in commit subject/body.
>
>  Documentation/ABI/testing/sysfs-bus-iio | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index 9a1a5fc..fd026d9 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -999,6 +999,7 @@ What:               /sys/.../iio:deviceX/scan_elements/in_incli_y_en
>  What:          /sys/.../iio:deviceX/scan_elements/in_pressureY_en
>  What:          /sys/.../iio:deviceX/scan_elements/in_pressure_en
>  What:          /sys/.../iio:deviceX/scan_elements/in_rot_quaternion_en
> +What:          /sys/.../iio:deviceX/scan_elements/in_proximity_en
>  KernelVersion: 2.6.37
>  Contact:       linux-iio@vger.kernel.org
>  Description:
> @@ -1015,6 +1016,7 @@ What:             /sys/.../iio:deviceX/scan_elements/in_timestamp_type
>  What:          /sys/.../iio:deviceX/scan_elements/in_pressureY_type
>  What:          /sys/.../iio:deviceX/scan_elements/in_pressure_type
>  What:          /sys/.../iio:deviceX/scan_elements/in_rot_quaternion_type
> +What:          /sys/.../iio:deviceX/scan_elements/in_proximity_type
>  KernelVersion: 2.6.37
>  Contact:       linux-iio@vger.kernel.org
>  Description:
> @@ -1066,6 +1068,7 @@ What:             /sys/.../iio:deviceX/scan_elements/in_timestamp_index
>  What:          /sys/.../iio:deviceX/scan_elements/in_pressureY_index
>  What:          /sys/.../iio:deviceX/scan_elements/in_pressure_index
>  What:          /sys/.../iio:deviceX/scan_elements/in_rot_quaternion_index
> +What:          /sys/.../iio:deviceX/scan_elements/in_proximity_index
>  KernelVersion: 2.6.37
>  Contact:       linux-iio@vger.kernel.org
>  Description:
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150312155250.GA20385%40haneen-vb.
> For more options, visit https://groups.google.com/d/optout.

