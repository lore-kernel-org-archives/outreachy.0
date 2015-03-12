X-GM-THRID: 7892013940736
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,19fb074a8e44fa1b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.109.34 with SMTP id hp2mr5197646wib.4.1426172762675;
        Thu, 12 Mar 2015 08:06:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.13.148 with SMTP id h20ls533631wic.3.gmail; Thu, 12 Mar
 2015 08:06:02 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr3316759wjc.5.1426172762340;
        Thu, 12 Mar 2015 08:06:02 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id l8si1542308wia.0.2015.03.12.08.06.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 08:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-we0-x231.google.com with SMTP id w55so17042771wes.3
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 08:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=k+oMpsh+CdlRYvMwM7eFciHUymhJOQN9Ype2P0bW9SY=;
        b=RvNHlEM3Yp6CkK9bxBsh+F4NAqwyRuOROm0qBYCkS4O/f1RZYIgATjimdo02kBoQ6O
         VS9bigE06g6QvMt1h/nIANRq54MfM/i6EtKWEjsquTcoJxzWbyVUicn1MAc0NC/QwONY
         EY8JpaZPE2QytB2gNsfgx2jVqNhkbffkdKK0IbM3sTBgH6nzyKrK2K1mdtcfxImsYn2L
         5Gn+o+97U8NWkWl9+IujHWPMP7yJE0FsEUMUQDK3TkeUXI89RAv6GpqMtxq6Fa3epSZm
         nlrNMqcuLeEwO1z3GJ9Vow4ALb5O+jEKKbnoHAmrI9flIyOxFBJsT7Szs5RNLi4AdD79
         FATw==
MIME-Version: 1.0
X-Received: by 10.194.86.135 with SMTP id p7mr89485344wjz.89.1426172762005;
 Thu, 12 Mar 2015 08:06:02 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Thu, 12 Mar 2015 08:06:01 -0700 (PDT)
In-Reply-To: <20150312145536.GA20026@haneen-vb>
References: <20150312145536.GA20026@haneen-vb>
Date: Thu, 12 Mar 2015 17:06:01 +0200
X-Google-Sender-Auth: aA9V6FJBaIAE3ELYvTpgtRsriWI
Message-ID: <CAEnQRZAK-aLWvcgMrJy0+xiHFAX+2kGgy4nek+q_OtqCmkrwPQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: Add ABI documentation for
 proximity scan_emlements
From: Daniel Baluta <daniel.baluta@intel.com>
To: Haneen Mohammed <hamohammed.sa@gmail.com>, Jonathan Cameron <jic23@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 12, 2015 at 4:55 PM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> This patch adds ABI documentation entries for in_proximity_en,
> in_proximity_type, and in_proximity_index in the scan_elements.
> At lease one user for these is present, the AS3935 Franklin lightning sensor.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

I know that Greg won't accept patches outside of drivers/staging/. I
think this should go via linux-iio tree.

Thanks Haneen!

Daniel.

> ---
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

