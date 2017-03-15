X-GM-THRID: 6396247239473233920
X-Received: by 10.237.53.146 with SMTP id c18mr386487qte.64.1489590264502;
        Wed, 15 Mar 2017 08:04:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls2406725otf.39.gmail; Wed, 15 Mar
 2017 08:04:24 -0700 (PDT)
X-Received: by 10.157.36.99 with SMTP id p90mr1669916ota.7.1489590264070;
        Wed, 15 Mar 2017 08:04:24 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by gmr-mx.google.com with ESMTPS id g205si68660ita.2.2017.03.15.08.04.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 08:04:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id w124so50980614itb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 08:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=f9n+JA1wpxOIquE5htyu8kdGd4ADbmeZRGaAE9vsZGA=;
        b=XMO0cPDBYDNTpseeXTo9dJ69t1c0eKIVS7xndZGpnh0mEJqEs3g17qe9wg/v5RA5c4
         UKRoOmsIbGZgxe4pTNL3vO6xn0vOWZzqtU4tOEiL6QBt4qYqdn9SF7ZHw41nV0N8K71i
         8N7nvEYqiyPSecUheDrsOpSS7ElhvSguxkT6je4/UfgKV1JEA6mdilLIZjchyjaDLdGU
         U+rNc/gHV0USuQ3b0Mnc/Ytc3vLZz2JUq0fmvSFDtrczYAsV24+6nndsPfEUCssqfyks
         SUEBc4OuJb2tiwn8qAOnQbcjisspx1owS5qlzQqjHvuy02srzFhbyKeu2BCYfaTO38a4
         M/dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=f9n+JA1wpxOIquE5htyu8kdGd4ADbmeZRGaAE9vsZGA=;
        b=Ic2kDDxjfK1YqQ9V6zw1GGA1eo4b2BinpDMdAD0J2fdBbMDNjVCGFqIEBVo6jrhvTh
         /7JQDbT6vnHYxwh8jA86WQeM56uquON8xndgOq1en64Ay+gB9HJ/0VK8lRITOllbJMTP
         fU+jjZZny7tatnBsyFT6r/swCgH4/bMajdDz6YK5ruer0db2X+HiD4PSyGOFAMO3qLf/
         ep32xzWG9+nWj4dEqxUAzyIJv/6sWZPq0H4tyFZgJCzHaGV56BWikiUkArARtD/+wpHy
         DhJXe78VH7icsBoGYtdiQod/UqHKlFCg+B0gyiNcD/n28PTKBds6IPdFc5QhXOt7RNpA
         A4Fw==
X-Gm-Message-State: AFeK/H3E7HHTMOsCFlTruW9OaMvCMfPX+eD38f+/2gE0Bdn/4a3FHtSlk8tNTCaghBIIBTEDtCg0dpKF9aZvAA==
X-Received: by 10.36.146.134 with SMTP id l128mr5331264itd.19.1489590263764;
 Wed, 15 Mar 2017 08:04:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Wed, 15 Mar 2017 08:04:23 -0700 (PDT)
In-Reply-To: <09641868-447c-4cfd-ab88-c33d932846ef@googlegroups.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com> <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
 <09641868-447c-4cfd-ab88-c33d932846ef@googlegroups.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 15 Mar 2017 17:04:23 +0200
Message-ID: <CAEnQRZCjGJYSeO2TaeFGuRURMC2CRpinOTaBBiOrTuYXBGVGKQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 15, 2017 at 4:58 PM, Varsha Rao <rvarsha016@gmail.com> wrote:
>
> Hello,
>>
>>
>> My first thought on this is to compile everything related to IIO as Y
>> not m. Then we can see
>> if there is some module dependency etc.
>
>
>    I have configured accordingly but few could not be set to Y, as they w=
ere
> dependent on some other module.
>    http://pastebin.com/49AvqiGP
>
>    After setting to Y, I am no longer able to load the modules successful=
ly.
>    Even though these commands execute with no errors.

This is fine, because the modules are already in the kernel image.
>
>    sudo modprobe iio_dummy_evgen
>    sudo modprobe iio_dummy
>    $ lsmod | grep "iio"  does not give any output.
>
>     But I can mount the config directory. After mounting, I cannot create
> sub directory.
>
>     $ sudo mount -t configfs none /config
>     $ sudo mkdir /config/conf1
>     mkdir: cannot create directory =E2=80=98/config/conf1=E2=80=99: Opera=
tion not permitted

You shouldn't need to create a directory inside /config. By selecting
IIO configfs
in the kernel image, after mounting /config dir an /config/iio
directory should be
automatically created.

It means that mounting of configfs failed silently somehow.

Can you tell us the result of mount command? This should list all mounted p=
aths.

thanks,
daniel.

