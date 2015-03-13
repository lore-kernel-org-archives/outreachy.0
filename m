X-GM-THRID: 8063106940928
X-Received: by 10.112.202.227 with SMTP id kl3mr495823lbc.2.1426255148892;
        Fri, 13 Mar 2015 06:59:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.135 with SMTP id jo7ls450974lab.101.gmail; Fri, 13 Mar
 2015 06:59:08 -0700 (PDT)
X-Received: by 10.112.41.131 with SMTP id f3mr7411371lbl.20.1426255148289;
        Fri, 13 Mar 2015 06:59:08 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id sf8si125752wic.2.2015.03.13.06.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 06:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id l2so23466225wgh.8
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 06:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=d1QQ9MnYgQt2mzH8pafDiOHjC7wtpWF2PnM7f+T+Qq8=;
        b=qdRjeTXkpOghcij1hO1fsl/3hczFmIna8OPR7//G1x4AgLZ9CwicUCzQO0qI2m7Dfo
         GLVji4JnDp+aSBld6WVHZO7mjBjs6/nop+xYsdhsKayxtNzfbMuw5Ti9T4auhQwlAxpX
         aIm7zgwoPY/MUkwQA4XYoaZI8+P/hfldfPP7bYDHnpSWQ2qV/Jp1nWRzott3AWKCWqz9
         UkIpHg0/e8VZZM0rFb5BorOkHOFPiVfIM7R58IJBL9CMvYKnwbHFa+Z00VskML+0MJqZ
         98QV+jZ87Vuivi/a3NKaI/yY1PR+nYm17sqGvbAY+NEthlP43f13mpZ7CJCoGAS05EM7
         x9jA==
MIME-Version: 1.0
X-Received: by 10.180.83.129 with SMTP id q1mr66313985wiy.46.1426255148158;
 Fri, 13 Mar 2015 06:59:08 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Fri, 13 Mar 2015 06:59:08 -0700 (PDT)
In-Reply-To: <1426254366-27021-1-git-send-email-darshanapadmadas@gmail.com>
References: <1426254366-27021-1-git-send-email-darshanapadmadas@gmail.com>
Date: Fri, 13 Mar 2015 15:59:08 +0200
X-Google-Sender-Auth: i8v5INeelJCoHaN9la5-kfCyULw
Message-ID: <CAEnQRZD7zQdfX_uMa74dD1Od_ZKzuwtriu22tmjsKJxmif8KOg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] iio: Add ABI documentation for in_magn
 offset and raw values
From: Daniel Baluta <daniel.baluta@intel.com>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 13, 2015 at 3:46 PM, Darshana Padmadas
<darshanapadmadas@gmail.com> wrote:
> This patch adds ABI documentation entries for in_magn_offset
> and in_magn_raw. At least one user exists, mag3110 and
> hid-sensor-magn-3d in drivers/iio/magnetometer.

Hi,

Because we have:

* .modified field set to 1
* .channel2 set to some modifier (e.g IIO_MOD_X)
* info_mask_separate  set to IIO_CHAN_INFO_RAW

resulting attributes will be of the form:

* in_magn_x_raw, in_magn_y_raw, in_magn_z_raw etc.


The patch looks good for offset attribute because in hid-sensor-magn-3d we have:
* info_mask_shared_by_type set to IIO_CHAN_OFFSET.

Please use the dummy driver to confirm this. And resend the patch keeping only
the entry for offset.

thanks,
Daniel.

