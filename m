X-GM-THRID: 6747357864452423680
X-Received: by 2002:ac8:3934:: with SMTP id s49mr27706817qtb.321.1570993746799;
        Sun, 13 Oct 2019 12:09:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:83c4:: with SMTP id f187ls3496147qkd.11.gmail; Sun, 13
 Oct 2019 12:09:05 -0700 (PDT)
X-Received: by 2002:a37:4703:: with SMTP id u3mr24265917qka.140.1570993745863;
        Sun, 13 Oct 2019 12:09:05 -0700 (PDT)
Received: by 2002:a05:620a:546:0:0:0:0 with SMTP id o6msqko;
        Sun, 13 Oct 2019 12:05:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyThGO/5bT9nCQexFyTs+nsjb4UzQR4ZfIT96QtlHINhzg3jITTxbCSd0ZBRMDgBAwA4JDl
X-Received: by 2002:a17:907:10dc:: with SMTP id rv28mr24917591ejb.7.1570993528106;
        Sun, 13 Oct 2019 12:05:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570993528; cv=none;
        d=google.com; s=arc-20160816;
        b=l67IW9flfOBBMHU92ddOkEfKUFfjd+h/TUyp98qfNgS9crs7yohbspUtXdDO/GLoFs
         a8gop7cAYG9fXISCw3CminkKa/C72aalXZs8ntgRIbzJtQcACZu1fQZk2vhqaIhDTis1
         +RvRIK/oERq7P5lKdSQQ0/kDO04/ZR7M/8e+ptbLaM+P8+yX/n0A/iqdvLZj913cwK4l
         9EtxDVL5CopjHnm86tRHmm8z5eLSPffqGQj02dQW2j+eQkl0E099BizOzAvt1LXwpVRh
         BBE31VRhywmp/SlUhn9NYDraspX2DYVc1P49GAnuo+ds34eC9YJ/VtixcM6eiV6k9gQI
         jp2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=MO2oXO2i14ZtdkD68DinZld5+bL5TDWxW+IcfydEnZw=;
        b=PzrNne1l789z9VVhD7LCyxlb895zP7vufFFPFq9xIARQjZwqlUMtwsmzE7T5gmhi1K
         z7g7XhJClNETxmUij+WqdH5nUHrxza9c30HpTZCenW4m/SVRvX52vIjnjP1Tbgcc0PWu
         y3eDPXVmqz3n8x+WT42HQYANxK9hGBHnEcHOLJX9uCs4CT/1pfLK81Dv3GkEpBDygK8h
         f6IWNiqT2+sdatnSrTZUhoRvLSxMXspj8WSV1ESm9myK1QLxkC6eRh/ymFY7y3G8hMm6
         K10D/f/uCNOTsyC6EZpzE/Bbx2sfXxeBADMSyPGAjxne/OwTeocXX1nKvdv7pKUHuy5I
         ND1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=MLOsUSl9;
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
Return-Path: <wahrenst@gmx.net>
Received: from mout.gmx.net (mout.gmx.net. [212.227.15.18])
        by gmr-mx.google.com with ESMTPS id a15si285374ejj.0.2019.10.13.12.05.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Oct 2019 12:05:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of wahrenst@gmx.net designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=MLOsUSl9;
       spf=pass (google.com: domain of wahrenst@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=wahrenst@gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1570993519;
	bh=MO2oXO2i14ZtdkD68DinZld5+bL5TDWxW+IcfydEnZw=;
	h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
	b=MLOsUSl9T1lMIAx8wmXUqYPhvsXiDwTz6Q5D9vS8SNyxDDdS4kjIcXveTilsEyxiY
	 7zUtaayxutyBkCl/2ZGpM9cWIpXs2gUL8eSmjG6uIy/wUp0lKmW2mfca1XBSHbDQh8
	 1230FRXqeUjyPwdTFdik4qQqF/SUfof3S6cDUjO4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MC34h-1iDvD13FbJ-00CSTA; Sun, 13
 Oct 2019 21:05:18 +0200
Subject: Re: [PATCH 1/2] staging: vc04_services: fix lines ending with open
 parenthesis
To: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, eric@anholt.net,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 daniela.mormocea@gmail.com, dave.stevenson@raspberrypi.org,
 hverkuil-cisco@xs4all.nl, mchehab+samsung@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, sbranden@broadcom.com,
 rjui@broadcom.com, f.fainelli@gmail.com
References: <20191013183420.13785-1-jbi.octave@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <38a29280-820a-4752-d9b5-099647a159d5@gmx.net>
Date: Sun, 13 Oct 2019 21:05:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191013183420.13785-1-jbi.octave@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Provags-ID: V03:K1:oekdBUYy9JblNZTDryIiY4k9qbz96nELqU0fWbvsIAKMlCfzSoO
 Vf1SxQieI0o6MpseCrTMCUJ9EvaghlmGvBoja6Sy7Z+NTkyGr0M0dVgmX254tZT7biRfCwo
 VedSrf7vvnIthR9JJGwTLYI2PsKDDJNiEfre6Chjt+7rPNtk51CVzM77JHxMmwKTPYlEUCo
 LyzgI/01Ldt4GUrV743xw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iTrNcnt6GRk=:yt2+kE4Wg4RaXVE162SAQB
 H2murMDCUcNTzaI59qGJ1/Vpji1CqO/v9JWjPwlgu7yvXC/9JutFMl6AL6RNxdL6e2VB0dNCK
 1UwNz8Z2Y7uN3P6MwA2r9A04ETOv4BhbwyXKxzHsJO9S6PKCbpPPkvrzFwWe5jNtIKvHuppUY
 Uag4xEEH84p6G9tM+nDfyWvanXDCob8xhYdY4TC0D0tIRXd+i3mvr1ILdpDwdMxLXqXj/drsm
 tV18jtDPHPeyY6GcoVRbMj0n2ZFeFO9J7+WPM3AiL9+6r/73BrLjLOGVfiIpQTJlhgJYAl2QQ
 T1dnjh9UdeFB/uU/U21CDk52Nt4bfp48tg/SVpFLYsWyKPw2oTPSTWrMDXLnDd6oue0vNiwbY
 1LI4iK+WH33QuyI94V/LJO4kIRmvzUTCBoMfTB7wltzFC1mlHj2zcph57VCCrtwrvHGZM+hbx
 DpemID0udkYnEqloS2TSio7LsYzxHOIvqsRgKkPntSbdl/iF0TCOpSztqoOc2EW8krThHUnVK
 UhpLaxgfZ96GLuWI8qyJN5jjc4fgYzGVb8cFDHdeCukk1RUumkjEUPdZrjXVFO/RTVKgMK+Li
 y2V6PPm3TKoR3LfawkhbxuS2XGegEPm0Y8GhKCqlHhy3/0VobBsKrV7xM5u74WT/QKfcxeGVl
 4URKZSU/xrARZKBR704DcOmhlmTpAj7hdmTXUgT8yLcAn4mLhw7g7HOnYhzUWKlhdIG+/LS71
 0CWklXup3yDQ9Lv1lsEZe4D/ECMb+SXXtRizoaV592oKnDwp4LFojXidgkEwnnZsEm2vrsnFG
 bzQh/byujnu9WRV1GIwM9vT9gfcoszyoX5DYxQY9q7Bs//P+50g4GTKsV4ONTEZDTltkE27YC
 v7cwmqKN97GseKDdyf9W8+Duq10qHiBwW1yQOQ9VHdLr5N7M3fheu5lR+alWj0rONwPGmPa33
 vCkBPaIxFc1GMzYsGAZ/IKBDlw895RgipElImQBHXcnYopYsGNrhvc4jpX293I8U994RpIaA3
 sq7DErYrXFCYlYkJvOoA/Gs7vWZsjHdSEDV9m4UbWHJXhSt5tY6bUjZFf9C7DerIgntavMAYJ
 1zBnLusnTrDa75IcfcfkUeYBiK1Eocq+/M8kl/xgaW7rkKr0A1iyOi2LYQByiOqlYYUZqPOm9
 5KXi8ycPBVvZV83k0Vyg4/Y9f3LraVr+3oN85zwyu09tp5RbrAm31DnGAEPhSPLdGlc5mxhF2
 4Xv373gNP/RNnp6SdNL1I3/T6KeOHeVRvWW8eLTpcrkl4xUmaieDHEBxNM8k=

Hi Jules,

Am 13.10.19 um 20:34 schrieb Jules Irenge:
> Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
> In the process, change driver functions name in the multiple files from:
> vchiq_mmal_port_parameter_set to vmp_prmtr_set
> vchiq_mmal_component_disable to vm_cmpnt_disable
> vchiq_mmal_port_connect_tunnel to vmp_cnnct_tunnel
> vchiq_mmal_component_enable to vm_cmpnt_enable

please no. Changing random function names into something unreadable
doesn't increase code readability. We need to keep an eye on the whole
interface. Maybe you better start with the 2nd part of Joe's suggestion
first.

Stefan


