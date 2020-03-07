X-GM-THRID: 6801518076458172416
X-Received: by 2002:a05:620a:2239:: with SMTP id n25mr8187880qkh.147.1583601831004;
        Sat, 07 Mar 2020 09:23:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1208:: with SMTP id x8ls2069531qti.1.gmail; Sat, 07 Mar
 2020 09:23:49 -0800 (PST)
X-Google-Smtp-Source: ADFU+vtwSYY9aOXwPhA6lMOBjsyxF6NnhrOzcGmESXvIpY5diIOiStVlre98xBRBcZFnI4hyqmgr
X-Received: by 2002:ac8:508:: with SMTP id u8mr8068336qtg.157.1583601829760;
        Sat, 07 Mar 2020 09:23:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583601829; cv=none;
        d=google.com; s=arc-20160816;
        b=wJvNVVE8DIMB7xXfmvwYQ+prOdhZ0OV4zgCMUVoWKHRAaqp8Z0rUBdwjXDDFxEaw08
         GUmNi/V7OsDkc7qLFEfSBlVKqmVwuv1dEgaPsf07WpDyvboRYs4W1K0IotQtE/mTGQAb
         MLv/eiUvcTgCNXYUyL1cSt21Hzh8uNlbtMOj5PbjYnFDr6/bjM+yMuojeNA8RenQdL+h
         he2lsXiBCrRqUwO2tpCcsNvVpJntSziCyhVsbCohdq8HfxrkImUjmDPW6+FIp9sYjeeQ
         EAOEbEwoxQdw/HAMNEY62J0EwLuCKD057Vs32r1xjse4RTuZyTz/KZLByKcewF4hwUnl
         Hewg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=pZb3FIB5SCdTRhuEzArGnx8Xj8iZX1wFbTgtxmlGDnI=;
        b=ZXknGNVT/dpfVms8lrMHmDLq6xVOfeKn9FZTqPjPMq2dWT/+uuYX+FK6jxNcbqgIde
         w7UF+XFE7Y88qCLrluvHQ3xdJrQci8ZQbT0MHRlSiGkMs+6S4gc4OhoRYIwYskuMt+zB
         J6sH85mArE/pLEAHCmTuPqUMRY57Iry01N0COyzraQgs2iHlIzp7VD5MZhOhF4+xuS2X
         vDyqbt2qLzMeVM9SCb8zEWxb7XSRrOmFVc43UVWhCtcNy5SUeLFp4CtugZdU8+4++eBH
         B2CLhImtq/MIKp3VORpSfCd9QgoPvq26xNZKvtdMezuKwfQda1lpIFVZd5TnpIigxrhI
         51Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L53UF7zC;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id e26si271378qka.2.2020.03.07.09.23.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 09:23:49 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L53UF7zC;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-il1-x136.google.com with SMTP id r4so5002425iln.0
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2020 09:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=pZb3FIB5SCdTRhuEzArGnx8Xj8iZX1wFbTgtxmlGDnI=;
        b=L53UF7zC6e+SFJL7uKhxxpH4XRoJ9+5ai0LdoimmL5U/YAQoD25wkNa5IetXlzM8mS
         YUIi+Ju2MOEUcRz9NQ36mF4mss4kJXF3zxDWEHz3siTAdur126rnf3B/rnGe7jt6VJWG
         JKASdi9JnkeQEbdJa+5/8CMWyz8zH7zfCCA4a2bMCbZ/5aMXAalDCrp+DGyJKIdFCfTV
         KVk4P6aNd6qTFV9XIkvYOYt9/txcqHfp8To2KWcbS3B/l+vIkWASV/4nwxinaR465tJI
         R2n5i4a6QW1MBTVleqd49OghGPQ4ePeI0RBfkEXIyUUeig2oxpCR6OgNfyAGILtoeWUk
         5uVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=pZb3FIB5SCdTRhuEzArGnx8Xj8iZX1wFbTgtxmlGDnI=;
        b=r7vhu9ifeJHert1YzlLh8k6Vqk8l0lZmbw65Yo97TyGIbRetUJcdNg8ADJiyLTr6JK
         IMChkopXWfzxteK3JgpjIHUBKOplV3Oye+JSLRop977DcZ+m2gKpinUZCnu9/x/uvAFJ
         GlBXpJtERYe04Y6amNHBGGxif5zMifenfFDjLQwoco2K6HHJrcP3L7W79A8UeBk7Unk+
         wqEqZDoBh8yrKo1KUmDVZwlWJbQW8aFcFEoTFcrnD36fExvIC8g+ca7gKVd2gVFgaIiK
         OoQD858PdHR7dlfFm4AqlCJWaRcfAFG/77E7IVGDYVh8vDK3deyK5a6MS1x+adEiseQL
         ddrw==
X-Gm-Message-State: ANhLgQ0nhJ39GVeAmAyKAMr2o7bNUQ2Ejg+Im6cSzDTrq2niDPEJ13U1
	cRNzwO8Teej1N8nyKMwK25ODFUzLkEO+bNMTxLryQMn48HU=
X-Received: by 2002:a92:c68d:: with SMTP id o13mr8394299ilg.83.1583601828933;
 Sat, 07 Mar 2020 09:23:48 -0800 (PST)
MIME-Version: 1.0
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Date: Sat, 7 Mar 2020 22:53:37 +0530
Message-ID: <CAND3PyeASzgKXfg3gZfd6_1rre8=4gCpP9U8npo89r7dYU8YUg@mail.gmail.com>
Subject: My Outreachy Participation for Summer 2020
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, Julia Lawall <julia.lawall@lip6.fr>, helen@koikeco.de, 
	Greg KH <gregkh@linuxfoundation.org>, Daniel Baluta <daniel.baluta@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007ab3e005a04708f0"

--0000000000007ab3e005a04708f0
Content-Type: text/plain; charset="UTF-8"

Hi All,

This is a short introduction email from my side for introducing myself to
this community.

I am a last year engineering student, pursuing my bachelor's degree in
Information Technology. I have previously contributed to Linux Kernel
during Outreachy and GSoC application period ( Particularly for IIO
projects ).

Other than cleanup patches I have also sent patches which included bug
fixes and adding functionalities.
Following are the drivers for which I've worked during my Outreachy and
GSoC application period.
adt7316, adis16209, ade7758  and rtl drivers

All my accepted patches can be found here.
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?qt=grep&q=shreeya

I am looking forward to work on "Improve Sound Open Firmware debugging
support" project for Outreachy 2020. I will be in touch with the mentor for
it.

I will soon start sending patches to get my hands on the process again.

Thank you

--0000000000007ab3e005a04708f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>This is a short introduction em=
ail from my side for introducing myself to this community.</div><div><br></=
div><div>I am a last year engineering student, pursuing my bachelor&#39;s d=
egree in Information Technology. I have previously contributed to Linux Ker=
nel during Outreachy and GSoC application period ( Particularly for IIO pro=
jects ).</div><div><br></div><div>Other than cleanup patches I have also se=
nt patches which included bug fixes and adding functionalities.</div><div>F=
ollowing are the drivers for which I&#39;ve worked during my Outreachy and =
GSoC application period.</div><div>adt7316, adis16209, ade7758=C2=A0 and rt=
l drivers</div><div><br></div><div>All my accepted patches can be found her=
e.</div><div><a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/gre=
gkh/staging.git/log/?qt=3Dgrep&amp;q=3Dshreeya">https://git.kernel.org/pub/=
scm/linux/kernel/git/gregkh/staging.git/log/?qt=3Dgrep&amp;q=3Dshreeya</a><=
br></div><div><br></div><div>I am looking forward to work on &quot;Improve =
Sound Open Firmware debugging support&quot; project for Outreachy 2020. I w=
ill be in touch with the mentor for it.</div><div><br></div><div>I will soo=
n start sending patches to get my hands on the process again.</div><div><br=
></div><div>Thank you</div><div><br></div><div><br></div></div>

--0000000000007ab3e005a04708f0--

