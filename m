X-GM-THRID: 8491640029184
X-Received: by 10.112.41.131 with SMTP id f3mr13044079lbl.20.1426841333423;
        Fri, 20 Mar 2015 01:48:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls369848lak.88.gmail; Fri, 20 Mar
 2015 01:48:52 -0700 (PDT)
X-Received: by 10.112.142.1 with SMTP id rs1mr10785966lbb.19.1426841332977;
        Fri, 20 Mar 2015 01:48:52 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id el6si81645wib.0.2015.03.20.01.48.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 01:48:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id k59so76642817wet.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 01:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ODnBHgPdAlPEGbZiAYAiC+sYQFyrkidnc/YJCTZ0e7Q=;
        b=uVyoZ/X0XJ/7XCaVzoFLSUb/5p4MLCPsRbddziulWmuXCwmPXa3KEzdMDEXH97H0vj
         5wUuUeqZnaroqxafcoGuO9gS/vwj91T6QAaQtlSEv5VbnHF6Z6FhDTZbxEGehEAz0RbH
         jTg9LG8W8kN2rXpwKXpalZulya1Z5RhqYXnM39RRoAw+kB8hPaymbnkT8PQLqLhUtTom
         uVySm4MSLmiyHE/iknnvu7R2iHEM55J4+Dd+hK2kkhB2LzUxKEGBqwIiJ1nF0/aAKwnf
         W7F2BqUh1v7mufH0BrdbZxoqX7o1a1y2H739aDwjjoHkO9uZ8wJ34RR7LQQl+Bno/4zi
         STZw==
MIME-Version: 1.0
X-Received: by 10.180.104.33 with SMTP id gb1mr22797806wib.33.1426841332889;
 Fri, 20 Mar 2015 01:48:52 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Fri, 20 Mar 2015 01:48:52 -0700 (PDT)
In-Reply-To: <1426506500-11836-1-git-send-email-darshanapadmadas@gmail.com>
References: <1426506500-11836-1-git-send-email-darshanapadmadas@gmail.com>
Date: Fri, 20 Mar 2015 10:48:52 +0200
Message-ID: <CAEnQRZDvupQzUVNtTRNyHSQG1tJpHcZMPkKOkM3j=TdXAN6ZXw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: Add ABI documentation for
 illuminance raw and scale values in light
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 16, 2015 at 1:48 PM, Darshana Padmadas
<darshanapadmadas@gmail.com> wrote:
> This patchset adds ABI documentation for the following attributes:
>
> in_illuminance_scale, used atleast once in al3320a staging/iio/light/

Reference to staging/iio/light here is confusing. People might think
that al3320 is in staging, while staging is your source tree top directory.

Better drop it :).

Also s/atleast/at least/

Just say:

in_illuminance_scale, exported by  al3320a ambient light sensor.

> in_illuminance_calibscale, used atleast once in cm32181
> in_illuminance_input, used in cm3232 at least once
> in_illuminance_raw used atleast once in al3320a
> in_illuminance_clear_raw and in_illuminance_ir_raw exposed by
> gp2ap020a00f with modifiers IIO_MOD_LIGHT_CLEAR and
> IIO_MOD_LIGHT_IR respectively.

The same for all the above.

Other than that, the patch looks good to me.

Daniel.

