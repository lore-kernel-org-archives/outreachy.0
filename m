X-GM-THRID: 6396247239473233920
X-Received: by 10.99.241.69 with SMTP id o5mr2872248pgk.167.1489615238256;
        Wed, 15 Mar 2017 15:00:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.209 with SMTP id r200ls1085926itc.20.gmail; Wed, 15 Mar
 2017 15:00:37 -0700 (PDT)
X-Received: by 10.99.120.193 with SMTP id t184mr3095717pgc.26.1489615237517;
        Wed, 15 Mar 2017 15:00:37 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yw0-x22e.google.com (mail-yw0-x22e.google.com. [2607:f8b0:4002:c05::22e])
        by gmr-mx.google.com with ESMTPS id y63si433063ywe.5.2017.03.15.15.00.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 15:00:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c05::22e as permitted sender) client-ip=2607:f8b0:4002:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c05::22e as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x22e.google.com with SMTP id o4so20106823ywd.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 15:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ynuNslvIXQUFkRWe7aeHF0lP2MXm1Oyp34xycWxkP1c=;
        b=Kg71U2Fbc37/+oJI9iaCKy/jbt6uXxZjkbp+noq+A2hEAJmG0Z6SDDANUabEEcUK1X
         YroSyvfgmUs+b0KUwBBpEBvusKE4eF5hCughZyufF2A9jxtDoUjSAFrKZqGwwAsKQsou
         DwxQhCuIPzutT/I5HVAVTCcbyjHq+/1Zi3NTOAf+eUXNYJymEackt3PlobSP34932yUz
         Ol09Q6fhJdCF495HXBPn6e2izM2SgLdv9F1fcXAzp56wusyfBjgslLj4UAaG/f+hzkMN
         b/EoGXHs6Y3zNMPqHYfSVHhjonMeq9XlByT61JstUmrmReRypO/TFEJ3RprkZdpUoPVp
         D0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ynuNslvIXQUFkRWe7aeHF0lP2MXm1Oyp34xycWxkP1c=;
        b=kAWQXz/vODtqqTGejiv3iemi7qjRmNQ5wRmgO7dYCwYGzicrH1GSbb2/nVSVOmLb99
         2cJVZ1YDO4Vc9ubd0MJNYlEOxoVR0aVEnREwjHFs7c6YVf87JKFjgn2fh3ElemGdTnCt
         byMzW1zCJSE7/0GrWQRwjsaWRi5N/847LyWsMLpAAYACfuKLKKapTTAMa/Tn1q3YlXnn
         hy0s8y4b2B4DKVUEdGwnt4ihwaXRjntKXEWowHbDoFwYgDf5ZiZbUDKCKUmLmmVJABqG
         RxmhtvzX2C/UpyyZ2wlnzKzod0f0OUKtw2Sof+A0L63B5d1jDVhidlBIgBAT23opyCpy
         rE8w==
X-Gm-Message-State: AFeK/H1Msq52bGPwxCytaeWG00/wLUuvNAK7r+hPFarFbDWL2oqxkq0El1ecW3KY8mJWweX0WdGxyuUD2NewEA==
X-Received: by 10.129.74.130 with SMTP id x124mr4530277ywa.298.1489615236005;
 Wed, 15 Mar 2017 15:00:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.179.38 with HTTP; Wed, 15 Mar 2017 15:00:35 -0700 (PDT)
In-Reply-To: <CAAFX7JTDR9wrn4XdUCwADB5AoOQA_76U33sWgTA-AF5Fr9RMJw@mail.gmail.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com> <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
 <09641868-447c-4cfd-ab88-c33d932846ef@googlegroups.com> <CAEnQRZCjGJYSeO2TaeFGuRURMC2CRpinOTaBBiOrTuYXBGVGKQ@mail.gmail.com>
 <CAAFX7JSiXo-kLxc4xni0+nGahoCsDtRbWiFgmSQoKBDYUwNoxA@mail.gmail.com>
 <CAEnQRZD5BS3VrgLb2y0OvOqrnGoxY3D6J57fCb_FgjF1ZYPPpQ@mail.gmail.com> <CAAFX7JTDR9wrn4XdUCwADB5AoOQA_76U33sWgTA-AF5Fr9RMJw@mail.gmail.com>
From: Ioana Ciornei <ciorneiioana@gmail.com>
Date: Thu, 16 Mar 2017 00:00:35 +0200
Message-ID: <CAHWJYFm573LU3oX-fewdHnDe70K7WqSVHSrPDB2K7Mma=SRCOQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
To: Varsha Rao <rvarsha016@gmail.com>
Cc: Daniel Baluta <daniel.baluta@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi,

> Hello,
>>>
>>>   Kindly check the link.
>>>   http://pastebin.com/pfuP4cgU
>>
>> Ok, so configfs is already mounted:
>>
>> configfs on /sys/kernel/config type configfs (rw,relatime)
>>
>> You should be able to see: /sys/kernel/config/iio and
>> follow your work from here.
>
>    It is mounted but it does not have iio file.
>    $ ls -al /sys/kernel/config/
>     total 0
>    drwxr-xr-x.  2 root root 0 Mar 16  2017 .
>    drwxr-xr-x. 11 root root 0 Mar 16  2017 ..
>
>    The modules did not get loaded.
>     As there was no output for $ lsmod | grep "iio"
>

lsmod does not list the drivers that are compiled into the kernel but
only those that are inserted afterwards.

Ioana


>     Thanks,
>     Varsha
>

